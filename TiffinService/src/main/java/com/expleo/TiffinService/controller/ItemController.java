package com.expleo.TiffinService.controller;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
 
import com.expleo.TiffinService.entity.Item;
import com.expleo.TiffinService.entity.ItemResponse;
import com.expleo.TiffinService.service.ItemService;
 
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
 
@RestController
@RequestMapping("/item")
@CrossOrigin(origins="*")
public class ItemController {
 
    @Autowired
    private ItemService itemService;
 
    @GetMapping
    public ResponseEntity<Iterable<Item>> getAllItems() {
    	System.out.println("getAllItems called()");
        Iterable<Item> items = itemService.getAllItems();
        return new ResponseEntity<>(items, HttpStatus.OK);
    }
 
    @PostMapping("/add")
     public String addItem(String name,double price,String description) {
        Item item = new Item();
        item.setName(name);
        item.setPrice(price);
        item.setDescription(description);
        itemService.addItem(item);
        String link = "<!DOCTYPE html>\n" +
                "<html lang=\"en\">\n" +
                "<head>\n" +
                "    <meta charset=\"UTF-8\">\n" +
                "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n" +
                "    <title>Item Added</title>\n" +
                "    <!-- Bootstrap CSS -->\n" +
                "    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\n" +
                "    <style>\n" +
                "        body {\n" +
                "            padding-top: 80px; /* Adjust as needed */\n" +
                "        }\n" +
                "\n" +
                "        .navbar {\n" +
                "            background-color: #00000008 !important;\n" +
                "            backdrop-filter: blur(10px);\n" +
                "        }\n" +
                "\n" +
                "        .navbar-brand {\n" +
                "            font-weight: bold;\n" +
                "            font-style: italic;\n" +
                "            color: #0b0808;\n" +
                "        }\n" +
                "\n" +
                "        .navbar-nav .nav-link {\n" +
                "            color: #222325 !important;\n" +
                "        }\n" +
                "\n" +
                "        .navbar-toggler {\n" +
                "            border-color: #fff;\n" +
                "        }\n" +
                "\n" +
                "        .btn-primary {\n" +
                "            background-color: #ffd100;\n" +
                "            border-color: brown;\n" +
                "        }\n" +
                "\n" +
                "        .btn-primary:hover {\n" +
                "            background-color: brown;\n" +
                "            border-color: brown;\n" +
                "        }\n" +
                "\n" +
                "        .bg-light {\n" +
                "            background-color: #f8f9fa !important;\n" +
                "        }\n" +
                "\n" +
                "        .container {\n" +
                "            margin-top: 50px;\n" +
                "            text-align: center;\n" +
                "        }\n" +
                "\n" +
                "        .card {\n" +
                "            margin-top: 20px;\n" +
                "            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);\n" +
                "            border-radius: 10px;\n" +
                "            padding: 20px;\n" +
                "        }\n" +
                "    </style>\n" +
                "</head>\n" +
                "<body>\n" +
                
                "    <div class=\"container\">\n" +
                "        <div class=\"card\">\n" +
                "            <h1>Item Added Successfully</h1>\n" +
                "            <a href=\"http://localhost:8082/views/admin.jsp\" class=\"btn btn-primary back-btn\">Go Back to Admin Portal</a>\n" +
                "        </div>\n" +
                "    </div>\n" +
                "\n" +
                "    <!-- Bootstrap Bundle with Popper -->\n" +
                "    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js\"></script>\n" +
                "</body>\n" +
                "</html>";

  return link;

    }
 
 
    @PutMapping("/{name}")
    public ResponseEntity<Item> updateItemByName(@PathVariable String name, @RequestBody Item updatedItem) {
           Item itemToUpdate = itemService.getItemByName(name);
           	if (itemToUpdate != null) {
            itemToUpdate.setName(updatedItem.getName());
            itemToUpdate.setDescription(updatedItem.getDescription());
            itemToUpdate.setPrice(updatedItem.getPrice());
            Item savedItem = itemService.addItem(itemToUpdate);
            return new ResponseEntity<>(savedItem, HttpStatus.OK);
        } else {
             return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }
           	@PostMapping("/delete")
            public ResponseEntity<String> deleteItemByName(@RequestParam String name) {
           		System.out.println("Delete Method Called");
           		boolean deleted = itemService.deleteItemByName(name);
             if (deleted) {
            	 String redirectUrl = "http://localhost:8082/views/admin.jsp";
                 return ResponseEntity.status(HttpStatus.FOUND)
                                      .header("Location", redirectUrl)
                                      .build();
                } else {
                	 String redirectUrl = "http://localhost:8082/views/admin.jsp";
                     return ResponseEntity.status(HttpStatus.NOT_FOUND)
                                          .header("Location", redirectUrl)
                                          .build();
                }
            }
}