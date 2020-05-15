class DosesController < ApplicationController
  def new
    @dose = dose.new
  end

  def create
    @dose = dose.new(dose_params)
    @dose.save
    if @dose.save
      redirect_to dose_path(@dose)
    else
      render :new
    end
  end

  def dose_params
    params.require(:dose).permit(:name)
  end

  def destroy
    @dose = dose.find(params[:id])
    @dose.destroy

    redirect_to dose_path(@dose)
  end
end
