NFT APP PROGRESS LOG, ETC

2021-12-15 14:16:59
Installed and setup Heroku

2021-12-15 14:40:14

curl https://shrouded-brook-60525.herokuapp.com/0

-heroku commands not recognized after restarting VS
    -reinstalled heroku, restarted VS, issue fixed
-curl command not working for https://shrouded-brook-60525.herokuapp.com
    -added ID to fix
-backend complete

2021-12-15 15:29:34
-setup metamask
    -completed
-figure out how to configure with ropsten instead
    -replaced mnemonic
    -used faucet on ropsten, metamask wallet hasn't recieved any ETH
        -Got someone to send me ETH over ropsten network since faucet wasnt working 
    -ropsten faucet says address greylisted 
-install truffle
    -completed
-setup infura project
    -https://ropsten.infura.io/v3/0155ad0fc013495cb3a581d8faff1f89
-truffle deploy completed

2021-12-16 12:52:39
-Setup Fleek
-Tried to compile frontend with npm run build
    -'react-scripts' is not recognized as a command error
    -attempted "npm install react-scripts --save"
        -installed scripts and ran npm run build successfully
-ISSUE: Fleek deployed, had error where webpage only displayed loading..
    -discovered that tokenURI was NOT properly saved in NFT.json when NFT was minted
    -ran truffle migration again.

Added function to check the hash of the image in smart contract
image hash:
    BA4F21DA16BD11B052A8F709A88551A34787DE2FB33C6F455EF3AF27CEA9D609

