package entity;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the review database table.
 * 
 */
@Entity
@NamedQuery(name="Review.findAll", query="SELECT r FROM Review r")
public class Review implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int reviewid;

	@Lob
	private String review;

	public Review() {
	}

	public int getReviewid() {
		return this.reviewid;
	}

	public void setReviewid(int reviewid) {
		this.reviewid = reviewid;
	}

	public String getReview() {
		return this.review;
	}

	public void setReview(String review) {
		this.review = review;
	}

}