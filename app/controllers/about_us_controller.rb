class AboutUsController < ApplicationController
  def index
  @testimonials = Testimonial.all  
  end
end
