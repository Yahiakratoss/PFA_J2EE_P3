package com.DAO;
import com.entity.BookDtls;

import java.util.List;
public interface BookDAO {

	public boolean addBooks(BookDtls b);
	public List<BookDtls> getAllBooks();
	 public BookDtls getBookById(int id);
public boolean updateEditBooks(BookDtls b);
public boolean deleteBooks(int id);
}
