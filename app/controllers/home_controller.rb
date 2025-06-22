class HomeController < ApplicationController
  def index
    @technicals = Technical.all
    @connections = Connection.all
    @ordering_informations = OrderingInformation.all
    @dimensions = Dimension.all
    @technical = Technical.new
  end
end
