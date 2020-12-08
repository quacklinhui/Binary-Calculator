# Binary-Calculator

Button 1: 1
Button 2: 0
Button 3: Clear
Button 4: +
Button 5: -
Button 6: x
Button 7: divide
Button 8: equals
Button 9: percentage
Button 10: Shift

Classes: 
Calculator{
value[]
}

Button{
onPress();
display;
performOperation();
}


Calculator class has buttons, holds value. Array stores decimal, convert to binary when returning. 
Superclass Buttons – press, mouseover color change of cell
Number button – display 
Operation button
-	Primary operation + - x / 
-	Secondary operation shift+ shift – 

Each Subclass need to define which button on the keyboard triggers the button on the calculator
