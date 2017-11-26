module Admin
  class SchedulesController < Fae::BaseController
    before_action :adjust_enum, only: [:create, :update]

    def adjust_enum
      params[:schedule][:status] = params[:schedule][:status].to_i
    end
  end
end
