package com.class4.command.mapping;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MovieActorVO {
	
	private int mano;
	private String mno;
	private String ano;
	public MovieActorVO(String mno, String ano) {
		this.mno = mno;
		this.ano = ano;
	}
	
	
	
}
