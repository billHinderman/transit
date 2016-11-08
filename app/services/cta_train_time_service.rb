class CTATrainTimeService
  include HTTParty
  base_uri 'http://lapi.transitchicago.com/api/1.0'
  def initialize(stop_id)
    @options = {
      query:
      {
        key: 'a3da90a8f09e423fb3084498e9889227',
        outputType: 'JSON',
        mapid: stop_id }
      }
  end

  def etas
    self.class.get('/ttarrivals.aspx', @options)
  end
end
