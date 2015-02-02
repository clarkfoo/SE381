Feature: Subtracting

	Scenario Outline: Subtract two numbers
		Given the input "<input>"
		When the calculator is run
		Then the output should be "<output>"
		
		Examples:
			| input	| output	|
			| 100-2	| 98		|
			| 3-99	| -96		|