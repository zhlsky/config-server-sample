# config-server-sample

###
```
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.config.server.EnableConfigServer;

@SpringBootApplication
@EnableConfigServer //←ここは重要。Config Serverですよ〜
public class App {

	public static void main(String[] args) {
		SpringApplication.run(App.class, args);
	}
}

```

###コンフィギュレーション保存先の定義
```
spring:
  cloud:
    config:
      server:
        git:
          uri: https://github.com/zhlsky/config-repo
```
