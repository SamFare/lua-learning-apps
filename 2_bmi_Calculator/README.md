### BMI Calculator
#### Context
It's difficult to tell if your physique is a healthy one from your weight alone. This is because your weight is dependent on your hight as much as anything else.  The NHS use a Body Mass Index (BMI) calculation which is your weight factoring in your height. 

You can calculate your BMI using the following formula:

```  BMI = [Weight (lbs) / Height (inches)²] x 703  ``` 

Notice that this uses (British style) imperial units. There is a different formula if you want to use metric (kg/m). But let's use imperial for the scope of this exercise. 

The NHS uses the following definitions for each BMI range

Less than 18: Underweight
Between 18 and 25: Ideal
Over 25: Overweight
Over 30: Obese

These aren't the most diplomatic descriptions. But they are what the experts have decided.

#### The challenge

Write a command-line application that takes in tow parameters: 
1. Weight (Ibs)
2. Height (inches)

The program should output the result for the BMI and the NHS definition.
This should be in the format:  
`NHS Guidelines would classify you as {classification}`

#### Example

```
calculateBMI(68, 147)
-- Your BMI is 22.3. NHS Guidelines would classify you as ideal
```