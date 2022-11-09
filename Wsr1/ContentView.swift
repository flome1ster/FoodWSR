//
//  ContentView.swift
//  Wsr1
//
//  Created by wsr on 14.02.2022.
//

import SwiftUI
import Alamofire
struct firstView: View{
    @State var tapfood : String = "0"
    @State var search = String()
    @State var searchbutton = Bool()
    @State var istapped : String = "1"
    @State var count: Int = 1
    @State var tocart: String = "0"
    var body: some View{
        NavigationView{
            ZStack{
                Color("lightg")
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView{
                    VStack{
                        ZStack{
                            Rectangle()
                                .frame(width: 330, height: 180)
                                .foregroundColor(Color("ad"))
                            Text("Реклама")
                                .offset(y: -40)
                        } // ad
                        VStack{
                            HStack{
                                Spacer()
                                Button(action: {istapped = "1"}, label: {
                                    if istapped == "1"
                                    {
                                        Text("Foods")
                                            .foregroundColor(Color("orange"))
                                    }
                                    else {
                                        Text("Foods")
                                            .foregroundColor(.gray)
                                    }
                                    
                                }) // button
                                Spacer()
                                Button(action: {istapped = "2"},
                                       label: {
                                    if istapped == "2"
                                    {
                                        Text("Drinks")
                                            .foregroundColor(Color("orange"))
                                    }
                                    else {
                                        Text("Drinks")
                                            .foregroundColor(.gray)
                                    }
                                })
                                Spacer()
                                
                                Button(action: {istapped = "3"}, label: {
                                    if istapped == "3"
                                    {
                                        Text("Snacks")
                                            .foregroundColor(Color("orange"))
                                    }
                                    else {
                                        Text("Snacks")
                                            .foregroundColor(.gray)
                                    }
                                    
                                })
                                Spacer()
                                Button(action: {istapped = "4"}, label: {if istapped == "4"
                                    {
                                    Text("Sauce")
                                        .foregroundColor(Color("orange"))
                                }
                                    else {
                                        Text("Sauce")
                                            .foregroundColor(.gray)
                                    }})
                                Spacer()
                                
                            } .padding(.bottom, 20.0) // Hstack category
                            if istapped == "1"
                            {
                                Rectangle()
                                    .frame(width: 75, height: 3)
                                    .foregroundColor(Color("orange"))
                                    .offset(x: -130, y: -20)
                            }
                            else if istapped == "2"
                            {
                                Rectangle()
                                    .frame(width: 75, height: 3)
                                    .foregroundColor(Color("orange"))
                                    .offset(x: -45, y: -20)
                            }
                            else if istapped == "3"
                            {
                                Rectangle()
                                    .frame(width: 75, height: 3)
                                    .foregroundColor(Color("orange"))
                                    .offset(x: 40, y: -20)
                            }
                            else if istapped == "4"
                            {
                                Rectangle()
                                    .frame(width: 75, height: 3)
                                    .foregroundColor(Color("orange"))
                                    .offset(x: 130, y: -20)
                            }
                        }//VStack category
                        if tapfood == "0" {
                            VStack{ // food Vstack
                                HStack{
                                    Button(action: {tapfood = "1"; tocart = "0"}, label: {
                                        ZStack{
                                            Rectangle()
                                                .frame(width: 145, height: 180)
                                                .foregroundColor(.white)
                                                .cornerRadius(30)
                                                .padding(.trailing)
                                            Image("veggie")
                                                .resizable()
                                                .frame(width: 100, height: 100)
                                                .cornerRadius(360)
                                                .offset(x: -10 , y: -60 )
                                            Text("Veggie tomato mix")
                                                .foregroundColor(.black)
                                                .multilineTextAlignment(.center)
                                                .frame(width: 60)
                                                .offset(x: -10, y: 25)
                                            Text("N1,900")
                                                .foregroundColor(Color("orange"))
                                                .offset(x: -10, y: 70)
                                        }
                                    })
                                    
                                    Button(action: {tapfood = "2"; tocart = "0"}, label: {
                                        ZStack{
                                            Rectangle()
                                                .frame(width: 145, height: 180)
                                                .foregroundColor(.white)
                                                .cornerRadius(30)
                                                .padding(.leading)
                                            Image("egg")
                                                .resizable()
                                                .frame(width: 100, height: 100)
                                                .cornerRadius(360)
                                                .offset(x: 10, y: -60 )
                                            Text("Egg and cucumber")
                                                .foregroundColor(.black)
                                                .multilineTextAlignment(.center)
                                                .frame(width: 90)
                                                .offset(x: 10, y: 25)
                                            Text("N1,900")
                                                .foregroundColor(Color("orange"))
                                                .offset(x: 10, y: 70)
                                        }
                                        
                                    })
                                    
                                }
                                HStack{
                                    Button(action: {tapfood = "1"; tocart = "0"}, label: {
                                        ZStack{
                                            Rectangle()
                                                .frame(width: 145, height: 180)
                                                .foregroundColor(.white)
                                                .cornerRadius(30)
                                                .padding()
                                            Image("veggie")
                                                .resizable()
                                                .frame(width: 100, height: 100)
                                                .cornerRadius(360)
                                                .offset(y: -60 )
                                            Text("Veggie tomato mix")
                                                .multilineTextAlignment(.center)
                                                .frame(width: 60)
                                                .offset(y: 25)
                                            Text("N1,900")
                                                .foregroundColor(Color("orange"))
                                                .offset(y: 70)
                                        }
                                    })
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 145, height: 180)
                                            .foregroundColor(.white)
                                            .cornerRadius(30)
                                            .padding()
                                        Image("egg")
                                            .resizable()
                                            .frame(width: 100, height: 100)
                                            .cornerRadius(360)
                                            .offset(y: -60 )
                                        Text("Egg and cucumber")
                                            .multilineTextAlignment(.center)
                                            .frame(width: 90)
                                            .offset(y: 25)
                                        Text("N1,900")
                                            .foregroundColor(Color("orange"))
                                            .offset(y: 70)
                                    }
                                } .offset(y: 20)
                                // Rectangle HStack
                            } //vstack end
                        }//if end
                        else if istapped == "1"{
                            ZStack{
                                Rectangle()
                                    .frame(width: 320, height: 260)
                                    .foregroundColor(.white)
                                    .cornerRadius(30)
                                Image("veggie")
                                    .resizable()
                                    .frame(width: 120, height: 120)
                                    .cornerRadius(360)
                                    .offset(x: -60, y: -30)
                                Text("Veggie tomato mix")
                                    .fontWeight(.bold)
                                    .multilineTextAlignment(.center)
                                    .frame(width: 100)
                                    .offset(x: 80, y: -30)
                                Text("N1,900")
                                    .foregroundColor(Color("orange"))
                                    .offset(x: 80, y: 20)
                                Button(action: { tapfood = "0"
                                    
                                },
                                       label: { Image("backk")
                                    
                                }) .offset(x: -125, y: -95)
                                NavigationLink(destination: MoreView(), label: {
                                    Text("More")
                                        .foregroundColor(.black)
                                        
                                })
                                    .offset(x: 105, y: -95)
                                
                                if tocart == "0"{
                                    Button(action: {}, label: {
                                        Text("-")
                                            .foregroundColor(.black)
                                            .frame(width: 25, height: 25)
                                        
                                            .background(Color("ad"))
                                    })
                                        .cornerRadius(6)
                                        .offset(x: -120, y: 90)
                                    Button(action: {}, label: {
                                        Text("+")
                                            .foregroundColor(.black)
                                            .frame(width: 25, height: 25)
                                        
                                            .background(Color("ad"))
                                    })
                                        .cornerRadius(6)
                                    
                                        .offset(x: -50, y: 90)
                                    Text("1")
                                        .offset(x: -85, y: 90)
                                    Button(action: {tocart = "1"}, label: {
                                        Text("Add to cart")
                                            .foregroundColor(.white)
                                        
                                        Image("cart2")
                                        
                                    })
                                        .frame(width: 165, height: 40)
                                        .background(Color("orange"))
                                        .cornerRadius(30)
                                        .offset(x: 60, y: 90)
                                    
                                } //ifcart
                                else if tocart == "1"
                                {
                                    VStack{
                                        Button(action: {tapfood = "0"}, label: {
                                            Text("Continue Shop")
                                                .foregroundColor(.white)
                                            
                                            
                                            
                                        })
                                            .frame(width: 275, height: 40)
                                            .background(Color("orange"))
                                            .cornerRadius(30)
                                            .offset(x: 1, y: 80)
                                        Button(action: {tapfood = "0"}, label: {
                                            Text("Go to cart")
                                                .foregroundColor(.white)
                                            
                                            
                                            
                                        })
                                            .frame(width: 275, height: 40)
                                            .background(Color("orange"))
                                            .cornerRadius(30)
                                            .offset(x: 1, y: 78)
                                    } //vstack else
                                } //elseif
                            } //stack if1
                        } //if1
                    } //Vstack obsh
                    .edgesIgnoringSafeArea(.all)
                    .offset(y: 100)
                    
                    
                } //ScrollView
                .edgesIgnoringSafeArea(.all)
                .offset(y: -1)
                
                HStack{
                    if searchbutton == false {
                        TextField("Выберите адрес доставки", text: $search)
                            .padding()
                        // Это текстфилд, но он блин не хочет работать, почему я не знаю
                        Image("geo")
                            .offset(x: -40)
                        Button(action: {searchbutton = true}, label: {Image("lupa")
                                .padding(.trailing, 25.0)
                        })
                    }
                    else {
                        Rectangle()
                        frame(width: 360, height: 30)
                    }
                }
                
                .frame(width: 360, height: 60)
                .background(Color("lightg"))//search
                .offset(y: -270)
            } //Zstack
            //
            .navigationBarHidden(true)
        }
    }
}
struct ContentView: View {
    
