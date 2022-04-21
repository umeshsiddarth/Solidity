//SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract EmployeeSalary {
    struct SalaryList {
        uint256 salary;
        string employeeName;
    }
Poda
    SalaryList[] public salaryList; // This is a dynamic array

    mapping (string => uint256) public employeeToSalary;

    function addEmployeeAndSalary(string memory _employeeName, uint256 _salary) public {
        salaryList.push(SalaryList(_salary, _employeeName));
        employeeToSalary[_employeeName] = _salary;
    }

}