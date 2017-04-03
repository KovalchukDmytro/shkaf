class IndexController < ApplicationController
  def index
    @order=Order.new

    @feedback_vk_url=ContactForFeedback.find_by_name('vk').value
    @feedback_fb_url=ContactForFeedback.find_by_name('fb').value
    @feedback_ok_url=ContactForFeedback.find_by_name('ok').value
    @feedback_phone_number_1=ContactForFeedback.find_by_name('phone_number_1').value
    @feedback_phone_number_2=ContactForFeedback.find_by_name('phone_number_2').value
    @feedback_phone_number_3=ContactForFeedback.find_by_name('phone_number_3').value
    @feedback_email=ContactForFeedback.find_by_name('email').value
  end
  def create
    @new_order=Order.new(index_params)

    if @new_order.save

      redirect_to('/')
    else
      redirect_to('/')
    end
  end
  def index_params
    params.require(:order).permit(:name, :phone_number, :email, :img, :description)
  end
  def upload
=begin
    uploaded_io = params[:order][:img]

    File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'w') do |file|
      file.write(uploaded_io.read)
    end
=end

    f = File.new("public/uploads/#{params[:order][:img].read}", "w+b")
    f.write params[:order][:img].read
    f.close
  end
end
