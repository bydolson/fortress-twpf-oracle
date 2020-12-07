pragma solidity 0.6.8;
pragma experimental ABIEncoderV2;

import { BlockVerifier } from "fortress/BlockVerifier.sol";
import { MerklePatriciaVerifier } from "fortress/MerklePatriciaVerifier.sol";
import { Rlp } from "fortress/Rlp.sol";

contract BlockVerifierWrapper {
	function extractStateRootAndTimestamp(bytes memory input) public view returns (bytes32 stateRoot, uint256 blockTimestamp, uint256 blockNumber) {
		return BlockVerifier.extractStateRootAndTimestamp(input);
	}
}
contract MerklePatriciaVerifierWrapper {
	function getValueFromProof(bytes32 expectedRoot, bytes32 path, bytes memory proofNodesRlp) public pure returns (bytes memory) {
		return MerklePatriciaVerifier.getValueFromProof(expectedRoot, path, proofNodesRlp);
	}
}
