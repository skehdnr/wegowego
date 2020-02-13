package com.wego.web.festival;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.wego.web.hotel.Hotel;

@Repository
public interface FestivalMapper {
	public void insertFestival(Festival festival);
	public List<Festival> selectFestivalList(Festival festival);
	public Festival selectFestivalInfo(int feseq);
	public void insertFestivalBook(FestivalBook festivalbook);
}
