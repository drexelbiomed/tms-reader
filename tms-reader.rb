require 'csv'


def tms_read
  courses = Hash.new
  CSV.foreach('data/STU-Term Master schedule_all_2019.csv', headers: true) do |header|
    if header["Sess Desc"] == "Online" && header["Crse Numb"].to_i < 500
      p "#{header["Term Code"]},#{header["Course"]},#{header["Course Title"]},#{header["Credit Hrs"]},#{header["Crn"]}"
    end
  end
  courses
end

p tms_read