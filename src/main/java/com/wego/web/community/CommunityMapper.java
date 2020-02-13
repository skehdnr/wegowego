package com.wego.web.community;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface CommunityMapper {
	public void createCommunity(HashMap<String, String> paramMap);
	public void createLike(HashMap<String, String> paramMap);
	public void createReply(HashMap<String, String> paramMap);
	public void dropCommunity(HashMap<String, String> paramMap);
	public void truncateCommunity(HashMap<String, String> paramMap);
	
	public void insertCommunity(Community r);
	public List<Community> communitylist(CommunityProxy pxy);
	//public List<Community> selectCommunityList(Community community);
	public List<Community> allcommunitylist();
	public int countCommunity();
	public void insertReply(Reply c);
	public List<Reply> getreply(int artseq);
	public int selectbyuid(Community r);
	public void insertIMG(Community r);
	public int likecount(String artseq);
	public String liked(Like l);

}
