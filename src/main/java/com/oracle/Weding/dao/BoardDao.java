package com.oracle.Weding.dao;

import java.util.List;

import com.oracle.Weding.dto.Board;

public interface BoardDao {
	int total();
	List<Board> listBoard(Board board);
	List<Board> qnaBoardList(Board board);
	List<Board> reviewBoardList(Board board);
	int reviewBoardWrite(Board board);
	int qnaBoardListTotal();
	int reviewBoardListTotal();
	Board detail(String b_num);

}
