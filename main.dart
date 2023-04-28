 import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Recipe> recipes = [
    Recipe(
      name: 'Spaghetti Carbonara',
      description:
      'Spaghetti carbonara is an Italian pasta dish from Rome made with egg, hard cheese, guanciale, and black pepper. The dish arrived at its modern form, with its current name, in the middle of the 20th century.',
      image: 'images/spco.jpg',

      ingredients: [
        '1 pound spaghetti',
        '6 ounces guanciale or pancetta, diced',
        '2 cloves garlic, minced',
        '3 large eggs',
        '1 1/2 cups grated Pecorino Romano cheese',
        '1/2 teaspoon freshly ground black pepper',
      ],
      directions: [
        'Cook spaghetti according to package directions. Reserve 1 cup of pasta cooking water.',
        'In a large skillet, cook the guanciale over medium heat until crisp, about 8 minutes. Add garlic and cook for 1 minute. Remove from heat and let cool for 5 minutes.',
        'In a bowl, whisk together eggs, cheese, and black pepper. Gradually whisk in 1/2 cup of reserved pasta water.',
        'Add spaghetti to the skillet and toss with guanciale. Add egg mixture and toss until sauce is creamy, adding more pasta water if needed. Serve immediately.',
      ],
      videoUrl: 'https://youtu.be/AvO8UPbIH30',
    ),
    Recipe(
      name: 'Classic Cheeseburger',
      description:
      'A cheeseburger is a hamburger topped with cheese. Traditionally, the slice of cheese is placed on top of the meat patty, but the burger can include many variations in structure, ingredients, and composition.',
      image: 'images/cb.jpg',
      ingredients: [
        '1 pound ground beef',
        '1/2 teaspoon salt',
        '1/4 teaspoon freshly ground black pepper',
        '4 hamburger buns, split',
        '4 slices American cheese',
        'Lettuce leaves',
        'Sliced tomatoes',
        'Sliced onions',
        'Ketchup',
        'Mustard',
      ],
      directions: [
        'Preheat grill or grill pan to medium-high heat.',
        'In a large bowl, combine ground beef, salt, and pepper. Mix well and form into 4 patties.',
        'Grill burgers for 3-4 minutes per side, or until desired doneness is reached. During the last minute of cooking, top each patty with a slice of cheese.',
        'Toast the buns on the grill for 30 seconds to 1 minute.',
        'Assemble burgers with lettuce, tomato, onion, ketchup, and mustard.',
      ],
      videoUrl: 'https://youtu.be/foD42-73wdI',
    ),
    Recipe(
      name: 'Fish Curry',
      description:
      'This delicious fish curry is made with tender chunks of fish, simmered in a spicy tomato and coconut milk-based sauce.',
      image: 'images/fiscu.jpg',
      ingredients: [
        '1 lb firm white fish fillets, cut into bite-sized pieces',
        '1 tbsp vegetable oil',
        '1 large onion, chopped',
        '3 cloves garlic, minced',
        '1 tbsp fresh ginger, grated',
        '1 tsp ground cumin',
        '1 tsp ground coriander',
        '1/2 tsp turmeric',
        '1/4 tsp cayenne pepper',
        '1 can (14 oz) diced tomatoes',
        '1 can (14 oz) coconut milk',
        '1 tsp salt',
        '1/4 cup fresh cilantro, chopped'
      ],
      directions: [
        'In a large skillet or Dutch oven, heat the oil over medium heat. Add the onion and cook until softened, about 5 minutes.',
        'Add the garlic, ginger, cumin, coriander, turmeric, and cayenne pepper. Cook for 1-2 minutes, stirring constantly, until fragrant.',
        'Add the diced tomatoes and coconut milk. Bring to a simmer and let cook for 5-10 minutes, until slightly thickened.',
        'Add the fish and salt. Simmer gently for 8-10 minutes, until the fish is cooked through and the sauce has thickened. Add more salt if necessary.',
        'Serve hot, garnished with chopped cilantro.'
      ],
      videoUrl: 'https://youtu.be/B3DphucUiKk',
    ),
    Recipe( name: 'Chocolate Cake',
      description:
      'This moist and decadent chocolate cake is perfect for any occasion.',
      image: 'images/chocake.jpg',
      ingredients: [
        '2 cups all-purpose flour',
        '2 cups granulated sugar',
        '3/4 cup unsweetened cocoa powder',
        '2 tsp baking soda',
        '1 tsp baking powder',
        '1 tsp salt',
        '1 cup buttermilk',
        '1/2 cup vegetable oil',
        '2 large eggs',
        '2 tsp vanilla extract',
        '1 cup boiling water',
        'For the frosting:',
        '1/2 cup butter',
        '2/3 cup unsweetened cocoa powder',
        '3 cups powdered sugar',
        '1/3 cup milk',
        '1 tsp vanilla extract'
      ],
      directions: [
        'Preheat oven to 350°F. Grease and flour two 9-inch round cake pans.',
        'In a large mixing bowl, whisk together the flour, sugar, cocoa powder, baking soda, baking powder, and salt.',
        'Add buttermilk, vegetable oil, eggs, and vanilla extract. Mix until well combined.',
        'Gradually pour in boiling water, mixing until well combined. The batter will be thin.',
        'Pour batter evenly into the prepared pans.',
        'Bake for 30-35 minutes or until a toothpick inserted in the center comes out clean.',
        'Cool in pans for 10 minutes before removing to wire racks to cool completely.',
        'For the frosting, in a medium mixing bowl, cream butter and cocoa powder until smooth.',
        'Gradually beat in powdered sugar, milk, and vanilla extract until frosting is smooth and spreadable.',
        'Spread frosting between layers and over top and sides of cake.',
        'Serve and enjoy!'
      ],
      videoUrl: 'https://youtu.be/B78ZhSGWQAQ',
    ),
   Recipe(
  name: 'Pizza',
  description:
  'This classic pizza recipe features a crispy crust, tangy tomato sauce, and gooey melted cheese, all topped with your favorite toppings.',
  image: 'images/pizza.jpg',
  ingredients: [
  'For the pizza crust:',
  '1 1/2 cups warm water',
  '1 tbsp instant yeast',
  '1 tbsp honey',
  '2 tbsp olive oil',
  '4 cups all-purpose flour',
  '1 tsp salt',
  'For the pizza sauce:',
  '1 can (14 oz) crushed tomatoes',
  '2 cloves garlic, minced',
  '1 tsp dried oregano',
  '1 tsp dried basil',
  '1/4 tsp salt',
  'For the toppings:',
  '2 cups shredded mozzarella cheese',
  'Your choice of toppings, such as pepperoni, sausage, mushrooms, onions, peppers, olives, etc.'
  ],
  directions: [
  'In a large mixing bowl, combine the warm water, yeast, honey, and olive oil. Let sit for 5-10 minutes, until foamy.',
  'Add the flour and salt. Mix until well combined and the dough comes together in a ball.',
  'Knead the dough on a floured surface for 5-10 minutes, until smooth and elastic. Place in a greased bowl, cover, and let rise in a warm place for 1-2 hours, until doubled in size.',
  'Preheat the oven to 450°F. Punch down the dough and roll it out on a floured surface to fit a greased pizza pan or baking sheet.',
  'For the pizza sauce, mix together the crushed tomatoes, garlic, oregano, basil, and salt. Spread the sauce over the pizza crust.',
  'Add the shredded mozzarella cheese and your choice of toppings.',
  'Bake for 12-15 minutes, until the crust is golden brown and the cheese is melted and bubbly.',
  'Slice and serve hot!'
  ],
     videoUrl: 'https://youtu.be/ppAIhDNkuM0',
  ),
   Recipe(
  name: 'Vada Pav',
  description:
  'This popular Indian street food is a tasty vegetarian sandwich made with a spicy potato fritter and a flavorful chutney, all served on a soft bread roll.',
  image: 'images/vadp.jpg',
  ingredients: [
  'For the potato vada:',
  '4-5 medium-sized potatoes, boiled and mashed',
  '1 tsp mustard seeds',
  '1 tsp cumin seeds',
  '1/4 tsp asafoetida',
  '1-2 green chilies, finely chopped',
  '1 inch ginger, grated',
  '1/2 tsp turmeric powder',
  '1 tsp red chili powder',
  '1 tsp coriander powder',
  '1/2 tsp garam masala powder',
  '1 tbsp lemon juice',
  'Salt to taste',
  'Oil for deep frying',
  'For the chutney:',
  '1/2 cup grated coconut',
  '1/2 cup roasted peanuts',
  '1-2 green chilies',
  '1 inch ginger',
  '1 tbsp lemon juice',
  'Salt to taste',
  'For the vada pav:',
  '8-10 soft bread rolls',
  'Butter for toasting',
  'Garlic chutney, as needed',
  'Green chutney, as needed',
  'Thinly sliced onions, as needed',
  'Coriander leaves, for garnish'
  ],
  directions: [
  'For the potato vada, heat oil in a pan and add mustard seeds, cumin seeds, and asafoetida. When they start to crackle, add green chilies and ginger.',
  'Add mashed potatoes, turmeric powder, red chili powder, coriander powder, garam masala powder, lemon juice, and salt. Mix well and cook for a few minutes, until the spices are well blended with the potatoes. Let the mixture cool.',
  'Divide the potato mixture into small balls and shape them into flat patties.',
  'Heat oil for deep frying. Fry the potato patties until golden brown and crisp. Drain on a paper towel and keep aside.',
  'For the chutney, blend together grated coconut, roasted peanuts, green chilies, ginger, lemon juice, and salt with a little water, until you get a smooth paste. Keep aside.',
  'For the vada pav, slit the bread rolls horizontally and spread garlic chutney on one side and green chutney on the other side.',
  'Place a potato vada in between the two halves of the bread roll.',
  'Top with thinly sliced onions and coriander leaves. Press the two halves of the bread roll together.',
  'Toast the sandwich on a hot griddle with a little butter, until golden brown and crisp on both sides.',
  'Serve hot with more chutney on the side.'
  ],
     videoUrl: 'https://youtu.be/C4pzmjHgqLw',
  ),
   Recipe(
  name: 'Idli',
  description:
  'Idli is a soft and fluffy steamed rice and lentil cake, commonly eaten for breakfast or as a snack in South India.',
  image: 'images/idli.jpg',
  ingredients: [
  '1 cup idli rice',
  '1/4 cup urad dal',
  '1/2 tsp fenugreek seeds',
  'Salt to taste',
  'Water as needed',
  'Oil for greasing the idli molds'
  ],
  directions: [
  'Rinse the idli rice and urad dal together and soak them in enough water for 4-5 hours. Add fenugreek seeds to the same bowl while soaking.',
  'Drain the water and grind the soaked rice and dal mixture together with enough water to make a smooth and slightly thick batter. The consistency of the batter should be similar to that of pancake batter. Add salt and mix well.',
  'Transfer the batter to a large container and cover it with a lid. Let it ferment for 8-10 hours or overnight in a warm place, until the batter has doubled in volume and has a slightly sour aroma.',
  'Grease the idli molds with oil and pour the batter into each mold, filling it up to 3/4th of its capacity.',
  'Place the molds in a steamer or pressure cooker without the whistle. Steam the idlis for 10-12 minutes on medium heat. If using a pressure cooker, remove the whistle and steam for 8-10 minutes on low heat.',
  'Remove the molds from the steamer or pressure cooker and let them cool for a minute. Use a spoon to gently remove the idlis from the molds.',
  'Serve the idlis hot with chutney, sambar, or any other side dish of your choice.'
  ],
     videoUrl: 'https://youtu.be/wVL_hkAPbVM',
  ),
  Recipe(
  name: 'Litti Chokha',
  description:
  'Litti Chokha is a traditional Bihari dish made with roasted wheat flour dumplings stuffed with spiced sattu filling, served with a side of mashed potatoes, brinjal, and tomato.',
  image: 'images/lc.jpg',
  ingredients: [
  'For Litti:',
  '2 cups whole wheat flour',
  '1/2 cup ghee',
  '1 tsp carom seeds',
  '1 tsp salt',
  'Water as needed',
  'For Sattu Filling:',
  '2 cups roasted chana sattu',
  '1 onion, chopped',
  '2-3 green chilies, chopped',
  '1 tbsp ginger, grated',
  '1 tbsp garlic, minced',
  '1 tbsp mustard oil',
  '1 tsp ajwain seeds',
  '1 tsp cumin seeds',
  '1/2 tsp fennel seeds',
  '1 tsp red chili powder',
  '1/2 tsp turmeric powder',
  '1/2 tsp coriander powder',
  '1/2 tsp garam masala powder',
  'Salt to taste',
  'For Chokha:',
  '2 boiled potatoes, mashed',
  '1 brinjal, roasted and mashed',
  '2 tomatoes, roasted and mashed',
  '1 onion, chopped',
  '2-3 green chilies, chopped',
  '1 tbsp mustard oil',
  '1 tsp cumin seeds',
  '1 tsp red chili powder',
  '1/2 tsp turmeric powder',
  '1/2 tsp coriander powder',
  '1/2 tsp garam masala powder',
  'Salt to taste'
  ],
  directions: [
  'For Litti:',
  'In a large mixing bowl, add whole wheat flour, ghee, carom seeds, and salt. Mix well and add water gradually to make a smooth dough. Cover and keep aside for 30 minutes.',
  'For Sattu Filling:',
  'In a mixing bowl, add roasted chana sattu, chopped onion, green chilies, grated ginger, minced garlic, ajwain seeds, cumin seeds, fennel seeds, red chili powder, turmeric powder, coriander powder, garam masala powder, salt, and mustard oil. Mix well to form a stuffing.',
  'For Litti:',
  'Divide the dough into equal-sized balls. Roll out each ball into a small disc and add a spoonful of the sattu stuffing in the center. Bring the edges together and shape it into a ball again.',
  'Preheat a tandoor or an oven to 180°C. Place the litti balls on a tray and bake for 15-20 minutes or until they turn golden brown on the surface.',
  'For Chokha:',
  'In a mixing bowl, add mashed potatoes, roasted and mashed brinjal and tomato, chopped onion, green chilies, cumin seeds, red chili powder, turmeric powder, coriander powder, garam masala powder, salt, and mustard oil. Mix well to form a chokha.',
  'Serve hot litti with chokha and a dollop of ghee.'
  ],
    videoUrl: 'https://youtu.be/e6Tl_sAEkNU',
  ),
  Recipe(
  name: 'Dahi Vada',
  description:
  'Dahi Vada is a popular Indian snack made by soaking lentil fritters in spiced yogurt and garnished with sweet and tangy chutneys and spices.',
  image: 'images/db.jpg',
  ingredients: [
  '1 cup urad dal',
  '1/4 cup moong dal',
  '1/4 cup chana dal',
  '2-3 green chilies, chopped',
  '1 tbsp ginger, grated',
  'Salt to taste',
  'Oil for deep frying',
  '3 cups yogurt',
  '1/2 tsp cumin powder',
  '1/2 tsp chaat masala',
  '1/4 tsp red chili powder',
  'Salt to taste',
  '2 tbsp tamarind chutney',
  '2 tbsp coriander chutney',
  '1 tbsp roasted cumin powder',
  '1/4 cup sev',
  '2-3 tbsp chopped coriander leaves'
  ],
  directions: [
  'In a mixing bowl, add urad dal, moong dal, and chana dal. Rinse well and soak in water for 4-5 hours.',
  'Drain the water and grind the soaked dal mixture with green chilies, grated ginger, and salt. Add water as required to make a smooth batter.',
  'Heat oil in a deep frying pan. Take a small portion of the batter and drop it in hot oil using a spoon. Fry until golden brown and crisp. Repeat with the remaining batter.',
  'Soak the fried vadas in water for 20-30 minutes. Squeeze out the excess water and transfer them to a plate.',
  'In a mixing bowl, add yogurt, cumin powder, chaat masala, red chili powder, and salt. Mix well to form a smooth yogurt mixture.',
  'Take the soaked vadas and dip them in the yogurt mixture. Let them soak for 10-15 minutes.',
  'Arrange the soaked vadas on a serving plate. Drizzle tamarind chutney, coriander chutney, roasted cumin powder, sev, and chopped coriander leaves on top.',
  'Serve chilled Dahi Vada as a snack or appetizer.'
  ],
    videoUrl: 'https://youtu.be/nC4dWuq3uXc',
  ),
   Recipe(
  name: 'Chole Bhature',
  description:
  'Chole Bhature is a popular North Indian dish consisting of spicy chickpeas served with deep-fried bread. It is a flavorful and satisfying meal that is perfect for breakfast, lunch or dinner.',
  image: 'images/cbt.jpg',
  ingredients: [
  'For Chole:',
  '1 cup chickpeas (chole), soaked overnight',
  '2 tbsp oil',
  '1 tsp cumin seeds',
  '1 bay leaf',
  '2-3 cloves',
  '1 cinnamon stick',
  '1 onion, finely chopped',
  '1 tbsp ginger-garlic paste',
  '2-3 green chilies, slit',
  '1 tsp coriander powder',
  '1 tsp cumin powder',
  '1/2 tsp red chili powder',
  '1/2 tsp garam masala powder',
  '1/2 tsp dry mango powder (amchur)',
  '2 tbsp tomato paste',
  '1/2 tsp salt, or to taste',
  '2 cups water',
  '2 tbsp chopped coriander leaves',
  'For Bhature:',
  '2 cups all-purpose flour',
  '1/2 tsp salt',
  '1/2 tsp baking powder',
  '1/4 cup yogurt',
  '2 tbsp oil',
  'Water, as needed',
  'Oil, for deep frying'
  ],
  directions: [
  'To prepare Chole, drain and rinse soaked chickpeas. In a pressure cooker, add the chickpeas, water, and salt. Cook until soft and tender. Keep aside.',
  'In a pan, heat oil over medium heat. Add cumin seeds, bay leaf, cloves, and cinnamon stick. Sauté for a few seconds until fragrant.',
  'Add finely chopped onion and sauté until golden brown. Add ginger-garlic paste and green chilies. Sauté until the raw smell disappears.',
  'Add coriander powder, cumin powder, red chili powder, garam masala powder, dry mango powder, tomato paste, and salt. Mix well and cook for a few minutes.',
  'Add cooked chickpeas and water. Mix well and bring it to a boil. Reduce heat to low and let it simmer for 15-20 minutes.',
  'Garnish with chopped coriander leaves and keep aside.',
  'To prepare Bhature, in a mixing bowl, add all-purpose flour, salt, baking powder, yogurt, and oil. Mix well to form a crumbly mixture.',
  'Add water as needed to form a smooth and soft dough. Knead for a few minutes and let it rest for 15-20 minutes.',
  'Divide the dough into equal portions and roll each portion into a small circle.',
  'Heat oil in a deep frying pan over medium heat. Fry the rolled bhature until puffed and golden brown on both sides. Drain excess oil on paper towels.',
  'Serve hot Chole with Bhature and enjoy!'
  ],
     videoUrl: 'https://youtu.be/FU1ZVLMbWjA',
  ),
  Recipe(
  name: 'Masala Dosa',
  description:
  'Masala Dosa is a popular South Indian dish consisting of a crispy crepe made from fermented rice and lentil batter, filled with a spicy potato filling. It is a nutritious and delicious meal that can be enjoyed for breakfast, lunch or dinner.',
  image: 'images/md.jpg',
  ingredients: [
  'For Dosa Batter:',
  '1 cup raw rice',
  '1/2 cup urad dal',
  '1/2 tsp fenugreek seeds (methi seeds)',
  'Salt, to taste',
  'Water, as needed',
  'For Potato Filling:',
  '4 medium-sized potatoes, boiled and mashed',
  '1 onion, finely chopped',
  '2 green chilies, chopped',
  '1/2 tsp mustard seeds',
  '1/2 tsp cumin seeds',
  '1/2 tsp turmeric powder',
  '1/2 tsp red chili powder',
  '1/2 tsp garam masala powder',
  'Salt, to taste',
  '2 tbsp oil',
  'For Chutney:',
  '1 cup grated coconut',
  '1/2 cup roasted chana dal',
  '2-3 green chilies',
  '1/2 inch ginger',
  '1/2 tsp cumin seeds',
  'Salt, to taste',
  'Water, as needed'
  ],
  directions: [
  'To prepare Dosa batter, rinse raw rice, urad dal, and fenugreek seeds in water. Soak them in enough water for at least 4-5 hours.',
  'Drain the water and grind the soaked rice, urad dal and fenugreek seeds into a smooth batter using a wet grinder or blender. Add water as needed to form a smooth and thick batter. Add salt and mix well.',
  'Let the batter ferment overnight or for at least 8-10 hours in a warm place.',
  'To prepare Potato filling, heat oil in a pan over medium heat. Add mustard seeds and cumin seeds. Sauté until the seeds start to splutter.',
  'Add chopped onion and green chilies. Sauté until the onion turns translucent.',
  'Add boiled and mashed potatoes, turmeric powder, red chili powder, garam masala powder, and salt. Mix well and cook for a few minutes.',
  'Garnish with chopped coriander leaves and keep aside.',
  'To prepare Chutney, in a blender, add grated coconut, roasted chana dal, green chilies, ginger, cumin seeds, and salt. Add water as needed and blend into a smooth and thick paste.',
  'To make Masala Dosa, heat a non-stick tawa or griddle over medium heat. Grease the tawa with oil.',
  'Pour a ladleful of dosa batter in the center of the tawa and spread it in a circular motion to form a thin crepe. Drizzle oil around the edges and let it cook for a few minutes until the bottom side turns golden brown and crispy.',
  'Add a spoonful of potato filling in the center of the dosa and fold it in half. Serve hot with coconut chutney and sambar.',
  ],
    videoUrl: 'https://youtu.be/gY1LXg8AnU4',
  ),
   Recipe(
  name: 'Pani Puri',
  description:
  'Pani Puri is a popular street food in India and other South Asian countries. It consists of small, crispy, hollow balls filled with spiced mashed potatoes, and served with a tangy tamarind water. It is a flavorful and refreshing snack that can be enjoyed anytime.',
  image: 'images/pp.jpg',
  ingredients: [
  'For Pani (Tamarind Water):',
  '1 cup tamarind pulp',
  '1/2 cup mint leaves, chopped',
  '1/2 cup coriander leaves, chopped',
  '1 green chili, chopped',
  '1/2 inch ginger, chopped',
  '1/2 tsp cumin powder',
  '1/2 tsp chaat masala',
  '1/4 tsp black salt',
  'Salt, to taste',
  '4 cups water',
  'For Filling:',
  '4-5 boiled potatoes, mashed',
  '1 onion, finely chopped',
  '1/2 cup boiled chickpeas',
  '1/2 tsp chaat masala',
  '1/2 tsp roasted cumin powder',
  '1/2 tsp red chili powder',
  '1/2 tsp black salt',
  'Salt, to taste',
  'For Puri:',
  '1 cup semolina (sooji)',
  '1/4 cup all-purpose flour (maida)',
  'Salt, to taste',
  'Water, as needed',
  'Oil, for frying'
  ],
  directions: [
  'To prepare Pani, soak tamarind pulp in 4 cups of water for 30 minutes. Strain the pulp and discard the seeds.',
  'In a blender, add tamarind water, mint leaves, coriander leaves, green chili, ginger, cumin powder, chaat masala, black salt, and salt. Blend into a smooth paste. Adjust the seasoning to taste. Keep it in the refrigerator to chill.',
  'To prepare filling, mix mashed potatoes, chopped onions, boiled chickpeas, chaat masala, roasted cumin powder, red chili powder, black salt, and salt in a bowl.',
  'To prepare Puri, in a bowl, mix semolina, all-purpose flour, and salt. Add water as needed to make a stiff dough. Knead well and keep aside for 10 minutes.',
  'Divide the dough into small balls. Roll out each ball into a thin disc. Use a cookie cutter or a small cup to cut out small circles from the rolled out dough.',
  'Heat oil in a kadhai or wok over medium heat. Fry the puris in hot oil until they puff up and turn golden brown in color. Remove them from the oil and keep them on a paper towel to drain excess oil.',
  'To assemble Pani Puri, make a small hole in the center of each puri. Stuff it with a spoonful of potato filling. Dip the stuffed puri in the chilled tamarind water and serve immediately.',
  ],
     videoUrl: 'https://youtu.be/OtQftx4TUh0',
  ),
   Recipe(
  name: 'Chicken Biryani',
  description:
  'Chicken Biryani is a popular rice dish that originated in the Indian subcontinent. It is made with aromatic spices, basmati rice, and tender chicken pieces that are marinated in a yogurt-spice mixture. This dish is full of flavor and is perfect for any occasion.',
  image: 'images/cbr.jpg',
  ingredients: [
  'For Marination:',
  '1 kg chicken, cut into pieces',
  '1 cup yogurt',
  '2 tbsp ginger-garlic paste',
  '1 tsp red chili powder',
  '1/2 tsp turmeric powder',
  '1 tsp coriander powder',
  '1 tsp cumin powder',
  '1/2 tsp garam masala powder',
  'Salt, to taste',
  'For Biryani:',
  '3 cups basmati rice',
  '2 onions, sliced',
  '2 tbsp ghee',
  '2 tbsp oil',
  '1 tsp cumin seeds',
  '4 green cardamom pods',
  '4 cloves',
  '2 bay leaves',
  '1 cinnamon stick',
  '1 tsp ginger paste',
  '1 tsp garlic paste',
  '2 tomatoes, chopped',
  '1 tsp red chili powder',
  '1 tsp coriander powder',
  '1/2 tsp turmeric powder',
  '1/2 tsp garam masala powder',
  'Salt, to taste',
  '2 cups water',
  '1/2 cup chopped coriander leaves',
  '1/2 cup chopped mint leaves',
  '1/2 cup fried onions',
  ],
  directions: [
  'To marinate the chicken, mix yogurt, ginger-garlic paste, red chili powder, turmeric powder, coriander powder, cumin powder, garam masala powder, and salt in a bowl. Add chicken pieces and mix well. Cover and keep it in the refrigerator for at least 2 hours or overnight.',
  'Wash the rice and soak it in water for 30 minutes.',
  'Heat ghee and oil in a large pot over medium heat. Add cumin seeds, green cardamom pods, cloves, bay leaves, and cinnamon stick. Fry for a few seconds until fragrant.',
  'Add sliced onions and fry until they turn golden brown.',
  'Add ginger paste and garlic paste. Fry for a few seconds until the raw smell goes away.',
  'Add chopped tomatoes, red chili powder, coriander powder, turmeric powder, garam masala powder, and salt. Fry for 5 minutes until the tomatoes become soft and the oil separates from the masala.',
  'Add marinated chicken and fry for 10 minutes until the chicken is browned.',
  'Add 2 cups of water and bring it to a boil. Reduce the heat and let it simmer for 15 minutes until the chicken is cooked through.',
  'Drain the soaked rice and add it to the pot. Mix well.',
  'Add chopped coriander leaves, mint leaves, and fried onions. Mix well.',
  'Cover the pot with a tight-fitting lid and cook on low heat for 20-25 minutes until the rice is cooked and fluffy.',
  'Fluff the rice with a fork and serve hot with raita or chutney.',
  ],
     videoUrl: 'https://youtu.be/jjmR9C_X7LY',
  ),
  Recipe(
  name: 'Pulao',
  description:
  'Pulao is a popular rice dish that is eaten in many parts of the world. It is made by cooking rice in a broth that is seasoned with aromatic spices, such as cinnamon, cardamom, and cumin. Pulao can be made with a variety of ingredients, such as meat, vegetables, and nuts, and is often served as a main course or as a side dish.',
  image: 'images/plo.jpg',
  ingredients: [
  '2 cups basmati rice',
  '4 cups water',
  '1 onion, chopped',
  '2 garlic cloves, minced',
  '2 tbsp vegetable oil',
  '1 cinnamon stick',
  '4 cardamom pods',
  '4 whole cloves',
  '1 tsp cumin seeds',
  '1 tsp salt',
  '1 cup mixed vegetables (such as peas, carrots, and green beans)',
  '1/2 cup cashews or raisins (optional)',
  ],
  directions: [
  'Wash the rice in cold water until the water runs clear. Soak the rice in cold water for 30 minutes, then drain and set aside.',
  'In a large pot, heat the oil over medium heat. Add the onion and garlic and cook until the onion is translucent, about 5 minutes.',
  'Add the cinnamon stick, cardamom pods, cloves, and cumin seeds and cook for 1-2 minutes, until fragrant.',
  'Add the rice and stir well to coat with the spices. Cook for 1-2 minutes, until the rice is lightly toasted.',
  'Add the water and salt and stir well. Bring the mixture to a boil, then reduce the heat to low and cover the pot with a tight-fitting lid.',
  'Simmer the rice for 10-12 minutes, or until the water is absorbed and the rice is tender. Do not lift the lid while the rice is cooking.',
  'Add the mixed vegetables and cashews or raisins (if using) and stir gently to combine. Cover the pot and cook for another 5-7 minutes, or until the vegetables are tender and the rice is fully cooked.',
  'Remove the pot from the heat and let it sit, covered, for 5-10 minutes to allow the flavors to meld. Fluff the rice with a fork and serve hot.',
  ],
    videoUrl: 'https://youtu.be/UDrJ2T8Ss_Q',
  ),
   Recipe(
  name: 'Gulab Jamun',
  description:
  'Gulab Jamun is a classic Indian dessert made with milk solids, traditionally known as khoya, and soaked in a sweet syrup flavored with cardamom and rose water. This delicious sweet is often served during festivals and special occasions in India.',
  image: 'images/gj.jpg',
  ingredients: [
  '1 cup milk powder',
  '1/4 cup all-purpose flour',
  '1/4 tsp baking powder',
  '2 tbsp ghee or unsalted butter, melted',
  '2-3 tbsp milk, as needed',
  'Oil or ghee for frying',
  '1 cup sugar',
  '1 cup water',
  '4-5 cardamom pods, crushed',
  '1 tsp rose water',
  '1-2 tbsp chopped pistachios or almonds (optional)',
  ],
  directions: [
  'In a large bowl, mix together the milk powder, flour, and baking powder. Add the melted ghee or butter and mix until the mixture resembles coarse crumbs.',
  'Add milk, 1 tablespoon at a time, and knead the mixture until it forms a smooth dough. Cover the dough and let it rest for 10-15 minutes.',
  'In a deep pan or wok, heat oil or ghee over medium heat. While the oil is heating, make the syrup by combining sugar, water, and crushed cardamom pods in a saucepan. Bring the mixture to a boil, stirring occasionally, until the sugar dissolves. Reduce the heat and let the syrup simmer for 5-6 minutes.',
  'Add rose water to the syrup and turn off the heat. Keep the syrup warm while you fry the gulab jamuns.',
  'Divide the dough into equal-sized balls, about 1 inch in diameter. Roll each ball between your palms to make it smooth and crack-free.',
  'Once the oil is hot, reduce the heat to low and carefully add the gulab jamuns to the oil. Fry them, stirring occasionally, until they turn golden brown on all sides. It may take 8-10 minutes for the gulab jamuns to cook through.',
  'Using a slotted spoon, transfer the fried gulab jamuns to the warm syrup. Let them soak in the syrup for at least 1 hour before serving. You can garnish with chopped nuts before serving, if desired.',
  ],
     videoUrl: 'https://youtu.be/8z13VlDKLx8',
  ),
   Recipe(
  name: 'Lassi',
  description:
  'Lassi is a refreshing yogurt-based drink from India, often served as a cooling beverage in hot weather. It is usually made with yogurt, water, and spices, and can be sweet or salty depending on the recipe.',
  image: 'images/lass.jpg',
  ingredients: [
  '2 cups plain yogurt',
  '1/2 cup cold water',
  '2 tbsp sugar',
  '1/4 tsp cardamom powder',
  '1/4 tsp rose water (optional)',
  'Ice cubes',
  'Mint leaves or chopped nuts for garnish (optional)',
  ],
  directions: [
  'In a blender, combine the yogurt, water, sugar, cardamom powder, and rose water (if using).',
  'Blend the mixture until it is smooth and frothy.',
  'Add ice cubes to the blender and pulse until they are crushed and mixed into the lassi.',
  'Pour the lassi into glasses and garnish with mint leaves or chopped nuts (if using).',
  'Serve chilled and enjoy!',
  ],
     videoUrl: 'https://youtu.be/RCimLIOHcq4',
  ),
   Recipe(
  name: 'Goat Curry',
  description:
  'Goat Curry is a flavorful and spicy dish that is popular in many parts of the world, especially in South Asia, the Caribbean, and Africa. It is made with goat meat, which is cooked in a blend of aromatic spices, onions, and tomatoes, and then simmered until the meat is tender and flavorful.',
  image: 'images/gc.jpg',
  ingredients: [
  '2 lbs goat meat, cut into cubes',
  '1 large onion, chopped',
  '3 cloves garlic, minced',
  '2 tbsp ginger, minced',
  '2 tomatoes, chopped',
  '2 tbsp tomato paste',
  '1 tbsp ground cumin',
  '1 tbsp ground coriander',
  '1 tbsp garam masala',
  '1 tsp turmeric powder',
  '1/2 tsp cayenne pepper',
  '1/2 tsp salt',
  '2 tbsp vegetable oil',
  '2 cups water',
  'Fresh cilantro leaves for garnish (optional)',
  ],
  directions: [
  'Heat the oil in a large pot over medium-high heat. Add the onions and cook until they are translucent, about 5 minutes.',
  'Add the garlic and ginger and cook for another 2 minutes.',
  'Add the goat meat and cook until it is browned on all sides, about 10 minutes.',
  'Add the tomatoes, tomato paste, and spices (cumin, coriander, garam masala, turmeric, cayenne, and salt) and cook for 5 minutes, stirring occasionally.',
  'Add 2 cups of water and bring the mixture to a boil. Reduce the heat to low and simmer for 1-2 hours, until the meat is tender and the curry has thickened.',
  'Serve hot, garnished with fresh cilantro leaves if desired, and enjoy with rice, naan bread, or another accompaniment of your choice.',
  ],
     videoUrl: 'https://youtu.be/GSn9cZFl33Q',
  ),
   Recipe(
  name: 'Chicken Curry',
  description:
  'Chicken Curry is a flavorful and aromatic dish that is popular in many parts of the world, especially in South Asia, the Caribbean, and Africa. It is made with chicken pieces that are cooked in a fragrant blend of spices, onions, and tomatoes, and then simmered until the meat is tender and flavorful.',
  image: 'images/cc.jpg',
  ingredients: [
  '1 lb chicken pieces, skinless and bone-in',
  '1 large onion, chopped',
  '3 cloves garlic, minced',
  '2 tbsp ginger, minced',
  '2 tomatoes, chopped',
  '2 tbsp tomato paste',
  '1 tbsp ground cumin',
  '1 tbsp ground coriander',
  '1 tbsp garam masala',
  '1 tsp turmeric powder',
  '1/2 tsp cayenne pepper',
  '1/2 tsp salt',
  '2 tbsp vegetable oil',
  '2 cups water',
  'Fresh cilantro leaves for garnish (optional)',
  ],
  directions: [
  'Heat the oil in a large pot over medium-high heat. Add the onions and cook until they are translucent, about 5 minutes.',
  'Add the garlic and ginger and cook for another 2 minutes.',
  'Add the chicken pieces and cook until they are browned on all sides, about 10 minutes.',
  'Add the tomatoes, tomato paste, and spices (cumin, coriander, garam masala, turmeric, cayenne, and salt) and cook for 5 minutes, stirring occasionally.',
  'Add 2 cups of water and bring the mixture to a boil. Reduce the heat to low and simmer for 30-40 minutes, until the chicken is tender and the curry has thickened.',
  'Serve hot, garnished with fresh cilantro leaves if desired, and enjoy with rice, naan bread, or another accompaniment of your choice.',
  ],
     videoUrl: 'https://youtu.be/X_9QKBmLETM',
  ),
  Recipe(
  name: 'Samosa Chaat',
  description:
  'Samosa Chaat is a delicious and savory street food that is popular in India and other parts of South Asia. It consists of crispy fried samosas that are broken into pieces and topped with a variety of chutneys, spices, and other flavorful ingredients. It is often served with yogurt and tamarind chutney for a tangy and refreshing contrast to the spiciness of the dish.',
  image: 'images/sc.jpg',
  ingredients: [
  '4-6 samosas, fried or baked',
  '1 small onion, finely chopped',
  '1 small tomato, finely chopped',
  '1 green chili, finely chopped',
  '1/2 cup boiled chickpeas',
  '1/4 cup tamarind chutney',
  '1/4 cup mint-coriander chutney',
  '1/2 cup plain yogurt',
  '1 tsp chaat masala',
  '1/2 tsp roasted cumin powder',
  'Salt to taste',
  'Fresh cilantro leaves for garnish (optional)',
  ],
  directions: [
  'Break the samosas into bite-sized pieces and place them in a serving bowl.',
  'Add the chopped onions, tomatoes, green chili, and boiled chickpeas on top of the samosas.',
  'Drizzle the tamarind and mint-coriander chutneys over the samosas and other ingredients.',
  'Whisk the yogurt with salt and pour it over the top of the chutneys and samosas.',
  'Sprinkle the chaat masala and roasted cumin powder on top, and garnish with fresh cilantro leaves if desired.',
  'Serve immediately and enjoy the spicy, tangy, and savory flavors of this delicious street food!',
  ],
    videoUrl: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
  ),
   Recipe(
  name: 'Samosas',
  description:
  'Samosas are a popular snack in India and other parts of South Asia. They consist of a crispy, fried or baked pastry shell filled with spiced potatoes, peas, and sometimes meat or other vegetables. Samosas are often served with a variety of chutneys and sauces for dipping.',
  image: 'images/som.jpg',
  ingredients: [
  'For the pastry:',
  '1 1/2 cups all-purpose flour',
  '1/4 cup vegetable oil or ghee',
  '1/2 tsp salt',
  '1/2 cup water',
  'For the filling:',
  '2 large potatoes, boiled and mashed',
  '1/2 cup frozen peas, thawed',
  '1 small onion, finely chopped',
  '1-2 green chilies, finely chopped',
  '1 tsp cumin seeds',
  '1 tsp coriander powder',
  '1/2 tsp turmeric powder',
  '1/2 tsp garam masala',
  '1/2 tsp amchur powder (dried mango powder)',
  'Salt to taste',
  'Vegetable oil for frying',
  ],
  directions: [
  'To make the pastry, mix together the flour, salt, and oil or ghee in a mixing bowl.',
  'Gradually add water and knead the mixture until you have a smooth and pliable dough.',
  'Cover the dough with a damp cloth and let it rest for 30 minutes.',
  'To make the filling, heat some oil in a pan and add the cumin seeds. When they start to splutter, add the chopped onions and green chilies.',
  'Sauté the onions and chilies until the onions turn translucent. Then add the peas, mashed potatoes, and all the spices. Mix well.',
  'Cook the filling mixture for a few minutes until the flavors are well combined. Adjust salt to taste.',
  'Divide the dough into small balls and roll them out into circles.',
  'Cut each circle in half and form each half into a cone shape, sealing the edges with a little water.',
  'Fill the cone with the potato-pea mixture, leaving a little space at the top.',
  'Seal the top edge of the cone with a little water and press it down to make sure it is tightly sealed.',
  'Heat the oil in a deep frying pan or kadhai over medium-high heat.',
  'Once the oil is hot, add a few samosas to the oil and fry them until they are golden brown on all sides.',
  'Remove the samosas from the oil with a slotted spoon and place them on paper towels to drain any excess oil.',
  'Serve hot with your favorite chutneys or sauces and enjoy!',
  ],
     videoUrl: 'https://youtu.be/xL7Utq8eU-w',
  ),
   Recipe(
  name: 'Pav Bhaji',
  description:
  'Pav Bhaji is a popular street food dish in India that consists of a flavorful vegetable curry (bhaji) served with soft bread rolls (pav). The bhaji is made with a mixture of vegetables and spices, which are mashed together to form a thick and flavorful curry. The pav is typically toasted with butter and served on the side, to be dipped into the bhaji. This dish is perfect for a quick and easy meal or as a party snack!',
  image: 'images/pabh.jpg',
  ingredients: [
  '4-5 medium potatoes, peeled and chopped',
  '2 cups mixed vegetables (carrots, peas, cauliflower, etc.)',
  '1 large onion, chopped',
  '3-4 garlic cloves, minced',
  '1 inch ginger, grated',
  '2-3 tomatoes, chopped',
  '2-3 green chilies, finely chopped',
  '1 tsp cumin seeds',
  '1 tsp coriander powder',
  '1/2 tsp turmeric powder',
  '1/2 tsp red chili powder',
  '1/2 tsp garam masala',
  '2-3 tbsp butter',
  'Salt to taste',
  '8-10 pav buns',
  ],
  directions: [
  'Boil the chopped potatoes and mixed vegetables until they are soft and tender. Drain and mash them with a potato masher or a fork, leaving some chunks for texture.',
  'Heat butter in a large pan over medium heat. Add cumin seeds and let them sizzle for a few seconds. Then add chopped onions, garlic, ginger, and green chilies. Saute until onions are translucent.',
  'Add chopped tomatoes and cook until they are soft and mushy. Then add all the spices - coriander powder, turmeric powder, red chili powder, and garam masala. Mix well and cook for a minute or two.',
  'Add the mashed vegetables to the pan and mix well. Add salt to taste and cook for 5-7 minutes, stirring occasionally, until the flavors are well combined and the bhaji is thick and creamy. If the bhaji is too dry, add a little water to achieve the desired consistency.',
  'Heat a tava or griddle over medium heat. Cut the pav buns in half and apply a little butter on the cut sides. Toast the buns on the tava until they are golden brown and crispy on the outside.',
  'Serve the bhaji hot, garnished with chopped onions, fresh cilantro, and a dollop of butter. Serve the pav buns on the side, to be dipped into the bhaji. Enjoy the delicious and comforting flavors of this classic Indian street food dish!',
  ],
     videoUrl: 'https://youtu.be/sAnPUIvPc1I',
  ),
   Recipe(
  name: 'Misal Pav',
  description:
  'Misal Pav is a popular spicy dish from the state of Maharashtra in India. It consists of sprouted lentils cooked with a variety of spices and served with bread rolls called pav. Misal is typically eaten for breakfast or brunch, but it can be enjoyed at any time of day. It is a flavorful and filling dish that is sure to satisfy your cravings for a spicy and satisfying meal!',
  image: 'images/misp.jpg',
  ingredients: [
  '1 cup mixed sprouted lentils (mung beans, moth beans, etc.)',
  '1 onion, finely chopped',
  '1 tomato, finely chopped',
  '2-3 green chilies, chopped',
  '1/2 inch piece of ginger, grated',
  '3-4 garlic cloves, minced',
  '1/2 tsp mustard seeds',
  '1/2 tsp cumin seeds',
  '1/4 tsp turmeric powder',
  '1 tsp red chili powder',
  '1 tsp garam masala powder',
  '2 tbsp oil',
  'Salt to taste',
  'Chopped cilantro leaves for garnish',
  'Pav bread rolls for serving',
  ],
  directions: [
  'Heat the oil in a pan and add mustard seeds and cumin seeds. Once they splutter, add chopped onions, green chilies, ginger and garlic. Sauté until onions turn translucent.',
  'Add chopped tomatoes and cook for 3-4 minutes or until they become soft and mushy.',
  'Add turmeric powder, red chili powder and garam masala powder. Mix well and cook for a minute.',
  'Add the sprouted lentils and salt to taste. Add enough water to cover the lentils and bring to a boil.',
  'Reduce the heat and let it simmer for 15-20 minutes or until the lentils are cooked and the gravy thickens.',
  'Garnish with chopped cilantro leaves and serve hot with pav bread rolls on the side.',
  ],
     videoUrl: 'https://youtu.be/ozyN7b3jP-A',
  ),
   Recipe(
  name: 'Raita',
  description:
  'Raita is a refreshing and creamy yogurt-based side dish that is commonly served with spicy curries or biryanis in Indian cuisine. It is made by whisking yogurt until smooth and adding chopped vegetables, herbs, and spices for flavor. Raita can be customized to your taste by adding your favorite vegetables and herbs, such as cucumber, tomato, mint, or cilantro.',
  image: 'images/rt.jpg',
  ingredients: [
  '2 cups plain yogurt',
  '1 small cucumber, peeled and chopped',
  '1 small tomato, chopped',
  '1/4 cup finely chopped red onion',
  '1 green chili, finely chopped (optional)',
  '1/4 cup chopped fresh cilantro',
  '1/2 tsp roasted cumin powder',
  '1/2 tsp chaat masala',
  'Salt to taste',
  ],
  directions: [
  'In a mixing bowl, whisk the yogurt until smooth and creamy.',
  'Add the chopped cucumber, tomato, onion, green chili, and cilantro to the yogurt, and mix well.',
  'Add roasted cumin powder, chaat masala, and salt to taste, and mix well.',
  'Chill the raita in the refrigerator for at least 30 minutes to allow the flavors to meld together.',
  'Serve chilled raita as a refreshing and cooling side dish with spicy curries or biryanis.',
  ],
     videoUrl: 'https://youtu.be/ZS9EU1tk_Gw',
  ),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe App'),
      ),


      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16),
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: List.generate(
          recipes.length,
              (index) => RecipeBox(recipe: recipes[index]),
        ),
      ),

    );
  }
}

