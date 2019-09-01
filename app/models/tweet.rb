class Tweet < ApplicationRecord
  attr_accessor :contents
  belongs_to :uid

#ここがあるとtweets/newがうまくひらかない
  def initialize(contents)
    @contents = contents
  end
end
