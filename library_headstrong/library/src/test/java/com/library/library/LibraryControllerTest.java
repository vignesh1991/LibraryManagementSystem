package com.library.library;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.library.demo.sample.controller.LibraryController;
import com.library.demo.sample.entity.Library;
import com.library.demo.sample.repository.LibraryRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.web.servlet.MockMvc;

import javax.persistence.Column;
import java.sql.Date;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.when;

public class LibraryControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @MockBean
    private LibraryRepository repository;

    @Autowired
    private LibraryController libraryController;

    @Autowired
    ObjectMapper objectMapper;

    @Test
    public void getBooksTest(){
        when(repository.findAll()).thenReturn(Stream.of(new Library("HP","J.K.",new Date(946771200000L)), new Library("Inferno","Dan Brown",new Date(946771200000L))).collect(Collectors.toList()));
        assertEquals(2, libraryController.getBooks().size());
    }
    private String booking_id;


    @Column(name = "ISBN")
    private String ISBN;

    @Column(name = "booking_date")
    private Date booking_date;
    @Test
    public void getBookByField() {
        String author = "J.K.";
        when(repository.findByBookName(author)).thenReturn(Stream.of(new Library("HP","J.K.",new Date(946771200000L))).collect(Collectors.toList()));
        assertEquals(1,libraryController.count(booking_id));
    }



}


