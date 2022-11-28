package com.make.charity;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.make.charity.donation.DonationRepository;
import com.make.charity.institution.InstitutionRepository;


@Controller
public class HomeController {

    private final InstitutionRepository institutionRepository;
    private final DonationRepository donationRepository;

    public HomeController(InstitutionRepository institutionRepository, DonationRepository donationRepository) {
        this.institutionRepository = institutionRepository;
        this.donationRepository = donationRepository;
    }

    @GetMapping("/")
    public String homeAction(Model model) {
        model.addAttribute("institutions", institutionRepository.findAll());
        model.addAttribute("quantityCount", donationRepository.quantityCount());
        model.addAttribute("quantityAll", donationRepository.quantityAll());
        return "/index";
    }

    @GetMapping("/confirm")
    public String confirmAction() {
       return "/form-confirmation";
    }

}
