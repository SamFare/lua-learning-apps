local bmi_calculator = {}

bmi_calculator.calculateBMI = function(heightInInches, weightInIbs)
    local bmi = (weightInIbs / math.pow(heightInInches, 2)) * 703
    local classification = "overweight"
    
    if bmi > 30 then
        classification = 'obese'
    elseif bmi < 18 then
        classification = 'underweight'
    elseif bmi > 18 and bmi < 25 then
        classification = 'ideal'
    end
    return string.format("Your BMI is %.1f. NHS Guidelines would classify you as %s", bmi, classification)
end

return bmi_calculator