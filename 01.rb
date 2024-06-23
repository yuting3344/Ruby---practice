def maskify(cc)
    return cc if cc.length <= 4
    
    masked = "#" * ( cc.length - 4 ) + cc[-4,4]
    masked
end