class Recipe {
  final String name;
  final String description;
  final String image;
  final List<String> ingredients;
  final List<String> directions;
  final String videoUrl;

  Recipe({
    required this.name,
    required this.description,
    required this.image,
    required this.ingredients,
    required this.directions,
    required this.videoUrl,
  });
}

class RecipeBox extends StatelessWidget {
  final Recipe recipe;

  RecipeBox({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RecipeDetail(recipe: recipe),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Image.asset(
                recipe.image,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recipe.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    recipe.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
              ),
              child: Center(
                child: Text(
                  'View Recipe',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}

class RecipeDetail extends StatelessWidget {
  final Recipe recipe;

  RecipeDetail({required this.recipe});




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.name
        ),
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Image.asset(
              recipe.image,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Text(
              'Ingredients',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: recipe.ingredients
                  .map((ingredient) => Text('- $ingredient'))
                  .toList(),
            ),
            SizedBox(height: 16),
            Text(
              'Directions',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: recipe.directions
                  .asMap()
                  .map((index, direction) => MapEntry(
                index,
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Text(
                    '${index + 1}. $direction',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ))
                  .values
                  .toList(),
            ),
            SizedBox(height: 16),
            Center(
              child: YoutubePlayer(
                controller: YoutubePlayerController(
                  initialVideoId: YoutubePlayer.convertUrlToId(recipe.videoUrl)!,
                  flags: YoutubePlayerFlags(
                    autoPlay: false,
                    mute: false,
                  ),
                ),
                showVideoProgressIndicator: true,
              ),
            ),
            AspectRatio(
    aspectRatio: 16 / 9,
    child: WebView(
    initialUrl: recipe.videoUrl,
    javascriptMode: JavascriptMode.unrestricted,
    ),),],

        ),

      ),
    );
  }
}
class RecipeSearchBar extends StatefulWidget {
  final Function(String) onSearch;

