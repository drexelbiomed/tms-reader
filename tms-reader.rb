require 'csv'

def tms_read
  CSV.foreach('data/STU-Term Master schedule_all_2019.csv', headers: true) do |header|
    if header["Sess Desc"] == "Online"
      p "#{header["Course Title"]} (#{header["Course"]}) is offered in #{header["Term Code"]} and online. The CRN is #{header["Crn"]}."
    end
  end
end

puts tms_read