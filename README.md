# SWIFT UI Drop water 💧 

#### include ios Widget
Build an app to track how much water the user has consumed today, then tie it into a widget so they place a gentle reminder right on their Home Screen.


### Draw drop 

Draw the background of drop usign mask

<img width="300" alt="image" src="https://user-images.githubusercontent.com/27299953/162026301-189201d9-a95f-40b6-9f3d-69482df80ebf.png">


## Mask 

      .background(
                    Rectangle()
                        .fill()
                        .scaleEffect(x:1, y:goalProgress,anchor: .bottom)
                ).mask(
                    Image(systemName: "drop.fill")
                        .resizable()
                        .font(.title.weight(.ultraLight))
                        .scaledToFit()

## Linear Gradient 
    .foregroundStyle(.linearGradient(
                    stops: [.init(color: .clear, location: 0), .init(color: .clear, location: 1 - goalProgress), .init(color: .white, location: 1 - goalProgress),.init(color: .white, location: 1)], startPoint: .top, endPoint: .bottom)
                ).overlay(
                    Image(systemName: "drop")
                    
#### Add value challenge - Goal of day                    

<img width="299" alt="image" src="https://user-images.githubusercontent.com/27299953/162036836-2b5ca04f-7a2a-44f8-b4ea-5f68e5e8daf1.png">


