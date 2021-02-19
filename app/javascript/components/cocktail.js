import Typed from 'typed.js';

const loadDynamicTitleText = () => {
   new Typed('#typed-cocktail-title', {
			strings: ["Best Cocktails", "Life is Now", "Drink!!!"],
			typeSpeed: 50,
			loop: true,
		});  
};


export { loadDynamicTitleText };
