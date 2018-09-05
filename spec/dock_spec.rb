require 'docking_station'
require 'bike'

# Add a test to your DockingStation specification that
# a) gets a bike, and then
# b) expects the bike to be working

# describe DockingStation do
#   it { is_expected.to respond_to :release_bike }
#   it 'releases working bikes' do
#     bike = subject.release_bike
#     expect(bike).to be_working
#   end
# end

# longer syntax for it { is_expected.to respond_to :release_bike }
# describe DockingStation do
#   it 'responds to :release_bike' do
#     is_expected.to respond_to :release_bike
#   end
# end


describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike.working?).to == true
  end
end
