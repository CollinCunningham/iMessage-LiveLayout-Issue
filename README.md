# iMessage LiveLayout Issue
**Summary:** Barebones iMessage extension to demonstrate issue using MSMessageLiveLayout within transcript presentation

**Details:** When the iMessage extension is presented in transcript using MSMessageLiveLayout, and the user long presses on the message to open Tapback options, then dismisses those options whithout choosing a response, the Message becomes unresponsive to touch events.

**Steps to reproduce:**
1. Tap *Send Message* button -> Message appears in transcript
2. Tap message's *Change Background* button -> Message's background color changes
3. Long press anywhere in Message's view -> Tapback options appear
4. Tap outsided of message to dismiss Tapback without choosing an option
5. Tap message's *Change Background* button -> button is unresponsive
