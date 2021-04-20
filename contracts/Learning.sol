pragma solidity ^0.5.0;

contract Learning {

    address[16] public certificates;

    function learn(uint courseId) public returns (uint) {
        require(courseId >= 0 && courseId <= 15);

        certificates[courseId] = msg.sender;

        return courseId;
    }

    function getCertificates() public view returns (address[16] memory) {
        return certificates;
    }
}
