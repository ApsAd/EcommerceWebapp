package giftit.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

@Entity
public class Product {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)	
private int id;
private String pname;
private String pdesc;
private String availsize;
private String availcolor;
private int unitprice;
private float discount;
private int unitsinstock;
private String image;
private int ranking;
private String category;

@OnDelete(action=OnDeleteAction.CASCADE)
@JoinColumn(name="CID")
private int cid;
//@OneToOne(cascade = CascadeType.ALL)
@ManyToOne
public int getCid() {
	return cid;
}
public void setCid(int cid) {
	this.cid = cid;
}
public String getCategory() {
	return category;
}
public void setCategory(String category) {
	this.category = category;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getPname() {
	return pname;
}
public void setPname(String pname) {
	this.pname = pname;
}
public String getPdesc() {
	return pdesc;
}
public void setPdesc(String pdesc) {
	this.pdesc = pdesc;
}
public String getAvailsize() {
	return availsize;
}
public void setAvailsize(String availsize) {
	this.availsize = availsize;
}
public String getAvailcolor() {
	return availcolor;
}
public void setAvailcolor(String availcolor) {
	this.availcolor = availcolor;
}
public int getUnitprice() {
	return unitprice;
}
public void setUnitprice(int unitprice) {
	this.unitprice = unitprice;
}
public float getDiscount() {
	return discount;
}
public void setDiscount(float discount) {
	this.discount = discount;
}
public int getUnitsinstock() {
	return unitsinstock;
}
public void setUnitsinstock(int unitsinstock) {
	this.unitsinstock = unitsinstock;
}
public String getImage() {
	return image;
}
public void setImage(String image) {
	this.image = image;
}
public int getRanking() {
	return ranking;
}
public void setRanking(int ranking) {
	this.ranking = ranking;
}

	
}
