import SwiftUI


var navigationItems = [
    NavigationItem(title: "Compass App", icon: "safari", menu: .compass),
    NavigationItem(title: "3D Card", icon: "lanyardcard", menu: .card),
    NavigationItem(title: "Radial Layout", icon: "clock", menu: .radial),
    NavigationItem(title: "Gooey Action Button", icon: "plus.circle", menu: .actionbutton),
    NavigationItem(title: "Gooey Menu", icon: "drop", menu: .gooey),
    NavigationItem(title: "Charts", icon: "chart.xyaxis.line", menu: .charts),
    NavigationItem(title: "Half Sheet", icon: "rectangle.portrait.bottomhalf.filled", menu: .halfsheet),
]

struct ContentView: View {
    @State var navigationItemPath: [NavigationItem] = []
    
    var body: some View {
        NavigationStack(path: $navigationItemPath) {
            List(navigationItems) { item in 
                NavigationLink(value: item) { 
                    Label(item.title, systemImage: item.icon)
                        .foregroundColor(.primary)
                }
                .listStyle(.plain)
                .navigationTitle("SwiftUI Apps")
                .navigationBarTitleDisplayMode(.inline)
                .navigationDestination(for: NavigationItem.self) { item in
                    switch item.menu {
                    case .compass:
                        CompassView(navigationItemPath: $navigationItemPath)
                    case .card:
                        CardReflectionView(navigationItemPath: $navigationItemPath)
                    case .charts:
                        ChartView(navigationItemPath: $navigationItemPath)
                    case .radial:
                        RadialLayoutView(navigationItemPath: $navigationItemPath)
                    case .halfsheet:
                        HalfSheetView(navigationItemPath: $navigationItemPath)
                    case .gooey:
                        GooeyView(navigationItemPath: $navigationItemPath)
                    case .actionbutton:
                        ActionButtonView(navigationItemPath: $navigationItemPath)
                    }
                }
                
            }
        }
    }
}

struct CompassView: View {
    @Binding var navigationItemPath: [NavigationItem]
    var body: some View {
        VStack {
                Text("Compass View")
        }
        .toolbar {
            ToolbarItem(placement: .bottomBar) { 
                Button("pop to root") { 
                    navigationItemPath = []
                }
            }
        }
    }
}

struct CardReflectionView: View {
    @Binding var navigationItemPath: [NavigationItem]
    var body: some View {
        VStack {
            Text("CardReflectionView View")
        }
        .toolbar {
            ToolbarItem(placement: .bottomBar) { 
                Button("pop to root") { 
                    navigationItemPath = []
                }
            }
        }
    }
}

struct ChartView: View {
    @Binding var navigationItemPath: [NavigationItem]
    var body: some View {
        VStack {
            Text("ChartView View")
        }
        .toolbar {
            ToolbarItem(placement: .bottomBar) { 
                Button("pop to root") { 
                    navigationItemPath = []
                }
            }
        }
    }
}

struct RadialLayoutView: View {
    @Binding var navigationItemPath: [NavigationItem]
    var body: some View {
        VStack {
            Text("RadialLayoutView View")
        }
        .toolbar {
            ToolbarItem(placement: .bottomBar) { 
                Button("pop to root") { 
                    navigationItemPath = []
                }
            }
        }
    }
}

struct HalfSheetView: View {
    @Binding var navigationItemPath: [NavigationItem]
    var body: some View {
        VStack {
            Text("HalfSheetView View")
        }
        .toolbar {
            ToolbarItem(placement: .bottomBar) { 
                Button("pop to root") { 
                    navigationItemPath = []
                }
            }
        }
    }
}
struct GooeyView: View {
    @Binding var navigationItemPath: [NavigationItem]
    var body: some View {
        VStack {
            Text("GooeyView View")
        }
        .toolbar {
            ToolbarItem(placement: .bottomBar) { 
                Button("pop to root") { 
                    navigationItemPath = []
                }
            }
        }
    }
}

struct ActionButtonView: View {
    @Binding var navigationItemPath: [NavigationItem]
    var body: some View {
        VStack {
            Text("ActionButtonView View")
        }
        .toolbar {
            ToolbarItem(placement: .bottomBar) { 
                Button("pop to root") { 
                    navigationItemPath = []
                }
            }
        }
    }
}
