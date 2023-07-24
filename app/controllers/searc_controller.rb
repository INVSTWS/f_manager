class SearcController < ApplicationController
  def index
    category_id = params[:category_id].present? ? params[:category_id].to_i : nil

    @operations = if category_id
                    Operation.where(category_id: category_id)
                  else
                    Operation.all
                  end

    respond_to do |format|
      format.html { render :index }
      format.turbo_stream do
        render turbo_stream:
          turbo_stream.update('operations',
                              partial: 'operations/operations',
                              locals: { operations: @operations })
      end
    end
  end
end
