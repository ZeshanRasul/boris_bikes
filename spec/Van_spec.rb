require 'Van'
require 'DockingStation'
describe Van do
    attr_reader :bikes

    it { is_expected.to respond_to(:collect_bikes).with(1).argument }

    describe 'van collects bikes' do
      it 'collects broken bikes from station in the van' do
        station = DockingStation.new
        broken_bike = Bike.new
        broken_bike.report_broken
        station.dock(broken_bike)
        working_bike = Bike.new
        station.dock(working_bike)
        station.bikes
        # station.bikes
        # bikes.select {|bikes| bike.broken?}
        subject.collect_bikes(station)
        expect(subject.bikes).to eq broken_bike
      end

    end



end
