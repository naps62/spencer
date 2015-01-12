class TagsController < ApplicationController
  def index
    render json: Expense.tag_counts, each_serializer: TagSerializer
  end
end
