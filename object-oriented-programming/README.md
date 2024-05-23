# Ruby Code Documentation

This Ruby code defines a simple system for managing a team of employees, including managers and programmers. Each employee has a base salary and earnings, which can be updated each month.

# Explanation:

1. **Employee Class**:
   - Contains `@earnings`, `@base_salary`, and `@base_salary_paid` as instance variables.
   - The constructor initializes `@earnings` to 0, sets `@base_salary`, and `@base_salary_paid` to `false`.
   - `payEmployee` method pays the base salary if it hasn't been paid for the month.
   - `newMonth` method resets the `@base_salary_paid` flag.

2. **Manager Class**:
   - Inherits from `Employee`.
   - Adds `@bonus` as an additional instance variable.
   - Overrides `payEmployee` to add the bonus to the earnings every time it's called.

3. **Programmer Class**:
   - Inherits from `Employee`.
   - The constructor takes a percentage, calculates the base salary, and calls the parent constructor with this value.

4. **Team Class**:
   - Manages a list of employees (`@members`).
   - `addMember` method adds an employee to the team, enforcing a maximum of 2 members.
   - `payTeam` method calls `payEmployee` on all team members.
   - `newMonth` method resets the month for all team members.
   - `printEarnings` method prints the earnings of all team members.

5. **Test Code**:
   - Prompts the user for manager's bonus and creates a manager.
   - Adds the manager to two teams.
   - Prompts the user for programmer percentages for each team and adds a programmer to each team.
   - Loops to pay the teams for each month until the user decides to stop.
   - Prints the earnings for all team members at the end.

This implementation ensures that the manager receives the correct bonuses and base salary, and programmers are paid according to the specified percentage of the base salary. The design adheres to object-oriented principles by using inheritance and encapsulation effectively.

# Running Ruby Code

1. Open a terminal.

2. Navigate to the directory where your Ruby file is located. For example, if your file is in the `Documents` directory, you would use the `cd` command to change directories:
```bash
cd ~/Documents
```

3. Run the Ruby file using the `ruby` command followed by the file name:
```bash
ruby your_file.rb
```

You will be prompted to enter the manager's bonus amount and the percentage for the programmer's salary for each team. You can then choose to pay the teams for another month of work or end payments. At the end, the earnings for each team member will be printed.

# Installation

### On Linux

1. Update your system packages:
```bash
sudo apt-get update
```

2. Install dependencies for `rbenv` and Ruby:
```bash
sudo apt-get install rbenv
```

3. Install Ruby:
```bash
rbenv install 2.5.0
```

4. Set Ruby 2.5.0 as the default version for your session:
```bash
rbenv global 2.5.0
```

5. Verify that Ruby was properly installed:
```bash
ruby -v
```

---
---