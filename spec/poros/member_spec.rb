require 'rails_helper'

RSpec.describe Member do
  it 'exists' do
    attributes = {:_id=>"5cf5679a915ecad153ab6917",
    :allies=>["Zuko"],
    :enemies=>["Red Lotus"],
    :photoUrl=>"https://vignette.wikia.nocookie.net/avatar/images/e/ec/Druk.png/revision/latest?cb=20140730151855",
    :name=>"Druk",
    :affiliation=>"Fire Nation"}

    member = Member.new(attributes)

    expect(member).to be_a Member
    expect(member.name).to eq 'Druk'
    expect(member.enemies).to eq ["Red Lotus"]
    expect(member.allies).to eq ["Zuko"]
    expect(member.affiliation).to eq "Fire Nation"
    expect(member.photoUrl).to eq "https://vignette.wikia.nocookie.net/avatar/images/e/ec/Druk.png/revision/latest?cb=20140730151855"
  end
end