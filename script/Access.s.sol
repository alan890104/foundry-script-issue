// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "forge-std/console.sol";
import "src/Counter.sol";

contract AccessScript is Script {
    function setUp() public {}

    function run() public {
        // vm.broadcast();
        Counter myCounter = Counter(
            address(0xC7f2Cf4845C6db0e1a1e91ED41Bcd0FcC1b0E141)
        );
        myCounter.increment();
        console.log(
            "[Block %s] | After 2nd increment, number is %d",
            block.number,
            myCounter.getNumber()
        );
    }
}
