package org.teamchallenge.bookshop.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.teamchallenge.bookshop.dto.BookDto;

public interface BookService {


    void deleteBook(Long id);

}
