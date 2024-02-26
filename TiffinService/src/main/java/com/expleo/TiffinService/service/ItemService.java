package com.expleo.TiffinService.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.expleo.TiffinService.entity.Item;
import com.expleo.TiffinService.repository.ItemRepository;

import jakarta.transaction.Transactional;

@Service
public class ItemService {
	@Autowired
	private ItemRepository repo;

	public Iterable<Item> getAllItems() {
		return repo.findAll();
	}

	public Item addItem(Item item) {
		return repo.save(item);
	}
	
	@Transactional
	public boolean deleteItemByName(String name) {
        
        if (repo.existsByName(name)) {
            repo.deleteByName(name);
            return true; // Item deleted successfully
        }
        return false; // Item not found
    }

	public Item getItemByName(String name) {
        return repo.findByName(name);
    }
}

