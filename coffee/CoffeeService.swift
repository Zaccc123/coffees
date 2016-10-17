//
//  CoffeeService.swift
//  coffee
//
//  Created by Zac on 17/10/16.
//  Copyright © 2016 zeta. All rights reserved.
//

import Foundation

struct CoffeeService {

    func getCoffeeData(completion: ([Coffee]) -> ()) {
        let coffees = [Coffee(imageName: "mocha", description: "Like a caffè latte, caffè mocha is based on espresso and hot milk, but with added chocolate, typically in the form of sweet cocoa powder, although many varieties use chocolate syrup. Mochas can contain dark or milk chocolate."),
                       Coffee(imageName: "espresso", description: "Espresso (/ɛˈsprɛsoʊ/, Italian: [esˈprɛsso]) is coffee brewed by forcing a small amount of nearly boiling water under pressure through finely ground coffee beans. Espresso is generally thicker than coffee brewed by other methods, has a higher concentration of suspended and dissolved solids, and has crema on top (a foam with a creamy consistency).[1] As a result of the pressurized brewing process, the flavors and chemicals in a typical cup of espresso are very concentrated. Espresso is also the base for other drinks such as a caffè latte, cappuccino, caffè macchiato, caffè mocha, flat white, or caffè Americano. Espresso has more caffeine per unit volume than most coffee beverages, but because the usual serving size is much smaller, the total caffeine content is less than a mug of standard brewed coffee, contrary to a common belief.[2]"),
                       Coffee(imageName: "flat_white", description: "A flat white is an espresso based coffee beverage. The beverage is prepared by pouring microfoam (steamed milk consisting of small, fine bubbles with a glossy or velvety consistency) over a shot of espresso. It is somewhat similar to the traditional 140 ml (5 imp fl oz) cappuccino or the latte although smaller in volume, therefore having a higher proportion of coffee to milk, and milk that is more velvety in consistency – allowing the espresso to dominate the flavour, while being supported by the milk."),
                       Coffee(imageName: "americano", description: "Caffè Americano (Italian pronunciation: [kafˈfɛ ameriˈkaːno]) or Americano (shortened from Italian: caffè americano or American Spanish: café americano, literally American coffee) is a style of coffee prepared by brewing espresso with added hot water, giving it a similar strength to, but different flavor from drip coffee. The strength of an Americano varies with the number of shots of espresso and the amount of water added. The name is also spelled with varying capitalization and use of diacritics: e.g., café americano."),
                       Coffee(imageName: "latte", description: "A latte (/ˈlɑːteɪ/ or /ˈlæteɪ/)[1][2] is a coffee drink made with espresso and steamed milk. \nThe term as used in English is a shortened form of the Italian caffè latte [kafˈfɛ lˈlatte], caffelatte [kaffeˈlatte] or caffellatte [kaffelˈlatte], which means milk coffee. The word is also sometimes spelled latté or lattè in English with different kinds of accent marks, which can be a hyperforeignism or a deliberate attempt to indicate that the word is not pronounced according to the rules of English orthography.")
        ]
        completion(coffees)
    }
}
