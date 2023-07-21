class RollController < ApplicationController
  def home

    render({:template => "/dice/home"})
  end

  def twodsix
    @first_die = rand(1..6)
    @second_die = rand(1..6)
    #sum = first_die + second_die
    #@outcome = "You rolled a #{first_die}, and a #{second_die} for a total of #{sum}"

    render({:template => "/dice/2/6"})
  end

  def twodten
    @first_die = rand(1..10)
    @second_die = rand(1..10)
    #sum = first_die + second_die
    #@outcome = "You rolled #{first_die}, and a #{second_die} for a total of #{sum}"

    render({:template => "/dice/2/10"})
  end

  def onedtwenty
  @first_die = rand(1..20)
  #@outcome = "You rolled #{first_die}"

    render({:template => "/dice/1/20"})
  end

  def fivedfour
    @first_die = rand(1..4)
    @second_die = rand(1..4)
    @third_die = rand(1..4)
    @fourth_die = rand(1..4)
    @fifth_die = rand(1..4)
    #sum = first_die + second_die + third_die + fourth_die + fifth_die
    #@outcome = "You rolled #{first_die}, a #{second_die}, a #{third_die}, a #{fourth_die}, and a #{fifth_die} for a total of #{sum}"
  
    render({:template => "/dice/5/4"})
  end

  def any
    @number_dice = params.fetch("rolls").to_i
    @number_sides = params.fetch("die").to_i
    @rolls_array = []
 
    @number_dice.times do
      die = rand(1..@number_sides)
 
      @rolls_array.push(die)
    end
 
    render({:template => "/dice/any"})
  end

end
