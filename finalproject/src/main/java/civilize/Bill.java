package civilize;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Bill {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer billId;
	private Integer billTotal;
	private Integer receive;
	
	public Integer getBillId() {
		return billId;
	}
	public void setBillId(Integer billId) {
		this.billId = billId;
	}
	public Integer getBillTotal() {
		return billTotal;
	}
	public void setBillTotal(Integer billTotal) {
		this.billTotal = billTotal;
	}
	public Integer getReceive() {
		return receive;
	}
	public void setReceive(Integer receive) {
		this.receive = receive;
	}
	
	
}