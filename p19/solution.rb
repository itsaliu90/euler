begin_date = Date.new(1901,1,1)
end_date = Date.new(2000, 12, 31)
sunday_count = 0

date = begin_date

while date <= end_date
  puts date.to_s
  if date.mday == 1
    if date.cwday == 7
     sunday_count += 1
    end
  end
  date = date.next_day
end

sunday_count
