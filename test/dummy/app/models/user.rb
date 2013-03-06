class User < ActiveRecord::Base
  attr_accessible :name

  def roles
    %w{foo bar blogger}
  end
end
