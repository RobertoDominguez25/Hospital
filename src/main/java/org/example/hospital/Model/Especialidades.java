package org.example.hospital.Model;

public class Especialidades {
    private String especialidad;
    public String getEspecialidad() {
        return "";
    }

    public Especialidades(String especialidad) {
        this.especialidad = especialidad;
    }

    public void setEspecialidad(String especialidad) {
        this.especialidad = especialidad;
    }

    @Override
    public String toString() {
        return "Especialidades{" +
                "especialidad='" + especialidad + '\'' +
                '}';
    }
}
