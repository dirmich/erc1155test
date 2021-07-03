const target = artifacts.require('GameItem')

module.exports = async function (deployer, _network, accounts) {
  deployer.deploy(target)
  const r = await target.deployed()
  // const data = await r.balanceOf(accounts[0], 1)
  // console.log('-->', data)
}
