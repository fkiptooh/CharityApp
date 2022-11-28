package com.make.charity;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.make.charity.category.Category;
import com.make.charity.category.CategoryRepository;
import com.make.charity.donation.Donation;
import com.make.charity.donation.DonationRepository;
import com.make.charity.institution.Institution;
import com.make.charity.institution.InstitutionRepository;

import javax.validation.Valid;
import java.util.Collection;

@Controller
public class DonationController {

    private final CategoryRepository categoryRepository;
    private final InstitutionRepository institutionRepository;
    private final DonationRepository donationRepository;

    public DonationController(CategoryRepository categoryRepository, InstitutionRepository institutionRepository, DonationRepository donationRepository) {
        this.categoryRepository = categoryRepository;
        this.institutionRepository = institutionRepository;
        this.donationRepository = donationRepository;
    }

    @GetMapping("/form")
    public String formAction(Model model) {
        model.addAttribute("donation", new Donation());
        return "/form";
    }

    @PostMapping("/form")
    public String formAction(@Valid Donation donation, BindingResult result) {
        if (result.hasErrors()) {
            return "/form";
        }
        donationRepository.save(donation);
        return "redirect:/";
    }

    @ModelAttribute("categoryList")
    public Collection<Category> categoryList() {
        return this.categoryRepository.findAll();
    }

    @ModelAttribute("institutions")
    public Collection<Institution> institutions() {
        return this.institutionRepository.findAll();
    }

}
