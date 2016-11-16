class TestsController < ApplicationController
  def index
  	@test=Test.all
  end

  def new
  	@test=Test.new
  end

  def create
  	@test=Test.new(perm)
  	@test.save
  	redirect_to :action=>'new'
  end

  def perm
  	params.require(:test).permit(:image)
  end
end
