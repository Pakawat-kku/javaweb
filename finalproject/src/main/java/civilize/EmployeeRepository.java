package civilize;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

@Repository
public class EmployeeRepository {
	@PersistenceContext
	private EntityManager entityManager;
	
	public List<Employee> findAll() {
		Query q = entityManager.createQuery("from employee");
		return q.getResultList();
	}
	
	public List<Employee> search(String empName) {
		Query q = entityManager.createQuery("from employee b WHERE b.empName = :EMPNAME");
		q.setParameter("EMPNAME", empName);
		return q.getResultList();
	}
	
	public Employee findById(Integer empId) {
		return entityManager.find(Employee.class, empId);
	}
		
	@Transactional
	public Employee insert(Employee employee) {
		entityManager.persist(employee);
		return employee;
	}
	
	@Transactional
	public void remove(Integer empId) {
		Employee b = entityManager.find(Employee.class, empId);
		entityManager.remove(b);
	}
	
}