import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Profile;

@SpringBootApplication
public class Application {
    public static void main(String[] args) {
        SpringApplication application = new SpringApplication(Application.class);
        String profile = System.getenv("DEPLOY_ENV");
        if (profile == null || profile.isEmpty()) {
            profile = "blue";  // default to blue
        }
        application.setAdditionalProfiles(profile);
        application.run(args);
    }
}
