# Simple Interest Calculator

A simple program that calculates the **Simple Interest (SI)** and the **Total Amount** for a given principal, rate of interest (per annum) and time period (in years).

## Formula

```
Simple Interest (SI) = (P × R × T) / 100
Total Amount (A)     = P + SI
```

| Symbol | Meaning                        | Unit      |
|--------|--------------------------------|-----------|
| P      | Principal amount               | ₹ (or any currency) |
| R      | Rate of interest per annum     | %         |
| T      | Time period                    | Years     |
| SI     | Simple Interest                | ₹         |
| A      | Total amount after time T      | ₹         |

## Features

- Accepts principal, rate and time as user input
- Computes simple interest using the standard formula
- Displays the total amount payable (principal + interest)
- Validates input (values must be positive numbers)

## Algorithm

1. Start
2. Read the principal (P), rate of interest (R) and time (T)
3. Check that P, R and T are positive; otherwise show an error
4. Compute SI = (P × R × T) / 100
5. Compute A = P + SI
6. Display SI and A
7. Stop

## Example

| Input | Value |
|-------|-------|
| Principal (P) | ₹10,000 |
| Rate (R) | 5% per annum |
| Time (T) | 3 years |

```
SI = (10000 × 5 × 3) / 100 = ₹1,500
A  = 10000 + 1500          = ₹11,500
```

## Sample Code (Python)

```python
def simple_interest(principal: float, rate: float, time: float) -> float:
    """Return simple interest for the given principal, annual rate (%) and time (years)."""
    if principal <= 0 or rate <= 0 or time <= 0:
        raise ValueError("Principal, rate and time must be positive numbers.")
    return (principal * rate * time) / 100


if __name__ == "__main__":
    p = float(input("Enter principal amount: "))
    r = float(input("Enter annual rate of interest (%): "))
    t = float(input("Enter time period (years): "))

    si = simple_interest(p, r, t)
    print(f"Simple Interest = {si:.2f}")
    print(f"Total Amount    = {p + si:.2f}")
```

## How to Run

```bash
python simple_interest.py
```

**Sample run:**

```
Enter principal amount: 10000
Enter annual rate of interest (%): 5
Enter time period (years): 3
Simple Interest = 1500.00
Total Amount    = 11500.00
```

## Applications

- Calculating interest on short-term loans
- Fixed deposits and savings with simple interest
- Teaching basic financial mathematics

## Author

GitHub: [sharlii13](https://github.com/sharlii13)
