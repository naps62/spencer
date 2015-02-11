class TagsController < ApplicationController
  before_action :authenticate_user!

  def index
    render json: Expense.tag_counts, each_serializer: TagSerializer
  end
end
