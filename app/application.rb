class Application

  def call(env)
    resp = Rack::Response.new

    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)

    resp.write "Rolling the 20-sided die...\n\n"
    resp.write "First roll: #{num_1}\n"
    resp.write "Second roll: #{num_2}\n"
    resp.write "Third roll: #{num_3}\n"

    if num_1 == num_2 && num_2 == num_3
    	resp.write "You Win"
    else
    	resp.write "You Lose"
    end
    resp.finish
  end

end
