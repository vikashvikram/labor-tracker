class WelcomeController < ApplicationController
  def index
  	@patients = Patient.all
  end

  def hello_world(message = "hello world")
  	Pusher.trigger('heartbeat', 'beat', {:value => 0})
  end

  def push_chart(xVal = "1", yVal = "1")
  	xVal = 1
  	yVal = 1
  	100.times do
  		Pusher.trigger('heartbeat', 'beat', {:value => xVal})
  		xVal += 1
  		yVal += 1
  		sleep 0.5
  	end
  end
end
