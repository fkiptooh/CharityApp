package com.make.charity.donation;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import com.make.charity.category.Category;
import com.make.charity.institution.Institution;

import javax.persistence.*;
import javax.validation.constraints.*;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

@Data
@Entity
@Table(name = "donations")

public class Donation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private int quantity;

    @ManyToMany
    @NotEmpty
    private List<Category> categories;

    @ManyToOne
    @NotNull
    private Institution institution;

    @NotBlank(message = "Niepoprawna nazwa ulicy")
    private String street;

    @NotBlank
    private String city;

    @Column(columnDefinition = "char(6)")
    @Size(min = 3, max = 6)
    private String zipCode;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate pickUpDate;

    @DateTimeFormat(pattern = "HH:mm")
    private LocalTime pickUpTime;
    private String pickUpComment;
}
