package restfulbooker.createbooking;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;
import org.junit.runner.RunWith;

@RunWith(Karate.class)
@KarateOptions(features = "classpath:restfulbooker/features/createBooking.feature")
public class createBookingRunner {
}
