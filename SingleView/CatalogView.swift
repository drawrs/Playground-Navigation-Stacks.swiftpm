import SwiftUI

struct CatalogView: View {
    
    @State private var presentedProducts: [Product] = []
    
    var body: some View {
        NavigationStack(path: $presentedProducts) {
            List(products) { product in
                NavigationLink(value: product) { 
                    Label(product.name, systemImage: "pc")
                }
            }
            .listStyle(.inset)
            .navigationTitle("SwiftUI Apps")
            .navigationBarTitleDisplayMode(.automatic)
            .navigationDestination(for: Product.self) { product in
                ProductDetail(presentedProducts: $presentedProducts, product: product)
            }
            .onDisappear(perform: {
                print(presentedProducts)
            })
        }
    }
}


struct ProductDetail: View {
    @Binding var presentedProducts: [Product]
    @State var product: Product
    
    var body: some View {
        VStack {
            Text(product.name)
                .font(.headline)
            Text(product.desc)
                .font(.caption)
            Text("Rp \(product.price)")
            
            NavigationLink(destination: CartView(presentedProducts: $presentedProducts, name: product.name)) { 
                Label("Add to cart", systemImage: "cart")
//                    .foregroundColor(.blue)
            }
            .buttonStyle(.borderedProminent)
        }
        .toolbar {
            ToolbarItem(placement: .bottomBar) { 
                Button("pop to root") { 
                    presentedProducts = []
                }
            }
        }
    }
}

struct CartView: View {
    @Binding var presentedProducts: [Product]
    @State var name: String
    
    var body: some View {
        VStack {
            Text("Product \(name) added to Shopping cart")
        }
        .navigationTitle("Cart")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .bottomBar) { 
                Button("pop to root") { 
                    presentedProducts = []
                }
            }
        }
    }
}
