package com.wego.web.hotel;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class ReservationProxy {
	@Autowired HotelMapper hotelMapper;
}
