# <h1 align="center"> Bridge Contract System </h1>

**A Foundry-based Ethereum smart contract system for cross-chain token bridging with ERC20 token implementations**

![Ethereum](https://img.shields.io/badge/Ethereum-3C3C3D?style=for-the-badge&logo=Ethereum&logoColor=white)
![Solidity](https://img.shields.io/badge/Solidity-363636?style=for-the-badge&logo=solidity&logoColor=white)
![Foundry](https://img.shields.io/badge/Foundry-000000?style=for-the-badge&logo=ethereum&logoColor=white)
![OpenZeppelin](https://img.shields.io/badge/OpenZeppelin-4E5EE4?style=for-the-badge&logo=openzeppelin&logoColor=white)

## 📋 Project Overview

This project implements a comprehensive cross-chain bridge system using Ethereum smart contracts. It features ERC20 token implementations and a sophisticated bridge contract for locking and unlocking tokens across different blockchain networks.

The system consists of three main smart contracts:
- **Shiba Token (SHIB)** - A standard ERC20 token implementation
- **Bridge Contract (LockETH)** - A cross-chain bridge for token operations
- **Wrapped Shiba Token (WSHIB)** - A wrapped version of the original token

## 🏗️ Architecture

### Smart Contracts

#### 1. **Shiba Token (`Contract.sol`)**
```solidity
contract Shiba is ERC20
```
- **Purpose**: Standard ERC20 token implementation
- **Name**: "Shiba Inu"
- **Symbol**: "SHIB"
- **Supply**: 1,000,000,000,000,000,000,000,000 tokens (minted to deployer)
- **Features**: Standard ERC20 functionality with OpenZeppelin implementation

#### 2. **Bridge Contract (`LockETH.sol`)**
```solidity
contract LockETH is Ownable
```
- **Purpose**: Cross-chain bridge for token locking/unlocking operations
- **Key Features**:
  - Token deposits with allowance verification
  - Withdrawal functionality with pending amount tracking
  - Owner-controlled signal reception from other chains
  - Event emission for cross-chain communication
- **Security**: Ownable pattern for administrative functions

#### 3. **Wrapped Shiba Token (`WContract.sol`)**
```solidity
contract WShiba is ERC20
```
- **Purpose**: Wrapped version of Shiba token for cross-chain operations
- **Name**: "WSHiba Inu"
- **Symbol**: "WSHIB"
- **Features**: ERC20 standard without initial minting (to be minted by bridge)

## 🔧 Technical Details

### Dependencies
- **OpenZeppelin Contracts v5.4.0**: For secure ERC20 and access control implementations
- **Forge Standard Library**: For testing and console utilities
- **Foundry Framework**: For development, testing, and deployment

### Key Functions

#### Bridge Contract Functions
- `deposit(IERC20 token, uint256 amount)` - Lock tokens in the bridge
- `withdraw(IERC20 token, uint256 amount)` - Withdraw unlocked tokens
- `onsignalfromOtherChain(uint256 amount)` - Receive cross-chain signals (owner only)

### Events
- `Deposit(address indexed user, uint256 amount)` - Emitted when tokens are deposited

## 🚀 Getting Started

### Prerequisites
- **Foundry** - Ethereum development framework
- **Node.js** (v16+) - For OpenZeppelin contracts
- **Git** - Version control

### Installation

1. **Clone the repository**:
   ```bash
   git clone <repository-url>
   cd hello_template
   ```

2. **Install dependencies**:
   ```bash
   # Install OpenZeppelin contracts
   npm install
   
   # Install Foundry dependencies
   forge install
   ```

3. **Build the contracts**:
   ```bash
   forge build
   ```

4. **Run tests**:
   ```bash
   forge test
   ```

### Project Structure
```
hello_template/
├── src/
│   ├── Contract.sol      # Shiba Token (ERC20)
│   ├── LockETH.sol       # Bridge Contract
│   └── WContract.sol     # Wrapped Shiba Token
├── test/
│   ├── Contract.t.sol    # Test contracts
│   └── remapping.txt     # Import remappings
├── lib/
│   └── forge-std/        # Foundry standard library
├── foundry.toml          # Foundry configuration
└── package.json          # Node.js dependencies
```

## � Testing

The project includes a basic test setup using Foundry's testing framework:

```bash
# Run all tests
forge test

# Run tests with verbosity
forge test -vvv

# Run specific test
forge test --match-test testBar
```

### Test Configuration
- **Fuzz Testing**: Configured with 10,000 runs for CI environment
- **Test Framework**: Foundry's native testing with forge-std

## � Security Considerations

### Access Control
- Bridge contract uses OpenZeppelin's `Ownable` pattern
- Only owner can receive signals from other chains
- Proper allowance checks before token transfers

### Best Practices Implemented
- ✅ Use of established OpenZeppelin contracts
- ✅ Proper event emission for transparency
- ✅ Allowance verification before transfers
- ✅ Reentrancy protection through proper state management

## � Usage Examples

### Deploying Contracts

```solidity
// Deploy Shiba token
Shiba shiba = new Shiba();

// Deploy bridge with token address
LockETH bridge = new LockETH(address(shiba));

// Deploy wrapped token
WShiba wshiba = new WShiba();
```

### Bridge Operations

```solidity
// User approves bridge to spend tokens
shiba.approve(address(bridge), amount);

// User deposits tokens to bridge
bridge.deposit(IERC20(address(shiba)), amount);

// Owner signals unlock from other chain
bridge.onsignalfromOtherChain(amount);

// User withdraws unlocked tokens
bridge.withdraw(IERC20(address(shiba)), amount);
```

## 🛠️ Development Commands

```bash
# Build contracts
forge build

# Run tests
forge test

# Deploy to local network
forge script script/Deploy.s.sol --rpc-url <RPC_URL> --private-key <PRIVATE_KEY>

# Verify contracts
forge verify-contract <CONTRACT_ADDRESS> <CONTRACT_NAME> --chain-id <CHAIN_ID>

# Generate gas report
forge test --gas-report
```

## 🔮 Future Enhancements

- [ ] Add multi-signature support for bridge operations
- [ ] Implement fee mechanism for bridge transactions
- [ ] Add support for multiple tokens
- [ ] Implement automated cross-chain communication
- [ ] Add pause/unpause functionality
- [ ] Implement withdrawal limits and rate limiting

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the Unlicense - see the [LICENSE](LICENSE) file for details.

## 🔗 Resources

- [Foundry Documentation](https://book.getfoundry.sh/)
- [OpenZeppelin Contracts](https://docs.openzeppelin.com/contracts/)
- [Solidity Documentation](https://docs.soliditylang.org/)
- [Ethereum Development](https://ethereum.org/developers/)

---

*This bridge contract system demonstrates modern Ethereum smart contract development practices with a focus on security, interoperability, and clean architecture.*
