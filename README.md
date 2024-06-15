# SMART MONEY CONTRACT

## TRANSFERING MONEY THROUGH SEVERAL ETHER ACCOUNTS

## sendTransaction

`web3.eth.sendTransaction(transactionObject [, callback])`

1. from is an account that is sending money

2. to is an account possibly meant to receive the funds it is also optional

3. value is an unsigned integer in wei that is the amount being sent with the transaction

4. gas is the maximum amount of gas used

5. gasPrice is the amount of wei per gas

6. data is the ABI Byte String which is also optional but used during the deployment

7. nonce is the unsigned integer value of a nonce