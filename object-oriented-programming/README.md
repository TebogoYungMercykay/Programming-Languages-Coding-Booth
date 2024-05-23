# Ruby Code Documentation

This Ruby code defines a simple system for managing a team of employees, including managers and programmers. Each employee has a base salary and earnings, which can be updated each month.

# Classes

### Employee

The `Employee` class is the base class for all employees. It has an `earnings` attribute and methods to pay the employee (`payEmployee`) and to start a new month (`newMonth`).

### Manager

The `Manager` class inherits from `Employee`. It adds a bonus to the base salary when the manager is paid.

### Programmer

The `Programmer` class also inherits from `Employee`. It allows for a variable base salary, which is a percentage of a standard amount.

### Team

The `Team` class manages a team of employees. It has methods to add a member to the team (`addMember`), pay all team members (`payTeam`), start a new month for all team members (`newMonth`), and print the earnings of all team members (`printEarnings`).

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