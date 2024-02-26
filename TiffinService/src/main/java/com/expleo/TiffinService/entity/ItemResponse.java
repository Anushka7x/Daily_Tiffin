package com.expleo.TiffinService.entity;

public class ItemResponse {
    private Item item;
    private String message;

    public ItemResponse(Item item, String message) {
        this.item = item;
        this.message = message;
    }

	public Item getItem() {
		return item;
	}

	public void setItem(Item item) {
		this.item = item;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}
