package com.tp.deliver.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tp.deliver.model.Deliver;
import com.tp.deliver.model.Purchase;
import com.tp.deliver.repository.DeliverRepository;
import com.tp.deliver.repository.PurchaseRepository;
import com.tp.deliver.service.DeliverService;

@Service
public class DeliverServiceImpl implements DeliverService {

	private DeliverRepository deliverRepository;
	private PurchaseRepository purchaseRepository;

	@Autowired
	public DeliverServiceImpl(DeliverRepository deliverRepository, PurchaseRepository purchaseRepository) {
		super();
		this.deliverRepository = deliverRepository;
		this.purchaseRepository = purchaseRepository;
	}

	@Override
	public Deliver saveDeliver(Deliver deliver) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Deliver> getAllDelivers() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Deliver getDeliverById(long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Deliver updateDeliverById(Deliver deliver, long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteDeliverById(long id) {
		// TODO Auto-generated method stub

	}

	@Override
	public Purchase savePurchase(Purchase purchase) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Purchase> getAllPurchase() {
		// TODO Auto-generated method stub
		return null;
	}
}
