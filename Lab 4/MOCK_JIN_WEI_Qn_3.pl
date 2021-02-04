/*
User start from ask(0), which will display the list of meals choices.
*/

ask(0):-
    write(" "), nl,
    write("Welcome to Subway! What type of meal do you want to have?"), nl,
    write("Please the number of your meal choice:"), nl,
    write("*******************************"), nl,
    write("1: Vegan "), nl,
    write("2: Healthy "), nl,
    write("3: Veggie "), nl,
    write("4: Value "), nl,
    write("*******************************"), nl,

    /* Allows the program to take in the user's choice. */
    read(Selected),

    /* Depending on the selected meal choice, the corresponding meal category ingredients will be displayed. */
    assertz(meal_selected(Selected)),
    meal_options(0).

/*
After selecting the choice of meal, the program will display the available ingredients for the chosen meals.
*/

meal_options(0) :- (

        /* Vegan Meal Selection */

        /* Display the list of ingredients corresponding to Vegan. */
        meal_selected(1) ->
        bread(BreadList), veg(VegList), condiment(CondimentList), drink(DrinkList), sides(SidesList), vegan(VeganList),

        /* findall helps to filter out the available ingredients for Vegan Meal. */
        findall(A, ( member(A, BreadList), member(A, VeganList) ), FilteredBread ),
        findall(C, ( member(C, VegList), member(C, VeganList) ), FilteredVeg ),
        findall(E, ( member(E, CondimentList), member(E, VeganList) ), FilteredCondiment ),
        findall(F, ( member(F, DrinkList), member(F, VeganList) ), FilteredDrink ),
        findall(G, ( member(G, SidesList), member(G, VeganList) ), FilteredSides ),

        /* Bread Selection */
        write(" "), nl,
        write("********************************"), nl,
        write("Please select a type of bread: "), nl,
        write("********************************"), nl,

        print_options(FilteredBread), nl,
        read(SelectedBread),
        assert(selected_bread(SelectedBread)),

        /* Veggie Selection */
        write(" "), nl,
        write("********************************"), nl,
        write("Please select a veggie:"), nl,
        write("********************************"), nl,

        print_options(FilteredVeg), nl,
        read(SelectedVeggie),
        assert(selected_veg(SelectedVeggie)),

        /* Condiment Selection */
        write(" "), nl,
        write("********************************"), nl,
        write("Please select a condiment:"), nl,
        write("********************************"), nl,

        print_options(FilteredCondiment), nl,
        read(SelectedCondiment),
        assert(selected_condiment(SelectedCondiment)),

        /* Drink Selection */
        write(" "), nl,
        write("********************************"), nl,
        write("Please select a drink:"), nl,
        write("********************************"), nl,

        print_options(FilteredDrink), nl,
        read(SelectedDrink),
        assertz(selected_drink(SelectedDrink)),

        /* Sides Selection */
        write(" "), nl,
        write("********************************"), nl,
        write("Please select a side: "), nl,
        write("********************************"), nl,

        print_options(FilteredSides), nl,
        read(SelectedSides),
        assertz(selected_sides(SelectedSides)),

/*The "read" and "assert" function seen above is for the program to take in the user's choice and asserting it into the final display list.
*/
        done(1); /*Display the selected ingredients for the final display list.*/

        /* Healthy Meal Selection */

        /* Display the list of ingredients corresponding to Healthy. */
        meal_selected(2) ->
        bread(BreadList), veg(VegList), meat(MeatList), topping(ToppingList), drink(DrinkList), condiment(CondimentList),
        sides(SidesList), healthy(HealthyList),

        /* findall helps to filter out the available ingredients for Vegan Meal. */
        findall(A, ( member(A, BreadList), member(A, HealthyList) ), FilteredBread ),
        findall(B, ( member(B, MeatList), member(B, HealthyList) ), FilteredMeat),
        findall(C, ( member(C, VegList), member(C, HealthyList) ), FilteredVeg ),
        findall(D, ( member(D, ToppingList), member(D, HealthyList) ), FilteredTopping ),
        findall(E, ( member(E, CondimentList), member(E, HealthyList) ), FilteredCondiment ),
        findall(F, ( member(F, DrinkList), member(F, HealthyList) ), FilteredDrink ),
        findall(G, ( member(G, SidesList), member(G, HealthyList) ), FilteredSides ),

        /* Bread Selection */
        write(" "), nl,
        write("********************************"), nl,
        write("Please select a type of bread: "), nl,
        write("********************************"), nl,

        print_options(FilteredBread), nl,
        read(SelectedBread),
        assertz(selected_bread(SelectedBread)),

        /* Meat Selection */
        write(" "), nl,
        write("********************************"), nl,
        write("Please select a meat: "), nl,
        write("********************************"), nl,

        print_options(FilteredMeat), nl,
        read(SelectedMeat),
        assertz(selected_meat(SelectedMeat)),

        /* Veggie Selection */
        write(" "), nl,
        write("********************************"), nl,
        write("Please select a veggie:"), nl,
        write("********************************"), nl,

        print_options(FilteredVeg), nl,
        read(SelectedVeggie),
        assert(selected_veg(SelectedVeggie)),

        /* Topping Selection */
        write(" "), nl,
        write("********************************"), nl,
        write("Please select a topping:"), nl,
        write("********************************"), nl,

        print_options(FilteredTopping), nl,
        read(SelectedTopping),
        assertz(selected_topping(SelectedTopping)),

        /* Condiment Selection */
        write(" "), nl,
        write("********************************"), nl,
        write("Please select a condiment: "), nl,
        write("********************************"), nl,

        print_options(FilteredCondiment), nl,
        read(SelectedCondiment),
        assertz(selected_condiment(SelectedCondiment)),

        /* Sides Selection */
        write(" "), nl,
        write("********************************"), nl,
        write("Please select a side: "), nl,
        write("********************************"), nl,

        print_options(FilteredSides), nl,
        read(SelectedSides),
        assertz(selected_sides(SelectedSides)),

        /* Drink Selection */
        write(" "), nl,
        write("********************************"), nl,
        write("Please select a drink:"), nl,
        write("********************************"), nl,

        print_options(FilteredDrink), nl,
        read(SelectedDrink),
        assertz(selected_drink(SelectedDrink)),

/*The "read" and "assert" function seen above is for the program to take in the user's choice and asserting it into the final display list.
*/
         done(1); /* Display the selected ingredients for the final display list. */

        /* Veggie Meal Selection */

        /* Display the list of ingredients corresponding to Veggie. */
        meal_selected(3) ->
	bread(BreadList), veg(VegList), topping(ToppingList), condiment(CondimentList), drink(DrinkList), sides(SidesList),         veggie(VeggieList),

        /* findall helps to filter out the available ingredients for Veggie Meal. */
        findall(A, ( member(A, BreadList), member(A, VeggieList) ), FilteredBread ),
        findall(C, ( member(C, VegList), member(C, VeggieList) ), FilteredVeg ),
        findall(D, ( member(D, ToppingList), member(D, VeggieList) ), FilteredTopping ),
        findall(E, ( member(E, CondimentList), member(E, VeggieList) ), FilteredCondiment ),
        findall(F, ( member(F, DrinkList), member(F, VeggieList) ), FilteredDrink ),
        findall(G, ( member(G, SidesList), member(G, VeggieList) ), FilteredSides ),

        /* Bread Selection */
        write(" "), nl,
        write("********************************"), nl,
        write("Please select a bread: "), nl,
        write("********************************"), nl,

        print_options(FilteredBread), nl,
        read(SelectedBread),
        assertz(selected_bread(SelectedBread)),

        /* Veggie Selection */
        write(" "), nl,
        write("********************************"), nl,
        write("Please select a veggie:"), nl,
        write("********************************"), nl,

        print_options(FilteredVeg), nl,
        read(SelectedVeggie),
        assert(selected_veg(SelectedVeggie)),

        /* Topping Selection */
        write(" "), nl,
        write("********************************"), nl,
        write("Please select a topping:"), nl,
        write("********************************"), nl,

        print_options(FilteredTopping), nl,
        read(SelectedTopping),
        assertz(selected_topping(SelectedTopping)),

        /* Condiment Selection */
        write(" "), nl,
        write("********************************"), nl,
        write("Please select a condiment: "), nl,
        write("********************************"), nl,

        print_options(FilteredCondiment), nl,
        read(SelectedCondiment),
        assertz(selected_condiment(SelectedCondiment)),

        /* Sides Selection */
        write(" "), nl,
        write("********************************"), nl,
        write("Please select a side: "), nl,
        write("********************************"), nl,

        print_options(FilteredSides),
        read(SelectedSides),
        assertz(selected_sides(SelectedSides)),

        /* Drink Selection */
        write(" "), nl,
        write("********************************"), nl,
        write("Please select a drink:"), nl,
        write("********************************"), nl,

        print_options(FilteredDrink), nl,
        read(SelectedDrink),
        assertz(selected_drink(SelectedDrink)),

/* The "read" and "assert" function seen above is for the program to take in the user's choice and asserting it into the final display list.
*/
        done(1); /*Display the selected ingredients for the final display list.*/

        /* Value Meal Selection */

        /* Display the list of ingredients corresponding to Value. */
        meal_selected(4) ->
        bread(BreadList), veg(VegList), meat(MeatList), condiment(CondimentList), drink(DrinkList),
        value(ValueList),

        /* findall helps to filter out the available ingredients for Value Meal. */
        findall(A, ( member(A, BreadList), member(A, ValueList) ), FilteredBread ),
        findall(B, ( member(B, MeatList), member(B, ValueList) ), FilteredMeat),
        findall(C, ( member(C, VegList), member(C, ValueList) ), FilteredVeg ),
        findall(E, ( member(E, CondimentList), member(E, ValueList) ), FilteredCondiment ),
        findall(F, ( member(F, DrinkList), member(F, ValueList) ), FilteredDrink ),


        /* Bread Selection */
        write(" "), nl,
        write("********************************"), nl,
        write("Please select a bread: "), nl,
        write("********************************"), nl,

        print_options(FilteredBread), nl,
        read(SelectedBread),
        assertz(selected_bread(SelectedBread)),

        /* Meat Selection */
        write(" "), nl,
        write("********************************"), nl,
        write("Please select a meat: "), nl,
        write("********************************"), nl,

        print_options(FilteredMeat), nl,
        read(SelectedMeat),
        assertz(selected_meat(SelectedMeat)),

        /* Veggie Selection */
        write(" "), nl,
        write("********************************"), nl,
        write("Please select a veggie:"), nl,
        write("********************************"), nl,

        print_options(FilteredVeg), nl,
        read(SelectedVeggie),
        assert(selected_veg(SelectedVeggie)),

        /* Condiment Selection */
        write(" "), nl,
        write("********************************"), nl,
        write("Please select a condiment: "), nl,
        write("********************************"), nl,

        print_options(FilteredCondiment), nl,
        read(SelectedCondiment),
        assertz(selected_condiment(SelectedCondiment)),

        /* Drink Selection */
        write(" "), nl,
        write("********************************"), nl,
        write("Please select a drink:"), nl,
        write("********************************"), nl,

        print_options(FilteredDrink), nl,
        read(SelectedDrink),
        assertz(selected_drink(SelectedDrink)),

/*The "read" and "assert" function seen above is for the program to take in the user's choice and asserting it into the final display list.
*/
    done(1); /* Display the selected ingredients for the final display list. */

    ask(0) /* In an event that the user did not select a meal option. The program will prompt the meal option list again. */
).

