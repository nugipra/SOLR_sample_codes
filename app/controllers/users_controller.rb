class UsersController < ApplicationController
  def index
    @query = User.search do
      fulltext params[:query]
      paginate page: params[:page], per_page: 30

      facet_restriction = params[:state].present? ? with(:state, params[:state]) : nil
      facet :state, exclude: facet_restriction
    end
    @users = @query.results

    @table_columns = ["first_name", "last_name", "company_name", "address", "city", "county", "zip", "email", "state"]
  end
end
