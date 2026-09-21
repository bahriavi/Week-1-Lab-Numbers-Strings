use context starter2024

#|
   1. T-Shirt Shop. (I cannot include the symbol in the code so assume the total cost is
   calculated is in "pounds.")
|#

#|
   First Expression: 5 Identical T-shirts = 1 design as all 5 t-shirts are identical with same
   design. So that's 3 pounds + the 12 pounds per shirt. (Assume value is in "pounds")
|#
3 + (5 * 12)

#|
    Second Expression: 7 Identical T-shirts is still 1 design as they are all identical 
    with the same design. So that's 3 pounds plus the 12 pounds per shirt. (Assume value is in
   "pounds")
|#
3 + (7 * 12)

#|
   Compare Results: The second expression, of course, has a higher total cost, as
   we are creating 2 additional t-shirts, so the difference is 12 pounds per shirt times 
   two shirts, which is 24 pounds. The design is 3 pounds for each expression, as we 
   are creating identical t-shirts in each expression, meaning only one design.
|#

#|
   Rectangular Poster. (Assume perimeter below is in "millimeters")
   Perimeter = 2 * (width + height) and width = 420mm / height = 594mm
|#
2 * (420 + 594) 

# Calculate Total Cost (Assume total cost below is in "pounds")
0.1 * (2 * (420 + 594))
#|
   If we forget the parentheses around (width + height), the code will give us an error because the 
   multiply and plus sign are at the same grouping level. We have to add parentheses to clarify
   the order of operations to the code, whether we want to add 420 and 594 first or multiply 2 and 
   420 first. Thus, it is extremely vital that we use parentheses. 
|#

#|
   2. String Surprises
   Create "Designs for everyone!" tagline
|#
"Designs for everyone!"
# If we exclude a quote mark, we get "Pyret thinks the string is not finished..." error

# Colour Inventory
"red" + "blue"
# We get the string "redblue" You can add two strings together.

#|
   If we add 1 + "blue," we get an error because we are attempting to add 1, which is a number, and
   "blue," which is a string. When using the plus expression, we have to give either two numbers
   or two strings, not one number and one string.
|#

# 3. Make a Traffic Light. 
overlay-align("center", "middle", above(circle(14, "solid", "red"), above(circle(14, "solid",
"yellow"), circle(14, "solid", "green"))), rectangle(42, 87, "solid", "black"))

#|
   First, I started with an overlay-align function, which I found in the reference guide. I chose 
   center and middle to ensure the three circles are correctly placed. Then, I ignored the first 
   image slot for now and put the rectangle in the second image slot of overlay-align, as 
   I knew I wanted to overlay everything onto a black rectangle. I specifically chose "42" for 
   the width, as I know  it's divisible by 3, and thus, my three circles will have a radius 
   of 42 divided by 3 or 14. This makes sure the three circles all have an equal radius. 
   As for the length of "87," I just tested with different values to find the one that 
   fit everything best.
   
   For the three circles, I first started with an above function for the remaining first image 
   slot of the overlay-align function that I originally skipped over. Once again, I skipped over
   the first image slot of the above function, and in the second image slot, I created a green 
   circle with radius 14 (42/3). Then, in the first image slot of that above function, I created 
   the yellow circle with the same radius. Finally, I made another above function, where I used
   the previous above function as the second image slot. Then, in the first image slot for the new
   above function, I made the red circle.
   
   Additionally, I checked, and in the United Kingdom, green traffic light is on the bottom.
|#
   
# Challenge (Add a Pole)
above(overlay-align("center", "middle", above(circle(14, "solid", "red"), above(circle(14, "solid", "yellow"), circle(14, "solid", "green"))), rectangle(42, 87, "solid", "black")), rectangle(10.5, 50, "solid", "grey"))

#|
   I started by adding an above function at the very outside of everything, and using my already
   created traffic light as the first image slot for it. Then in the second image slot, I created
   a new grey rectangle. I chose 10.5 for the width because it is the traffic light width of 42 
   divided by 4. As for the height of 50, I just tested values until I found one I liked, and for
   the color "grey," traffic lights are usually on grey poles.
|#

# 4. Broken Code Hunt
# Goal: A rectangle with width 50 and height 20, solid black
rectangle(50, 20, "solid", "black")

