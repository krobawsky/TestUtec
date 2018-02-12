package org.springframework.samples.petclinic.web.api;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.samples.petclinic.model.Test;
import org.springframework.samples.petclinic.service.ClinicService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestResource extends AbstractResourceController {

	private final ClinicService clinicService;

    @Autowired
    public TestResource(ClinicService clinicService) {
        this.clinicService = clinicService;
    }
    
    @GetMapping(value="/tests")
    public Collection<Test> showResourcesVetList() {
        return this.clinicService.findTests();
    }
    
    @RequestMapping(value = "/tests/estres", method = RequestMethod.GET)
	public Test findTest() {
		return retrieveTest(1);
	}
    
    @RequestMapping(value = "/tests/millon", method = RequestMethod.GET)
	public Test findTest2() {
		return retrieveTest(2);
	}
    
    private Test retrieveTest(int testId) {
		return this.clinicService.findTestById(testId);
	}
}
