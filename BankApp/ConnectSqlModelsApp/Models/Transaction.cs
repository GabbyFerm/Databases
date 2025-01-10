using System;
using System.Collections.Generic;

namespace ConnectSqlModelsApp.Models;

public partial class Transaction
{
    public int TransactionId { get; set; }

    public DateTime Date { get; set; }

    public decimal Amount { get; set; }

    public int AccountNumber { get; set; }

    public int CustomerId { get; set; }

    public virtual Account AccountNumberNavigation { get; set; } = null!;

    public virtual Customer Customer { get; set; } = null!;
}
