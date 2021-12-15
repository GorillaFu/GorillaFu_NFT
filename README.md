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


Output dump:

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