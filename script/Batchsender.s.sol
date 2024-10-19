// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import {Script, console} from "forge-std/Script.sol";
import {Batchsender} from "../src/Batchsender.sol";

contract BatchsenderScript is Script {
    Batchsender public batchsender;

    function setUp() public {}

    function run() public {
        // Save Private key as variable for reusability
        uint privateKey = vm.envUint("DEV_PRIVATE_KEY");

        // start deployment...with Private Key
        vm.startBroadcast(privateKey);

        // Log Account to console
        address account = vm.addr(privateKey);
        console.log("Deployer Account address: ", account);

        batchsender = new Batchsender();

        vm.stopBroadcast();
    }
}
