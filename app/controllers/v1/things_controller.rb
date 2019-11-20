class V1::ThingsController < ApplicationController
  def index
    render json: { :things => [
      {
        :name => 'some-thing',
        :guid => '2y2tg3-373g-j3h3h'
      }
      ]}.to_json
  end
end
