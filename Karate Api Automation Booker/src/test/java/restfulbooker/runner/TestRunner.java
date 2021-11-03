package restfulbooker.runner;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import org.junit.Test;
import java.io.File;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.apache.commons.io.FileUtils;

public class TestRunner{
    @Test
    public void TestRunner(){
        Results results = Runner.path("classpath:restfulbooker").tags("~@ignore").parallel(1);
        generateReport(results.getReportDir());
    }
        public static void generateReport(String karateOutputPath){
            Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[ ] {"json"}, true);
            List<String> jsonPaths = new ArrayList<>(jsonFiles.size());
            jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
            Configuration config = new Configuration(new File("target"),"ResutFullBooker");
            ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
            reportBuilder.generateReports();
        }

}
