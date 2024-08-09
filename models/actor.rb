# frozen_string_literal: true

class Actor
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
    true
  end

  def act
    'I love U baby!'
  end

  def fall_off_ladder
    'Call my agent! No F way!'
  end

  def light_on_fire
    false
  end
end
