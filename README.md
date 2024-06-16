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

## ETHEREUM BACKGROUND

### SETTER & GETTER FUNCTIONS

1. Writing Transactions - from cache

2. Reading Transactionas are calls

CALLS ARE MADE AGAINST A LOCAL BLOCKCHAIN NODE:

1. Everyone has a copy of the blockchain

2. If you dont need to change anything, you dont need to inform other participants

3. Reading is free


### FUNCTIONS

1. View function : Reads from the state and other view functions

2. Pure Functions : Not reading or modifying the state

#### FUNCTION VISIBILITY

1. Public : Can be called internally and externally

2. Private : Only called within the contract and not externally available even from other contracts

3. External : Can only be called from other contracts and called externally.

4. Internal : Only from the contract itself or from derived contracts. Cant be invoked by a transaction.

**CONSTRUCTOR** : A function with the name constructor, it is only called once and this is during the initial deployment. It is either public or internal.

**FALLBACK FUNCTION** 

1. A function with the name `fallback() external [payable]` to receive

2. A function with the name `receive() external payable` to receive a value without calldata

3. Called when a transaction with the wrong function signature is sent to the smart contract

4. Can only be external and the Fallback payable is optional

5. Contracts without a function & a fallback function will throw an error

6. You cant completely avoid receiving Ether, the miner reward or `self destruct(address)` will forcefully credit ether

7. Worst case, you can only rely on 2300gas. hence the send only has 2300gas along. `_contractAddress.transfer(1 ether);` send only 2300

8. Forcefully prevent contract execution if called with contract data. `require(msg.data.length == 0)`

#### MSG.

**Msg.Value**

1. Global msg-object contains a value property (in wei)

2. How much wei was sent during this call affects the value of the contract

**msg.address**

1. Address-type variables have a balance `address X = 0x123...` 

2. address type variable can be a payable `address payable`

3. Payable addresses can receive a value `x.transfer(... wei)`

4. The contract itself can have a balance `address(this).balance`