#|
   The error was that it was in the wrong order. The contract is rectangle(width Number, height 
   Number, solid/outline String, color String). The original had "solid" second, not third.
|#

circle(30, "solid", "red")
#|
   The error was that solid did not have quotes around it. The circle contract is 
   circle(radius number, solid/outline String, color String). The original did not have quote
   around Solid, and thus it was not a string like the contract for circle needs.
|#

#5 Create a flag. (I want to make an India Flag)
beside(rectangle(10, 200, "solid", "grey"), overlay-align("center", "middle", circle(3, "solid", "blue"), overlay-align("center", "middle", circle(10, "outline", "blue"), overlay-align("center", "middle", above(rectangle(100, 21, "solid", "orange"), above(rectangle(100, 21, "solid", "white"), rectangle(100,21,"solid", "green"))), rectangle(100, 63, "solid", "black")))))

overlay-align("left", "top", rectangle(10, 200, "solid", "grey"), overlay-align("center", "middle", circle(3, "solid", "blue"), overlay-align("center", "middle", circle(10, "outline", "blue"), 
overlay-align("center", "middle", above(rectangle(100, 21, "solid", "orange"), above(rectangle(100, 21, "solid", "white"), rectangle(100,21,"solid", "green"))), rectangle(100, 63, "solid", "black")))))

#|
   First, I once again started with an overlay-align function, using center and middle, and
   skipped the first image slot, creating a black rectangle of specific height 63 and width 
   100. I chose a height of 63 because it is divisible by 3, and thus the height of all my 
   rectangles will be 63 divided by 3 or 21. The 100 width I simply chose because I thought
   it looked fine.
 
   Then, going back to the first image slot for the overlay-align function, I created an above
   function and skipped over the first image slot, creating a green rectangle in the second image
   slot with the same width of 100 as the black rectangle and the 21 height. Then, in the first 
   image slot of the above function, I created a white rectangle.
   
   Next, I created another above function, inputting the above function I just created with 
   the white and green rectangle as the second image slot. Then, I created the final orange
   rectangle in the first image slot, using the same width and height as the others.
   
   For the two circles, I created another overlay-align function outside of everything, with center 
   and middle. I inputted the flag I had so far with three rectangles as the second image slot, 
   and in the first image slot, I created a new blue circle, with a radius just small 
   enough that it only touches the middle white rectangle. Then, I created another 
   overlay-align function, inputting the overlay-align function with the outlined blue 
   circle we just made as the second image slot. Once again, in the first image slot, 
   I created a solid blue circle that fits in the outlined blue circle.
   
   Finally for the flagpole, I made an overlay-align function, this time using left and top. I put
   the entire flag thus far in the second image slot and, in the first image slot, I created
   a new grey rectangle. Thus, I overlayed the grey rectangle on the top left on the flag, making 
   it appear as if the flag was hanging on the flagpole.
   
   In my first attempt, as you can see in the first line of code, I attempted to use the beside 
   function; however, I couldn't figure out how to make the flag go up instead of just standing
   in the middle of the pole.
   
   I also see now that the black rectangle I initially created was useless, as I simply covered it
   up with my three mini-rectangles
   
   Some limitations I ran through is that the real India flag has a bunch lines running from the 
   solid circle to the outlined circles, but I'm not sure how I'd be able to create them. I know
   I can use the rotate function and create multiple rectangles, but I'm unable to find how to
   position them so they're perfectly connecting the outlined and solid circle like in the India
   flag.
|#
  
# Add text if time permits
overlay-align("middle", "top", text("India Flag", 15, "black"), overlay-align("left", "top", rectangle(10, 200, "solid", "grey"), overlay-align("center", "middle", circle(3, "solid", "blue"), overlay-align("center", "middle", circle(10, "outline", "blue"), overlay-align("center", "middle", above(rectangle(100, 21, "solid", "orange"), above(rectangle(100, 21, "solid", "white"), rectangle(100,21,"solid", "green"))), rectangle(100, 63, "solid", "black"))))))

#|
   I simply added a new overlay-align function, using middle and top, and then 
   input the text "India Flag" as the first image slot, and my already created India Flag 
   as the second slot. I'm unsure as to how to further center the text "India Flag" 
   in the flag so that it's perfectly in the orange rectangle, though. I would also like some 
   feedback to see if there's possibly a more concise way to do everything, as I keep on using the
   overlay-align function over and over again.
|#

   


