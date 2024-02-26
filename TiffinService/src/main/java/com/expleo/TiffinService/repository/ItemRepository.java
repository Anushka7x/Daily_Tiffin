package com.expleo.TiffinService.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.expleo.TiffinService.entity.Item;

@Repository
public interface ItemRepository extends JpaRepository<Item, Long> {
	int deleteByName(String name);
	Item findByName(String name);
	boolean existsByName(String name);
}