function count_nucleotides(strand::AbstractString)
    items=Dict('A'=>0, 'C'=>0, 'G'=>0, 'T'=>0)
    foreach(x -> x in keys(items) ? items[x]+=1 : throw(DomainError(x, "Key is not A,C,G, nor T")), collect(AbstractChar,uppercase(strand)))
    return items
end