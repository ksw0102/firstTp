package com.tp.deliver.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.tp.deliver.model.Purchase;

public interface PurchaseRepository extends JpaRepository<Purchase, Long>{

}
