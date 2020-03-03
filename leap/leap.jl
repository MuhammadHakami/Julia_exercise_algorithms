function is_leap_year(year::Int)
    if year%4==0
        if year%100==0
            if year%400==0
                return true
            end
            return false
        end
        return true
    else
        return false
    end
end
