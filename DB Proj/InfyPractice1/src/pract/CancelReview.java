package pract;

import DAO.DeleteUserDao;

public class CancelReview {

	private int reviewid;

	public int getReviewid() {
		return reviewid;
	}

	public void setReviewid(int reviewid) {
		this.reviewid = reviewid;
	}
	
	public String deletereview()
	{ 
		DeleteUserDao d = new DeleteUserDao();
		CancelReview r = new CancelReview();
		r.setReviewid(this.reviewid);
		if(d.validatereview(this.reviewid)){
		
		this.reviewid=0;	
		return "success";}
		else
		{
			this.reviewid=0;
			return "fail";}
	}
}
