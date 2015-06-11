class WelcomeController < ApplicationController
  include ActionController::Live
  def index
  	@patients = Patient.all
  end

  def event
    response.headers['Content-Type'] = 'text/event-stream'
    sse = SSE.new(response.stream, retry: 300, event: "message1")
    puts sse.inspect

    xVal = 80
    sleep_time = 0.05
    loop do
      puts xVal
      sse.write({value: xVal})
      sleep sleep_time
      puts xVal+20
      sse.write({value: xVal+20})
      sleep sleep_time
      puts xVal
      sse.write({value: xVal})
      sleep sleep_time
      puts xVal
      sse.write({value: xVal})
      sleep sleep_time
      puts xVal
      sse.write({value: xVal})
      sleep sleep_time
      puts xVal - (10+Random.rand(10))
      sse.write({value: (xVal - (10+Random.rand(10)))})
      sleep sleep_time
      puts xVal+50+Random.rand(20)
      sse.write({value: (xVal+50+Random.rand(20))})
      sleep sleep_time
      puts xVal - (10+Random.rand(10))
      sse.write({value: xVal - (10+Random.rand(10))})
      sleep sleep_time
      puts xVal
      sse.write({value: xVal})
      sleep sleep_time
      puts xVal
      sse.write({value: xVal})
      sleep sleep_time
      puts xVal
      sse.write({value: xVal})
      sleep sleep_time
      #Pusher.trigger('heartbeat', 'beat', {:value => xVal})
    end
  rescue IOError
    logger.info "stream is closed"
  rescue ActionController::Live::ClientDisconnected
    logger.info "stream connection closed"
  ensure
    sse.close
  end
end
