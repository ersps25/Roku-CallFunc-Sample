sub main()
    initiateScene()
end sub

sub initiateScene()
    m.port = CreateObject("roMessagePort")
    screen = CreateObject("roSGScreen")
    screen.setMessagePort(m.port)

    m.scene = screen.createScene("MainScene")
    screen.show()

    while(true)
        msg =  wait(0,m.port)
        if type(msg) = "roSGScreenEvent"
            if msg.isScreenClosed() then return
        end if 
    end while

end sub
