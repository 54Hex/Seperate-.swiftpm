// Separate!
// WX 
// [25/04/22]

//--------------Acknowledgements--------------//


// Assets used for App Icon:
// Spark: https://stock.adobe.com/ee/images/explosion-icon/192933785?prev_url=detail
// Flask: https://www.shutterstock.com/image-vector/erlenmeyer-flask-icon-science-lab-concept-1198720888
// App used to make the App Icon: Figma


//--------------ContentView--------------//

import SwiftUI

struct ContentView: View {
    @State var page: Page = .introduction
    @State var previousPage: Page?
    
    
    var body: some View {
        NavigationView {
            List {
                //intro
                Button(action: { page = .introduction }, label: { Label("Introduction", systemImage: "text.alignleft") })
                    .listRowBackground(page == .introduction ? Color("lgrey").cornerRadius(10) : Color.clear.cornerRadius(10))
                
                // eva
                Button(action: { page = .evaporation }, label: { Label("Evaporation", systemImage: "text.alignleft") })
                    .listRowBackground(page == .evaporation ? Color("lgrey").cornerRadius(10) : Color.clear.cornerRadius(10))
                
                // dist
                Button(action: { page = .distillation }, label: { Label("Distillation", systemImage: "text.alignleft") })
                    .listRowBackground(page == .distillation ? Color("lgrey").cornerRadius(10) : Color.clear.cornerRadius(10))
                
                // filter
                Button(action: { page = .filtration }, label: { Label("Filtration", systemImage: "text.alignleft") })
                    .listRowBackground(page == .filtration ? Color("lgrey").cornerRadius(10) : Color.clear.cornerRadius(10))
                
                // magnetic
                Button(action: { page = .magnetic }, label: { Label("Magnetic Attraction", systemImage: "text.alignleft") })
                    .listRowBackground(page == .magnetic ? Color("lgrey").cornerRadius(10) : Color.clear.cornerRadius(10))
                
                // chroma
                Button(action: { page = .chromatograhpy }, label: { Label("Paper Chromatography", systemImage: "text.alignleft") })
                    .listRowBackground(page == .chromatograhpy ? Color("lgrey").cornerRadius(10) : Color.clear.cornerRadius(10))
                
                // end
                Button(action: { page = .end }, label: { Label("Conclusion", systemImage: "text.alignleft") })
                    .listRowBackground(page == .end ? Color("lgrey").cornerRadius(10) : Color.clear.cornerRadius(10))

            }
            .listStyle(.sidebar)
            .navigationTitle("Contents")
            
            
            
            
            switch page {
            case .introduction:
                Introduction()
                    .toolbar {
                        Button(action: { }, label: { Image(systemName: "arrowtriangle.left.fill") })
                        Button(action: {
                            withAnimation {
                                previousPage = page
                                page = .evaporation
                            }
                        }, label: { Image(systemName: "arrowtriangle.right.fill") })
                    }.accentColor(Color.init(uiColor: .systemGray))
                
                
            case .evaporation:
                Evaporation()
                    .toolbar {
                        Button(action: {
                            withAnimation {
                                previousPage = page
                                page = .introduction
                            }
                        }, label: { Image(systemName: "arrowtriangle.left.fill") })
                        Button(action: {
                            withAnimation {
                                previousPage = page
                                page = .distillation
                            }
                        }, label: { Image(systemName: "arrowtriangle.right.fill") })
                    }.accentColor(Color.init(uiColor: .systemGray))
                
            case .distillation:
                Distillation()
                    .toolbar {
                        Button(action: {
                            withAnimation {
                                previousPage = page
                                page = .evaporation
                            }
                        }, label: { Image(systemName: "arrowtriangle.left.fill") })
                        Button(action: {
                            withAnimation {
                                previousPage = page
                                page = .filtration
                            }
                        }, label: { Image(systemName: "arrowtriangle.right.fill") })
                    }.accentColor(Color.init(uiColor: .systemGray))
                
            case .filtration:
                Filtration()
                    .toolbar {
                        Button(action: {
                            withAnimation {
                                previousPage = page
                                page = .distillation
                            }
                        }, label: { Image(systemName: "arrowtriangle.left.fill") })
                        Button(action: {
                            withAnimation {
                                previousPage = page
                                page = .magnetic
                            }
                        }, label: { Image(systemName: "arrowtriangle.right.fill") })
                    }.accentColor(Color.init(uiColor: .systemGray))
                
                
            case .magnetic:
                Magnetic()
                    .toolbar {
                        Button(action: {
                            withAnimation {
                                previousPage = page
                                page = .filtration
                            }
                        }, label: { Image(systemName: "arrowtriangle.left.fill") })
                        Button(action: {
                            withAnimation {
                                previousPage = page
                                page = .chromatograhpy
                            }
                        }, label: { Image(systemName: "arrowtriangle.right.fill") })
                    }.accentColor(Color.init(uiColor: .systemGray))
                
            case .chromatograhpy:
                Chromatography()
                    .toolbar {
                        Button(action: {
                            withAnimation {
                                previousPage = page
                                page = .introduction
                            }
                        }, label: { Image(systemName: "arrowtriangle.left.fill") })
                        Button(action: {
                            withAnimation {
                                previousPage = page
                                page = .end
                            }
                        }, label: { Image(systemName: "arrowtriangle.right.fill") })
                    }.accentColor(Color.init(uiColor: .systemGray))
                
                
                
            case .end:
                End()
                    .toolbar {
                        Button(action: {
                            withAnimation {
                                previousPage = page
                                page = .magnetic
                            }
                        }, label: { Image(systemName: "arrowtriangle.left.fill") })
                        Button(action: {
                            withAnimation {
                                previousPage = page
                                page = .introduction
                            }
                        }, label: { Text("Back to Introduction")})
                        
                    }.accentColor(Color("lgrey1"))
            }
        }
    }
}


enum Page {
    case introduction
    case chromatograhpy
    case evaporation
    case distillation
    case filtration
    case magnetic
    case end
}

// Custom colors
struct CC {
    static let lightgrey = Color("lgrey")
    static let lightergray = Color("lgrey1")
}