/*
done(1) is a function that prints out all the selections that the users
has made.
*/
done(1):-
    write(" "), nl,
    write("********************************"), nl,
    write("Enjoy your meal!"), nl,
    write("********************************"), nl,

    (\+ ( selected_bread(X), bread(Bread), member(X, Bread) ) -> write("No bread selected."), nl;
    ( write("Selected bread: "), selected_bread(X), bread(Bread), member(X, Bread), write(X), nl )),

    (\+ ( selected_meat(Y), meat(Meat), member(Y, Meat) ) -> write("No meat selected."), nl;
    ( write("Selected meat: "), selected_meat(Y), meat(Meat), member(Y, Meat), write(Y), nl )),

    (\+ selected_veg(_) -> write("No veggie selected."), nl;
    ( veg(VegList), findall(Z,(selected_veg(Z), member(Z, VegList)), List), write("Selected veggie: "), nl ,print_options(List) )),

    (\+ ( selected_topping(A), topping(Topping), member(A, Topping)) -> write("No topping selected."), nl;
    ( write("Selected topping: "), selected_topping(A),topping(Topping), member(A,Topping), write(A), nl )),

    (\+ ( selected_condiment(B), condiment(Condiment), member(B, Condiment) ) -> write("No condiment selected."), nl;
    ( write("Selected condiment: "), selected_condiment(B), condiment(Condiment), member(B, Condiment), write(B), nl )),

    (\+ ( selected_drink(C), drink(Drink), member(C, Drink) ) -> write("No drink selected."), nl;
    ( write("Selected drink: "), selected_drink(C), drink(Drink), member(C, Drink), write(C), nl )),

    (\+ ( selected_sides(D), sides(Sides), member(D, Sides) ) -> write("No sides selected."), nl;
    ( write("Selected sides: "), selected_sides(D), sides(Sides), member(D, Sides), write(D), nl )),


