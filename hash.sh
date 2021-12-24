# test_merkleTree.js
const {MerkleTree}= require('merkletreejs')
const SHA256 = require('crypto-js/sha256')
// # SHA256 사용
//console.log(SHA256('a').toString())
// # 배열 써서 SHA256 출력
const testSet = ['a', 'b', 'c', 'd', 'e']
const testArray = testSet.map((v)=>SHA256(v).toString())
//console.log(testArray)
// # 머클트리 출력해보기
const testMerkleTree = new MerkleTree(testArray, SHA256)
//console.log(testMerkleTree)
// # 머클루트 출력해보기
const merkleRoot = testMerkleTree.getRoot()
//console.log(merkleRoot)
//console.log(merkleRoot.toString('hex'))
// # 값 'a' 유효성 검증
const testvalue = 'a'
const leaf = SHA256(testvalue)
const proof = testMerkleTree.getProof(leaf) //a의 값을 검증하겠다
//console.log(proof)
const result = testMerkleTree.verify(proof, leaf, merkleRoot)
//console.log(result)
_______________________