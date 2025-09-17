# <h1 align="center"> Harkirat Web3 Learning Repository </h1>

**A comprehensive collection of Web3, blockchain, and decentralized application projects covering Ethereum, Solana, and cross-chain development**

![Ethereum](https://img.shields.io/badge/Ethereum-3C3C3D?style=for-the-badge&logo=Ethereum&logoColor=white)
![Solana](https://img.shields.io/badge/Solana-9945FF?style=for-the-badge&logo=Solana&logoColor=white)
![Rust](https://img.shields.io/badge/Rust-000000?style=for-the-badge&logo=rust&logoColor=white)
![React](https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB)

## 📋 Repository Overview

This repository contains multiple Web3 learning projects demonstrating various blockchain concepts, smart contract development, and decentralized application (dApp) creation across different blockchain ecosystems.

## 🗂️ Project Structure

### 🔗 Ethereum Projects

#### **hello_template** - Foundry/Ethereum Smart Contracts
- **Description**: Collection of Ethereum smart contracts using Foundry framework
- **Technologies**: Solidity, Foundry, OpenZeppelin
- **Contracts**:
  - `Contract.sol` - Shiba Inu ERC20 token implementation
  - `LockETH.sol` - Cross-chain bridge contract for token locking/unlocking
  - `WContract.sol` - Wrapped Shiba token contract
- **Setup**:
  ```bash
  cd hello_template
  forge install
  forge build
  forge test
  ```

#### **eth-front-bridge** - Ethereum Frontend Bridge
- **Description**: React TypeScript frontend for Ethereum interaction using Wagmi and Viem
- **Technologies**: React, TypeScript, Vite, Wagmi, Viem, TanStack Query
- **Features**: Web3 wallet connection and Ethereum blockchain interaction
- **Setup**:
  ```bash
  cd eth-front-bridge
  npm install
  npm run dev
  ```

#### **ETH-on-frontend** - Ethereum Balance Tracker
- **Description**: React frontend for real-time Ethereum balance monitoring
- **Technologies**: React, Viem, TanStack React Query
- **Features**: Real-time balance fetching with 10-second intervals
- **Setup**:
  ```bash
  cd ETH-on-frontend/ETH-frontend
  npm install
  npm run dev
  ```

### ⚡ Solana Projects

#### **anchor** - Solana Calculator Program
- **Description**: Basic Solana program using Anchor framework
- **Technologies**: Rust, Anchor, Solana
- **Features**: Simple calculator smart contract initialization
- **Setup**:
  ```bash
  cd anchor/calculator
  anchor build
  anchor test
  ```

#### **sol-week32-sol-counter-program** - Solana Counter
- **Description**: Solana program implementing increment/decrement counter functionality
- **Technologies**: Rust, Solana Program Library, Borsh
- **Features**: Counter state management with increment/decrement operations
- **Setup**:
  ```bash
  cd sol-week32-sol-counter-program
  cargo build-sbf
  ```

#### **solana-wallet-adapter** - Wallet Integration
- **Description**: React frontend for Solana wallet connection
- **Technologies**: React, Solana Wallet Adapter
- **Features**: Wallet connection and Solana blockchain interaction
- **Setup**:
  ```bash
  cd solana-wallet-adapter/solana-wallet-adap
  npm install
  npm run dev
  ```

#### **solana-cci** - Cross-Chain Infrastructure
- **Description**: Solana cross-chain interaction utilities
- **Technologies**: Rust, Solana, LiteSVM
- **Features**: Cross-chain communication testing and development

### 🌉 Full-Stack Projects

#### **cloud-wallet** - Cloud-Based Wallet
- **Description**: Full-stack application with cloud wallet functionality
- **Technologies**: 
  - Backend: Node.js, Express, Solana Web3.js, JWT
  - Frontend: React, Vite
- **Features**:
  - User signup/signin with JWT authentication
  - Automatic Solana keypair generation
  - RESTful API for wallet operations
- **Setup**:
  ```bash
  # Backend
  cd cloud-wallet/backend
  npm install
  node index.js
  
  # Frontend
  cd cloud-wallet/frontend
  npm install
  npm run dev
  ```

### 🦀 Rust Learning Projects

#### **rust-3** - Rust Fundamentals
- **Description**: Rust programming exercises and implementations
- **Technologies**: Rust, Borsh, Serde, Chrono
- **Features**: Generic traits, shape calculations, serialization examples

#### **testing** - Rust Experimentation
- **Description**: Rust testing and experimentation playground
- **Technologies**: Rust
- **Features**: Various Rust programming concepts and testing

## 🛠️ Technologies Used

### Blockchain Platforms
- **Ethereum**: Smart contract development with Solidity
- **Solana**: High-performance blockchain programs with Rust

### Development Frameworks
- **Foundry**: Ethereum development framework
- **Anchor**: Solana development framework
- **Vite**: Frontend build tool
- **React**: UI framework

### Libraries & Tools
- **OpenZeppelin**: Secure smart contract libraries
- **Wagmi**: React hooks for Ethereum
- **Viem**: TypeScript interface for Ethereum
- **Solana Web3.js**: Solana JavaScript SDK
- **TanStack Query**: Data fetching and caching

## 🚀 Getting Started

### Prerequisites
- **Node.js** (v16+)
- **Rust** and **Cargo**
- **Foundry** for Ethereum development
- **Anchor CLI** for Solana development
- **Git**

### Quick Setup
1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd harkirat-web3
   ```

2. Choose your project of interest and follow the specific setup instructions above.

### Development Workflow
Each project contains its own package.json or Cargo.toml with specific dependencies and scripts. Navigate to individual project directories for detailed setup instructions.

## 📚 Learning Path

1. **Start with Ethereum**: Begin with `hello_template` to understand Solidity and smart contracts
2. **Frontend Integration**: Explore `eth-front-bridge` for Web3 frontend development  
3. **Solana Development**: Move to `anchor` and `sol-week32-sol-counter-program` for Solana programming
4. **Full-Stack Development**: Build complete dApps with `cloud-wallet`
5. **Cross-Chain**: Explore bridge contracts and cross-chain functionality

## 🤝 Contributing

This repository is for educational purposes. Feel free to:
- Add new learning projects
- Improve existing implementations
- Add documentation and examples
- Share learning resources

## 📄 License

Various licenses apply to different projects. See individual project directories for specific license information.

## 🔗 Useful Resources

- [Ethereum Documentation](https://ethereum.org/developers)
- [Solana Documentation](https://docs.solana.com)
- [Foundry Book](https://book.getfoundry.sh)
- [Anchor Book](https://book.anchor-lang.com)
- [Rust Book](https://doc.rust-lang.org/book)

---

*This repository represents a comprehensive journey through Web3 development, covering smart contracts, dApps, and blockchain programming across multiple ecosystems.*