/*
retractall is used to reset the program so that the Subway Sandwich Interactor will be a fresh clean program for the next run.
*/
    retractall(selected_veg(_)),
    retractall(selected_bread(_)),
    retractall(selected_meat(_)),
    retractall(selected_topping(_)),
    retractall(selected_drink(_)),
    retractall(selected_sides(_)),
    retractall(selected_condiment(_)),
    retractall(meal_selected(_)),

    abort. % Terminate the program

/*
print_options([A|B]) is used to print all the elementsin a list. It is a recursive predicate which starts printing the
elements from the head element and call itself with the list from
the tail element. This continues until the list is empty.
*/
print_options([A|B]):- write(A), nl, print_options(B).
print_options([]).


/*
The following will declare all the elements for the different
"categories" (Eg.g Bread, Veggies, Vegan Meals, Healthy Meals).
*/

/* Category Ingredients */
bread([italian, multigrain, honeyoat, flatbread, wrap]).
meat([whitechicken, teriyakichicken, bologna, salami, pepperoni, ham, meatballs, roastbeef, bacon, tuna, egg, veggiepatty]).
veg([avocado, cucumbers, lettuce, tomatoes, onions, greenpeppers, olives, pickles]).
topping([mushroomslices, cornflakes, americancheese, montereycheddar]).
condiment([chipotle, mayonnaise, mustard, oliveoil, ranch, sweetonion, bbq, chilli, redwinevinegar, ketchup]).
drink([rootbeer, cocacola, mountaindew, orangejuice, greentea, coffee]).
sides([cookie ,chips, hashbrown, fruitbar, yogurt]).

