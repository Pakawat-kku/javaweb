package civilize;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Byb {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer bybId;
	private String 	byeName;
	private Integer bybPrice;
	private Integer bybQty;
	private Integer bybTotal;
	
	public Integer getBybId() {
		return bybId;
	}
	public void setBybId(Integer bybId) {
		this.bybId = bybId;
	}
	public String getByeName() {
		return byeName;
	}
	public void setByeName(String byeName) {
		this.byeName = byeName;
	}
	public Integer getBybPrice() {
		return bybPrice;
	}
	public void setBybPrice(Integer bybPrice) {
		this.bybPrice = bybPrice;
	}
	public Integer getBybQty() {
		return bybQty;
	}
	public void setBybQty(Integer bybQty) {
		this.bybQty = bybQty;
	}
	public Integer getBybTotal() {
		return bybTotal;
	}
	public void setBybTotal(Integer bybTotal) {
		this.bybTotal = bybTotal;
	}
	public boolean hasNext() {
		// TODO Auto-generated method stub
		return false;
	}
	
	
}
