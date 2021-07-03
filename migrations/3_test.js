const Parent = artifacts.require('Parent')

module.exports = async function (deployer, /*_network, accounts*/) {
  deployer.deploy(Parent, 'MOM')
  // const r = await Parent.deployed()
  // await r.mint('first', 10)
  // const data = await r.balanceOf(accounts[0], 1)
  // console.log('-->', data)
}
