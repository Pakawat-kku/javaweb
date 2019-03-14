package civilize;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

@Repository
public class BillRepository {
	@PersistenceContext
	private EntityManager entityManager;
	
	public List<Bill> findAll() {
		Query q = entityManager.createQuery("from Bill");
		return q.getResultList();
	}
	/*
	public List<Byb> search(String bybName) {
		Query q = entityManager.createQuery("from Byb b WHERE b.bybName = :FOODNAME");
		q.setParameter("FOODNAME", bybName);
		return q.getResultList();
	}
	*/
	public Bill findById(Integer billId) {
		return entityManager.find(Bill.class, billId);
	}
	
		
	@Transactional
	public Bill save(Bill bill) {
	entityManager.persist(bill);
	return bill;
	}
	
	
	@Transactional
	public void remove(Integer billId) {
		Bill b = entityManager.find(Bill.class, billId);
		entityManager.remove(b);
	}
	

}
