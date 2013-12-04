package pract;

public class hotel {
	private String name;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImageurl() {
		return imageurl;
	}
	public void setImageurl(String imageurl) {
		this.imageurl = imageurl;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	private String imageurl;
	private String address;
	private double price;
	private String province;
	private int room_available;
	private int star_rating;
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public int getRoom_available() {
		return room_available;
	}
	public void setRoom_available(int room_available) {
		this.room_available = room_available;
	}
	public int getStar_rating() {
		return star_rating;
	}
	public void setStar_rating(int star_rating) {
		this.star_rating = star_rating;
	}
	

}
