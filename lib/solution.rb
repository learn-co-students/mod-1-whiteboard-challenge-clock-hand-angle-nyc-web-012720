def clock_angle(time)
    # minute moves 360 degrees an hour 
    # hour moves 30 degrees an hour
    # every minute minute hand moves 6 degrees
    # every minute hour hand moves .5 degrees
    time_array = time.split(":")
    time_in_ints = time_array.map{|time| time.to_i}
    hour_hand = time_in_ints[0] * 30 + time_in_ints[1] * 0.5
    minute_hand = time_in_ints[1] * 6
    if minute_hand == 0
        360 - hour_hand
    else
        hour_hand - minute_hand
    end
end
