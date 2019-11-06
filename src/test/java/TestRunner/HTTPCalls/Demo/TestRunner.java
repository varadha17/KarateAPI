package TestRunner.HTTPCalls.Demo;

import org.junit.runner.RunWith;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;

@RunWith(Karate.class)
@KarateOptions(
		
		features = "C:\\Users\\Varadharajan.Thiruve\\eclipse-workspace\\KarateAPIDemo\\src\\main\\java\\Feature\\HTTPCalls\\Demo"
		, tags= {"~@post","~@get","~@update","~@delete"}
		
		)

public class TestRunner {

}
