package civilize;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

@Repository
public class BybRepository {
	@PersistenceContext
	private EntityManager entityManager;
	
	public List<Byb> findAll() {
		Query q = entityManager.createQuery("from Byb");
		return q.getResultList();
	}
	
	public List<Byb> search(String bybName) {
		Query q = entityManager.createQuery("from Byb b WHERE b.bybName = :FOODNAME");
		q.setParameter("FOODNAME", bybName);
		return q.getResultList();
	}
	
	public Byb findById(Integer bybId) {
		return entityManager.find(Byb.class, bybId);
	}
	
		
	@Transactional
	public Byb save(Byb byb) {
	entityManager.persist(byb);
	return byb;
	}
	
	
	@Transactional
	public void remove(Integer bybId) {
		Byb b = entityManager.find(Byb.class, bybId);
		entityManager.remove(b);
	}
}
