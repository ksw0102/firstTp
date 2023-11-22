package com.tp.deliver.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.tp.deliver.model.Food;

public interface FoodRepository extends JpaRepository<Food, Long>{

}
