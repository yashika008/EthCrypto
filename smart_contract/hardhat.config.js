//https://eth-goerli.g.alchemy.com/v2/cjRqIDVu8E4zSsEasrxsIi51Ki4gzwgl

require(`@nomiclabs/hardhat-waffle`);

module.exports = {
  solidity : '0.8.0',
  networks:{
    goerli: {
      url: 'https://eth-goerli.g.alchemy.com/v2/cjRqIDVu8E4zSsEasrxsIi51Ki4gzwgl',
      accounts : ['c6997a66bab09bbb315d0d2135653f24677fd62fcc303a22a4feed1b6adc64f6']
    }
  }
}