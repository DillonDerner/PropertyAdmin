package main;

import javafx.application.Application;
import javafx.geometry.Insets;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.layout.GridPane;
import javafx.stage.Stage;

public class Main extends Application {

    Stage window;

    public static void main(String[] args) {
        launch(args);
    }

    @Override
    public void start(Stage primaryStage) throws Exception {
        window = primaryStage;
        window.setTitle("Title here");
        window.setOnCloseRequest(e -> {
            e.consume();
            closeProgram();
        });

        GridPane gridPane = new GridPane();
        gridPane.setPadding(new Insets(10)); // edge padding
        gridPane.setVgap(8);  // Vertical   cell spacing
        gridPane.setHgap(10); // Horizontal cell spacing

        // Login Screen

        // Name Field
        Label nameLabel = new Label("Username:");
        nameLabel.setId("bold-label");
//        nameLabel.setStyle("-fx-text-fill: #E8E8E8");
        GridPane.setConstraints(nameLabel, 0, 0);
        TextField nameInput = new TextField("Dillon");
        GridPane.setConstraints(nameInput, 1, 0);

        // Password Field
        Label passLabel = new Label("Password:");
        GridPane.setConstraints(passLabel, 0, 1);
        TextField passInput = new TextField();
        passInput.setPromptText("Enter your Password"); //This line is cool!
        GridPane.setConstraints(passInput, 1, 1);

        // Login button
        Button loginButton = new Button("Login");
//        loginButton.setOnAction(event -> {
//            setUserAgentStylesheet(  );
//        });
        GridPane.setConstraints(loginButton, 1, 2);

        // Sign up Button
        Button signupButton = new Button("Sign Up");
        signupButton.getStyleClass().add("button-blue");
        GridPane.setConstraints(signupButton, 1, 3);

        gridPane.getChildren().addAll(nameLabel, nameInput, passInput, passLabel, loginButton, signupButton);
        Scene scene = new Scene(gridPane, 300, 200);
        scene.getStylesheets().add("tutorial_18_CSS_Themes_and_Styles/Viper.css");
        window.setScene(scene);
        window.show();

    }

    private void closeProgram() {
        boolean result = ConfirmBox.display("Close Program?", "Are you sure you want to Close the Application?");
        if(result){
            window.close();
        }
    }


}
