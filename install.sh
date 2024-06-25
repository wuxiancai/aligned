#!/bin/bash

curl -L https://raw.githubusercontent.com/yetanotherco/aligned_layer/main/batcher/aligned/install_aligned.sh | bash
echo "please input: source .bashrc"
read bashrc
echo $bashrc
curl -L https://raw.githubusercontent.com/yetanotherco/aligned_layer/main/batcher/aligned/get_proof_test_files.sh | bash
aligned submit  --proving_system SP1  --proof ~/.aligned/test_files/sp1_fibonacci.proof  --vm_program ~/.aligned/test_files/sp1_fibonacci-elf  --aligned_verification_data_path ~/aligned_verification_data --conn wss://batcher.alignedlayer.com

aligned verify-proof-onchain --aligned-verification-data ~/aligned_verification_data/*.json --rpc https://ethereum-holesky-rpc.publicnode.com --chain holesky

#去推特发送推文：
#aligned:
#去 discord testnet 发送 hash.
