require 'rack'

#Something that responds to call, that's what Rack demands
class MyServer
  def call(env)
    return [200, {'Content-Type' => 'text/html'}, pretty_response]
  end
  
  def pretty_response
    (Time.now.to_i % 2).zero? ? ["<em>Hello</em>"] : ["<strong>Hello</strong>"]
  end
end

<<<<<<< HEAD
run MyServer.new
=======
#run MyServer.new
>>>>>>> 05c78828321c6d41b363435a3d8528cf7605167f
