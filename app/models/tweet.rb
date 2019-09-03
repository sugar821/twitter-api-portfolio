class Tweet < ApplicationRecord
  attr_accessor :contents
  belongs_to :uid

#ここがあるとtweets/newがうまくひらかない
#オブジェクト生成時にインスタンス変数を設定する
  def initialize(contents)
    @contents = contents
    logger.debug("model contents~~~")
    logger.debug(@contents)
    logger.debug("~~~model contents")
  end
end
