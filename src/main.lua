x, y = 400, 300
change_x, change_y = 300, 300

function love.load()
  font = love.graphics.newFont('CherrySwash-Regular.ttf',16)
  love.graphics.setFont(font)
  love.graphics.setBackgroundColor(148, 186, 155)
  -- Paint character white
  love.graphics.setColor(255, 255, 225)
end

function love.draw()
  -- draw character
  love.graphics.print("X: " .. love.graphics.getWidth() - x, 50, 50)
  love.graphics.print("Y: " .. love.graphics.getWidth() - y, 50, 70)
  love.graphics.rectangle('fill', x, y, 25, 25)
end

function love.update(dt)
     x = x + change_x * dt
     y = y + change_y * dt
     if x > (love.graphics.getWidth() - 25) or x < 0 then
       change_x = change_x * -1
     end
     if y > (love.graphics.getHeight() - 25) or y < 0 then
       change_y = change_y * -1
     end
end
