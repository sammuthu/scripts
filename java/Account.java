

public class Account {
    private String accountNumber;
    private String accountCompanyNumber;
    private double balance;
    private String accountType;

    public Account(String accountNumber, String accountHolderName, double balance, String accountType) {
        this.accountNumber = accountNumber;
        this.accountHolderName = accountHolderName;
        this.balance = balance;
        this.accountType = accountType;
    }

    public void deposit(double amount) {
        balance += amount;
    }

    public void withdraw(double amount) {
        balance -= amount;
    }

    public void displayAccountDetails() {
        System.out.println("Account Number: " + accountNumber);
        System.out.println("Account Holder Name: " + accountHolderName);
        System.out.println("Balance: " + balance);
        System.out.println("Account Type: " + accountType);
    }

    public static void main(String[] args) {
        Account account = new Account("1234567890", "John Doe", 1000, "Savings");
        account.deposit(500);
        account.withdraw(200);
        account.displayAccountDetails();
    }
}