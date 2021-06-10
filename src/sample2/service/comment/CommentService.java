package sample2.service.comment;

import java.sql.Connection;
import java.util.List;

import sample2.bean.Comment;
import sample2.dao.CommentDao;
import sample2.util.DBConnection;

public class CommentService {
	
	private static CommentDao dao;
	
	static {
		dao = new CommentDao();
	}

	public void add(Comment commentBean) {
		Connection con = DBConnection.getConnection();
		
		dao.insert(commentBean, con);
		
		DBConnection.close(con);
		
	}
     //서비스에서 하는일
	// 다오에 리스트 메소드를 만들어준다 여기서 메소드 만들고 다오로 이동 
	public List<Comment> list(int boardId) {
		Connection con = DBConnection.getConnection();
		
		List<Comment> list = dao.list(boardId, con);
		
		DBConnection.close(con);
		return list;
	}
	
    // 5교시
	public void modify(Comment comment) {
		Connection con = DBConnection.getConnection();
		
		dao.modify(comment, con);
		
		DBConnection.close(con);
		
	}
	
     // 6교시
	public void remove(int id) {
		
		Connection con = DBConnection.getConnection();
		
		dao.remove(id, con);
		
		DBConnection.close(con);
	}

	
}











