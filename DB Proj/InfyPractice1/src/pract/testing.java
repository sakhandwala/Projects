package pract;

import java.util.*;
import java.io.InputStream;
import java.net.URL;

import javax.faces.context.FacesContext;

import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;

public class testing {
	
	
	public String getStart_date() {
		return start_date;
	}
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}
	public String getEnd_date() {
		return end_date;
	}
	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}
	public int getMaxprice() {
		return maxprice;
	}
	public void setMaxprice(int maxprice) {
		this.maxprice = maxprice*100000;
	}
	public int getMinprice() {
		return minprice;
	}
	public void setMinprice(int minprice) {
		this.minprice = minprice*1000;
	}
	public int getMaxstar() {
		return maxstar;
	}
	public void setMaxstar(int maxstar) {
		this.maxstar = maxstar;
	}
	public int getMinstar() {
		return minstar;
	}
	public void setMinstar(int minstar) {
		this.minstar = minstar;
	}
	public int getChildren() {
		return children;
	}
	public void setChildren(int children) {
		this.children = children;
	}
	public int getAdults() {
		return adults;
	}
	public void setAdults(int adults) {
		this.adults = adults;
	}
	public int getNo_of_rooms() {
		return no_of_rooms;
	}
	public void setNo_of_rooms(int no_of_rooms) {
		this.no_of_rooms = no_of_rooms;
	}
	private String end_date;
	private int maxprice;
	private int minprice;
	private int maxstar;
	private int minstar;
	private int children;
	private int adults;
	private int no_of_rooms;
	private String start_date;

	
	private List<hotel> hotelList;
	
	
	public List<hotel> getHotelList() {
		return hotelList;
	}
	public void setHotelList(List<hotel> hotelList) {
		this.hotelList = hotelList;
	}
		private String country;

	
	public String  getdata() 
	
	{
		try
		{
		this.hotelList=new  ArrayList<hotel>();
		//System.out.println(1);
		String fullUrlStr1="http://api.master18.tiket.com/search/hotel?q="+this.country+"&startdate="+this.start_date+"&enddate="+this.end_date+"&room="+this.no_of_rooms+"&adult="+this.adults+"&child="+this.children+"&sort=priceasc&minprice="+this.minprice+"&maxprice="+this.maxprice+"&minstar="+this.minstar+"&maxstar="+this.maxstar+"&token&secretkey=dcde09ac1c1909661e7cac4ab3c23627&output=json";
		System.out.println(fullUrlStr1);
		URL fullUrl = new URL(fullUrlStr1);
		
		InputStream is = fullUrl.openStream();
		//System.out.println(2);
		JSONTokener tok = new JSONTokener(is);
		JSONObject result = new JSONObject(tok);
		//System.out.println(result);
		//System.out.println(3);
		System.out.println(result);
		
		JSONObject a = result.getJSONObject("results");
		System.out.println(a);
		//System.out.println(4);
		JSONArray b = a.getJSONArray("result");
		System.out.println(b);
		//System.out.println(5);
		
		if(b!= null)
		{
			//System.out.println(6);
			//System.out.println(7);
			//System.out.println(hotelList);
			//String[] name = new String[b.length()];
			for(int i=0;i<b.length();i++)
			{
				//System.out.println(i);
				hotel h= new hotel();
				
				JSONObject obj = b.getJSONObject(i);
				//System.out.println(obj.getString("photo_primary"));
				h.setName(obj.getString("name"));
				h.setImageurl(obj.getString("photo_primary"));
				h.setAddress(obj.getString("address"));
				double p = obj.getDouble("price");
				h.setPrice(p/3500*(this.no_of_rooms));
				//h.setPrice(obj.getDouble("price"));
				h.setProvince(obj.getString("province_name"));
				h.setRoom_available(obj.getInt("room_available"));
				h.setStar_rating(obj.getInt("star_rating"));
				System.out.println(h.getName());
				//System.out.println(h.getImageurl());
				//System.out.println(h);
				this.hotelList.add(h);
				//System.out.println(obj.getString("name"));
			}
			//testing lb= (testing) FacesContext.getCurrentInstance().getExternalContext().getSessionMap().get("testing");
			//List<hotel> kk=lb.getHotelList();
			System.out.println(hotelList.size());
			System.out.println(hotelList.get(0).getName());
			this.country="";
			this.end_date="";
			this.maxprice=0;
			this.minprice=0;
			this.maxstar=0;
			this.minstar=0;
			this.children=0;
			this.adults=0;
			this.no_of_rooms=0;
		    this.start_date="";
			return "success";
		}
		else {
			this.country="";
			this.end_date="";
			this.maxprice=0;
			this.minprice=0;
			this.maxstar=0;
			this.minstar=0;
			this.children=0;
			this.adults=0;
			this.no_of_rooms=0;
		    this.start_date="";
			
			return "fail";
		}
		}
		
		catch(Exception e)
		{
			System.out.println(e);
			return "fail";
		}
		}
	
	
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	
}

