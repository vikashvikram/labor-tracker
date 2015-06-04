class WelcomeController < ApplicationController
  def index
  	@patients = Patient.all
  end

  def hello_world(message = "hello world")
  	Pusher.trigger('heartbeat', 'beat', {:value => 0})
  end

  def locate(latitude="28.5244100", longitude="77.1854660")
    Pusher.trigger('realtimemap', 'locate', {:latitude => latitude, :longitude => longitude})
  end

  def push_chart(xVal = "1", yVal = "1")
  	xVal = 75
  	loop do
      puts xVal
  		Pusher.trigger('heartbeat', 'beat', {:value => xVal})
  		xVal = 60+Random.rand(100)
  		sleep 0.5
  	end
  end
end
