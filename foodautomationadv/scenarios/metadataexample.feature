@dataFile:resources/testdata.csv
SCENARIO: verify Test Food Receipe Title
	Given get '/'
	When navigate to recipe page
	Then verify text is RECIPES '${recipeTittle}'

@dataFile:resources/testdata.csv
SCENARIO: verify Search Results
	Given get '/'
	When navigate to recipe page
	When navigate to search page
	Then search recipe '${searchRecipe}'
	Then verify result count

@dataFile:resources/testdata.csv
SCENARIO: verify Save Recipe Action for Guest User
	Given get '/'
	When navigate to recipe page
	When navigate to search page
	Then search recipe '${searchtext}'
	Then select a recipe
	Then save a recipe
	Then verify login message for unregistered user while save/review

@dataFile:resources/testdata.csv
SCENARIO: verify Review Recipe Action for Guest User
	Given get '/'
	When navigate to recipe page
	When navigate to search page
	Then search recipe '${searchtext}'
	Then select a recipe
	Then click on review btn
	Then write a review '${Reviewcomment}'
	Then verify login message for unregistered user while save/review

@dataFile:resources/testdata.csv
SCENARIO: verify Invalid Search
	Given get '/'
	When navigate to recipe page
	When navigate to search page
	Then search recipe '${Invalidsearch}'
	Then verify no match message

@dataFile:resources/testdata.csv
SCENARIO: Verify SAVES Button functionality
	Given get '/'
	When login as Reg User '${username}' '${password}'
	Then navigate to search page
	Then search recipe '${searchtext}'
	Then select a recipe
	Then save a recipe
	Then verify saved recipe msg for Reg User
END