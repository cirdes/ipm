class PagesController < HighVoltage::PagesController
  before_filter :set_slider

  protected
    def set_slider
      if params[:id] == "index"
      	@sliders = Slider.all
      end
    end
end