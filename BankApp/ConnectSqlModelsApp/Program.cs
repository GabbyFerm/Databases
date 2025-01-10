using System;
using System.Linq;
using ConnectSqlModelsApp.Models;

class Program
{
    static void Main(string[] args)
    {
        using (var context = new SimpleBankAppDbContext())
        {
            // Test: Retrieve all customers
            Console.WriteLine("All Customers:");
            var customers = context.Customers.ToList();
            foreach (var customer in customers)
            {
                Console.WriteLine($"ID: {customer.CustomerId}, Name: {customer.Name}, Email: {customer.Email}");
            }

            // Test: Add a new customer
            Console.WriteLine("\nAdding a new customer...");
            var newCustomer = new Customer
            {
                CustomerId = 5, // Ensure this ID doesn't already exist
                Name = "John Jonsson",
                Email = "john.jonsson@example.com",
                PhoneNumber = "0701234567",
                Address = "Storgatan 1, Uppsala"
            };
            context.Customers.Add(newCustomer);
            context.SaveChanges();
            Console.WriteLine($"New customer added with ID: {newCustomer.CustomerId}, Name: {newCustomer.Name}");

            // Test: Update an existing customer
            Console.WriteLine("\nUpdating a customer...");
            var existingCustomer = context.Customers.FirstOrDefault(c => c.CustomerId == 5);
            if (existingCustomer != null)
            {
                existingCustomer.Name = "John J.";
                context.SaveChanges();
                Console.WriteLine($"Customer updated: {newCustomer.CustomerId}, Name: {newCustomer.Name}");
            }

            // Test: Delete a customer
            Console.WriteLine("\nDeleting a customer...");
            var customerToDelete = context.Customers.FirstOrDefault(c => c.CustomerId == 5);
            if (customerToDelete != null)
            {
                context.Customers.Remove(customerToDelete);
                context.SaveChanges();
                Console.WriteLine($"Customer with ID: {customerToDelete.CustomerId} deleted.");
            }

            // Test: Fetch accounts for a specific customer
            Console.WriteLine("\nFetching accounts for CustomerId = 1...");
            var accounts = context.Accounts.Where(a => a.Owner == 1).ToList();
            foreach (var account in accounts)
            {
                Console.WriteLine($"Account Number: {account.AccountNumber}, Balance: {account.Balance}, Type: {account.AccountType}");
            }
        }
    }
}