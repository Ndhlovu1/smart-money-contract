# SMART MONEY CONTRACT

## TRANSFERING MONEY THROUGH SEVERAL ETHER ACCOUNTS

## sendTransaction

`web3.eth.sendTransaction(transactionObject, address [, callback])`

1. from is an account that is sending money

2. to is an account possibly meant to receive the funds it is also optional

3. value is an unsigned integer in wei that is the amount being sent with the transaction

4. gas is the maximum amount of gas used

5. gasPrice is the amount of wei per gas

6. data is the ABI Byte String which is also optional but used during the deployment

7. nonce is the unsigned integer value of a nonce

**R, S, V : USED FOR CREATING A SIGNED TRANSACTION**

### Cryptographic Hashing 

FIVE MAIN PROPERTIES

1. It is deterministic, so the same message always results in the same hash

2. It is quick to compute the hash value for any given message

3. It is infeasible to generate a message from it's hash value except by trying all possible messages

4. A small change should change the hash value so extensively that the new hash value appears uncorrelated with the old hash value

5. It is infeasible to find 2 messages with the same hash value

**HASHING OF HASHES IS WHAT THE BLOCKCHAIN IS BUILT UPON. IT IS ALSO THE MATHEMATICAL FOUNDATION OF THE BLOCKCHAIN**

1. A block, transaction hashes are mixed together and produce new hashes that are nearly impossible to predict and continuously keep a copy with each and every peer to keep atleast 5 or more nodes connected.

2. Changing a blocks information changes all other blocks too.

### Update / Delete Transactions

1. Gas Price Auction : The higher the gas price, the more likely it is to get mined

2. Send the same transaction nonce with higher gas fee. To *Update* : Send and requires a higher gas fee than previous transaction. To *Cancel* : You should send no data and the  *to* = *from* of the transaction. Sending the same transaction to yourself with the same nonce then you cancel it. Ensure you have access to the private key as well.

**TO UPDATE / DELETE A TRANSACTION**

1. Use MetaMast to either cancel or Speed Up and you will be prompted to cancel.

*UPDATE WITH INFO FROM THE ETHERSCAN*

METAMASK

1. Click the transaction on etherscan, then click *See More*

2. On Metamask, go to your account, then click settings, advanced, then you will see, `customize transaction nonce`, click ON. Then click on Send to yourself and send 0eth & click next. You will then see the custom nonce and click Confirm. If you have other transcations pending with higher nonce get cancelled first else they'll get mined once the first is mined.

### Send Ether to a Smart Contract

1. payable Modifier : Used to highlight functions meant to receive and hold ether 
e.g. 
```solidity
function updateMessage(string memory _message) public payable{
    message = _message;
}
```

**LOW LEVEL TRANSACTIONS : Send 1 single transaction from our account** 

