require 'time_error'

RSpec.describe TimeError do
  it "returns the difference between the remote and local clocks" do
    fake_requester = double :requester 
    allow(fake_requester).to receive(:get).with(
      URI("https://worldtimeapi.org/api/ip")
    ).and_return('{"abbreviation":"GMT","client_ip":"2a01:4c8:481:90e6:a52d:f92b:a123:812d","datetime":"2022-03-15T14:56:48.223630+00:00","day_of_week":2,"day_of_year":74,"dst":false,"dst_from":null,"dst_offset":0,"dst_until":null,"raw_offset":0,"timezone":"Europe/London","unixtime":1647356208,"utc_datetime":"2022-03-15T14:56:48.223630+00:00","utc_offset":"+00:00","week_number":11}')
    time = Time.new(2022, 3, 15, 14, 56, 48)
    time_error = TimeError.new(fake_requester)
    expect(time_error.error(time)).to eq 0.22363
  end
end
