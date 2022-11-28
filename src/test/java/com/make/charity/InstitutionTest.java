package com.make.charity;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.annotation.Rollback;

import com.make.charity.institution.Institution;
import com.make.charity.institution.InstitutionRepository;

import static org.assertj.core.api.Assertions.assertThat;

@DataJpaTest
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
@Rollback(value = false)
public class InstitutionTest {
    @Autowired
    private InstitutionRepository repo;

    @Test
    public void createInstitution(){
        Institution createInstitution = new Institution("Children's Home", "Goal and mission: Helping children in a difficult life situation");
        Institution savedInstitution = repo.save(createInstitution);
        assertThat(savedInstitution.getId()).isGreaterThan(0);
    }
}
