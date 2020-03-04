function bob(stimulus::AbstractString)
    response = Dict(
            :question => "Sure.",
            :yelling => "Whoa, chill out!",
            :silence => "Fine. Be that way!",
            :misc => "Whatever."
    )

    question(s) = length(strip(s))!=0 ? strip(s)[end]=='?' : false
    yell(s) = all(x -> isuppercase(x), length([i for i in s if isletter(i)])!=0 ? [i for i in s if isletter(i)] : 'a')
    nothing(s) = all(x -> isspace(x),s)
    q=question(stimulus)
    y=yell(stimulus)
    if q & y
            return "Calm down, I know what I'm doing!"
    elseif q
            return response[:question]
    elseif y
            return response[:yelling]
    elseif nothing(stimulus)
            return response[:silence]
    else
            return response[:misc]
    end
end
