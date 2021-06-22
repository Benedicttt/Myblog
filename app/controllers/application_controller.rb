class ApplicationController < ActionController::Base
#   rescue_from RuntimeError do |error|
#     @err = error.to_s
#     @fault_code = error.backtrace[0..15]
#
#     render 'shared/modal_error.js.erb'
#   end
#
#   rescue_from ActionView::MissingTemplate do |exception|
#     @fault_code = exception.to_s
#
#     render 'shared/modal_error.js.erb'
#   end
#
#   rescue_from ActionView::Template::Error do |error|
#     @err = error.to_s
#     @fault_code = error.backtrace[0..15]
#
#     render template: "shared/modal_error.js"
#   end
#
#   rescue_from NoMethodError do |error|
#     @err = error.to_s
#     @fault_code = error.backtrace[0..15]
#
#     render 'shared/modal_error.js.erb'
#   end
#
#   rescue_from TypeError do |error|
#     @err = error.to_s
#     @fault_code = error.backtrace[0..15]
#
#     render 'shared/modal_error.js.erb'
#   end
#
#   rescue_from NameError do |error|
#     @err = error.to_s
#     @fault_code = error.backtrace[0..15]
#
#     render 'shared/modal_error.js.erb'
#   end
#
#   rescue_from Errno::ECONNRESET do |error|
#     @err = error.to_s
#     @fault_code = error.backtrace[0..15]
#
#     render 'shared/modal_error.js.erb'
#   end
#
#   rescue_from Errno::ETIMEDOUT do |error|
#     @err = error.to_s
#     @fault_code = error.backtrace[0..15]
#
#     render 'shared/modal_error.js.erb'
#   end
#
#   rescue_from Errno::ECONNREFUSED do |error|
#     @err = error.to_s
#     @err = 'Необходимо восстановить подключение по тунелю через прокси http://localhost:3128' if @err == 'Failed to open TCP connection to localhost:3128 (Connection refused - connect(2) for "localhost" port 3128)'
#
#     @fault_code = error.backtrace[0..15]
#     render 'shared/modal_error.js.erb'
#   end
#
#   rescue_from Errno::EADDRNOTAVAIL do |error|
#     @err = error.to_s
#     @fault_code = error.backtrace[0..15]
#
#     render 'shared/modal_error.js.erb'
#   end
#
#   rescue_from SocketError do |error|
#     @err = error.to_s
#     @fault_code = error.backtrace[0..15]
#
#     render 'shared/modal_error.js.erb'
#   end
#
#   rescue_from Errno::EPIPE do |error|
#     @err = error.to_s
#     @fault_code = error.backtrace[0..15]
#
#     render 'shared/modal_error.js.erb'
#   end
#
#   rescue_from EOFError do |error|
#     @err = error.to_s
#     @fault_code = error.backtrace[0..15]
#
#     render 'shared/modal_error.js.erb'
#   end
#
#
#
#   rescue_from Errno::ENOENT do |error|
#     @err = error.to_s
#     @fault_code = error.backtrace[0..15]
#
#     render 'shared/modal_error.js.erb'
#   end
#
#   rescue_from AbstractController::ActionNotFound do |error|
#     @err = error.to_s
#     @fault_code = error.backtrace[0..15]
#
#     render 'shared/modal_error.js.erb'
#   end
#
#   rescue_from LoadError do |error|
#     @err = error.to_s
#     @fault_code = error.backtrace[0..15]
#
#     render 'shared/modal_error.js.erb'
#   end
#
#   rescue_from ActiveModel::UnknownAttributeError do |error|
#     @err = error.to_s
#     @fault_code = error.backtrace[0..15]
#
#     render 'shared/modal_error.js.erb'
#   end
#
#
#   rescue_from JSON::ParserError do |error|
#     @err = error.to_s
#     @fault_code = error.backtrace[0..15]
#
#     render 'shared/modal_error.js.erb'
#   end
#
#   rescue_from AbstractController::ActionNotFound do |error|
#     @err = error.to_s
#     @fault_code = error.backtrace[0..15]
#
#     begin
#       render 'app/views/shared/_modal_error.html.haml'
#     rescue
#       render 'shared/modal_error.js.erb'
#     end
#   end
#
#   rescue_from ArgumentError do |error|
#     @err = error.to_s
#     @fault_code = error.backtrace[0..15]
#
#     render 'shared/modal_error.js.erb'
#   end
#
#   rescue_from ActionController::RoutingError do |error|
#     @err = error.to_s
#     @fault_code = error.backtrace[0..15]
#
#     render 'shared/modal_error.js.erb'
#   end
#
#   rescue_from ActiveRecord::RecordNotFound do |exception|
#     message = "Couldn't find a record."
#
#     redirect_to no_record_url, info: message
#   end
end
