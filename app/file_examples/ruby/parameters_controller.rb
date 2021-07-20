class Chart::ParametersController < ApplicationController
  def index
  end

  def get_cord
    @json = []

    stat if params[:model] == 'created_clients'
    stat_ul if params[:model] == 'created_uls'
    stat_wsdl if params[:model] == 'request_wsdl_action'

    render :json => @json
  end

  def stat
    (2019..Date.today.year).each do |year|
      (1..12).map do |month|

        (1..31).map do |day|
          puts "year " + year.to_s + " month " + month.to_s + "\tday " + day.to_s
          begin
            res = CreatedClient.where("Date(created_at) = ?", "#{year}-#{month.to_s.size == 1 ? "0" + month.to_s : month}-#{day}")
            res.map do |r|
              current_arr = []
              current_arr << (res.last.created_at.strftime("%s")[0..7].to_s + "00000").to_i
              current_arr << res.count
              @json << current_arr
            end
          rescue
          end
        end
      end
    end
  end


  def stat_ul
    (2019..Date.today.year).each do |year|
      (1..12).map do |month|
        (1..31).map do |day|
          puts "year " + year.to_s + " month " + month.to_s + "\tday " + day.to_s
          begin
            res = CreatedUl.where("Date(created_at) = ?", "#{year}-#{month.to_s.size == 1 ? "0" + month.to_s : month}-#{day}")
            res.map do |r|
              current_arr = []
              current_arr << (res.last.created_at.strftime("%s")[0..7].to_s + "00000").to_i
              current_arr << res.count
              @json << current_arr
            end
          rescue
          end
        end
      end
    end
  end

  def stat_wsdl
    CreatedWsdlAction.all.each do |c|
      current_arr =  []
      current_arr << c.name
      current_arr << c.count.to_i
      @json       << current_arr
    end
  end
end