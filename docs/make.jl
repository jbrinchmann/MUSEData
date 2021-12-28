using MUSEData
using Documenter

DocMeta.setdocmeta!(MUSEData, :DocTestSetup, :(using MUSEData); recursive=true)

makedocs(;
    modules=[MUSEData],
    authors="Jarle Brinchmann",
    repo="https://github.com/JBrinchmann/MUSEData.jl/blob/{commit}{path}#{line}",
    sitename="MUSEData.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://JBrinchmann.github.io/MUSEData.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/JBrinchmann/MUSEData.jl",
    devbranch="main",
)
