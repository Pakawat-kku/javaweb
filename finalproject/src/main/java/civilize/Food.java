package civilize;

import java.util.ArrayList;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Food {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer foodId;
	private String foodName;
	private Integer foodStatus;
	private String price;
	
	public Integer getFoodId() {
		return foodId;
	}
	public Integer getFoodStatus() {
		return foodStatus;
	}
	public void setFoodStatus(Integer foodStatus) {
		this.foodStatus = foodStatus;
	}
	public void setFoodId(Integer foodId) {
		this.foodId = foodId;
	}
	public String getFoodName() {
		return foodName;
	}
	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	

}