/* Meals Ingredients */
vegan([italian, multigrain, honeyoat, flatbread, wrap, avocado, cucumbers, lettuce, tomatoes, onions, greenpeppers, olives, pickles, bbq, chilli, mustard, oliveoil, redwinevinegar, sweetonion, ketchup, chips, hashbrown , fruitbar, yogurt , rootbeer, cocacola, mountaindew , orangejuice, greentea, coffee]).
healthy([italian, multigrain, flatbread, wrap, avocado, cucumbers, lettuce, tomatoes, onions, greenpeppers, olives, pickles, mushroomslices, cornflakes, teriyakichicken, ham, roastbeef, mustard, sweetonion, fruitbar, yogurt, orangejuice, greentea]).
veggie([italian, multigrain, honeyoat, flatbread, wrap, veggiepatty, chipotle, honeymustard,avocado, cucumbers, lettuce, tomatoes, onions, greenpeppers, olives, pickles, mushroomslices, cornflakes, americancheese, montereycheddar, mayonnaise, mustard, oliveoil, ranch, sweetonion, bbq, chilli, redwinevinegar, ketchup, cookie ,chips, hashbrown , fruitbar, yogurt,rootbeer,cocacola ,mountaindew, orangejuice, greentea, coffee]).
value([italian, multigrain, honeyoat, flatbread, wrap, whitechicken, teriyakichicken, bologna, salami, pepperoni, ham, meatballs, roastbeef,bacon, tuna, egg, veggiepatty, avocado, cucumbers, lettuce, tomatoes, onions, greenpeppers, olives, pickles, chipotle, mayonnaise, mustard, oliveoil, ranch, sweetonion, bbq, chilli, redwinevinegar, ketchup, rootbeer,cocacola, mountaindew, orangejuice, greentea, coffee]).

/* Each ingredient is "initialized" with an empty assertion */
selected_meat(nothing).
selected_veg(nothing).
selected_topping(nothing).
selected_condiment(nothing).
selected_drink(nothing).
selected_sides(nothing).
selected_bread(nothing).
