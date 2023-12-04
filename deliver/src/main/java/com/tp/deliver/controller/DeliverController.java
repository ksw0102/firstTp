package com.tp.deliver.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.tp.deliver.model.Deliver;
import com.tp.deliver.model.Purchase;
import com.tp.deliver.service.DeliverService;

@RestController
@RequestMapping("/products")
@CrossOrigin(origins = "http://localhost:3000", methods = { RequestMethod.GET, RequestMethod.POST })
public class DeliverController {

	private DeliverService deliverService;

	@Autowired
	public DeliverController(DeliverService deliverService) {
		super();
		this.deliverService = deliverService;
	}

	@GetMapping("test")
	public ResponseEntity<String> test() {
		return new ResponseEntity<>("테스트 성공", HttpStatus.OK);
	}

	@PostMapping()
	public ResponseEntity<Deliver> saveDeliver(@RequestBody Deliver deliver) {
		return new ResponseEntity<Deliver>(deliverService.saveDeliver(deliver), HttpStatus.CREATED);
	}

	@GetMapping()
	public ResponseEntity<List<Deliver>> getAllDelivers() {
		return new ResponseEntity<List<Deliver>>(deliverService.getAllDelivers(), HttpStatus.OK);
	}

	@GetMapping("{id}")
	public ResponseEntity<Deliver> getDeliverById(@PathVariable long id) {
		return new ResponseEntity<Deliver>(deliverService.getDeliverById(id), HttpStatus.OK);
	}

	@PostMapping("dvpurchase")
	public ResponseEntity<Purchase> savePurchase(@RequestBody Purchase purchase) {
		return new ResponseEntity<Purchase>(deliverService.savePurchase(purchase), HttpStatus.OK);
	}

	@PostMapping("dvpurchaselist")
	public ResponseEntity<List<Purchase>> savePurchaseList(@RequestBody List<Purchase> purchaseList) {
		List<Purchase> savedPurchaseList = new ArrayList<Purchase>();
		for (Purchase purchase : purchaseList) {
			savedPurchaseList.add(deliverService.savePurchase(purchase));
		}
		return new ResponseEntity<List<Purchase>>(savedPurchaseList, HttpStatus.OK);
	}

	@GetMapping("dvpurchase")
	public ResponseEntity<List<Purchase>> getAllPurchase() {
		return new ResponseEntity<List<Purchase>>(deliverService.getAllPurchase(), HttpStatus.OK);

	}

}
