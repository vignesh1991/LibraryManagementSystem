package com.library.demo.sample.repository;

import com.library.demo.sample.entity.Library;
import org.springframework.data.repository.CrudRepository;


public interface LibraryRepository extends CrudRepository<Library, Long> {

    Object findByBookName(String author);
}