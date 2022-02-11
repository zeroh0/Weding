package com.oracle.Weding.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oracle.Weding.dto.Board;

import lombok.extern.java.Log;


@Repository
@Log
public class BoardDaoImpl implements BoardDao {
	@Autowired
	private SqlSession session;
	
	@Override
	public int total(Board board) {
		int tot = 0;
		System.out.println("BoardDaoImpl total Start...");
		try {
			tot = session.selectOne("BoardTotal",board);
		}catch (Exception e) {
			System.out.println("BoardDaoImpl total Exception -> " + e.getMessage());
			
		}
		return tot;
	}

	@Override
	public List<Board> listBoard(Board board) {
		List<Board> boardList = null;
		System.out.println("BoardDaoImpl listBoard Start...");
		try {
			boardList = session.selectList("BoardListAll",board);
		} catch (Exception e) {
			System.out.println("BoardDaoImpl listBoard Exception -> " + e.getMessage());
		}
		return boardList;
	}
	
	
	@Override
	public Board detail(int b_num) {
		System.out.println("BoardDaoImpl detail Start...");
		Board board = new Board();
		try {
			board = session.selectOne("BoardDetail", b_num);
			System.out.println("noticeBoardDetail board" +board.toString());
			
		
		} catch (Exception e) {
			System.out.println("BoardDaoImpl detail Exception "+e.getMessage());
		}
		return board;
	}

	@Override
	public int hit(int b_num) {
		System.out.println("BoardDaoImpl hit Start...");
		int kkk = 0;
		try {
			kkk = session.update("Boardhit",b_num);
		} catch (Exception e) {
			System.out.println("BoardDaoImpl hit Exception "+e.getMessage());
		}
		return kkk;
	}

	@Override
	public int delete(int b_num) {
		System.out.println("BoardDaoImpl delete Start...");
		int result = 0;
		try {
			result = session.delete("BoardDelete",b_num);
			System.out.println("BoardDaoImpl delete result"+result);
		} catch (Exception e) {
			System.out.println("BoardDaoImpl delete Exception" +e.getMessage());
		}
		return result;
	}

	@Override
	public int update(Board board) {
		System.out.println("BoardDaoImpl update Start...");
		int kkk=0;
		try {
			kkk = session.update("BoardUpdate", board);
		} catch (Exception e) {
			System.out.println("BoardDaoImpl update Exception  "+e.getMessage());
		}
		return kkk;
	}
	
	

	@Override
	public int insert(Board board) {
		int result = 0;
		System.out.println("BoardDaoImpl insert Start ..." );
		System.out.println("BoardDaoImpl insert board.getMain_cat()-->" +board.getMain_cat());
		System.out.println("BoardDaoImpl insert board.getMini_cat()-->" +board.getMini_cat());
		try {
			result = session.insert("insertBoard",board);
		} catch (Exception e) {
			System.out.println("BoardDaoImpl insert Exception->"+e.getMessage());
		}
		return result;
	}
	
	
	//1대1문의내역 목록(소비자)
	@Override
	public List<Board> qnaList(Board board) {
		List<Board> qnaList = null;
		System.out.println("BoardDaoImpl qnaList Start...");
		try {
			qnaList = session.selectList("qnaListAll",board);
		} catch (Exception e) {
			System.out.println("BoardDaoImpl qnaList Exception->"+e.getMessage());
		}
		return qnaList;
	}

	//1대1문의 내역 (핀매자)
	@Override
	public List<Board> sellerQna(Board board) {
		List<Board> sellerQna = null;
		System.out.println("BoardDaoImpl sellerQna start...");
		try {
			sellerQna = session.selectList("sellerQnaAll",board);
			
		} catch (Exception e) {
			System.out.println("BoardDaoImpl sellerQnaAll Exception "+e.getMessage());
		}
		return sellerQna;
	}

	
	
	//	답글
	@Override
	public Board replyForm(int b_num) {
		Board replyForm = null;
		System.out.println("BoardDaoImpl replyForm start. .. ");
		try {
			replyForm = session.selectOne("replyForm", b_num);
		} catch (Exception e) {
			System.out.println("BoardDaoImpl replyForm Exception " + e.getMessage());
		}

		return replyForm;
	}

//	@Override
//	public int replyShape(Board board) {
//		int result = 0;
//		System.out.println("BoardDaoImpl replyShape start.. . ");
//		try { //resukl
//			result = session.update("replyShape", board);
//		} catch(Exception e) {
//			System.out.println("BoardDaoImpl replyShape Exception " + e.getMessage());
//		}
//		
//		return result;
//	}

	@Override
	public int reply(Board board) {//글 작성. insert
		int result1 = 0;
		int result2 = 0;
		System.out.println("BoardDaoImpl reply start.. .");
		try {
			System.out.println("BoardDaoImpl reply board.getB_step()->"+board.getB_step());
		    result1 = session.update("replyShape", board);
			System.out.println("BoardDaoImpl reply result1->"+result1);
			result2 = session.insert("reply", board);
			System.out.println("BoardDaoImpl reply result2->"+result2);
		}catch(Exception e) {
			System.out.println("BoardDaoImpl reply Exception " + e.getMessage());
		}
		
		return result2;
	}

	
	/**
	 * 관리자 qna 목록 갯수
	 */
	@Override
	public int qnaBoardListTotal() {
		int tot = 0;
		try {
			tot = session.selectOne("qnaBoardListTotal");
		}catch (Exception e) {
			System.out.println("qnaBoardListTotal Exception -> " + e.getMessage());
		}
		return tot;
	}

	/**
	 * 관리자 qna
	 */
	@Override
	public List<Board> qnaBoardList(Board board) {
		List<Board> qnaBoardList = null;
		try {
			qnaBoardList = session.selectList("qnaBoardList", board);
			log.info(qnaBoardList == null? "qnaBoardList is null":"qnaBoardList is not null");
		} catch (Exception e) {
			log.info("qnaBoardList(): " + e.getMessage());
		}
		return qnaBoardList;
	}

	/**
	 * 리뷰 목록
	 */
	@Override
	public List<Board> reviewBoardList(Board board) {
		List<Board> reviewBoardList = null;
		try {
			reviewBoardList = session.selectList("reviewBoardList", board);
			log.info(reviewBoardList == null? "qnaBoardList is null":"qnaBoardList is not null");
		} catch (Exception e) {
			log.info("reviewBoardList(): " + e.getMessage());
		}
		return reviewBoardList;
	}

	/**
	 * 리뷰 작성
	 */
	@Override
	public int reviewBoardWrite(Board board) {
		int result = 0;
		try {
			result = session.insert("reviewBoardWrite", board);
		} catch (Exception e) {
			log.info("reviewBoardWrite(): " + e.getMessage());
		}
		return result;
	}

	/**
	 * 리뷰 글 목록 갯수
	 */
	@Override
	public int reviewBoardListTotal() {
		int tot = 0;
		try {
			tot = session.selectOne("reviewBoardListTotal");
		}catch (Exception e) {
			System.out.println("reviewBoardListTotal Exception -> " + e.getMessage());
		}
		return tot;
	}
	
	/**
	 * 글 보기
	 */
	@Override
	public Board detail(String b_num) {
		Board board = null;
		try {
			board = session.selectOne("boardDetailView", b_num);
		} catch (Exception e) {
			log.info("detail : " + e.getMessage());
		}
		return board;
	}
	
	
	
	
	
	
	

	
}