  RecipeSearchBar({required this.onSearch});

  @override
  _RecipeSearchBarState createState() => _RecipeSearchBarState();
}

class _RecipeSearchBarState extends State<RecipeSearchBar> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        controller: _controller,
        focusNode: _focusNode,
        onChanged: (value) {
          widget.onSearch(value);
        },
        onSubmitted: (value) {
          widget.onSearch(value);
        },
        decoration: InputDecoration(
          hintText: 'Search recipes',
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          suffixIcon: IconButton(
            icon: Icon(Icons.clear),
            onPressed: () {
              _controller.clear();
              widget.onSearch('');
            },
          ),
        ),
      ),
    );
  }
}
 class RecipeSearch extends StatefulWidget {
   final List<Recipe> recipes;

   RecipeSearch({required this.recipes});

   @override
   _RecipeSearchState createState() => _RecipeSearchState();
 }

 class _RecipeSearchState extends State<RecipeSearch> {
   String _searchText = '';
   List<Recipe> _searchResult = [];

   void _onSearchTextChanged(String searchText) {
     setState(() {
       _searchText = searchText;
       _searchResult = widget.recipes.where((recipe) =>
       recipe.name.toLowerCase().contains(_searchText.toLowerCase()) ||
           recipe.description.toLowerCase().contains(_searchText.toLowerCase())).toList();
     });
   }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('Search Recipes'),
       ),
       body: Column(
         children: <Widget>[
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextField(
               decoration: InputDecoration(
                   labelText: "Search Recipes",
                   prefixIcon: Icon(Icons.search),
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(25.0)),
                   )),
               onChanged: _onSearchTextChanged,
             ),
           ),
           Expanded(
             child: ListView.builder(
               itemCount: _searchResult.length,
               itemBuilder: (BuildContext context, int index) {
                 return GestureDetector(
                   onTap: () {
                     Navigator.push(
                       context,
                       MaterialPageRoute(
                         builder: (context) => RecipeDetail(
                           recipe: _searchResult[index],
                         ),
                       ),
                     );
                   },
                   child: RecipeBox(
                     recipe: _searchResult[index],
                   ),
                 );
               },
             ),
           ),
         ],
       ),
     );
   }
 }

