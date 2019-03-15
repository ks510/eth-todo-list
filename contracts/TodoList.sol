pragma solidity ^0.5.0;

contract TodoList {
  uint public taskCount = 0;  // track total number of tasks in todo list

  struct Task {
    uint id;
    string content; // text description of task
    bool completed;
  }

  mapping(uint => Task) public tasks; // lookup tasks by id

  constructor() public {
    createTask("Finish this tutorial");
  }

  function createTask(string memory _content) public {
    taskCount++;
    tasks[taskCount] = Task(taskCount, _content, false);
  }

}
