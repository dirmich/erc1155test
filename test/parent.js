const Parent = artifacts.require("Parent");

/*
 * uncomment accounts to access the test accounts made available by the
 * Ethereum client
 * See docs: https://www.trufflesuite.com/docs/truffle/testing/writing-tests-in-javascript
 */
contract("Parent", function (/* accounts */) {
  let pc 
  let c1
  beforeEach('setup contract', async () => {
    pc = await Parent.deployed('mom')
  })
  it("name check", async function () {
    c1 = await pc.mint('child',10)
    let name = await c1.name()
    console.log(name,c1)
    return assert.isTrue(name=='child');
  });
});
