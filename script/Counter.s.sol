// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "forge-std/Vm.sol";
import "forge-std/console.sol";
import "src/Counter.sol";

contract CounterScript is Script {
    Counter myCounter;

    function setUp() public {
        console.log("CounterScript.setUp");
        myCounter = new Counter();
        myCounter.setNumber(0);
    }

    function run() public {
        vm.broadcast();
        myCounter.increment();
        console.log("Counter Address |", address(myCounter));
        console.log(
            "[Block %s] | After 1st increment, number is %d",
            block.number,
            myCounter.getNumber()
        );
    }
}
