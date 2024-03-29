package com.uca.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "Estudiante")

//Verificar la generacion de los getters y setters, lombok
@Getter
@Setter
public class Estudiante {
	
	@Id
	@Column(name="idEstudiante")
	Integer idEstudiante; 
	
	@Column(name="Carnet")
	String carnetEstudiante; 
	
	@Column(name="Correo")
	String correoEstudiante; 
	
	@Column(name="Nombre")
	String nombreEstudiante;
	
	@Column(name="Contrasena")
	String contrasenaEstudiante;
	
	@Column(name="Carrera")
	Integer carreraEstudiante;

	public Integer getIdEstudiante() {
		return idEstudiante;
	}

	public void setIdEstudiante(Integer idEstudiante) {
		this.idEstudiante = idEstudiante;
	}

	public String getCarnetEstudiante() {
		return carnetEstudiante;
	}

	public void setCarnetEstudiante(String carnetEstudiante) {
		this.carnetEstudiante = carnetEstudiante;
	}

	public String getNombreEstudiante() {
		return nombreEstudiante;
	}

	public void setNombreEstudiante(String nombreEstudiante) {
		this.nombreEstudiante = nombreEstudiante;
	}
	
	public String getCorreoEstudiante() {
		return correoEstudiante;
	}

	public void setCorreoEstudiante(String correoEstudiante) {
		this.correoEstudiante = correoEstudiante;
	}

	public String getContrasenaEstudiante() {
		return contrasenaEstudiante;
	}

	public void setContrasenaEstudiante(String contrasenaEstudiante) {
		this.contrasenaEstudiante = contrasenaEstudiante;
	}

	public Integer getCarreraEstudiante() {
		return carreraEstudiante;
	}

	public void setCarreraEstudiante(Integer carreraEstudiante) {
		this.carreraEstudiante = carreraEstudiante;
	}
	
	
	
	
}
