import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class JiraTicketCreator {

    public static void main(String[] args) {
        // Set the path to the chromedriver executable
        System.setProperty("webdriver.chrome.driver", "path/to/chromedriver.exe");

        // Create a new instance of the Chrome driver
        WebDriver driver = new ChromeDriver();

        // Navigate to the JIRA login page
        driver.get("https://your-jira-instance.com/login.jsp");

        // Enter your JIRA username and password
        WebElement username = driver.findElement(By.id("login-form-username"));
        WebElement password = driver.findElement(By.id("login-form-password"));
        WebElement submit = driver.findElement(By.id("login-form-submit"));

        username.sendKeys("your-username");
        password.sendKeys("your-password");
        submit.click();

        // Wait for the JIRA dashboard to load
        WebElement createButton = driver.findElement(By.id("create_link"));
        createButton.click();

        // Fill out the JIRA issue form
        WebElement issueType = driver.findElement(By.id("issuetype-field"));
        issueType.sendKeys("Bug");

        WebElement summary = driver.findElement(By.id("summary"));
        summary.sendKeys("Example Bug Report");

        WebElement description = driver.findElement(By.id("description"));
        description.sendKeys("This is an example bug report created using Selenium WebDriver");

        // Submit the JIRA issue
        WebElement createIssue = driver.findElement(By.id("create-issue-submit"));
        createIssue.click();

        // Close the current window to leave the browser running
        driver.close();
    }
}
