function distance(s1::AbstractString, s2::AbstractString)
    count=0
    length(s1)!=length(s2) ? throw(ArgumentError("different strand lengths")) : Nothing
    for (x,y) in zip(collect(s1),collect(s2))
        x!=y ? count+=1 : Nothing
    end
    return count
end
