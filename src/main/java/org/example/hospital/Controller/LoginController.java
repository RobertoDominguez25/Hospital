package org.example.hospital.Controller;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.stage.Stage;
import org.example.hospital.Conexion.Conexion;

import java.io.IOException;
import java.sql.SQLException;

public class LoginController {

    @FXML
    private Label TxtDNI;

    @FXML
    private TextField TxtDni;

    @FXML
    private Button TxtEntrar;

    @FXML
    private Label TxtPassword;

    @FXML
    private TextField Txtpassword;

    private Conexion conexion;

    public void initialize() throws SQLException, IOException, ClassNotFoundException {
        conexion = new Conexion();
        conexion.conectar();
    }

    @FXML
    void onClickEntrar(ActionEvent event) throws IOException {
        FXMLLoader fxmlLoader = new FXMLLoader(getClass().getResource("/org/example/hospital/cita.fxml"));
        Parent root = fxmlLoader.load();

        Stage stage = (Stage) ((Node) event.getSource()).getScene().getWindow();
        Scene scene = new Scene(root);
        stage.setScene(scene);
        stage.show();
    }

}
