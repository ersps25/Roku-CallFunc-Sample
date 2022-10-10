sub init()
    ' m.movie = m.top.findNode("movie")
    ' param = "Test Value"
    ' m.movie.callFunc("callFuncTest",param)

    m.movie = m.top.createChild("Movie")
    param = {name:2,last:3,past:4}
    m.movie.callFunc("callFuncTest",param)

end sub