adding opensea link in ropsten to front end (opensea doesn't work with ropsten, adding link to page anyways)
opensea link:
    https://opensea.io/assets/0x6261A0E9d53EAa393B250F99D91FB6fABC62dd4E

FINISHED:
final changes
made a rinkeby branch to mint a rinkeby token
created opensea link with rinkeby branch
added rinkeby link to ropsten address so link can be clicked



truffle migrate --reset --network [NetworkName]
Output dump:

first truffle dump:

1_initial_migration.js
======================

   Deploying 'Migrations'
   ----------------------
   > transaction hash:    0x72359faf299d29a0ef689b4fbc088138d2e0f2b3f813fd7854c8e1f5b67f102d
   > Blocks: 0            Seconds: 4
   > contract address:    0x44C61B697F89Cc039e5FfC6Cc624DA4CD25aebcc
   > block number:        11626539
   > block timestamp:     1639600929
   > account:             0x6261A0E9d53EAa393B250F99D91FB6fABC62dd4E
   > balance:             0.9993859999982808
   > gas used:            245600 (0x3bf60)
   > gas price:           2.500000007 gwei
   > value sent:          0 ETH
   > total cost:          0.0006140000017192 ETH


   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:     0.0006140000017192 ETH


2_deploy_contracts.js
=====================

   Deploying 'NFT'
   ---------------
   > transaction hash:    0x9c6e0aed023049ea5483fc9c93a761978a48fb387e82f02bc7580505b07d8c57
   > Blocks: 1            Seconds: 20
   > contract address:    0x4Ea7fD0C3c3072854787785410612B37Df52B9F6
   > block number:        11626542
   > block timestamp:     1639600984
   > account:             0x6261A0E9d53EAa393B250F99D91FB6fABC62dd4E
   > balance:             0.993491159979417312
   > gas used:            2312023 (0x234757)
   > gas price:           2.500000008 gwei
   > value sent:          0 ETH
   > total cost:          0.005780057518496184 ETH


   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:     0.005780057518496184 ETH


Summary
=======
> Total deployments:   2
> Final cost:          0.006394057520215384 ETH

second truffle dump (attempted when fixing frontend):

1_initial_migration.js
======================

   Replacing 'Migrations'
   ----------------------
   > transaction hash:    0xd94a9879cff946a7c4ea1bd3c1e703599e183558a5fc2c719f4d479210caa517
   > Blocks: 1            Seconds: 20
   > contract address:    0x78Fc2F611740a7F1013e46141c2Cb785A07d4906
   > block number:        11632925
   > block timestamp:     1639684342
   > account:             0x6261A0E9d53EAa393B250F99D91FB6fABC62dd4E
   > balance:             0.992570454976716656
   > gas used:            245600 (0x3bf60)
   > gas price:           2.500000007 gwei
   > value sent:          0 ETH
   > total cost:          0.0006140000017192 ETH


   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:     0.0006140000017192 ETH


2_deploy_contracts.js
=====================

   Replacing 'NFT'
   ---------------
   > transaction hash:    0x64d025bac00bcb9f79847dc018b0dbc88c487e773000de4d5282398febded091
   > Blocks: 0            Seconds: 8
   > contract address:    0xC3d2735a9F6F4917fbDA4301189dA9d92460FB47
   > block number:        11632927
   > block timestamp:     1639684395
   > account:             0x6261A0E9d53EAa393B250F99D91FB6fABC62dd4E
   > balance:             0.986647454960132256
   > gas used:            2323287 (0x237357)
   > gas price:           2.500000007 gwei
   > value sent:          0 ETH
   > total cost:          0.005808217516263009 ETH


   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:     0.005808217516263009 ETH


Summary
=======
> Total deployments:   2
> Final cost:          0.006422217517982209 ETH

rinkeby migrate


Compiling your contracts...
===========================
> Compiling .\contracts\Migrations.sol
> Compiling .\contracts\NFT.sol
> Compiling .\contracts\NFT.sol
> Compilation warnings encountered:

    Warning: SPDX license identifier not provided in source file. Before publishing, consider adding a comment containing "SPDX-License-Identifier: <SPDX-License>" to each source file. Use "SPDX-License-Identifier: UNLICENSED" for non-open-source code. Please see https://spdx.org for more information.
--> project:/contracts/NFT.sol

,Warning: Function state mutability can be restricted to pure
  --> project:/contracts/NFT.sol:19:3:
   |
19 |   function _baseURI() internal view override returns (string memory) {
   |   ^ (Relevant source part starts here and spans across multiple lines).


> Artifacts written to D:\Code\318-create-nft\frontend\src\contracts
> Compiled successfully using:
   - solc: 0.8.0+commit.c7dfd78e.Emscripten.clang



Starting migrations...
======================
> Network name:    'rinkeby'
> Network id:      4
> Block gas limit: 30000000 (0x1c9c380)


1_initial_migration.js
======================

   Replacing 'Migrations'
   ----------------------
   > transaction hash:    0x0b0ba19f4103444abd93526b6b9dee4515a24164cd53aeccb40553d9e5884e28
   > Blocks: 0            Seconds: 4
   > contract address:    0x44C61B697F89Cc039e5FfC6Cc624DA4CD25aebcc
   > block number:        9844671
   > block timestamp:     1639964820
   > account:             0x6261A0E9d53EAa393B250F99D91FB6fABC62dd4E
   > balance:             2.9993859999980352
   > gas used:            245600 (0x3bf60)
   > gas price:           2.500000008 gwei
   > value sent:          0 ETH
   > total cost:          0.0006140000019648 ETH


   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:     0.0006140000019648 ETH


2_deploy_contracts.js
=====================

   Replacing 'NFT'
   ---------------
   > transaction hash:    0xd09737b49a6e130b623f7253a7ed0140192fd180aa56071d00441f92047cea53
   > Blocks: 1            Seconds: 12
   > contract address:    0x4Ea7fD0C3c3072854787785410612B37Df52B9F6
   > block number:        9844673
   > block timestamp:     1639964850
   > account:             0x6261A0E9d53EAa393B250F99D91FB6fABC62dd4E
   > balance:             2.993388857478844344
   > gas used:            2352944 (0x23e730)
   > gas price:           2.500000008 gwei
   > value sent:          0 ETH
   > total cost:          0.005882360018823552 ETH


   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:     0.005882360018823552 ETH


Summary
=======
> Total deployments:   2
> Final cost:          0.006496360020788352 ETH