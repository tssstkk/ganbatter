# == Schema Information
#
# Table name: bots
#
#  id          :integer          not null, primary key
#  bot_content :string
#  bot_img     :string
#  bot_name    :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'test_helper'

class BotTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
