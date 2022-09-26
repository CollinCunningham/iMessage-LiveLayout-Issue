//
//  MessagesViewController.swift
//  TestiMessage MessagesExtension
//
//  Created by Collin Cunningham on 9/26/22.
//

import UIKit
import Messages

class MessagesViewController: MSMessagesAppViewController {
    
    
    @IBOutlet weak var testButton: UIButton!
    
    @IBAction func testButtonTapped(_ sender: Any) {
    
        switch presentationStyle {
        case .compact:
            sendTestMessage()
        case .expanded:
            sendTestMessage()
        case .transcript:
            // When in transcript, toggle background color
            view.backgroundColor = view.backgroundColor == .white ? .green : .white
        default:
            return
        }
    
    }
    
    func sendTestMessage() {
        
        //Send a test message
        let altLayout = MSMessageTemplateLayout()
        let message = MSMessage.init()
        let messageLayout = MSMessageLiveLayout(alternateLayout: altLayout)
        message.layout = messageLayout
        
        guard let conversation = activeConversation else {
            print("⚠️ Unable to retrieve active conversation")
            return
        }
        conversation.send(message)
        
    }
    
    override func willBecomeActive(with conversation: MSConversation) {
        
        // Change button text for transcript presentation
        switch presentationStyle {
        case .transcript:
            testButton.setTitle("Change Background", for: .normal)
        default:
            return
        }
    }

}
