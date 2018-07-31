Given("basic attributes of coin are added") do
  @coin = "{name:''}"
end

When("the coin is going to be saved") do
  `echo #{@coin} >> coin.json`  
end

Then("coin has been stored") do
  `cat coin.json`
end
