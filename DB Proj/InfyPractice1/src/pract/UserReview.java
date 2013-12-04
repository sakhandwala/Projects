package pract;

import java.util.ArrayList;
import java.util.List;

import org.eclipse.jdt.internal.compiler.ast.ThisReference;

import entity.Review;
import DAO.DisplayReviewDao;
import DAO.RegistrationDao;

public class UserReview {
	private String review;
	private List<Review> dr;

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}
	
	
	public String displayreview()
	{
		dr=new ArrayList<Review>();
		DisplayReviewDao drd = new DisplayReviewDao();
		this.dr=drd.display();
		return "success1";
	}
	
		
		public List<Review> getDr() {
		return dr;
	}

	public void setDr(List<Review> dr) {
		this.dr = dr;
	}

		public String insertreview()
		{
			RegistrationDao rd1 = new RegistrationDao();
			System.out.println(this.review);
			UserReview ur=new UserReview();
			ur.setReview(this.review);
			rd1.sendreview(ur);
			return "success";
		}
	

}
