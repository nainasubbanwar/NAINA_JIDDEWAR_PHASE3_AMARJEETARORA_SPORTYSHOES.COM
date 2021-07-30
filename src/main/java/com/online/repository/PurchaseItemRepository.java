package com.online.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.online.model.PurchaseItem;

public interface PurchaseItemRepository extends JpaRepository<PurchaseItem, Long> {
	
	  PurchaseItem findById(long id);
	
	  @Query("select pi from PurchaseItem pi where pi.purchaseId=?1")
	  List<PurchaseItem> getAllItemsByPurchaseId(long purchase_id);
	  
	  @Query("delete from PurchaseItem where purchaseId=?1")
	  List<PurchaseItem> deleteAllItemsByPurchaseId(long purchase_id);
}
