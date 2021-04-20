pragma solidity ^0.5.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Learning.sol";

contract TestLearning {
    Learning learning = Learning(DeployedAddresses.Learning());

    function testUserCanLearnCourse() public {
        uint returnedId = learning.learn(expectedCertificateId);

        Assert.equal(returnedId, expectedCertificateId, "ID ожидаемого курса не совпадает с результатом");
    }

    function testGetLearnedCertificateByStudentInArray() public {
        address[16] memory certificates = learning.getCertificates();

        Assert.equal(certificates[expectedCertificateId], expectedStudent, "Пройденные студентом курсы не совпадают с ожидаемым");
    }

    uint expectedCertificateId = 8;

    address expectedStudent = address(this);

}
