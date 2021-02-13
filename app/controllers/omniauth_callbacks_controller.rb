# frozen_string_literal: true

class OmniauthCallbacksController < ApplicationController
  def twitter
    render plain: 'Success!'
  end
end
