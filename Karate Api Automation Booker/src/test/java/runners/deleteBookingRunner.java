package restfulbooker.deletebooking;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;
import org.junit.runner.RunWith;

@RunWith(Karate.class)
@KarateOptions(features = "classpath:restfulbooker/features/deleteBooking.feature")
public class deleteBookingRunner {
}
