function to_rna(dna::AbstractString)
    data=Dict('G'=>"C", 'C'=> "G", 'T'=>"A", 'A'=>"U")
    foreach(x -> x in keys(data) ? Nothing : throw(ErrorException("Invalid input")),collect(dna))
    output=""
    foreach(x -> output=string(output,data[x]), collect(dna))
    return output
end
