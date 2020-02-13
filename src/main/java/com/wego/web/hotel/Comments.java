package com.wego.web.hotel;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Component
@NoArgsConstructor
@Lazy
public class Comments {
	private String uid, hcomments, rating, hseq;
	public Comments( String hcomments, String rating,String uid, String hseq){
		this.uid = uid;
		this.hcomments = hcomments;
		this.rating = rating;
		this.hseq = hseq;
	}
}
