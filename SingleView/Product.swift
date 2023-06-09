import SwiftUI

struct Product: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var desc: String
    var price: Int
}

var products = [
    Product(name: "iPhone 13", desc: "The latest iPhone model with a larger display and improved camera", price: 1099),
    Product(name: "AirPods Pro", desc: "Wireless earbuds with active noise cancellation and spatial audio", price: 249),
    Product(name: "MacBook Pro", desc: "Powerful laptop with a Retina display and Touch Bar", price: 1799),
    Product(name: "iPad Air", desc: "Lightweight and powerful tablet with a 10.9-inch Liquid Retina display", price: 599),
    Product(name: "Apple Watch Series 7", desc: "Advanced smartwatch with a larger display and new features for health and fitness", price: 399),
    Product(name: "iMac", desc: "All-in-one desktop computer with a 24-inch 4.5K Retina display", price: 1299),
    Product(name: "HomePod mini", desc: "Smart speaker with Siri and high-quality audio", price: 99),
    Product(name: "Apple TV 4K", desc: "Streaming device with support for 4K HDR and Dolby Atmos", price: 179),
    Product(name: "Magic Mouse 2", desc: "Wireless mouse with a rechargeable battery and multi-touch surface", price: 79),
    Product(name: "AirTag", desc: "Small and lightweight accessory to help keep track of your belongings", price: 29),
    Product(name: "iPad Pro", desc: "The ultimate iPad with the M1 chip and Liquid Retina XDR display", price: 1099),
    Product(name: "Mac Mini", desc: "Compact desktop computer with the Apple M1 chip", price: 699),
    Product(name: "Apple Pencil (2nd generation)", desc: "Precision stylus for iPad Pro and iPad Air", price: 129),
    Product(name: "Beats Studio Buds", desc: "Wireless earbuds with Active Noise Cancelling and Transparency mode", price: 149),
    Product(name: "iPod touch", desc: "Portable music player with a 4-inch Retina display", price: 199),
    Product(name: "Apple Leather Case with MagSafe", desc: "Premium leather case with built-in magnets for easy attachment and charging", price: 59),
    Product(name: "MacBook Air", desc: "Thin and light laptop with Apple M1 chip and Retina display", price: 999),
    Product(name: "Apple Fitness+", desc: "A new kind of fitness experience powered by Apple Watch", price: 9),
    Product(name: "Apple One", desc: "Bundle of Apple services including Apple Music, Apple TV+, Apple Arcade, and more", price: 14),
    Product(name: "Powerbeats Pro", desc: "Wireless earphones with adjustable, secure-fit ear hooks", price: 199),
    Product(name: "Apple Smart Keyboard Folio", desc: "Full-size keyboard that’s always ready when you need it", price: 179),
    Product(name: "Apple Thunderbolt Display", desc: "27-inch Retina 5K display with built-in Thunderbolt 3 dock", price: 1299),
    Product(name: "Apple MagSafe Charger", desc: "Fast and efficient wireless charging for iPhone 12 models", price: 39),
    Product(name: "Apple Card", desc: "A credit card created by Apple that offers cashback rewards and unique features", price: 0),
    Product(name: "AirPods Max", desc: "Over-ear headphones with high-fidelity audio and active noise cancellation", price: 549),
    Product(name: "iPhone SE", desc: "Powerful iPhone with a 4.7-inch Retina HD display", price: 399),
    Product(name: "Apple Watch SE", desc: "Affordable smartwatch with advanced features and Family Setup", price: 279),
    Product(name: "Apple TV+", desc: "Streaming service with original shows, movies, and documentaries", price: 499),
    Product(name: "AppleCare+", desc: "Extended warranty and technical support for your Apple products", price: 79),
    Product(name: "Apple Magic Keyboard", desc: "Wireless keyboard with a rechargeable battery and scissor mechanism", price: 99),
    Product(name: "iPhone 12 mini", desc: "Compact and powerful iPhone with a 5.4-inch Super Retina XDR display", price: 699),
    Product(name: "iPad mini", desc: "Small and versatile tablet with an A15 Bionic chip and 8.3-inch Liquid Retina display", price: 499),
    Product(name: "Apple Watch Hermès", desc: "Luxury smartwatch with exclusive Hermès watch faces and bands", price: 1399),
    Product(name: "Apple Smart Folio for iPad Pro", desc: "Slim and protective case with a built-in stand", price: 79),
    Product(name: "Apple Battery Case for iPhone", desc: "Protective case with a built-in battery for extra power", price: 129),
    Product(name: "HomePod", desc: "Smart speaker with high-fidelity audio and Siri", price: 299),
    Product(name: "Apple USB-C Power Adapter", desc: "Fast and efficient charging for USB-C devices", price: 29),
    Product(name: "Beats Flex", desc: "Wireless earphones with Apple W1 chip and up to 12 hours of battery life", price: 49),
    Product(name: "Apple Watch Nike", desc: "Smartwatch designed for runners with exclusive Nike watch faces and bands", price: 399),
    Product(name: "Apple Leather Link Bracelet", desc: "Elegant watch band made from handcrafted Roux Granada leather", price: 99),
    Product(name: "Apple MagSafe Wallet", desc: "Leather wallet with built-in magnets for easy attachment to iPhone 12 models", price: 59),
    Product(name: "Apple Thunderbolt Cable", desc: "Fast data transfer and charging for Thunderbolt-enabled devices", price: 39),
    Product(name: "Apple AirPort Extreme", desc: "Wireless router with simultaneous dual-band support", price: 199),
    Product(name: "Apple Magic Trackpad 2", desc: "Multi-touch trackpad with Force Touch and rechargeable battery", price: 129),
    Product(name: "Apple Watch Magnetic Charger to USB-C Cable", desc: "Fast and efficient charging for Apple Watch", price: 29),
    Product(name: "Apple Leather Sleeve for MacBook Pro", desc: "Protective sleeve made from high-quality leather", price: 179),
    Product(name: "AppleCare Protection Plan for Mac", desc: "Extended warranty and technical support for your Mac", price: 169),
    Product(name: "Beats Solo Pro", desc: "Wireless headphones with active noise cancellation and up to 22 hours of     battery life", price: 299),
    Product(name: "AirTag", desc: "Small and lightweight accessory that helps you keep track of your belongings", price: 29),
    Product(name: "Apple Pencil (2nd generation)", desc: "Versatile tool for drawing, note-taking, and marking up documents", price: 129),
    Product(name: "Apple Magic Mouse 2", desc: "Wireless mouse with a rechargeable battery and multi-touch surface", price: 79),
    Product(name: "Apple Smart Keyboard Folio for iPad Pro", desc: "Full-size keyboard with backlit keys and a built-in trackpad", price: 179),
    Product(name: "iMac Pro", desc: "Powerful all-in-one desktop with a Retina 5K display and up to 18 cores", price: 4999),
    Product(name: "AirPods Pro", desc: "Wireless earbuds with active noise cancellation and transparency mode", price: 249),
    Product(name: "MacBook Pro", desc: "Powerful laptop with a Retina display and up to 10 hours of battery life", price: 1299),
    Product(name: "Apple Watch Series 7", desc: "Advanced smartwatch with a larger always-on Retina display and faster charging", price: 399),
    Product(name: "Apple Leather Case for iPhone", desc: "Premium leather case that fits snugly over the curves of your iPhone", price: 49),
    Product(name: "Apple Thunderbolt Display", desc: "27-inch LED-backlit display with Thunderbolt and MagSafe charging", price: 999),
    Product(name: "AirPods", desc: "Wireless earbuds with a charging case and up to 5 hours of battery life", price: 159),
    Product(name: "Apple Watch Magnetic Charging Dock", desc: "Elegant charging dock for Apple Watch with a built-in USB-A port", price: 79),
    Product(name: "Apple Leather Smart Cover for iPad", desc: "Slim and protective cover made from high-quality leather", price: 79),
    Product(name: "Apple USB SuperDrive", desc: "External DVD and CD burner that connects to your Mac with a USB cable", price: 79),
    Product(name: "Apple Thunderbolt to Gigabit Ethernet Adapter", desc: "Fast and reliable Ethernet connection for Thunderbolt-enabled Macs", price: 29),
    Product(name: "Apple Leather Loop for Apple Watch", desc: "Soft, quilted leather band with embedded magnets for a perfect fit", price: 99),
    Product(name: "Mac Pro", desc: "Powerful workstation with up to 28 cores and four GPUs", price: 5999),
    Product(name: "Apple TV 4K", desc: "Streaming device with 4K HDR and Dolby Atmos support", price: 179),
]


