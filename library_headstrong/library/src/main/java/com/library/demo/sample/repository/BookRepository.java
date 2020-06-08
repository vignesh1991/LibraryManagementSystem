package com.library.demo.sample.repository;


import com.library.demo.sample.entity.Book;
import org.springframework.data.repository.CrudRepository;

import java.util.Collection;

public interface BookRepository extends CrudRepository<Book, Long> {

    Collection<Object> getBook();
}
