require 'cat_facts'

RSpec.describe CatFacts do
  it "returns a random cat fact" do
    fake_requester = double :requester
    allow(fake_requester).to receive(:get).with(
      URI("https://catfact.ninja/fact")
    ).and_return('{"fact":"A cats jaw has only up and down motion; it does not have any lateral, side to side motion, like dogs and humans.","length":113}')
    fact = CatFacts.new(fake_requester)
    expect(fact.provide).to eq "Cat fact: A cats jaw has only up and down motion; it does not have any lateral, side to side motion, like dogs and humans."
  end
end