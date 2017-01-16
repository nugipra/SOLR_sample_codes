class UsersController < ApplicationController
  def index
    @query = User.search do
      fulltext params[:query]
      paginate :page => params[:page], :per_page => 50
    end
    @users = @query.results

    @table_columns = User.column_names.reject{|x| ["created_at", "updated_at", "phone1", "phone2"].include?(x)}
  end
end
