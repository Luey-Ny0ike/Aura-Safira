class AboutUsController < ApplicationController
  def index
  @testimonials = Testimonial.all
  @testimonial = Testimonial.new
  end
end
