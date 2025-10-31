import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.scene.control.Button;
import javafx.scene.layout.TilePane;
import javafx.scene.layout.StackPane;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

public class HelloFX extends Application {

    @Override
    public void start(Stage stage) {
        stage.setTitle("Hello World JavaFX");

        Label l = new Label("Hello World!");
        Button b = new Button("Exit");
        
        b.setOnAction(event -> {
            System.exit(0);
        });

        VBox vbox = new VBox();
        vbox.getChildren().addAll(l, b);
    
        TilePane tile_pane = new TilePane();
        tile_pane.getChildren().add(vbox);

        Scene scene = new Scene(tile_pane, 100, 50);
        stage.setScene(scene);
        stage.show();
    }

    public static void main(String[] args) {
        launch();
    }

}
