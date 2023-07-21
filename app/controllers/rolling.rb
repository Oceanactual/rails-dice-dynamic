class RollController > ApplicationController
  def home
    render({:template => "/"})
  end

  def 2d6
    first_die = rand(1..6)
    second_die = rand(1..6)
    sum = first_die + second_die
    @outcome = "You rolled a #{first_die}, and a #{second_die} for a total of #{sum}"

    render({:template => "/dice/2/6"})
  end

  def 2d10
    first_die = rand(1..10)
    second_die = rand(1..10)
    sum = first_die + second_die
    @outcome = "You rolled #{first_die}, and a #{second_die} for a total of #{sum}"

    render({:template => "/dice/2/10"})
  end

  def 1d20
  first_die = rand(1..20)
  @outcome = "You rolled #{first_die}"

    render({:template => "/dice/1/20"})
  end

  def 5d4
    first_die = rand(1..4)
    second_die = rand(1..4)
    third_die = rand(1..4)
    fourth_die = rand(1..4)
    fifth_die = rand(1..4)
    sum = first_die + second_die + third_die + fourth_die + fifth_die
    @outcome = "You rolled #{first_die}, a #{second_die}, a #{third_die}, a #{fourth_die}, and a #{fifth_die} for a total of #{sum}"
  
    render({:template => "/dice/5/4"})
  end

end
