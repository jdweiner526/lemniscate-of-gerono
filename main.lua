function love.load()
	winWidth=500
	winHeight=500
	love.window.setMode(winWidth,winHeight)
	love.window.setTitle("Lemniscate of Gerono")

	x=0
	y=0
	scaling=winWidth/3
	tick=0
	tickamount=0.04

	print("Press arrow up to increase step size, press arrow down to decrease step size.")
end



function love.draw()
	love.graphics.circle("fill",x,y,20)
end

function love.update()
	tick = ( tick + tickamount ) % ( 2 * math.pi )

	x = scaling * math.sin(tick) + winWidth/2 
	y = scaling * math.sin(tick) * math.cos(tick) + winHeight/2

	--print(tick, tickamount, x, y)
end

function love.keypressed(key)
    if key=="up" then
        tickamount = tickamount + 0.01
    end

    if key=="down" then
        tickamount = tickamount - 0.01
    end
end
