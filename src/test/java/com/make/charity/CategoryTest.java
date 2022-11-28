package com.make.charity;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.annotation.Rollback;

import com.make.charity.category.Category;
import com.make.charity.category.CategoryRepository;

import static org.assertj.core.api.Assertions.assertThat;

@DataJpaTest
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
@Rollback(value = false)
public class CategoryTest {
    @Autowired
    private CategoryRepository repo;

    @Test
    public void createCategory(){
        Category firstCategory = new Category("Electronics");
        Category savedCategory = repo.save(firstCategory);
        assertThat(savedCategory.getId()).isGreaterThan(0);
    }
}
