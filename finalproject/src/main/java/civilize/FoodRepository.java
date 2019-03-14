package civilize;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

@Repository
public class FoodRepository {
	@PersistenceContext
	private EntityManager entityManager;
	
	public List<Food> findAll() {
		Query q = entityManager.createQuery("from Food");
		return q.getResultList();
	}
	
	public List<Food> search(String foodName) {
		Query q = entityManager.createQuery("from Food b WHERE b.foodName = :FOODNAME");
		q.setParameter("FOODNAME", foodName);
		return q.getResultList();
	}
	
	public Food findById(Integer foodId) {
		return entityManager.find(Food.class, foodId);
	}
	
		
	@Transactional
	public Food insert(Food food) {
		entityManager.persist(food);
		return food;
	}
	
	@Transactional
	public void remove(Integer foodId) {
		Food b = entityManager.find(Food.class, foodId);
		entityManager.remove(b);
	}
}
