//
// Copyright © 2021 Stream.io Inc. All rights reserved.
//

import SwiftUI

/// Button used for discarding attachments.
public struct DiscardAttachmentButton: View {
        
    var attachmentIdentifier: String
    var onDiscard: (String) -> Void
    
    public init(attachmentIdentifier: String, onDiscard: @escaping (String) -> Void) {
        self.attachmentIdentifier = attachmentIdentifier
        self.onDiscard = onDiscard
    }
    
    public var body: some View {
        TopRightView {
            Button(action: {
                withAnimation {
                    onDiscard(attachmentIdentifier)
                }
            }, label: {
                DiscardButtonView()
            })
        }
    }
}

/// View for the discard button.
struct DiscardButtonView: View {
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.white)
                .frame(width: 16, height: 16)
            
            Image(systemName: "xmark.circle.fill")
                .foregroundColor(Color.black.opacity(0.8))
        }
        .padding(.all, 4)
    }
}
