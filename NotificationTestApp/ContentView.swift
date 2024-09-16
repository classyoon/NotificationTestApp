//
//  ContentView.swift
//  NotificationTestApp
//
//  Created by Conner Yoon on 9/9/24.
//

import SwiftUI
import UserNotifications
struct ContentView: View {
   
    var body: some View {
        VStack{
            Button("Request"){
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.badge,.sound]){ success, error in
                    if success {
                        print("All set!")
                    }else if let error{
                        print(error.localizedDescription)
                    }
                    
                }
            }
            Button("Schedule"){
                let content = UNMutableNotificationContent()
                content.title = "Feed the cat"
                content.subtitle = "It looks hungry"
                content.sound = UNNotificationSound.default

                // show this notification five seconds from now
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)

                // choose a random identifier
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)

                // add our notification request
                UNUserNotificationCenter.current().add(request)
            }
        }
    }

   
}

#Preview {
    ContentView()
}
