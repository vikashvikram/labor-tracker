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
  	xVal = 0
  	loop do
      puts xVal
  		Pusher.trigger('heartbeat', 'beat', {:value => xVal})
  		xVal = 80+Random.rand(100)
  		sleep 0.5
  	end
  end

  def push_for_demo
    xVal = 80
    sleep_time = 0.01
    loop do
      puts xVal
      Pusher.trigger('heartbeat', 'beat', {:value => xVal})
      sleep sleep_time
      puts xVal+20
      Pusher.trigger('heartbeat', 'beat', {:value => xVal+20})
      sleep sleep_time
      puts xVal
      Pusher.trigger('heartbeat', 'beat', {:value => xVal})
      sleep sleep_time
      puts xVal
      Pusher.trigger('heartbeat', 'beat', {:value => xVal})
      sleep sleep_time
      puts xVal
      Pusher.trigger('heartbeat', 'beat', {:value => xVal})
      sleep sleep_time
      puts xVal - (10+Random.rand(10))
      Pusher.trigger('heartbeat', 'beat', {:value => (xVal - (10+Random.rand(10)))})
      sleep sleep_time
      puts xVal+50+Random.rand(20)
      Pusher.trigger('heartbeat', 'beat', {:value => (xVal+50+Random.rand(20))})
      sleep sleep_time
      puts xVal - (10+Random.rand(10))
      Pusher.trigger('heartbeat', 'beat', {:value => xVal - (10+Random.rand(10))})
      sleep sleep_time
      puts xVal
      Pusher.trigger('heartbeat', 'beat', {:value => xVal})
      sleep sleep_time
      puts xVal
      Pusher.trigger('heartbeat', 'beat', {:value => xVal})
      sleep sleep_time
      puts xVal
      Pusher.trigger('heartbeat', 'beat', {:value => xVal})
      sleep sleep_time
      #Pusher.trigger('heartbeat', 'beat', {:value => xVal})
    end
  end
end
