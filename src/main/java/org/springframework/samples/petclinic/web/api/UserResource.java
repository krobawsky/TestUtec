package org.springframework.samples.petclinic.web.api;

import javax.validation.Valid;
import org.apache.log4j.Logger; 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.samples.petclinic.model.Alumno;
import org.springframework.samples.petclinic.model.User;
import org.springframework.samples.petclinic.service.ClinicService;
import org.springframework.samples.petclinic.service.UserService;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserResource extends AbstractResourceController {
	
	private final Logger logger = Logger.getLogger(UserResource.class);
	
	private final UserService userService;
	private final ClinicService clinicService;
	
	
	@Autowired
	public UserResource(UserService userService, ClinicService clinicService) {
		this.userService = userService;
		this.clinicService = clinicService;
	}
	
	private User retrieveUser(int userId) {
		return this.userService.findUserById(userId);
	}
	
	@RequestMapping(value = "/loginA", method = RequestMethod.POST)
	@ResponseStatus(HttpStatus.CREATED)
	public User validacionCredencialAdmin(@RequestBody @Valid User user, BindingResult bindingResult) {
		
		logger.info("Corriendo en UserResource...");
		logger.info("Username del formulario :"+user.getUsername());
		logger.info("Password del formulario :"+user.getPassword());
		/*if (bindingResult.hasErrors()) {
			throw new InvalidRequestException("Invalid user", bindingResult);
		} */
		
		///si no coincide, entonces devuelve null. 
		User var_usuario = this.userService.findByUsername(user.getUsername());
		logger.info("--- Username valido :"+var_usuario.getId());
		logger.info("--- Username valido :"+var_usuario.getUsername());
		logger.info("--- Username valido :"+var_usuario.getPassword());
		logger.info("--- Username valido :"+var_usuario.getRol());
		
		///logger.info("--- Username valido :"+Hash.sha1(var_usuario.getPassword()));
		
		User confirm_usuario = new User();
		
		confirm_usuario = null;
		
		 String username = var_usuario.getUsername();
		 String password = var_usuario.getPassword();
		 String rol = var_usuario.getRol();
		 
		 String var = "ADMIN";
		 
		if (username.equals(user.getUsername()) && password.equals(user.getPassword()) && rol.equals(var)) {
			logger.info("Por fin te hiciste el maldito login ****!!!");
			
			confirm_usuario = this.userService.findByUsername(user.getUsername());
		
		}
		 
		
		return confirm_usuario;
		}
	
	
	@RequestMapping(value = "/loginT", method = RequestMethod.POST)
	@ResponseStatus(HttpStatus.CREATED)
	public User validacionCredencialTutor(@RequestBody @Valid User user, BindingResult bindingResult) {
		
		logger.info("Corriendo en UserResource...");
		logger.info("Username del formulario :"+user.getUsername());
		logger.info("Password del formulario :"+user.getPassword());
		/*if (bindingResult.hasErrors()) {
			throw new InvalidRequestException("Invalid user", bindingResult);
		} */
		
		///si no coincide, entonces devuelve null. 
		User var_usuario = this.userService.findByUsername(user.getUsername());
		logger.info("--- Username valido :"+var_usuario.getId());
		logger.info("--- Username valido :"+var_usuario.getUsername());
		logger.info("--- Username valido :"+var_usuario.getPassword());
		logger.info("--- Username valido :"+var_usuario.getRol());
		
		///logger.info("--- Username valido :"+Hash.sha1(var_usuario.getPassword()));
		
		User confirm_usuario = new User();
		
		confirm_usuario = null;
		
		 String username = var_usuario.getUsername();
		 String password = var_usuario.getPassword();
		 String rol = var_usuario.getRol();
		 
		 String var = "TUTOR";
		 
		if (username.equals(user.getUsername()) && password.equals(user.getPassword()) && rol.equals(var)) {
			logger.info("Por fin te hiciste el maldito login ****!!!");
			
			confirm_usuario = this.userService.findByUsername(user.getUsername());
		
		}
		 
		
		return confirm_usuario;
		}
	
	@RequestMapping(value = "/loginE", method = RequestMethod.POST)
	@ResponseStatus(HttpStatus.CREATED)
	public Alumno validacionCredencialEstudiante(@RequestBody @Valid Alumno alumno, BindingResult bindingResult) {
		
		logger.info("Corriendo en UserResource...");
		logger.info("Codigo ingresado desdel formulario :"+alumno.getCodigo());
		logger.info("Password ingresado desdel formulario :"+alumno.getPassword());
		
		//convertiendo de string a int
		//int codigoformulario = Integer.parseInt(alumno.getCodigo());
		
		///si no coincide, entonces devuelve null. 
		Alumno var_alumno = this.clinicService.findAlumnoByCodigo(alumno.getCodigo());
		logger.info("--- Username valido :"+var_alumno.getId());
		logger.info("--- Username valido :"+var_alumno.getCodigo());
		logger.info("--- Username valido :"+var_alumno.getPassword());
		
		///logger.info("--- Username valido :"+Hash.sha1(var_usuario.getPassword()));
		
		Alumno confirm_alumno = new Alumno();
		
		confirm_alumno = null;
		
		 String codigo = var_alumno.getCodigo();
		 String password = var_alumno.getPassword();
		 
		 String var = "TUTOR";
		 
		if (codigo.equals(alumno.getCodigo()) && password.equals(alumno.getPassword())){
			logger.info("Credenciales alumno valido");
			
			confirm_alumno = this.clinicService.findAlumnoByCodigo(alumno.getCodigo());
		
		}
		 
		return confirm_alumno;
		}
			
	
	/**
	 * Read single Owner
	 */
	@RequestMapping(value = "/users/{userId}", method = RequestMethod.GET)
	public User findUser(@PathVariable("userId") int userId) {
		return retrieveUser(userId);
	}
	

}