    var body: some View{
        
            TabView {
                
                firstView()
                .tabItem {
                    Image("1")
                    
                }
                TestView()
                    .tabItem {
                        Image("2")
                        
                    }
                Text("User")
                    .tabItem {
                        Image("3")
                        
                    }
                Text("History")
                    .tabItem {
                        Image("4")
                        
                    }
            }
        
    }
}
struct MoreView: View{
    var body: some View{
        NavigationView{
        ZStack{
            Color("lightg")
                .edgesIgnoringSafeArea(.all)
            
                
            Image("veggie2")
                .resizable()
                .frame(width: 260, height: 260)
                .cornerRadius(360)
                .offset(x: 1, y: -185)
                .shadow(color: .gray, radius: 2, x: 0, y: 1)
            HStack{
            Image("dot1")
                .offset(x: -6, y: -25)
            Image("dot2")
                .offset(x: -2, y: -25)
            Image("dot2")
                .offset(x: 2, y: -25)
            Image("dot2")
                .offset(x: 6, y: -25)
            }
            Text("Veggie tomato mix")
                .fontWeight(.light)
                .offset(y: 10)
                .font(.system(size: 30))
            Text("N1,900")
                .foregroundColor(Color("orange"))
                .offset(y: 50)
                .font(.system(size: 20))
            Text("Delivery info")
                .offset(x: -100, y: 100)
            Text("Delivered between moday aug and thursday 20 from 8pm to 91:32 pm")
                .foregroundColor(.gray)
                .frame(width: 297, height: 77)
                .offset(x: -14, y: 140)
            NavigationLink(destination: TestView(), label: {
                Text("Add to cart")
                    .foregroundColor(.white)
                    .frame(width: 315, height: 70)
                    .background(Color("orange"))
                    .cornerRadius(30)
            })
                
                .offset(x: 0, y: 250)
            NavigationLink(destination: ContentView(), label: {
                Image("backk")
                    .resizable()
                    .frame(width: 10, height: 15)
                    
                    
                    
            })
                .padding(.bottom, 500.0)
                .padding(.trailing, 280.0)
                
              
                
        }
    } .navigationBarHidden(true)
    }
}
struct TestView: View{
    var body: some View{
        Text("Cart")
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
