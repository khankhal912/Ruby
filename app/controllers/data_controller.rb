class DataController < ApplicationController
  def index
    render('index')
  end

  def hello
    @array = [1,2,3,4,5,6,7,8,9]
    render('hello')
  end

  def hello1
    redirect_to(:action => 'hello')
  end

  def youTube
    redirect_to('https://youtu.be/rTgbdhc0Z3U?si=ufHF39vx_DTWxRR9',allow_other_host: true)
  end
end
