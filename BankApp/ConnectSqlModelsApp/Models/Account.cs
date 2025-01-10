using System;
using System.Collections.Generic;

namespace ConnectSqlModelsApp.Models;

public partial class Account
{
    public int AccountNumber { get; set; }

    public decimal Balance { get; set; }

    public string AccountType { get; set; } = null!;

    public int Owner { get; set; }

    public virtual Customer OwnerNavigation { get; set; } = null!;

    public virtual ICollection<Transaction> Transactions { get; set; } = new List<Transaction>();
}
