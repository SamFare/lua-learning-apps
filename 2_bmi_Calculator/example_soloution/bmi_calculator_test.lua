local lunatest = require "lunatest"
local bmi_calculator = require "./bmi_calculator"

function test_the_bmi_calculator_can_calculate_a_bmi_given_valid_numbers()
    lunatest.assert_true( 
        string.match(bmi_calculator.calculateBMI(60, 147), "28.7"), 
        string.format("expected a bmi of 28.7 but got %s",  bmi_calculator.calculateBMI(68, 147))
    )
end

function test_the_calculator_rounds_the_result_to_1_decimal_place() 
    lunatest.assert_true( 
        string.match(bmi_calculator.calculateBMI(72, 170), "23.1"), 
        string.format("expected a bmi of 23.1 but got %s",  bmi_calculator.calculateBMI(72, 170))
    )
end

function test_the_bmi_is_represented_with_the_prefix()
    lunatest.assert_true( 
        string.match(bmi_calculator.calculateBMI(72, 170), "Your BMI is"), 
        "expected the string `Your BMI is` but is was not found"
    )
end

function test_conatins_text_informing_user_about_NHS_guidelines()
    lunatest.assert_true( 
        string.match(bmi_calculator.calculateBMI(72, 170), "NHS Guidelines would classify you as"), 
        "expected the string `NHS Guidelines would classify you as` but is was not found"
    )
end

function test_when_the_bmi_is_over_25_the_bmi_Calc_informs_user_they_are_overweight_according_to_NHS_guidelines()
    lunatest.assert_true( 
        string.match(bmi_calculator.calculateBMI(60, 147), "overweight"), 
        "expected the string `overweight` but is was not found"
    )
end

function test_when_the_bmi_is_over_30_the_bmi_Calc_informs_user_they_are_obese_according_to_NHS_guidelines()
    lunatest.assert_true( 
        string.match(bmi_calculator.calculateBMI(60, 170), "obese"), 
        "expected the string `obese` but is was not found"
    )
end

function test_when_the_bmi_is_below_18_the_bmi_Calc_informs_user_they_are_underweight_according_to_NHS_guidelines()
    lunatest.assert_true( 
        string.match(bmi_calculator.calculateBMI(60, 170), "underweight"), 
        "expected the string `obese` but is was not found"
    )
end


function test_when_the_bmi_is_below_18_the_bmi_Calc_informs_user_they_are_underweight_according_to_NHS_guidelines()
    lunatest.assert_true( 
        string.match(bmi_calculator.calculateBMI(60, 90), "underweight"), 
        "expected the string `underweight` but is was not found"
    )
end

function test_when_the_bmi_is_below_18_the_bmi_Calc_informs_user_they_are_ideal_according_to_NHS_guidelines()
lunatest.assert_true( 
    string.match(bmi_calculator.calculateBMI(60, 100), "ideal"), 
    "expected the string `ideal` but is was not found"
)
end

function test_the_string_appears_with_the_expected_formatting()
    lunatest.assert_true( 
    string.match(bmi_calculator.calculateBMI(68, 147), "Your BMI is 22.3. NHS Guidelines would classify you as ideal"), 
    string.format("string not in correct format got: %s", bmi_calculator.calculateBMI(68, 147) )

)
end 

lunatest.run()