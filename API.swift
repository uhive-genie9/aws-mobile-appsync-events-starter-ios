//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct GroupMemberInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: Int) {
    graphQLMap = ["id": id]
  }

  public var id: Int {
    get {
      return graphQLMap["id"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public final class StartConversationMutation: GraphQLMutation {
  public static let operationString =
    "mutation StartConversation($sender_id: Int!, $receiver_id: Int!) {\n  startConversation(sender_id: $sender_id, receiver_id: $receiver_id) {\n    __typename\n    action_type\n    receiver_id\n    message {\n      __typename\n      message_id\n      user_id\n      conv_type\n      conversation_id\n      local_id\n      m_type\n      status\n      timestamp\n      text\n      url\n      url_title\n      url_thumb_url\n      url_domain\n      url_text\n    }\n    typing {\n      __typename\n      action\n      receiver_id\n      conversation_id\n      user_id\n      conversation_type\n    }\n    seen {\n      __typename\n      last_msg_seen_id\n      conversation_id\n    }\n    conversation {\n      __typename\n      conversation_id\n      timestamp\n      peer_user {\n        __typename\n        user_id\n        name\n      }\n    }\n  }\n}"

  public var sender_id: Int
  public var receiver_id: Int

  public init(sender_id: Int, receiver_id: Int) {
    self.sender_id = sender_id
    self.receiver_id = receiver_id
  }

  public var variables: GraphQLMap? {
    return ["sender_id": sender_id, "receiver_id": receiver_id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("startConversation", arguments: ["sender_id": GraphQLVariable("sender_id"), "receiver_id": GraphQLVariable("receiver_id")], type: .object(StartConversation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(startConversation: StartConversation? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "startConversation": startConversation.flatMap { $0.snapshot }])
    }

    /// Start a conversation between two users <br>
    /// ########### The receiver user will get be notified of new conversation through the subscription <br>
    public var startConversation: StartConversation? {
      get {
        return (snapshot["startConversation"] as? Snapshot).flatMap { StartConversation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "startConversation")
      }
    }

    public struct StartConversation: GraphQLSelectionSet {
      public static let possibleTypes = ["UserIdGenericOutput"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("action_type", type: .scalar(Int.self)),
        GraphQLField("receiver_id", type: .scalar(Int.self)),
        GraphQLField("message", type: .object(Message.selections)),
        GraphQLField("typing", type: .object(Typing.selections)),
        GraphQLField("seen", type: .object(Seen.selections)),
        GraphQLField("conversation", type: .object(Conversation.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(actionType: Int? = nil, receiverId: Int? = nil, message: Message? = nil, typing: Typing? = nil, seen: Seen? = nil, conversation: Conversation? = nil) {
        self.init(snapshot: ["__typename": "UserIdGenericOutput", "action_type": actionType, "receiver_id": receiverId, "message": message.flatMap { $0.snapshot }, "typing": typing.flatMap { $0.snapshot }, "seen": seen.flatMap { $0.snapshot }, "conversation": conversation.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      /// action_type Enum values : <br>
      /// ############### 0 : NEW_MESSAGE <br>
      /// ############### 1 : TYPING <br>
      /// ############### 2 : SEEN <br>
      /// ############### 3 : NEW_CONVERSATION <br>
      /// ############### 4 : JOINED_FOR_GROUP_CONVERSATION <br>
      public var actionType: Int? {
        get {
          return snapshot["action_type"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "action_type")
        }
      }

      /// The User ID that will receive this output through subscribeByUserID
      public var receiverId: Int? {
        get {
          return snapshot["receiver_id"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "receiver_id")
        }
      }

      /// Message body in case if action_type is 0
      public var message: Message? {
        get {
          return (snapshot["message"] as? Snapshot).flatMap { Message(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "message")
        }
      }

      /// Typing infromation in case if action_type is 1
      public var typing: Typing? {
        get {
          return (snapshot["typing"] as? Snapshot).flatMap { Typing(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "typing")
        }
      }

      /// Seen information in case of action_type = 2
      public var seen: Seen? {
        get {
          return (snapshot["seen"] as? Snapshot).flatMap { Seen(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "seen")
        }
      }

      /// New-Conversation in case of action_type = 3
      public var conversation: Conversation? {
        get {
          return (snapshot["conversation"] as? Snapshot).flatMap { Conversation(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "conversation")
        }
      }

      public struct Message: GraphQLSelectionSet {
        public static let possibleTypes = ["Message"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("user_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("conv_type", type: .scalar(Int.self)),
          GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("local_id", type: .scalar(Int.self)),
          GraphQLField("m_type", type: .nonNull(.scalar(Int.self))),
          GraphQLField("status", type: .scalar(Int.self)),
          GraphQLField("timestamp", type: .scalar(Int.self)),
          GraphQLField("text", type: .scalar(String.self)),
          GraphQLField("url", type: .scalar(String.self)),
          GraphQLField("url_title", type: .scalar(String.self)),
          GraphQLField("url_thumb_url", type: .scalar(String.self)),
          GraphQLField("url_domain", type: .scalar(String.self)),
          GraphQLField("url_text", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(messageId: Int, userId: Int, convType: Int? = nil, conversationId: Int, localId: Int? = nil, mType: Int, status: Int? = nil, timestamp: Int? = nil, text: String? = nil, url: String? = nil, urlTitle: String? = nil, urlThumbUrl: String? = nil, urlDomain: String? = nil, urlText: String? = nil) {
          self.init(snapshot: ["__typename": "Message", "message_id": messageId, "user_id": userId, "conv_type": convType, "conversation_id": conversationId, "local_id": localId, "m_type": mType, "status": status, "timestamp": timestamp, "text": text, "url": url, "url_title": urlTitle, "url_thumb_url": urlThumbUrl, "url_domain": urlDomain, "url_text": urlText])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Message ID in the server DB
        public var messageId: Int {
          get {
            return snapshot["message_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "message_id")
          }
        }

        /// User ID of the sender
        public var userId: Int {
          get {
            return snapshot["user_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "user_id")
          }
        }

        /// n/a
        public var convType: Int? {
          get {
            return snapshot["conv_type"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conv_type")
          }
        }

        /// n/a
        public var conversationId: Int {
          get {
            return snapshot["conversation_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }

        /// Message ID in the local database of the sender client i.e Mobile Application
        public var localId: Int? {
          get {
            return snapshot["local_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "local_id")
          }
        }

        /// Message type Enum values : <br>
        /// ############### 0 : TEXT <br>
        /// ############### 1 : VIDEO <br>
        /// ############### 2 : PICTURE <br>
        /// ############### 3 : DOCUMENT <br>
        /// ############### 4 : LINK <br>
        /// ############### 5 : LINK_YOUTUBE <br>
        /// ############### 6 : GIF <br>
        /// ############### 7 : GIF_TENOR <br>
        /// ############### 8 : AUDIO <br>
        /// ############### 9 : LOCATION <br>
        public var mType: Int {
          get {
            return snapshot["m_type"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "m_type")
          }
        }

        /// Message status Enum values : <br>
        /// ############### 0 : SENT <br>
        /// ############### 1 : SEEN<br>
        public var status: Int? {
          get {
            return snapshot["status"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "status")
          }
        }

        /// Unix timestamp
        public var timestamp: Int? {
          get {
            return snapshot["timestamp"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "timestamp")
          }
        }

        /// Message text
        public var text: String? {
          get {
            return snapshot["text"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "text")
          }
        }

        /// URL of the attachment, link, gif
        public var url: String? {
          get {
            return snapshot["url"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url")
          }
        }

        /// URL preview Title
        public var urlTitle: String? {
          get {
            return snapshot["url_title"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_title")
          }
        }

        /// URL preview thumb
        public var urlThumbUrl: String? {
          get {
            return snapshot["url_thumb_url"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_thumb_url")
          }
        }

        /// URL preview domain
        public var urlDomain: String? {
          get {
            return snapshot["url_domain"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_domain")
          }
        }

        /// URL preview text
        public var urlText: String? {
          get {
            return snapshot["url_text"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_text")
          }
        }
      }

      public struct Typing: GraphQLSelectionSet {
        public static let possibleTypes = ["TypingCommiter"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("action", type: .nonNull(.scalar(Int.self))),
          GraphQLField("receiver_id", type: .scalar(Int.self)),
          GraphQLField("conversation_id", type: .scalar(Int.self)),
          GraphQLField("user_id", type: .scalar(Int.self)),
          GraphQLField("conversation_type", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(action: Int, receiverId: Int? = nil, conversationId: Int? = nil, userId: Int? = nil, conversationType: String? = nil) {
          self.init(snapshot: ["__typename": "TypingCommiter", "action": action, "receiver_id": receiverId, "conversation_id": conversationId, "user_id": userId, "conversation_type": conversationType])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Action Enum values : <br>
        /// ############### 0 : START_TYPING <br>
        /// ############### 1 : STOP_TYPING
        public var action: Int {
          get {
            return snapshot["action"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "action")
          }
        }

        public var receiverId: Int? {
          get {
            return snapshot["receiver_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "receiver_id")
          }
        }

        /// Conversation ID that the typing happened within
        public var conversationId: Int? {
          get {
            return snapshot["conversation_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }

        /// User ID that committed the typing action
        public var userId: Int? {
          get {
            return snapshot["user_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "user_id")
          }
        }

        public var conversationType: String? {
          get {
            return snapshot["conversation_type"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_type")
          }
        }
      }

      public struct Seen: GraphQLSelectionSet {
        public static let possibleTypes = ["SeenOutput"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("last_msg_seen_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(lastMsgSeenId: Int, conversationId: Int) {
          self.init(snapshot: ["__typename": "SeenOutput", "last_msg_seen_id": lastMsgSeenId, "conversation_id": conversationId])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Message ID of the last seen message on the other client
        public var lastMsgSeenId: Int {
          get {
            return snapshot["last_msg_seen_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "last_msg_seen_id")
          }
        }

        /// The conversation which the other client marked as seen
        public var conversationId: Int {
          get {
            return snapshot["conversation_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }
      }

      public struct Conversation: GraphQLSelectionSet {
        public static let possibleTypes = ["ConversationsListItem_startConversation"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("timestamp", type: .nonNull(.scalar(Int.self))),
          GraphQLField("peer_user", type: .nonNull(.object(PeerUser.selections))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(conversationId: Int, timestamp: Int, peerUser: PeerUser) {
          self.init(snapshot: ["__typename": "ConversationsListItem_startConversation", "conversation_id": conversationId, "timestamp": timestamp, "peer_user": peerUser.snapshot])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Conversation ID
        public var conversationId: Int {
          get {
            return snapshot["conversation_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }

        /// Unix timestamp
        public var timestamp: Int {
          get {
            return snapshot["timestamp"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "timestamp")
          }
        }

        /// The other user that is participant in the conversation<br>
        /// ######## In case It's returend from startConversation or getUserConversation; the peer_user will not be the sender/requests
        public var peerUser: PeerUser {
          get {
            return PeerUser(snapshot: snapshot["peer_user"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "peer_user")
          }
        }

        public struct PeerUser: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("user_id", type: .nonNull(.scalar(Int.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(userId: Int, name: String) {
            self.init(snapshot: ["__typename": "User", "user_id": userId, "name": name])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var userId: Int {
            get {
              return snapshot["user_id"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "user_id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }
        }
      }
    }
  }
}

public final class StartSupportConversationMutation: GraphQLMutation {
  public static let operationString =
    "mutation StartSupportConversation($sender_id: Int!) {\n  startSupportConversation(sender_id: $sender_id) {\n    __typename\n    conversation_id\n    sender_id\n    receiver_id\n  }\n}"

  public var sender_id: Int

  public init(sender_id: Int) {
    self.sender_id = sender_id
  }

  public var variables: GraphQLMap? {
    return ["sender_id": sender_id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("startSupportConversation", arguments: ["sender_id": GraphQLVariable("sender_id")], type: .object(StartSupportConversation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(startSupportConversation: StartSupportConversation? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "startSupportConversation": startSupportConversation.flatMap { $0.snapshot }])
    }

    /// Start a conversation with Uhive support agent
    public var startSupportConversation: StartSupportConversation? {
      get {
        return (snapshot["startSupportConversation"] as? Snapshot).flatMap { StartSupportConversation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "startSupportConversation")
      }
    }

    public struct StartSupportConversation: GraphQLSelectionSet {
      public static let possibleTypes = ["Conversation"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("conversation_id", type: .scalar(Int.self)),
        GraphQLField("sender_id", type: .scalar(Int.self)),
        GraphQLField("receiver_id", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(conversationId: Int? = nil, senderId: Int? = nil, receiverId: Int? = nil) {
        self.init(snapshot: ["__typename": "Conversation", "conversation_id": conversationId, "sender_id": senderId, "receiver_id": receiverId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      /// n/a
      public var conversationId: Int? {
        get {
          return snapshot["conversation_id"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "conversation_id")
        }
      }

      /// User ID of the craetor
      public var senderId: Int? {
        get {
          return snapshot["sender_id"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "sender_id")
        }
      }

      /// User of the targeted user
      public var receiverId: Int? {
        get {
          return snapshot["receiver_id"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "receiver_id")
        }
      }
    }
  }
}

public final class SetSeenConversationMutation: GraphQLMutation {
  public static let operationString =
    "mutation SetSeenConversation($receiver_id: Int!, $conversation_id: Int!, $last_msg_seen_id: Int!) {\n  setSeenConversation(receiver_id: $receiver_id, conversation_id: $conversation_id, last_msg_seen_id: $last_msg_seen_id) {\n    __typename\n    action_type\n    receiver_id\n    message {\n      __typename\n      message_id\n      user_id\n      conv_type\n      conversation_id\n      local_id\n      m_type\n      status\n      timestamp\n      text\n      url\n      url_title\n      url_thumb_url\n      url_domain\n      url_text\n    }\n    typing {\n      __typename\n      action\n      receiver_id\n      conversation_id\n      user_id\n      conversation_type\n    }\n    seen {\n      __typename\n      last_msg_seen_id\n      conversation_id\n    }\n    conversation {\n      __typename\n      conversation_id\n      timestamp\n      peer_user {\n        __typename\n        user_id\n        name\n      }\n    }\n  }\n}"

  public var receiver_id: Int
  public var conversation_id: Int
  public var last_msg_seen_id: Int

  public init(receiver_id: Int, conversation_id: Int, last_msg_seen_id: Int) {
    self.receiver_id = receiver_id
    self.conversation_id = conversation_id
    self.last_msg_seen_id = last_msg_seen_id
  }

  public var variables: GraphQLMap? {
    return ["receiver_id": receiver_id, "conversation_id": conversation_id, "last_msg_seen_id": last_msg_seen_id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("setSeenConversation", arguments: ["receiver_id": GraphQLVariable("receiver_id"), "conversation_id": GraphQLVariable("conversation_id"), "last_msg_seen_id": GraphQLVariable("last_msg_seen_id")], type: .object(SetSeenConversation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(setSeenConversation: SetSeenConversation? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "setSeenConversation": setSeenConversation.flatMap { $0.snapshot }])
    }

    /// Set all message before "last_msg_seen_id"<Int> as seen in a conversation
    public var setSeenConversation: SetSeenConversation? {
      get {
        return (snapshot["setSeenConversation"] as? Snapshot).flatMap { SetSeenConversation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "setSeenConversation")
      }
    }

    public struct SetSeenConversation: GraphQLSelectionSet {
      public static let possibleTypes = ["UserIdGenericOutput"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("action_type", type: .scalar(Int.self)),
        GraphQLField("receiver_id", type: .scalar(Int.self)),
        GraphQLField("message", type: .object(Message.selections)),
        GraphQLField("typing", type: .object(Typing.selections)),
        GraphQLField("seen", type: .object(Seen.selections)),
        GraphQLField("conversation", type: .object(Conversation.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(actionType: Int? = nil, receiverId: Int? = nil, message: Message? = nil, typing: Typing? = nil, seen: Seen? = nil, conversation: Conversation? = nil) {
        self.init(snapshot: ["__typename": "UserIdGenericOutput", "action_type": actionType, "receiver_id": receiverId, "message": message.flatMap { $0.snapshot }, "typing": typing.flatMap { $0.snapshot }, "seen": seen.flatMap { $0.snapshot }, "conversation": conversation.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      /// action_type Enum values : <br>
      /// ############### 0 : NEW_MESSAGE <br>
      /// ############### 1 : TYPING <br>
      /// ############### 2 : SEEN <br>
      /// ############### 3 : NEW_CONVERSATION <br>
      /// ############### 4 : JOINED_FOR_GROUP_CONVERSATION <br>
      public var actionType: Int? {
        get {
          return snapshot["action_type"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "action_type")
        }
      }

      /// The User ID that will receive this output through subscribeByUserID
      public var receiverId: Int? {
        get {
          return snapshot["receiver_id"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "receiver_id")
        }
      }

      /// Message body in case if action_type is 0
      public var message: Message? {
        get {
          return (snapshot["message"] as? Snapshot).flatMap { Message(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "message")
        }
      }

      /// Typing infromation in case if action_type is 1
      public var typing: Typing? {
        get {
          return (snapshot["typing"] as? Snapshot).flatMap { Typing(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "typing")
        }
      }

      /// Seen information in case of action_type = 2
      public var seen: Seen? {
        get {
          return (snapshot["seen"] as? Snapshot).flatMap { Seen(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "seen")
        }
      }

      /// New-Conversation in case of action_type = 3
      public var conversation: Conversation? {
        get {
          return (snapshot["conversation"] as? Snapshot).flatMap { Conversation(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "conversation")
        }
      }

      public struct Message: GraphQLSelectionSet {
        public static let possibleTypes = ["Message"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("user_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("conv_type", type: .scalar(Int.self)),
          GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("local_id", type: .scalar(Int.self)),
          GraphQLField("m_type", type: .nonNull(.scalar(Int.self))),
          GraphQLField("status", type: .scalar(Int.self)),
          GraphQLField("timestamp", type: .scalar(Int.self)),
          GraphQLField("text", type: .scalar(String.self)),
          GraphQLField("url", type: .scalar(String.self)),
          GraphQLField("url_title", type: .scalar(String.self)),
          GraphQLField("url_thumb_url", type: .scalar(String.self)),
          GraphQLField("url_domain", type: .scalar(String.self)),
          GraphQLField("url_text", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(messageId: Int, userId: Int, convType: Int? = nil, conversationId: Int, localId: Int? = nil, mType: Int, status: Int? = nil, timestamp: Int? = nil, text: String? = nil, url: String? = nil, urlTitle: String? = nil, urlThumbUrl: String? = nil, urlDomain: String? = nil, urlText: String? = nil) {
          self.init(snapshot: ["__typename": "Message", "message_id": messageId, "user_id": userId, "conv_type": convType, "conversation_id": conversationId, "local_id": localId, "m_type": mType, "status": status, "timestamp": timestamp, "text": text, "url": url, "url_title": urlTitle, "url_thumb_url": urlThumbUrl, "url_domain": urlDomain, "url_text": urlText])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Message ID in the server DB
        public var messageId: Int {
          get {
            return snapshot["message_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "message_id")
          }
        }

        /// User ID of the sender
        public var userId: Int {
          get {
            return snapshot["user_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "user_id")
          }
        }

        /// n/a
        public var convType: Int? {
          get {
            return snapshot["conv_type"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conv_type")
          }
        }

        /// n/a
        public var conversationId: Int {
          get {
            return snapshot["conversation_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }

        /// Message ID in the local database of the sender client i.e Mobile Application
        public var localId: Int? {
          get {
            return snapshot["local_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "local_id")
          }
        }

        /// Message type Enum values : <br>
        /// ############### 0 : TEXT <br>
        /// ############### 1 : VIDEO <br>
        /// ############### 2 : PICTURE <br>
        /// ############### 3 : DOCUMENT <br>
        /// ############### 4 : LINK <br>
        /// ############### 5 : LINK_YOUTUBE <br>
        /// ############### 6 : GIF <br>
        /// ############### 7 : GIF_TENOR <br>
        /// ############### 8 : AUDIO <br>
        /// ############### 9 : LOCATION <br>
        public var mType: Int {
          get {
            return snapshot["m_type"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "m_type")
          }
        }

        /// Message status Enum values : <br>
        /// ############### 0 : SENT <br>
        /// ############### 1 : SEEN<br>
        public var status: Int? {
          get {
            return snapshot["status"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "status")
          }
        }

        /// Unix timestamp
        public var timestamp: Int? {
          get {
            return snapshot["timestamp"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "timestamp")
          }
        }

        /// Message text
        public var text: String? {
          get {
            return snapshot["text"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "text")
          }
        }

        /// URL of the attachment, link, gif
        public var url: String? {
          get {
            return snapshot["url"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url")
          }
        }

        /// URL preview Title
        public var urlTitle: String? {
          get {
            return snapshot["url_title"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_title")
          }
        }

        /// URL preview thumb
        public var urlThumbUrl: String? {
          get {
            return snapshot["url_thumb_url"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_thumb_url")
          }
        }

        /// URL preview domain
        public var urlDomain: String? {
          get {
            return snapshot["url_domain"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_domain")
          }
        }

        /// URL preview text
        public var urlText: String? {
          get {
            return snapshot["url_text"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_text")
          }
        }
      }

      public struct Typing: GraphQLSelectionSet {
        public static let possibleTypes = ["TypingCommiter"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("action", type: .nonNull(.scalar(Int.self))),
          GraphQLField("receiver_id", type: .scalar(Int.self)),
          GraphQLField("conversation_id", type: .scalar(Int.self)),
          GraphQLField("user_id", type: .scalar(Int.self)),
          GraphQLField("conversation_type", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(action: Int, receiverId: Int? = nil, conversationId: Int? = nil, userId: Int? = nil, conversationType: String? = nil) {
          self.init(snapshot: ["__typename": "TypingCommiter", "action": action, "receiver_id": receiverId, "conversation_id": conversationId, "user_id": userId, "conversation_type": conversationType])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Action Enum values : <br>
        /// ############### 0 : START_TYPING <br>
        /// ############### 1 : STOP_TYPING
        public var action: Int {
          get {
            return snapshot["action"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "action")
          }
        }

        public var receiverId: Int? {
          get {
            return snapshot["receiver_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "receiver_id")
          }
        }

        /// Conversation ID that the typing happened within
        public var conversationId: Int? {
          get {
            return snapshot["conversation_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }

        /// User ID that committed the typing action
        public var userId: Int? {
          get {
            return snapshot["user_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "user_id")
          }
        }

        public var conversationType: String? {
          get {
            return snapshot["conversation_type"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_type")
          }
        }
      }

      public struct Seen: GraphQLSelectionSet {
        public static let possibleTypes = ["SeenOutput"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("last_msg_seen_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(lastMsgSeenId: Int, conversationId: Int) {
          self.init(snapshot: ["__typename": "SeenOutput", "last_msg_seen_id": lastMsgSeenId, "conversation_id": conversationId])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Message ID of the last seen message on the other client
        public var lastMsgSeenId: Int {
          get {
            return snapshot["last_msg_seen_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "last_msg_seen_id")
          }
        }

        /// The conversation which the other client marked as seen
        public var conversationId: Int {
          get {
            return snapshot["conversation_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }
      }

      public struct Conversation: GraphQLSelectionSet {
        public static let possibleTypes = ["ConversationsListItem_startConversation"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("timestamp", type: .nonNull(.scalar(Int.self))),
          GraphQLField("peer_user", type: .nonNull(.object(PeerUser.selections))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(conversationId: Int, timestamp: Int, peerUser: PeerUser) {
          self.init(snapshot: ["__typename": "ConversationsListItem_startConversation", "conversation_id": conversationId, "timestamp": timestamp, "peer_user": peerUser.snapshot])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Conversation ID
        public var conversationId: Int {
          get {
            return snapshot["conversation_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }

        /// Unix timestamp
        public var timestamp: Int {
          get {
            return snapshot["timestamp"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "timestamp")
          }
        }

        /// The other user that is participant in the conversation<br>
        /// ######## In case It's returend from startConversation or getUserConversation; the peer_user will not be the sender/requests
        public var peerUser: PeerUser {
          get {
            return PeerUser(snapshot: snapshot["peer_user"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "peer_user")
          }
        }

        public struct PeerUser: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("user_id", type: .nonNull(.scalar(Int.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(userId: Int, name: String) {
            self.init(snapshot: ["__typename": "User", "user_id": userId, "name": name])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var userId: Int {
            get {
              return snapshot["user_id"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "user_id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }
        }
      }
    }
  }
}

public final class AddMessageMutation: GraphQLMutation {
  public static let operationString =
    "mutation AddMessage($receiver_id: Int, $user_id: Int!, $conversation_id: Int!, $local_id: Int!, $m_type: Int!, $text: String, $url: String, $url_title: String, $url_thumb_url: String, $url_domain: String, $url_text: String) {\n  addMessage(receiver_id: $receiver_id, user_id: $user_id, conversation_id: $conversation_id, local_id: $local_id, m_type: $m_type, text: $text, url: $url, url_title: $url_title, url_thumb_url: $url_thumb_url, url_domain: $url_domain, url_text: $url_text) {\n    __typename\n    action_type\n    receiver_id\n    message {\n      __typename\n      message_id\n      user_id\n      conv_type\n      conversation_id\n      local_id\n      m_type\n      status\n      timestamp\n      text\n      url\n      url_title\n      url_thumb_url\n      url_domain\n      url_text\n    }\n    typing {\n      __typename\n      action\n      receiver_id\n      conversation_id\n      user_id\n      conversation_type\n    }\n    seen {\n      __typename\n      last_msg_seen_id\n      conversation_id\n    }\n    conversation {\n      __typename\n      conversation_id\n      timestamp\n      peer_user {\n        __typename\n        user_id\n        name\n      }\n    }\n  }\n}"

  public var receiver_id: Int?
  public var user_id: Int
  public var conversation_id: Int
  public var local_id: Int
  public var m_type: Int
  public var text: String?
  public var url: String?
  public var url_title: String?
  public var url_thumb_url: String?
  public var url_domain: String?
  public var url_text: String?

  public init(receiver_id: Int? = nil, user_id: Int, conversation_id: Int, local_id: Int, m_type: Int, text: String? = nil, url: String? = nil, url_title: String? = nil, url_thumb_url: String? = nil, url_domain: String? = nil, url_text: String? = nil) {
    self.receiver_id = receiver_id
    self.user_id = user_id
    self.conversation_id = conversation_id
    self.local_id = local_id
    self.m_type = m_type
    self.text = text
    self.url = url
    self.url_title = url_title
    self.url_thumb_url = url_thumb_url
    self.url_domain = url_domain
    self.url_text = url_text
  }

  public var variables: GraphQLMap? {
    return ["receiver_id": receiver_id, "user_id": user_id, "conversation_id": conversation_id, "local_id": local_id, "m_type": m_type, "text": text, "url": url, "url_title": url_title, "url_thumb_url": url_thumb_url, "url_domain": url_domain, "url_text": url_text]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("addMessage", arguments: ["receiver_id": GraphQLVariable("receiver_id"), "user_id": GraphQLVariable("user_id"), "conversation_id": GraphQLVariable("conversation_id"), "local_id": GraphQLVariable("local_id"), "m_type": GraphQLVariable("m_type"), "text": GraphQLVariable("text"), "url": GraphQLVariable("url"), "url_title": GraphQLVariable("url_title"), "url_thumb_url": GraphQLVariable("url_thumb_url"), "url_domain": GraphQLVariable("url_domain"), "url_text": GraphQLVariable("url_text")], type: .object(AddMessage.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(addMessage: AddMessage? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "addMessage": addMessage.flatMap { $0.snapshot }])
    }

    /// Send message to a conversation, the "receiver_id"<Int> will determine which user will recieve this message
    public var addMessage: AddMessage? {
      get {
        return (snapshot["addMessage"] as? Snapshot).flatMap { AddMessage(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "addMessage")
      }
    }

    public struct AddMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["UserIdGenericOutput"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("action_type", type: .scalar(Int.self)),
        GraphQLField("receiver_id", type: .scalar(Int.self)),
        GraphQLField("message", type: .object(Message.selections)),
        GraphQLField("typing", type: .object(Typing.selections)),
        GraphQLField("seen", type: .object(Seen.selections)),
        GraphQLField("conversation", type: .object(Conversation.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(actionType: Int? = nil, receiverId: Int? = nil, message: Message? = nil, typing: Typing? = nil, seen: Seen? = nil, conversation: Conversation? = nil) {
        self.init(snapshot: ["__typename": "UserIdGenericOutput", "action_type": actionType, "receiver_id": receiverId, "message": message.flatMap { $0.snapshot }, "typing": typing.flatMap { $0.snapshot }, "seen": seen.flatMap { $0.snapshot }, "conversation": conversation.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      /// action_type Enum values : <br>
      /// ############### 0 : NEW_MESSAGE <br>
      /// ############### 1 : TYPING <br>
      /// ############### 2 : SEEN <br>
      /// ############### 3 : NEW_CONVERSATION <br>
      /// ############### 4 : JOINED_FOR_GROUP_CONVERSATION <br>
      public var actionType: Int? {
        get {
          return snapshot["action_type"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "action_type")
        }
      }

      /// The User ID that will receive this output through subscribeByUserID
      public var receiverId: Int? {
        get {
          return snapshot["receiver_id"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "receiver_id")
        }
      }

      /// Message body in case if action_type is 0
      public var message: Message? {
        get {
          return (snapshot["message"] as? Snapshot).flatMap { Message(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "message")
        }
      }

      /// Typing infromation in case if action_type is 1
      public var typing: Typing? {
        get {
          return (snapshot["typing"] as? Snapshot).flatMap { Typing(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "typing")
        }
      }

      /// Seen information in case of action_type = 2
      public var seen: Seen? {
        get {
          return (snapshot["seen"] as? Snapshot).flatMap { Seen(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "seen")
        }
      }

      /// New-Conversation in case of action_type = 3
      public var conversation: Conversation? {
        get {
          return (snapshot["conversation"] as? Snapshot).flatMap { Conversation(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "conversation")
        }
      }

      public struct Message: GraphQLSelectionSet {
        public static let possibleTypes = ["Message"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("user_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("conv_type", type: .scalar(Int.self)),
          GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("local_id", type: .scalar(Int.self)),
          GraphQLField("m_type", type: .nonNull(.scalar(Int.self))),
          GraphQLField("status", type: .scalar(Int.self)),
          GraphQLField("timestamp", type: .scalar(Int.self)),
          GraphQLField("text", type: .scalar(String.self)),
          GraphQLField("url", type: .scalar(String.self)),
          GraphQLField("url_title", type: .scalar(String.self)),
          GraphQLField("url_thumb_url", type: .scalar(String.self)),
          GraphQLField("url_domain", type: .scalar(String.self)),
          GraphQLField("url_text", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(messageId: Int, userId: Int, convType: Int? = nil, conversationId: Int, localId: Int? = nil, mType: Int, status: Int? = nil, timestamp: Int? = nil, text: String? = nil, url: String? = nil, urlTitle: String? = nil, urlThumbUrl: String? = nil, urlDomain: String? = nil, urlText: String? = nil) {
          self.init(snapshot: ["__typename": "Message", "message_id": messageId, "user_id": userId, "conv_type": convType, "conversation_id": conversationId, "local_id": localId, "m_type": mType, "status": status, "timestamp": timestamp, "text": text, "url": url, "url_title": urlTitle, "url_thumb_url": urlThumbUrl, "url_domain": urlDomain, "url_text": urlText])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Message ID in the server DB
        public var messageId: Int {
          get {
            return snapshot["message_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "message_id")
          }
        }

        /// User ID of the sender
        public var userId: Int {
          get {
            return snapshot["user_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "user_id")
          }
        }

        /// n/a
        public var convType: Int? {
          get {
            return snapshot["conv_type"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conv_type")
          }
        }

        /// n/a
        public var conversationId: Int {
          get {
            return snapshot["conversation_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }

        /// Message ID in the local database of the sender client i.e Mobile Application
        public var localId: Int? {
          get {
            return snapshot["local_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "local_id")
          }
        }

        /// Message type Enum values : <br>
        /// ############### 0 : TEXT <br>
        /// ############### 1 : VIDEO <br>
        /// ############### 2 : PICTURE <br>
        /// ############### 3 : DOCUMENT <br>
        /// ############### 4 : LINK <br>
        /// ############### 5 : LINK_YOUTUBE <br>
        /// ############### 6 : GIF <br>
        /// ############### 7 : GIF_TENOR <br>
        /// ############### 8 : AUDIO <br>
        /// ############### 9 : LOCATION <br>
        public var mType: Int {
          get {
            return snapshot["m_type"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "m_type")
          }
        }

        /// Message status Enum values : <br>
        /// ############### 0 : SENT <br>
        /// ############### 1 : SEEN<br>
        public var status: Int? {
          get {
            return snapshot["status"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "status")
          }
        }

        /// Unix timestamp
        public var timestamp: Int? {
          get {
            return snapshot["timestamp"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "timestamp")
          }
        }

        /// Message text
        public var text: String? {
          get {
            return snapshot["text"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "text")
          }
        }

        /// URL of the attachment, link, gif
        public var url: String? {
          get {
            return snapshot["url"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url")
          }
        }

        /// URL preview Title
        public var urlTitle: String? {
          get {
            return snapshot["url_title"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_title")
          }
        }

        /// URL preview thumb
        public var urlThumbUrl: String? {
          get {
            return snapshot["url_thumb_url"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_thumb_url")
          }
        }

        /// URL preview domain
        public var urlDomain: String? {
          get {
            return snapshot["url_domain"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_domain")
          }
        }

        /// URL preview text
        public var urlText: String? {
          get {
            return snapshot["url_text"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_text")
          }
        }
      }

      public struct Typing: GraphQLSelectionSet {
        public static let possibleTypes = ["TypingCommiter"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("action", type: .nonNull(.scalar(Int.self))),
          GraphQLField("receiver_id", type: .scalar(Int.self)),
          GraphQLField("conversation_id", type: .scalar(Int.self)),
          GraphQLField("user_id", type: .scalar(Int.self)),
          GraphQLField("conversation_type", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(action: Int, receiverId: Int? = nil, conversationId: Int? = nil, userId: Int? = nil, conversationType: String? = nil) {
          self.init(snapshot: ["__typename": "TypingCommiter", "action": action, "receiver_id": receiverId, "conversation_id": conversationId, "user_id": userId, "conversation_type": conversationType])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Action Enum values : <br>
        /// ############### 0 : START_TYPING <br>
        /// ############### 1 : STOP_TYPING
        public var action: Int {
          get {
            return snapshot["action"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "action")
          }
        }

        public var receiverId: Int? {
          get {
            return snapshot["receiver_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "receiver_id")
          }
        }

        /// Conversation ID that the typing happened within
        public var conversationId: Int? {
          get {
            return snapshot["conversation_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }

        /// User ID that committed the typing action
        public var userId: Int? {
          get {
            return snapshot["user_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "user_id")
          }
        }

        public var conversationType: String? {
          get {
            return snapshot["conversation_type"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_type")
          }
        }
      }

      public struct Seen: GraphQLSelectionSet {
        public static let possibleTypes = ["SeenOutput"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("last_msg_seen_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(lastMsgSeenId: Int, conversationId: Int) {
          self.init(snapshot: ["__typename": "SeenOutput", "last_msg_seen_id": lastMsgSeenId, "conversation_id": conversationId])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Message ID of the last seen message on the other client
        public var lastMsgSeenId: Int {
          get {
            return snapshot["last_msg_seen_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "last_msg_seen_id")
          }
        }

        /// The conversation which the other client marked as seen
        public var conversationId: Int {
          get {
            return snapshot["conversation_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }
      }

      public struct Conversation: GraphQLSelectionSet {
        public static let possibleTypes = ["ConversationsListItem_startConversation"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("timestamp", type: .nonNull(.scalar(Int.self))),
          GraphQLField("peer_user", type: .nonNull(.object(PeerUser.selections))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(conversationId: Int, timestamp: Int, peerUser: PeerUser) {
          self.init(snapshot: ["__typename": "ConversationsListItem_startConversation", "conversation_id": conversationId, "timestamp": timestamp, "peer_user": peerUser.snapshot])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Conversation ID
        public var conversationId: Int {
          get {
            return snapshot["conversation_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }

        /// Unix timestamp
        public var timestamp: Int {
          get {
            return snapshot["timestamp"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "timestamp")
          }
        }

        /// The other user that is participant in the conversation<br>
        /// ######## In case It's returend from startConversation or getUserConversation; the peer_user will not be the sender/requests
        public var peerUser: PeerUser {
          get {
            return PeerUser(snapshot: snapshot["peer_user"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "peer_user")
          }
        }

        public struct PeerUser: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("user_id", type: .nonNull(.scalar(Int.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(userId: Int, name: String) {
            self.init(snapshot: ["__typename": "User", "user_id": userId, "name": name])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var userId: Int {
            get {
              return snapshot["user_id"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "user_id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }
        }
      }
    }
  }
}

public final class AddMessageV2Mutation: GraphQLMutation {
  public static let operationString =
    "mutation AddMessageV2($receiver_id: Int, $user_id: Int!, $conv_type: Int!, $conversation_id: Int!, $local_id: Int!, $m_type: Int!, $text: String, $url: String, $url_title: String, $url_thumb_url: String, $url_domain: String, $url_text: String) {\n  addMessage_v2(receiver_id: $receiver_id, user_id: $user_id, conv_type: $conv_type, conversation_id: $conversation_id, local_id: $local_id, m_type: $m_type, text: $text, url: $url, url_title: $url_title, url_thumb_url: $url_thumb_url, url_domain: $url_domain, url_text: $url_text) {\n    __typename\n    action_type\n    receiver_id\n    message {\n      __typename\n      message_id\n      user_id\n      conv_type\n      conversation_id\n      local_id\n      m_type\n      status\n      timestamp\n      text\n      url\n      url_title\n      url_thumb_url\n      url_domain\n      url_text\n    }\n    typing {\n      __typename\n      action\n      receiver_id\n      conversation_id\n      user_id\n      conversation_type\n    }\n    seen {\n      __typename\n      last_msg_seen_id\n      conversation_id\n    }\n    conversation {\n      __typename\n      conversation_id\n      timestamp\n      peer_user {\n        __typename\n        user_id\n        name\n      }\n    }\n  }\n}"

  public var receiver_id: Int?
  public var user_id: Int
  public var conv_type: Int
  public var conversation_id: Int
  public var local_id: Int
  public var m_type: Int
  public var text: String?
  public var url: String?
  public var url_title: String?
  public var url_thumb_url: String?
  public var url_domain: String?
  public var url_text: String?

  public init(receiver_id: Int? = nil, user_id: Int, conv_type: Int, conversation_id: Int, local_id: Int, m_type: Int, text: String? = nil, url: String? = nil, url_title: String? = nil, url_thumb_url: String? = nil, url_domain: String? = nil, url_text: String? = nil) {
    self.receiver_id = receiver_id
    self.user_id = user_id
    self.conv_type = conv_type
    self.conversation_id = conversation_id
    self.local_id = local_id
    self.m_type = m_type
    self.text = text
    self.url = url
    self.url_title = url_title
    self.url_thumb_url = url_thumb_url
    self.url_domain = url_domain
    self.url_text = url_text
  }

  public var variables: GraphQLMap? {
    return ["receiver_id": receiver_id, "user_id": user_id, "conv_type": conv_type, "conversation_id": conversation_id, "local_id": local_id, "m_type": m_type, "text": text, "url": url, "url_title": url_title, "url_thumb_url": url_thumb_url, "url_domain": url_domain, "url_text": url_text]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("addMessage_v2", arguments: ["receiver_id": GraphQLVariable("receiver_id"), "user_id": GraphQLVariable("user_id"), "conv_type": GraphQLVariable("conv_type"), "conversation_id": GraphQLVariable("conversation_id"), "local_id": GraphQLVariable("local_id"), "m_type": GraphQLVariable("m_type"), "text": GraphQLVariable("text"), "url": GraphQLVariable("url"), "url_title": GraphQLVariable("url_title"), "url_thumb_url": GraphQLVariable("url_thumb_url"), "url_domain": GraphQLVariable("url_domain"), "url_text": GraphQLVariable("url_text")], type: .object(AddMessageV2.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(addMessageV2: AddMessageV2? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "addMessage_v2": addMessageV2.flatMap { $0.snapshot }])
    }

    public var addMessageV2: AddMessageV2? {
      get {
        return (snapshot["addMessage_v2"] as? Snapshot).flatMap { AddMessageV2(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "addMessage_v2")
      }
    }

    public struct AddMessageV2: GraphQLSelectionSet {
      public static let possibleTypes = ["UserIdGenericOutput"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("action_type", type: .scalar(Int.self)),
        GraphQLField("receiver_id", type: .scalar(Int.self)),
        GraphQLField("message", type: .object(Message.selections)),
        GraphQLField("typing", type: .object(Typing.selections)),
        GraphQLField("seen", type: .object(Seen.selections)),
        GraphQLField("conversation", type: .object(Conversation.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(actionType: Int? = nil, receiverId: Int? = nil, message: Message? = nil, typing: Typing? = nil, seen: Seen? = nil, conversation: Conversation? = nil) {
        self.init(snapshot: ["__typename": "UserIdGenericOutput", "action_type": actionType, "receiver_id": receiverId, "message": message.flatMap { $0.snapshot }, "typing": typing.flatMap { $0.snapshot }, "seen": seen.flatMap { $0.snapshot }, "conversation": conversation.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      /// action_type Enum values : <br>
      /// ############### 0 : NEW_MESSAGE <br>
      /// ############### 1 : TYPING <br>
      /// ############### 2 : SEEN <br>
      /// ############### 3 : NEW_CONVERSATION <br>
      /// ############### 4 : JOINED_FOR_GROUP_CONVERSATION <br>
      public var actionType: Int? {
        get {
          return snapshot["action_type"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "action_type")
        }
      }

      /// The User ID that will receive this output through subscribeByUserID
      public var receiverId: Int? {
        get {
          return snapshot["receiver_id"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "receiver_id")
        }
      }

      /// Message body in case if action_type is 0
      public var message: Message? {
        get {
          return (snapshot["message"] as? Snapshot).flatMap { Message(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "message")
        }
      }

      /// Typing infromation in case if action_type is 1
      public var typing: Typing? {
        get {
          return (snapshot["typing"] as? Snapshot).flatMap { Typing(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "typing")
        }
      }

      /// Seen information in case of action_type = 2
      public var seen: Seen? {
        get {
          return (snapshot["seen"] as? Snapshot).flatMap { Seen(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "seen")
        }
      }

      /// New-Conversation in case of action_type = 3
      public var conversation: Conversation? {
        get {
          return (snapshot["conversation"] as? Snapshot).flatMap { Conversation(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "conversation")
        }
      }

      public struct Message: GraphQLSelectionSet {
        public static let possibleTypes = ["Message"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("user_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("conv_type", type: .scalar(Int.self)),
          GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("local_id", type: .scalar(Int.self)),
          GraphQLField("m_type", type: .nonNull(.scalar(Int.self))),
          GraphQLField("status", type: .scalar(Int.self)),
          GraphQLField("timestamp", type: .scalar(Int.self)),
          GraphQLField("text", type: .scalar(String.self)),
          GraphQLField("url", type: .scalar(String.self)),
          GraphQLField("url_title", type: .scalar(String.self)),
          GraphQLField("url_thumb_url", type: .scalar(String.self)),
          GraphQLField("url_domain", type: .scalar(String.self)),
          GraphQLField("url_text", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(messageId: Int, userId: Int, convType: Int? = nil, conversationId: Int, localId: Int? = nil, mType: Int, status: Int? = nil, timestamp: Int? = nil, text: String? = nil, url: String? = nil, urlTitle: String? = nil, urlThumbUrl: String? = nil, urlDomain: String? = nil, urlText: String? = nil) {
          self.init(snapshot: ["__typename": "Message", "message_id": messageId, "user_id": userId, "conv_type": convType, "conversation_id": conversationId, "local_id": localId, "m_type": mType, "status": status, "timestamp": timestamp, "text": text, "url": url, "url_title": urlTitle, "url_thumb_url": urlThumbUrl, "url_domain": urlDomain, "url_text": urlText])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Message ID in the server DB
        public var messageId: Int {
          get {
            return snapshot["message_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "message_id")
          }
        }

        /// User ID of the sender
        public var userId: Int {
          get {
            return snapshot["user_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "user_id")
          }
        }

        /// n/a
        public var convType: Int? {
          get {
            return snapshot["conv_type"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conv_type")
          }
        }

        /// n/a
        public var conversationId: Int {
          get {
            return snapshot["conversation_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }

        /// Message ID in the local database of the sender client i.e Mobile Application
        public var localId: Int? {
          get {
            return snapshot["local_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "local_id")
          }
        }

        /// Message type Enum values : <br>
        /// ############### 0 : TEXT <br>
        /// ############### 1 : VIDEO <br>
        /// ############### 2 : PICTURE <br>
        /// ############### 3 : DOCUMENT <br>
        /// ############### 4 : LINK <br>
        /// ############### 5 : LINK_YOUTUBE <br>
        /// ############### 6 : GIF <br>
        /// ############### 7 : GIF_TENOR <br>
        /// ############### 8 : AUDIO <br>
        /// ############### 9 : LOCATION <br>
        public var mType: Int {
          get {
            return snapshot["m_type"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "m_type")
          }
        }

        /// Message status Enum values : <br>
        /// ############### 0 : SENT <br>
        /// ############### 1 : SEEN<br>
        public var status: Int? {
          get {
            return snapshot["status"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "status")
          }
        }

        /// Unix timestamp
        public var timestamp: Int? {
          get {
            return snapshot["timestamp"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "timestamp")
          }
        }

        /// Message text
        public var text: String? {
          get {
            return snapshot["text"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "text")
          }
        }

        /// URL of the attachment, link, gif
        public var url: String? {
          get {
            return snapshot["url"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url")
          }
        }

        /// URL preview Title
        public var urlTitle: String? {
          get {
            return snapshot["url_title"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_title")
          }
        }

        /// URL preview thumb
        public var urlThumbUrl: String? {
          get {
            return snapshot["url_thumb_url"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_thumb_url")
          }
        }

        /// URL preview domain
        public var urlDomain: String? {
          get {
            return snapshot["url_domain"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_domain")
          }
        }

        /// URL preview text
        public var urlText: String? {
          get {
            return snapshot["url_text"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_text")
          }
        }
      }

      public struct Typing: GraphQLSelectionSet {
        public static let possibleTypes = ["TypingCommiter"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("action", type: .nonNull(.scalar(Int.self))),
          GraphQLField("receiver_id", type: .scalar(Int.self)),
          GraphQLField("conversation_id", type: .scalar(Int.self)),
          GraphQLField("user_id", type: .scalar(Int.self)),
          GraphQLField("conversation_type", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(action: Int, receiverId: Int? = nil, conversationId: Int? = nil, userId: Int? = nil, conversationType: String? = nil) {
          self.init(snapshot: ["__typename": "TypingCommiter", "action": action, "receiver_id": receiverId, "conversation_id": conversationId, "user_id": userId, "conversation_type": conversationType])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Action Enum values : <br>
        /// ############### 0 : START_TYPING <br>
        /// ############### 1 : STOP_TYPING
        public var action: Int {
          get {
            return snapshot["action"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "action")
          }
        }

        public var receiverId: Int? {
          get {
            return snapshot["receiver_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "receiver_id")
          }
        }

        /// Conversation ID that the typing happened within
        public var conversationId: Int? {
          get {
            return snapshot["conversation_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }

        /// User ID that committed the typing action
        public var userId: Int? {
          get {
            return snapshot["user_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "user_id")
          }
        }

        public var conversationType: String? {
          get {
            return snapshot["conversation_type"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_type")
          }
        }
      }

      public struct Seen: GraphQLSelectionSet {
        public static let possibleTypes = ["SeenOutput"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("last_msg_seen_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(lastMsgSeenId: Int, conversationId: Int) {
          self.init(snapshot: ["__typename": "SeenOutput", "last_msg_seen_id": lastMsgSeenId, "conversation_id": conversationId])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Message ID of the last seen message on the other client
        public var lastMsgSeenId: Int {
          get {
            return snapshot["last_msg_seen_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "last_msg_seen_id")
          }
        }

        /// The conversation which the other client marked as seen
        public var conversationId: Int {
          get {
            return snapshot["conversation_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }
      }

      public struct Conversation: GraphQLSelectionSet {
        public static let possibleTypes = ["ConversationsListItem_startConversation"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("timestamp", type: .nonNull(.scalar(Int.self))),
          GraphQLField("peer_user", type: .nonNull(.object(PeerUser.selections))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(conversationId: Int, timestamp: Int, peerUser: PeerUser) {
          self.init(snapshot: ["__typename": "ConversationsListItem_startConversation", "conversation_id": conversationId, "timestamp": timestamp, "peer_user": peerUser.snapshot])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Conversation ID
        public var conversationId: Int {
          get {
            return snapshot["conversation_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }

        /// Unix timestamp
        public var timestamp: Int {
          get {
            return snapshot["timestamp"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "timestamp")
          }
        }

        /// The other user that is participant in the conversation<br>
        /// ######## In case It's returend from startConversation or getUserConversation; the peer_user will not be the sender/requests
        public var peerUser: PeerUser {
          get {
            return PeerUser(snapshot: snapshot["peer_user"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "peer_user")
          }
        }

        public struct PeerUser: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("user_id", type: .nonNull(.scalar(Int.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(userId: Int, name: String) {
            self.init(snapshot: ["__typename": "User", "user_id": userId, "name": name])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var userId: Int {
            get {
              return snapshot["user_id"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "user_id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }
        }
      }
    }
  }
}

public final class PublishTypingMutation: GraphQLMutation {
  public static let operationString =
    "mutation PublishTyping($receiver_id: Int!, $conversation_id: Int!, $user_id: Int!, $action: Int!) {\n  publishTyping(receiver_id: $receiver_id, conversation_id: $conversation_id, user_id: $user_id, action: $action) {\n    __typename\n    action_type\n    receiver_id\n    message {\n      __typename\n      message_id\n      user_id\n      conv_type\n      conversation_id\n      local_id\n      m_type\n      status\n      timestamp\n      text\n      url\n      url_title\n      url_thumb_url\n      url_domain\n      url_text\n    }\n    typing {\n      __typename\n      action\n      receiver_id\n      conversation_id\n      user_id\n      conversation_type\n    }\n    seen {\n      __typename\n      last_msg_seen_id\n      conversation_id\n    }\n    conversation {\n      __typename\n      conversation_id\n      timestamp\n      peer_user {\n        __typename\n        user_id\n        name\n      }\n    }\n  }\n}"

  public var receiver_id: Int
  public var conversation_id: Int
  public var user_id: Int
  public var action: Int

  public init(receiver_id: Int, conversation_id: Int, user_id: Int, action: Int) {
    self.receiver_id = receiver_id
    self.conversation_id = conversation_id
    self.user_id = user_id
    self.action = action
  }

  public var variables: GraphQLMap? {
    return ["receiver_id": receiver_id, "conversation_id": conversation_id, "user_id": user_id, "action": action]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("publishTyping", arguments: ["receiver_id": GraphQLVariable("receiver_id"), "conversation_id": GraphQLVariable("conversation_id"), "user_id": GraphQLVariable("user_id"), "action": GraphQLVariable("action")], type: .object(PublishTyping.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(publishTyping: PublishTyping? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "publishTyping": publishTyping.flatMap { $0.snapshot }])
    }

    /// Publish typing so the other parties of the conversation will know when you started typing and when you finished
    public var publishTyping: PublishTyping? {
      get {
        return (snapshot["publishTyping"] as? Snapshot).flatMap { PublishTyping(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "publishTyping")
      }
    }

    public struct PublishTyping: GraphQLSelectionSet {
      public static let possibleTypes = ["UserIdGenericOutput"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("action_type", type: .scalar(Int.self)),
        GraphQLField("receiver_id", type: .scalar(Int.self)),
        GraphQLField("message", type: .object(Message.selections)),
        GraphQLField("typing", type: .object(Typing.selections)),
        GraphQLField("seen", type: .object(Seen.selections)),
        GraphQLField("conversation", type: .object(Conversation.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(actionType: Int? = nil, receiverId: Int? = nil, message: Message? = nil, typing: Typing? = nil, seen: Seen? = nil, conversation: Conversation? = nil) {
        self.init(snapshot: ["__typename": "UserIdGenericOutput", "action_type": actionType, "receiver_id": receiverId, "message": message.flatMap { $0.snapshot }, "typing": typing.flatMap { $0.snapshot }, "seen": seen.flatMap { $0.snapshot }, "conversation": conversation.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      /// action_type Enum values : <br>
      /// ############### 0 : NEW_MESSAGE <br>
      /// ############### 1 : TYPING <br>
      /// ############### 2 : SEEN <br>
      /// ############### 3 : NEW_CONVERSATION <br>
      /// ############### 4 : JOINED_FOR_GROUP_CONVERSATION <br>
      public var actionType: Int? {
        get {
          return snapshot["action_type"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "action_type")
        }
      }

      /// The User ID that will receive this output through subscribeByUserID
      public var receiverId: Int? {
        get {
          return snapshot["receiver_id"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "receiver_id")
        }
      }

      /// Message body in case if action_type is 0
      public var message: Message? {
        get {
          return (snapshot["message"] as? Snapshot).flatMap { Message(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "message")
        }
      }

      /// Typing infromation in case if action_type is 1
      public var typing: Typing? {
        get {
          return (snapshot["typing"] as? Snapshot).flatMap { Typing(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "typing")
        }
      }

      /// Seen information in case of action_type = 2
      public var seen: Seen? {
        get {
          return (snapshot["seen"] as? Snapshot).flatMap { Seen(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "seen")
        }
      }

      /// New-Conversation in case of action_type = 3
      public var conversation: Conversation? {
        get {
          return (snapshot["conversation"] as? Snapshot).flatMap { Conversation(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "conversation")
        }
      }

      public struct Message: GraphQLSelectionSet {
        public static let possibleTypes = ["Message"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("user_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("conv_type", type: .scalar(Int.self)),
          GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("local_id", type: .scalar(Int.self)),
          GraphQLField("m_type", type: .nonNull(.scalar(Int.self))),
          GraphQLField("status", type: .scalar(Int.self)),
          GraphQLField("timestamp", type: .scalar(Int.self)),
          GraphQLField("text", type: .scalar(String.self)),
          GraphQLField("url", type: .scalar(String.self)),
          GraphQLField("url_title", type: .scalar(String.self)),
          GraphQLField("url_thumb_url", type: .scalar(String.self)),
          GraphQLField("url_domain", type: .scalar(String.self)),
          GraphQLField("url_text", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(messageId: Int, userId: Int, convType: Int? = nil, conversationId: Int, localId: Int? = nil, mType: Int, status: Int? = nil, timestamp: Int? = nil, text: String? = nil, url: String? = nil, urlTitle: String? = nil, urlThumbUrl: String? = nil, urlDomain: String? = nil, urlText: String? = nil) {
          self.init(snapshot: ["__typename": "Message", "message_id": messageId, "user_id": userId, "conv_type": convType, "conversation_id": conversationId, "local_id": localId, "m_type": mType, "status": status, "timestamp": timestamp, "text": text, "url": url, "url_title": urlTitle, "url_thumb_url": urlThumbUrl, "url_domain": urlDomain, "url_text": urlText])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Message ID in the server DB
        public var messageId: Int {
          get {
            return snapshot["message_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "message_id")
          }
        }

        /// User ID of the sender
        public var userId: Int {
          get {
            return snapshot["user_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "user_id")
          }
        }

        /// n/a
        public var convType: Int? {
          get {
            return snapshot["conv_type"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conv_type")
          }
        }

        /// n/a
        public var conversationId: Int {
          get {
            return snapshot["conversation_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }

        /// Message ID in the local database of the sender client i.e Mobile Application
        public var localId: Int? {
          get {
            return snapshot["local_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "local_id")
          }
        }

        /// Message type Enum values : <br>
        /// ############### 0 : TEXT <br>
        /// ############### 1 : VIDEO <br>
        /// ############### 2 : PICTURE <br>
        /// ############### 3 : DOCUMENT <br>
        /// ############### 4 : LINK <br>
        /// ############### 5 : LINK_YOUTUBE <br>
        /// ############### 6 : GIF <br>
        /// ############### 7 : GIF_TENOR <br>
        /// ############### 8 : AUDIO <br>
        /// ############### 9 : LOCATION <br>
        public var mType: Int {
          get {
            return snapshot["m_type"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "m_type")
          }
        }

        /// Message status Enum values : <br>
        /// ############### 0 : SENT <br>
        /// ############### 1 : SEEN<br>
        public var status: Int? {
          get {
            return snapshot["status"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "status")
          }
        }

        /// Unix timestamp
        public var timestamp: Int? {
          get {
            return snapshot["timestamp"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "timestamp")
          }
        }

        /// Message text
        public var text: String? {
          get {
            return snapshot["text"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "text")
          }
        }

        /// URL of the attachment, link, gif
        public var url: String? {
          get {
            return snapshot["url"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url")
          }
        }

        /// URL preview Title
        public var urlTitle: String? {
          get {
            return snapshot["url_title"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_title")
          }
        }

        /// URL preview thumb
        public var urlThumbUrl: String? {
          get {
            return snapshot["url_thumb_url"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_thumb_url")
          }
        }

        /// URL preview domain
        public var urlDomain: String? {
          get {
            return snapshot["url_domain"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_domain")
          }
        }

        /// URL preview text
        public var urlText: String? {
          get {
            return snapshot["url_text"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_text")
          }
        }
      }

      public struct Typing: GraphQLSelectionSet {
        public static let possibleTypes = ["TypingCommiter"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("action", type: .nonNull(.scalar(Int.self))),
          GraphQLField("receiver_id", type: .scalar(Int.self)),
          GraphQLField("conversation_id", type: .scalar(Int.self)),
          GraphQLField("user_id", type: .scalar(Int.self)),
          GraphQLField("conversation_type", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(action: Int, receiverId: Int? = nil, conversationId: Int? = nil, userId: Int? = nil, conversationType: String? = nil) {
          self.init(snapshot: ["__typename": "TypingCommiter", "action": action, "receiver_id": receiverId, "conversation_id": conversationId, "user_id": userId, "conversation_type": conversationType])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Action Enum values : <br>
        /// ############### 0 : START_TYPING <br>
        /// ############### 1 : STOP_TYPING
        public var action: Int {
          get {
            return snapshot["action"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "action")
          }
        }

        public var receiverId: Int? {
          get {
            return snapshot["receiver_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "receiver_id")
          }
        }

        /// Conversation ID that the typing happened within
        public var conversationId: Int? {
          get {
            return snapshot["conversation_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }

        /// User ID that committed the typing action
        public var userId: Int? {
          get {
            return snapshot["user_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "user_id")
          }
        }

        public var conversationType: String? {
          get {
            return snapshot["conversation_type"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_type")
          }
        }
      }

      public struct Seen: GraphQLSelectionSet {
        public static let possibleTypes = ["SeenOutput"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("last_msg_seen_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(lastMsgSeenId: Int, conversationId: Int) {
          self.init(snapshot: ["__typename": "SeenOutput", "last_msg_seen_id": lastMsgSeenId, "conversation_id": conversationId])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Message ID of the last seen message on the other client
        public var lastMsgSeenId: Int {
          get {
            return snapshot["last_msg_seen_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "last_msg_seen_id")
          }
        }

        /// The conversation which the other client marked as seen
        public var conversationId: Int {
          get {
            return snapshot["conversation_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }
      }

      public struct Conversation: GraphQLSelectionSet {
        public static let possibleTypes = ["ConversationsListItem_startConversation"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("timestamp", type: .nonNull(.scalar(Int.self))),
          GraphQLField("peer_user", type: .nonNull(.object(PeerUser.selections))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(conversationId: Int, timestamp: Int, peerUser: PeerUser) {
          self.init(snapshot: ["__typename": "ConversationsListItem_startConversation", "conversation_id": conversationId, "timestamp": timestamp, "peer_user": peerUser.snapshot])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Conversation ID
        public var conversationId: Int {
          get {
            return snapshot["conversation_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }

        /// Unix timestamp
        public var timestamp: Int {
          get {
            return snapshot["timestamp"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "timestamp")
          }
        }

        /// The other user that is participant in the conversation<br>
        /// ######## In case It's returend from startConversation or getUserConversation; the peer_user will not be the sender/requests
        public var peerUser: PeerUser {
          get {
            return PeerUser(snapshot: snapshot["peer_user"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "peer_user")
          }
        }

        public struct PeerUser: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("user_id", type: .nonNull(.scalar(Int.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(userId: Int, name: String) {
            self.init(snapshot: ["__typename": "User", "user_id": userId, "name": name])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var userId: Int {
            get {
              return snapshot["user_id"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "user_id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }
        }
      }
    }
  }
}

public final class ChangeOnlineStatusMutation: GraphQLMutation {
  public static let operationString =
    "mutation ChangeOnlineStatus($user_id: Int!, $is_online: Boolean!) {\n  changeOnlineStatus(user_id: $user_id, is_online: $is_online) {\n    __typename\n    last_seen\n    is_online\n  }\n}"

  public var user_id: Int
  public var is_online: Bool

  public init(user_id: Int, is_online: Bool) {
    self.user_id = user_id
    self.is_online = is_online
  }

  public var variables: GraphQLMap? {
    return ["user_id": user_id, "is_online": is_online]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("changeOnlineStatus", arguments: ["user_id": GraphQLVariable("user_id"), "is_online": GraphQLVariable("is_online")], type: .object(ChangeOnlineStatus.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(changeOnlineStatus: ChangeOnlineStatus? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "changeOnlineStatus": changeOnlineStatus.flatMap { $0.snapshot }])
    }

    /// Specifies whether the user is online of offline, this will persist in the database so other users can query about it
    public var changeOnlineStatus: ChangeOnlineStatus? {
      get {
        return (snapshot["changeOnlineStatus"] as? Snapshot).flatMap { ChangeOnlineStatus(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "changeOnlineStatus")
      }
    }

    public struct ChangeOnlineStatus: GraphQLSelectionSet {
      public static let possibleTypes = ["SignalOnlineStatus"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("last_seen", type: .scalar(Int.self)),
        GraphQLField("is_online", type: .scalar(Bool.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(lastSeen: Int? = nil, isOnline: Bool? = nil) {
        self.init(snapshot: ["__typename": "SignalOnlineStatus", "last_seen": lastSeen, "is_online": isOnline])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      /// Unix timestamp in seconds
      public var lastSeen: Int? {
        get {
          return snapshot["last_seen"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "last_seen")
        }
      }

      /// Detemines whether the user last_seen is no more 5 seconds past from the time of calling getUserOnlineStatus
      public var isOnline: Bool? {
        get {
          return snapshot["is_online"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "is_online")
        }
      }
    }
  }
}

public final class NewGroupAddedMutation: GraphQLMutation {
  public static let operationString =
    "mutation NewGroupAdded($receiver_id: Int!, $group_id: Int!) {\n  newGroupAdded(receiver_id: $receiver_id, group_id: $group_id) {\n    __typename\n    action_type\n    receiver_id\n    message {\n      __typename\n      message_id\n      user_id\n      conv_type\n      conversation_id\n      local_id\n      m_type\n      status\n      timestamp\n      text\n      url\n      url_title\n      url_thumb_url\n      url_domain\n      url_text\n    }\n    typing {\n      __typename\n      action\n      receiver_id\n      conversation_id\n      user_id\n      conversation_type\n    }\n    seen {\n      __typename\n      last_msg_seen_id\n      conversation_id\n    }\n    conversation {\n      __typename\n      conversation_id\n      timestamp\n      peer_user {\n        __typename\n        user_id\n        name\n      }\n    }\n  }\n}"

  public var receiver_id: Int
  public var group_id: Int

  public init(receiver_id: Int, group_id: Int) {
    self.receiver_id = receiver_id
    self.group_id = group_id
  }

  public var variables: GraphQLMap? {
    return ["receiver_id": receiver_id, "group_id": group_id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("newGroupAdded", arguments: ["receiver_id": GraphQLVariable("receiver_id"), "group_id": GraphQLVariable("group_id")], type: .object(NewGroupAdded.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(newGroupAdded: NewGroupAdded? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "newGroupAdded": newGroupAdded.flatMap { $0.snapshot }])
    }

    /// ***
    /// ############### Group mutations
    /// ############### ***
    public var newGroupAdded: NewGroupAdded? {
      get {
        return (snapshot["newGroupAdded"] as? Snapshot).flatMap { NewGroupAdded(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "newGroupAdded")
      }
    }

    public struct NewGroupAdded: GraphQLSelectionSet {
      public static let possibleTypes = ["UserIdGenericOutput"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("action_type", type: .scalar(Int.self)),
        GraphQLField("receiver_id", type: .scalar(Int.self)),
        GraphQLField("message", type: .object(Message.selections)),
        GraphQLField("typing", type: .object(Typing.selections)),
        GraphQLField("seen", type: .object(Seen.selections)),
        GraphQLField("conversation", type: .object(Conversation.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(actionType: Int? = nil, receiverId: Int? = nil, message: Message? = nil, typing: Typing? = nil, seen: Seen? = nil, conversation: Conversation? = nil) {
        self.init(snapshot: ["__typename": "UserIdGenericOutput", "action_type": actionType, "receiver_id": receiverId, "message": message.flatMap { $0.snapshot }, "typing": typing.flatMap { $0.snapshot }, "seen": seen.flatMap { $0.snapshot }, "conversation": conversation.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      /// action_type Enum values : <br>
      /// ############### 0 : NEW_MESSAGE <br>
      /// ############### 1 : TYPING <br>
      /// ############### 2 : SEEN <br>
      /// ############### 3 : NEW_CONVERSATION <br>
      /// ############### 4 : JOINED_FOR_GROUP_CONVERSATION <br>
      public var actionType: Int? {
        get {
          return snapshot["action_type"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "action_type")
        }
      }

      /// The User ID that will receive this output through subscribeByUserID
      public var receiverId: Int? {
        get {
          return snapshot["receiver_id"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "receiver_id")
        }
      }

      /// Message body in case if action_type is 0
      public var message: Message? {
        get {
          return (snapshot["message"] as? Snapshot).flatMap { Message(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "message")
        }
      }

      /// Typing infromation in case if action_type is 1
      public var typing: Typing? {
        get {
          return (snapshot["typing"] as? Snapshot).flatMap { Typing(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "typing")
        }
      }

      /// Seen information in case of action_type = 2
      public var seen: Seen? {
        get {
          return (snapshot["seen"] as? Snapshot).flatMap { Seen(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "seen")
        }
      }

      /// New-Conversation in case of action_type = 3
      public var conversation: Conversation? {
        get {
          return (snapshot["conversation"] as? Snapshot).flatMap { Conversation(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "conversation")
        }
      }

      public struct Message: GraphQLSelectionSet {
        public static let possibleTypes = ["Message"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("user_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("conv_type", type: .scalar(Int.self)),
          GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("local_id", type: .scalar(Int.self)),
          GraphQLField("m_type", type: .nonNull(.scalar(Int.self))),
          GraphQLField("status", type: .scalar(Int.self)),
          GraphQLField("timestamp", type: .scalar(Int.self)),
          GraphQLField("text", type: .scalar(String.self)),
          GraphQLField("url", type: .scalar(String.self)),
          GraphQLField("url_title", type: .scalar(String.self)),
          GraphQLField("url_thumb_url", type: .scalar(String.self)),
          GraphQLField("url_domain", type: .scalar(String.self)),
          GraphQLField("url_text", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(messageId: Int, userId: Int, convType: Int? = nil, conversationId: Int, localId: Int? = nil, mType: Int, status: Int? = nil, timestamp: Int? = nil, text: String? = nil, url: String? = nil, urlTitle: String? = nil, urlThumbUrl: String? = nil, urlDomain: String? = nil, urlText: String? = nil) {
          self.init(snapshot: ["__typename": "Message", "message_id": messageId, "user_id": userId, "conv_type": convType, "conversation_id": conversationId, "local_id": localId, "m_type": mType, "status": status, "timestamp": timestamp, "text": text, "url": url, "url_title": urlTitle, "url_thumb_url": urlThumbUrl, "url_domain": urlDomain, "url_text": urlText])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Message ID in the server DB
        public var messageId: Int {
          get {
            return snapshot["message_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "message_id")
          }
        }

        /// User ID of the sender
        public var userId: Int {
          get {
            return snapshot["user_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "user_id")
          }
        }

        /// n/a
        public var convType: Int? {
          get {
            return snapshot["conv_type"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conv_type")
          }
        }

        /// n/a
        public var conversationId: Int {
          get {
            return snapshot["conversation_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }

        /// Message ID in the local database of the sender client i.e Mobile Application
        public var localId: Int? {
          get {
            return snapshot["local_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "local_id")
          }
        }

        /// Message type Enum values : <br>
        /// ############### 0 : TEXT <br>
        /// ############### 1 : VIDEO <br>
        /// ############### 2 : PICTURE <br>
        /// ############### 3 : DOCUMENT <br>
        /// ############### 4 : LINK <br>
        /// ############### 5 : LINK_YOUTUBE <br>
        /// ############### 6 : GIF <br>
        /// ############### 7 : GIF_TENOR <br>
        /// ############### 8 : AUDIO <br>
        /// ############### 9 : LOCATION <br>
        public var mType: Int {
          get {
            return snapshot["m_type"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "m_type")
          }
        }

        /// Message status Enum values : <br>
        /// ############### 0 : SENT <br>
        /// ############### 1 : SEEN<br>
        public var status: Int? {
          get {
            return snapshot["status"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "status")
          }
        }

        /// Unix timestamp
        public var timestamp: Int? {
          get {
            return snapshot["timestamp"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "timestamp")
          }
        }

        /// Message text
        public var text: String? {
          get {
            return snapshot["text"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "text")
          }
        }

        /// URL of the attachment, link, gif
        public var url: String? {
          get {
            return snapshot["url"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url")
          }
        }

        /// URL preview Title
        public var urlTitle: String? {
          get {
            return snapshot["url_title"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_title")
          }
        }

        /// URL preview thumb
        public var urlThumbUrl: String? {
          get {
            return snapshot["url_thumb_url"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_thumb_url")
          }
        }

        /// URL preview domain
        public var urlDomain: String? {
          get {
            return snapshot["url_domain"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_domain")
          }
        }

        /// URL preview text
        public var urlText: String? {
          get {
            return snapshot["url_text"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_text")
          }
        }
      }

      public struct Typing: GraphQLSelectionSet {
        public static let possibleTypes = ["TypingCommiter"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("action", type: .nonNull(.scalar(Int.self))),
          GraphQLField("receiver_id", type: .scalar(Int.self)),
          GraphQLField("conversation_id", type: .scalar(Int.self)),
          GraphQLField("user_id", type: .scalar(Int.self)),
          GraphQLField("conversation_type", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(action: Int, receiverId: Int? = nil, conversationId: Int? = nil, userId: Int? = nil, conversationType: String? = nil) {
          self.init(snapshot: ["__typename": "TypingCommiter", "action": action, "receiver_id": receiverId, "conversation_id": conversationId, "user_id": userId, "conversation_type": conversationType])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Action Enum values : <br>
        /// ############### 0 : START_TYPING <br>
        /// ############### 1 : STOP_TYPING
        public var action: Int {
          get {
            return snapshot["action"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "action")
          }
        }

        public var receiverId: Int? {
          get {
            return snapshot["receiver_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "receiver_id")
          }
        }

        /// Conversation ID that the typing happened within
        public var conversationId: Int? {
          get {
            return snapshot["conversation_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }

        /// User ID that committed the typing action
        public var userId: Int? {
          get {
            return snapshot["user_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "user_id")
          }
        }

        public var conversationType: String? {
          get {
            return snapshot["conversation_type"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_type")
          }
        }
      }

      public struct Seen: GraphQLSelectionSet {
        public static let possibleTypes = ["SeenOutput"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("last_msg_seen_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(lastMsgSeenId: Int, conversationId: Int) {
          self.init(snapshot: ["__typename": "SeenOutput", "last_msg_seen_id": lastMsgSeenId, "conversation_id": conversationId])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Message ID of the last seen message on the other client
        public var lastMsgSeenId: Int {
          get {
            return snapshot["last_msg_seen_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "last_msg_seen_id")
          }
        }

        /// The conversation which the other client marked as seen
        public var conversationId: Int {
          get {
            return snapshot["conversation_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }
      }

      public struct Conversation: GraphQLSelectionSet {
        public static let possibleTypes = ["ConversationsListItem_startConversation"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("timestamp", type: .nonNull(.scalar(Int.self))),
          GraphQLField("peer_user", type: .nonNull(.object(PeerUser.selections))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(conversationId: Int, timestamp: Int, peerUser: PeerUser) {
          self.init(snapshot: ["__typename": "ConversationsListItem_startConversation", "conversation_id": conversationId, "timestamp": timestamp, "peer_user": peerUser.snapshot])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Conversation ID
        public var conversationId: Int {
          get {
            return snapshot["conversation_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }

        /// Unix timestamp
        public var timestamp: Int {
          get {
            return snapshot["timestamp"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "timestamp")
          }
        }

        /// The other user that is participant in the conversation<br>
        /// ######## In case It's returend from startConversation or getUserConversation; the peer_user will not be the sender/requests
        public var peerUser: PeerUser {
          get {
            return PeerUser(snapshot: snapshot["peer_user"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "peer_user")
          }
        }

        public struct PeerUser: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("user_id", type: .nonNull(.scalar(Int.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(userId: Int, name: String) {
            self.init(snapshot: ["__typename": "User", "user_id": userId, "name": name])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var userId: Int {
            get {
              return snapshot["user_id"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "user_id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }
        }
      }
    }
  }
}

public final class StartGroupConversationMutation: GraphQLMutation {
  public static let operationString =
    "mutation StartGroupConversation($created_by_id: Int!, $title: String!, $description: String, $members: [GroupMemberInput!]) {\n  startGroupConversation(created_by_id: $created_by_id, title: $title, description: $description, members: $members) {\n    __typename\n    conversation_id\n    created_by_id\n    title\n    description\n    members {\n      __typename\n      id\n    }\n  }\n}"

  public var created_by_id: Int
  public var title: String
  public var description: String?
  public var members: [GroupMemberInput]?

  public init(created_by_id: Int, title: String, description: String? = nil, members: [GroupMemberInput]?) {
    self.created_by_id = created_by_id
    self.title = title
    self.description = description
    self.members = members
  }

  public var variables: GraphQLMap? {
    return ["created_by_id": created_by_id, "title": title, "description": description, "members": members]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("startGroupConversation", arguments: ["created_by_id": GraphQLVariable("created_by_id"), "title": GraphQLVariable("title"), "description": GraphQLVariable("description"), "members": GraphQLVariable("members")], type: .object(StartGroupConversation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(startGroupConversation: StartGroupConversation? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "startGroupConversation": startGroupConversation.flatMap { $0.snapshot }])
    }

    public var startGroupConversation: StartGroupConversation? {
      get {
        return (snapshot["startGroupConversation"] as? Snapshot).flatMap { StartGroupConversation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "startGroupConversation")
      }
    }

    public struct StartGroupConversation: GraphQLSelectionSet {
      public static let possibleTypes = ["GroupConversation"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
        GraphQLField("created_by_id", type: .nonNull(.scalar(Int.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("members", type: .list(.nonNull(.object(Member.selections)))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(conversationId: Int, createdById: Int, title: String, description: String? = nil, members: [Member]? = nil) {
        self.init(snapshot: ["__typename": "GroupConversation", "conversation_id": conversationId, "created_by_id": createdById, "title": title, "description": description, "members": members.flatMap { $0.map { $0.snapshot } }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var conversationId: Int {
        get {
          return snapshot["conversation_id"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "conversation_id")
        }
      }

      public var createdById: Int {
        get {
          return snapshot["created_by_id"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "created_by_id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var members: [Member]? {
        get {
          return (snapshot["members"] as? [Snapshot]).flatMap { $0.map { Member(snapshot: $0) } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.snapshot } }, forKey: "members")
        }
      }

      public struct Member: GraphQLSelectionSet {
        public static let possibleTypes = ["GroupMember"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: Int) {
          self.init(snapshot: ["__typename": "GroupMember", "id": id])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: Int {
          get {
            return snapshot["id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }
      }
    }
  }
}

public final class LeaveGroupConversationMutation: GraphQLMutation {
  public static let operationString =
    "mutation LeaveGroupConversation($group_conversation_id: Int!, $user_id: Int!) {\n  leaveGroupConversation(group_conversation_id: $group_conversation_id, user_id: $user_id) {\n    __typename\n    action_type\n    receiver_id\n    message {\n      __typename\n      message_id\n      user_id\n      conv_type\n      conversation_id\n      local_id\n      m_type\n      status\n      timestamp\n      text\n      url\n      url_title\n      url_thumb_url\n      url_domain\n      url_text\n    }\n    typing {\n      __typename\n      action\n      receiver_id\n      conversation_id\n      user_id\n      conversation_type\n    }\n    seen {\n      __typename\n      last_msg_seen_id\n      conversation_id\n    }\n    conversation {\n      __typename\n      conversation_id\n      timestamp\n      peer_user {\n        __typename\n        user_id\n        name\n      }\n    }\n  }\n}"

  public var group_conversation_id: Int
  public var user_id: Int

  public init(group_conversation_id: Int, user_id: Int) {
    self.group_conversation_id = group_conversation_id
    self.user_id = user_id
  }

  public var variables: GraphQLMap? {
    return ["group_conversation_id": group_conversation_id, "user_id": user_id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("leaveGroupConversation", arguments: ["group_conversation_id": GraphQLVariable("group_conversation_id"), "user_id": GraphQLVariable("user_id")], type: .object(LeaveGroupConversation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(leaveGroupConversation: LeaveGroupConversation? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "leaveGroupConversation": leaveGroupConversation.flatMap { $0.snapshot }])
    }

    public var leaveGroupConversation: LeaveGroupConversation? {
      get {
        return (snapshot["leaveGroupConversation"] as? Snapshot).flatMap { LeaveGroupConversation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "leaveGroupConversation")
      }
    }

    public struct LeaveGroupConversation: GraphQLSelectionSet {
      public static let possibleTypes = ["UserIdGenericOutput"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("action_type", type: .scalar(Int.self)),
        GraphQLField("receiver_id", type: .scalar(Int.self)),
        GraphQLField("message", type: .object(Message.selections)),
        GraphQLField("typing", type: .object(Typing.selections)),
        GraphQLField("seen", type: .object(Seen.selections)),
        GraphQLField("conversation", type: .object(Conversation.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(actionType: Int? = nil, receiverId: Int? = nil, message: Message? = nil, typing: Typing? = nil, seen: Seen? = nil, conversation: Conversation? = nil) {
        self.init(snapshot: ["__typename": "UserIdGenericOutput", "action_type": actionType, "receiver_id": receiverId, "message": message.flatMap { $0.snapshot }, "typing": typing.flatMap { $0.snapshot }, "seen": seen.flatMap { $0.snapshot }, "conversation": conversation.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      /// action_type Enum values : <br>
      /// ############### 0 : NEW_MESSAGE <br>
      /// ############### 1 : TYPING <br>
      /// ############### 2 : SEEN <br>
      /// ############### 3 : NEW_CONVERSATION <br>
      /// ############### 4 : JOINED_FOR_GROUP_CONVERSATION <br>
      public var actionType: Int? {
        get {
          return snapshot["action_type"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "action_type")
        }
      }

      /// The User ID that will receive this output through subscribeByUserID
      public var receiverId: Int? {
        get {
          return snapshot["receiver_id"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "receiver_id")
        }
      }

      /// Message body in case if action_type is 0
      public var message: Message? {
        get {
          return (snapshot["message"] as? Snapshot).flatMap { Message(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "message")
        }
      }

      /// Typing infromation in case if action_type is 1
      public var typing: Typing? {
        get {
          return (snapshot["typing"] as? Snapshot).flatMap { Typing(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "typing")
        }
      }

      /// Seen information in case of action_type = 2
      public var seen: Seen? {
        get {
          return (snapshot["seen"] as? Snapshot).flatMap { Seen(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "seen")
        }
      }

      /// New-Conversation in case of action_type = 3
      public var conversation: Conversation? {
        get {
          return (snapshot["conversation"] as? Snapshot).flatMap { Conversation(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "conversation")
        }
      }

      public struct Message: GraphQLSelectionSet {
        public static let possibleTypes = ["Message"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("user_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("conv_type", type: .scalar(Int.self)),
          GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("local_id", type: .scalar(Int.self)),
          GraphQLField("m_type", type: .nonNull(.scalar(Int.self))),
          GraphQLField("status", type: .scalar(Int.self)),
          GraphQLField("timestamp", type: .scalar(Int.self)),
          GraphQLField("text", type: .scalar(String.self)),
          GraphQLField("url", type: .scalar(String.self)),
          GraphQLField("url_title", type: .scalar(String.self)),
          GraphQLField("url_thumb_url", type: .scalar(String.self)),
          GraphQLField("url_domain", type: .scalar(String.self)),
          GraphQLField("url_text", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(messageId: Int, userId: Int, convType: Int? = nil, conversationId: Int, localId: Int? = nil, mType: Int, status: Int? = nil, timestamp: Int? = nil, text: String? = nil, url: String? = nil, urlTitle: String? = nil, urlThumbUrl: String? = nil, urlDomain: String? = nil, urlText: String? = nil) {
          self.init(snapshot: ["__typename": "Message", "message_id": messageId, "user_id": userId, "conv_type": convType, "conversation_id": conversationId, "local_id": localId, "m_type": mType, "status": status, "timestamp": timestamp, "text": text, "url": url, "url_title": urlTitle, "url_thumb_url": urlThumbUrl, "url_domain": urlDomain, "url_text": urlText])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Message ID in the server DB
        public var messageId: Int {
          get {
            return snapshot["message_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "message_id")
          }
        }

        /// User ID of the sender
        public var userId: Int {
          get {
            return snapshot["user_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "user_id")
          }
        }

        /// n/a
        public var convType: Int? {
          get {
            return snapshot["conv_type"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conv_type")
          }
        }

        /// n/a
        public var conversationId: Int {
          get {
            return snapshot["conversation_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }

        /// Message ID in the local database of the sender client i.e Mobile Application
        public var localId: Int? {
          get {
            return snapshot["local_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "local_id")
          }
        }

        /// Message type Enum values : <br>
        /// ############### 0 : TEXT <br>
        /// ############### 1 : VIDEO <br>
        /// ############### 2 : PICTURE <br>
        /// ############### 3 : DOCUMENT <br>
        /// ############### 4 : LINK <br>
        /// ############### 5 : LINK_YOUTUBE <br>
        /// ############### 6 : GIF <br>
        /// ############### 7 : GIF_TENOR <br>
        /// ############### 8 : AUDIO <br>
        /// ############### 9 : LOCATION <br>
        public var mType: Int {
          get {
            return snapshot["m_type"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "m_type")
          }
        }

        /// Message status Enum values : <br>
        /// ############### 0 : SENT <br>
        /// ############### 1 : SEEN<br>
        public var status: Int? {
          get {
            return snapshot["status"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "status")
          }
        }

        /// Unix timestamp
        public var timestamp: Int? {
          get {
            return snapshot["timestamp"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "timestamp")
          }
        }

        /// Message text
        public var text: String? {
          get {
            return snapshot["text"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "text")
          }
        }

        /// URL of the attachment, link, gif
        public var url: String? {
          get {
            return snapshot["url"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url")
          }
        }

        /// URL preview Title
        public var urlTitle: String? {
          get {
            return snapshot["url_title"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_title")
          }
        }

        /// URL preview thumb
        public var urlThumbUrl: String? {
          get {
            return snapshot["url_thumb_url"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_thumb_url")
          }
        }

        /// URL preview domain
        public var urlDomain: String? {
          get {
            return snapshot["url_domain"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_domain")
          }
        }

        /// URL preview text
        public var urlText: String? {
          get {
            return snapshot["url_text"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_text")
          }
        }
      }

      public struct Typing: GraphQLSelectionSet {
        public static let possibleTypes = ["TypingCommiter"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("action", type: .nonNull(.scalar(Int.self))),
          GraphQLField("receiver_id", type: .scalar(Int.self)),
          GraphQLField("conversation_id", type: .scalar(Int.self)),
          GraphQLField("user_id", type: .scalar(Int.self)),
          GraphQLField("conversation_type", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(action: Int, receiverId: Int? = nil, conversationId: Int? = nil, userId: Int? = nil, conversationType: String? = nil) {
          self.init(snapshot: ["__typename": "TypingCommiter", "action": action, "receiver_id": receiverId, "conversation_id": conversationId, "user_id": userId, "conversation_type": conversationType])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Action Enum values : <br>
        /// ############### 0 : START_TYPING <br>
        /// ############### 1 : STOP_TYPING
        public var action: Int {
          get {
            return snapshot["action"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "action")
          }
        }

        public var receiverId: Int? {
          get {
            return snapshot["receiver_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "receiver_id")
          }
        }

        /// Conversation ID that the typing happened within
        public var conversationId: Int? {
          get {
            return snapshot["conversation_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }

        /// User ID that committed the typing action
        public var userId: Int? {
          get {
            return snapshot["user_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "user_id")
          }
        }

        public var conversationType: String? {
          get {
            return snapshot["conversation_type"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_type")
          }
        }
      }

      public struct Seen: GraphQLSelectionSet {
        public static let possibleTypes = ["SeenOutput"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("last_msg_seen_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(lastMsgSeenId: Int, conversationId: Int) {
          self.init(snapshot: ["__typename": "SeenOutput", "last_msg_seen_id": lastMsgSeenId, "conversation_id": conversationId])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Message ID of the last seen message on the other client
        public var lastMsgSeenId: Int {
          get {
            return snapshot["last_msg_seen_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "last_msg_seen_id")
          }
        }

        /// The conversation which the other client marked as seen
        public var conversationId: Int {
          get {
            return snapshot["conversation_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }
      }

      public struct Conversation: GraphQLSelectionSet {
        public static let possibleTypes = ["ConversationsListItem_startConversation"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("timestamp", type: .nonNull(.scalar(Int.self))),
          GraphQLField("peer_user", type: .nonNull(.object(PeerUser.selections))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(conversationId: Int, timestamp: Int, peerUser: PeerUser) {
          self.init(snapshot: ["__typename": "ConversationsListItem_startConversation", "conversation_id": conversationId, "timestamp": timestamp, "peer_user": peerUser.snapshot])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Conversation ID
        public var conversationId: Int {
          get {
            return snapshot["conversation_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }

        /// Unix timestamp
        public var timestamp: Int {
          get {
            return snapshot["timestamp"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "timestamp")
          }
        }

        /// The other user that is participant in the conversation<br>
        /// ######## In case It's returend from startConversation or getUserConversation; the peer_user will not be the sender/requests
        public var peerUser: PeerUser {
          get {
            return PeerUser(snapshot: snapshot["peer_user"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "peer_user")
          }
        }

        public struct PeerUser: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("user_id", type: .nonNull(.scalar(Int.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(userId: Int, name: String) {
            self.init(snapshot: ["__typename": "User", "user_id": userId, "name": name])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var userId: Int {
            get {
              return snapshot["user_id"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "user_id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }
        }
      }
    }
  }
}

public final class RemoveUserGroupConversationMutation: GraphQLMutation {
  public static let operationString =
    "mutation RemoveUserGroupConversation($group_conversation_id: Int!, $user_id: Int!) {\n  removeUserGroupConversation(group_conversation_id: $group_conversation_id, user_id: $user_id) {\n    __typename\n    action_type\n    receiver_id\n    message {\n      __typename\n      message_id\n      user_id\n      conv_type\n      conversation_id\n      local_id\n      m_type\n      status\n      timestamp\n      text\n      url\n      url_title\n      url_thumb_url\n      url_domain\n      url_text\n    }\n    typing {\n      __typename\n      action\n      receiver_id\n      conversation_id\n      user_id\n      conversation_type\n    }\n    seen {\n      __typename\n      last_msg_seen_id\n      conversation_id\n    }\n    conversation {\n      __typename\n      conversation_id\n      timestamp\n      peer_user {\n        __typename\n        user_id\n        name\n      }\n    }\n  }\n}"

  public var group_conversation_id: Int
  public var user_id: Int

  public init(group_conversation_id: Int, user_id: Int) {
    self.group_conversation_id = group_conversation_id
    self.user_id = user_id
  }

  public var variables: GraphQLMap? {
    return ["group_conversation_id": group_conversation_id, "user_id": user_id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("removeUserGroupConversation", arguments: ["group_conversation_id": GraphQLVariable("group_conversation_id"), "user_id": GraphQLVariable("user_id")], type: .object(RemoveUserGroupConversation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(removeUserGroupConversation: RemoveUserGroupConversation? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "removeUserGroupConversation": removeUserGroupConversation.flatMap { $0.snapshot }])
    }

    public var removeUserGroupConversation: RemoveUserGroupConversation? {
      get {
        return (snapshot["removeUserGroupConversation"] as? Snapshot).flatMap { RemoveUserGroupConversation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "removeUserGroupConversation")
      }
    }

    public struct RemoveUserGroupConversation: GraphQLSelectionSet {
      public static let possibleTypes = ["UserIdGenericOutput"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("action_type", type: .scalar(Int.self)),
        GraphQLField("receiver_id", type: .scalar(Int.self)),
        GraphQLField("message", type: .object(Message.selections)),
        GraphQLField("typing", type: .object(Typing.selections)),
        GraphQLField("seen", type: .object(Seen.selections)),
        GraphQLField("conversation", type: .object(Conversation.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(actionType: Int? = nil, receiverId: Int? = nil, message: Message? = nil, typing: Typing? = nil, seen: Seen? = nil, conversation: Conversation? = nil) {
        self.init(snapshot: ["__typename": "UserIdGenericOutput", "action_type": actionType, "receiver_id": receiverId, "message": message.flatMap { $0.snapshot }, "typing": typing.flatMap { $0.snapshot }, "seen": seen.flatMap { $0.snapshot }, "conversation": conversation.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      /// action_type Enum values : <br>
      /// ############### 0 : NEW_MESSAGE <br>
      /// ############### 1 : TYPING <br>
      /// ############### 2 : SEEN <br>
      /// ############### 3 : NEW_CONVERSATION <br>
      /// ############### 4 : JOINED_FOR_GROUP_CONVERSATION <br>
      public var actionType: Int? {
        get {
          return snapshot["action_type"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "action_type")
        }
      }

      /// The User ID that will receive this output through subscribeByUserID
      public var receiverId: Int? {
        get {
          return snapshot["receiver_id"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "receiver_id")
        }
      }

      /// Message body in case if action_type is 0
      public var message: Message? {
        get {
          return (snapshot["message"] as? Snapshot).flatMap { Message(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "message")
        }
      }

      /// Typing infromation in case if action_type is 1
      public var typing: Typing? {
        get {
          return (snapshot["typing"] as? Snapshot).flatMap { Typing(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "typing")
        }
      }

      /// Seen information in case of action_type = 2
      public var seen: Seen? {
        get {
          return (snapshot["seen"] as? Snapshot).flatMap { Seen(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "seen")
        }
      }

      /// New-Conversation in case of action_type = 3
      public var conversation: Conversation? {
        get {
          return (snapshot["conversation"] as? Snapshot).flatMap { Conversation(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "conversation")
        }
      }

      public struct Message: GraphQLSelectionSet {
        public static let possibleTypes = ["Message"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("user_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("conv_type", type: .scalar(Int.self)),
          GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("local_id", type: .scalar(Int.self)),
          GraphQLField("m_type", type: .nonNull(.scalar(Int.self))),
          GraphQLField("status", type: .scalar(Int.self)),
          GraphQLField("timestamp", type: .scalar(Int.self)),
          GraphQLField("text", type: .scalar(String.self)),
          GraphQLField("url", type: .scalar(String.self)),
          GraphQLField("url_title", type: .scalar(String.self)),
          GraphQLField("url_thumb_url", type: .scalar(String.self)),
          GraphQLField("url_domain", type: .scalar(String.self)),
          GraphQLField("url_text", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(messageId: Int, userId: Int, convType: Int? = nil, conversationId: Int, localId: Int? = nil, mType: Int, status: Int? = nil, timestamp: Int? = nil, text: String? = nil, url: String? = nil, urlTitle: String? = nil, urlThumbUrl: String? = nil, urlDomain: String? = nil, urlText: String? = nil) {
          self.init(snapshot: ["__typename": "Message", "message_id": messageId, "user_id": userId, "conv_type": convType, "conversation_id": conversationId, "local_id": localId, "m_type": mType, "status": status, "timestamp": timestamp, "text": text, "url": url, "url_title": urlTitle, "url_thumb_url": urlThumbUrl, "url_domain": urlDomain, "url_text": urlText])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Message ID in the server DB
        public var messageId: Int {
          get {
            return snapshot["message_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "message_id")
          }
        }

        /// User ID of the sender
        public var userId: Int {
          get {
            return snapshot["user_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "user_id")
          }
        }

        /// n/a
        public var convType: Int? {
          get {
            return snapshot["conv_type"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conv_type")
          }
        }

        /// n/a
        public var conversationId: Int {
          get {
            return snapshot["conversation_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }

        /// Message ID in the local database of the sender client i.e Mobile Application
        public var localId: Int? {
          get {
            return snapshot["local_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "local_id")
          }
        }

        /// Message type Enum values : <br>
        /// ############### 0 : TEXT <br>
        /// ############### 1 : VIDEO <br>
        /// ############### 2 : PICTURE <br>
        /// ############### 3 : DOCUMENT <br>
        /// ############### 4 : LINK <br>
        /// ############### 5 : LINK_YOUTUBE <br>
        /// ############### 6 : GIF <br>
        /// ############### 7 : GIF_TENOR <br>
        /// ############### 8 : AUDIO <br>
        /// ############### 9 : LOCATION <br>
        public var mType: Int {
          get {
            return snapshot["m_type"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "m_type")
          }
        }

        /// Message status Enum values : <br>
        /// ############### 0 : SENT <br>
        /// ############### 1 : SEEN<br>
        public var status: Int? {
          get {
            return snapshot["status"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "status")
          }
        }

        /// Unix timestamp
        public var timestamp: Int? {
          get {
            return snapshot["timestamp"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "timestamp")
          }
        }

        /// Message text
        public var text: String? {
          get {
            return snapshot["text"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "text")
          }
        }

        /// URL of the attachment, link, gif
        public var url: String? {
          get {
            return snapshot["url"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url")
          }
        }

        /// URL preview Title
        public var urlTitle: String? {
          get {
            return snapshot["url_title"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_title")
          }
        }

        /// URL preview thumb
        public var urlThumbUrl: String? {
          get {
            return snapshot["url_thumb_url"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_thumb_url")
          }
        }

        /// URL preview domain
        public var urlDomain: String? {
          get {
            return snapshot["url_domain"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_domain")
          }
        }

        /// URL preview text
        public var urlText: String? {
          get {
            return snapshot["url_text"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_text")
          }
        }
      }

      public struct Typing: GraphQLSelectionSet {
        public static let possibleTypes = ["TypingCommiter"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("action", type: .nonNull(.scalar(Int.self))),
          GraphQLField("receiver_id", type: .scalar(Int.self)),
          GraphQLField("conversation_id", type: .scalar(Int.self)),
          GraphQLField("user_id", type: .scalar(Int.self)),
          GraphQLField("conversation_type", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(action: Int, receiverId: Int? = nil, conversationId: Int? = nil, userId: Int? = nil, conversationType: String? = nil) {
          self.init(snapshot: ["__typename": "TypingCommiter", "action": action, "receiver_id": receiverId, "conversation_id": conversationId, "user_id": userId, "conversation_type": conversationType])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Action Enum values : <br>
        /// ############### 0 : START_TYPING <br>
        /// ############### 1 : STOP_TYPING
        public var action: Int {
          get {
            return snapshot["action"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "action")
          }
        }

        public var receiverId: Int? {
          get {
            return snapshot["receiver_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "receiver_id")
          }
        }

        /// Conversation ID that the typing happened within
        public var conversationId: Int? {
          get {
            return snapshot["conversation_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }

        /// User ID that committed the typing action
        public var userId: Int? {
          get {
            return snapshot["user_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "user_id")
          }
        }

        public var conversationType: String? {
          get {
            return snapshot["conversation_type"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_type")
          }
        }
      }

      public struct Seen: GraphQLSelectionSet {
        public static let possibleTypes = ["SeenOutput"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("last_msg_seen_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(lastMsgSeenId: Int, conversationId: Int) {
          self.init(snapshot: ["__typename": "SeenOutput", "last_msg_seen_id": lastMsgSeenId, "conversation_id": conversationId])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Message ID of the last seen message on the other client
        public var lastMsgSeenId: Int {
          get {
            return snapshot["last_msg_seen_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "last_msg_seen_id")
          }
        }

        /// The conversation which the other client marked as seen
        public var conversationId: Int {
          get {
            return snapshot["conversation_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }
      }

      public struct Conversation: GraphQLSelectionSet {
        public static let possibleTypes = ["ConversationsListItem_startConversation"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("timestamp", type: .nonNull(.scalar(Int.self))),
          GraphQLField("peer_user", type: .nonNull(.object(PeerUser.selections))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(conversationId: Int, timestamp: Int, peerUser: PeerUser) {
          self.init(snapshot: ["__typename": "ConversationsListItem_startConversation", "conversation_id": conversationId, "timestamp": timestamp, "peer_user": peerUser.snapshot])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Conversation ID
        public var conversationId: Int {
          get {
            return snapshot["conversation_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }

        /// Unix timestamp
        public var timestamp: Int {
          get {
            return snapshot["timestamp"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "timestamp")
          }
        }

        /// The other user that is participant in the conversation<br>
        /// ######## In case It's returend from startConversation or getUserConversation; the peer_user will not be the sender/requests
        public var peerUser: PeerUser {
          get {
            return PeerUser(snapshot: snapshot["peer_user"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "peer_user")
          }
        }

        public struct PeerUser: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("user_id", type: .nonNull(.scalar(Int.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(userId: Int, name: String) {
            self.init(snapshot: ["__typename": "User", "user_id": userId, "name": name])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var userId: Int {
            get {
              return snapshot["user_id"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "user_id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }
        }
      }
    }
  }
}

public final class ToggleAdminGroupConversationMutation: GraphQLMutation {
  public static let operationString =
    "mutation ToggleAdminGroupConversation($group_conversation_id: Int!, $user_id: Int!) {\n  toggleAdminGroupConversation(group_conversation_id: $group_conversation_id, user_id: $user_id) {\n    __typename\n    action_type\n    receiver_id\n    message {\n      __typename\n      message_id\n      user_id\n      conv_type\n      conversation_id\n      local_id\n      m_type\n      status\n      timestamp\n      text\n      url\n      url_title\n      url_thumb_url\n      url_domain\n      url_text\n    }\n    typing {\n      __typename\n      action\n      receiver_id\n      conversation_id\n      user_id\n      conversation_type\n    }\n    seen {\n      __typename\n      last_msg_seen_id\n      conversation_id\n    }\n    conversation {\n      __typename\n      conversation_id\n      timestamp\n      peer_user {\n        __typename\n        user_id\n        name\n      }\n    }\n  }\n}"

  public var group_conversation_id: Int
  public var user_id: Int

  public init(group_conversation_id: Int, user_id: Int) {
    self.group_conversation_id = group_conversation_id
    self.user_id = user_id
  }

  public var variables: GraphQLMap? {
    return ["group_conversation_id": group_conversation_id, "user_id": user_id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("toggleAdminGroupConversation", arguments: ["group_conversation_id": GraphQLVariable("group_conversation_id"), "user_id": GraphQLVariable("user_id")], type: .object(ToggleAdminGroupConversation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(toggleAdminGroupConversation: ToggleAdminGroupConversation? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "toggleAdminGroupConversation": toggleAdminGroupConversation.flatMap { $0.snapshot }])
    }

    public var toggleAdminGroupConversation: ToggleAdminGroupConversation? {
      get {
        return (snapshot["toggleAdminGroupConversation"] as? Snapshot).flatMap { ToggleAdminGroupConversation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "toggleAdminGroupConversation")
      }
    }

    public struct ToggleAdminGroupConversation: GraphQLSelectionSet {
      public static let possibleTypes = ["UserIdGenericOutput"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("action_type", type: .scalar(Int.self)),
        GraphQLField("receiver_id", type: .scalar(Int.self)),
        GraphQLField("message", type: .object(Message.selections)),
        GraphQLField("typing", type: .object(Typing.selections)),
        GraphQLField("seen", type: .object(Seen.selections)),
        GraphQLField("conversation", type: .object(Conversation.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(actionType: Int? = nil, receiverId: Int? = nil, message: Message? = nil, typing: Typing? = nil, seen: Seen? = nil, conversation: Conversation? = nil) {
        self.init(snapshot: ["__typename": "UserIdGenericOutput", "action_type": actionType, "receiver_id": receiverId, "message": message.flatMap { $0.snapshot }, "typing": typing.flatMap { $0.snapshot }, "seen": seen.flatMap { $0.snapshot }, "conversation": conversation.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      /// action_type Enum values : <br>
      /// ############### 0 : NEW_MESSAGE <br>
      /// ############### 1 : TYPING <br>
      /// ############### 2 : SEEN <br>
      /// ############### 3 : NEW_CONVERSATION <br>
      /// ############### 4 : JOINED_FOR_GROUP_CONVERSATION <br>
      public var actionType: Int? {
        get {
          return snapshot["action_type"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "action_type")
        }
      }

      /// The User ID that will receive this output through subscribeByUserID
      public var receiverId: Int? {
        get {
          return snapshot["receiver_id"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "receiver_id")
        }
      }

      /// Message body in case if action_type is 0
      public var message: Message? {
        get {
          return (snapshot["message"] as? Snapshot).flatMap { Message(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "message")
        }
      }

      /// Typing infromation in case if action_type is 1
      public var typing: Typing? {
        get {
          return (snapshot["typing"] as? Snapshot).flatMap { Typing(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "typing")
        }
      }

      /// Seen information in case of action_type = 2
      public var seen: Seen? {
        get {
          return (snapshot["seen"] as? Snapshot).flatMap { Seen(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "seen")
        }
      }

      /// New-Conversation in case of action_type = 3
      public var conversation: Conversation? {
        get {
          return (snapshot["conversation"] as? Snapshot).flatMap { Conversation(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "conversation")
        }
      }

      public struct Message: GraphQLSelectionSet {
        public static let possibleTypes = ["Message"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("user_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("conv_type", type: .scalar(Int.self)),
          GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("local_id", type: .scalar(Int.self)),
          GraphQLField("m_type", type: .nonNull(.scalar(Int.self))),
          GraphQLField("status", type: .scalar(Int.self)),
          GraphQLField("timestamp", type: .scalar(Int.self)),
          GraphQLField("text", type: .scalar(String.self)),
          GraphQLField("url", type: .scalar(String.self)),
          GraphQLField("url_title", type: .scalar(String.self)),
          GraphQLField("url_thumb_url", type: .scalar(String.self)),
          GraphQLField("url_domain", type: .scalar(String.self)),
          GraphQLField("url_text", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(messageId: Int, userId: Int, convType: Int? = nil, conversationId: Int, localId: Int? = nil, mType: Int, status: Int? = nil, timestamp: Int? = nil, text: String? = nil, url: String? = nil, urlTitle: String? = nil, urlThumbUrl: String? = nil, urlDomain: String? = nil, urlText: String? = nil) {
          self.init(snapshot: ["__typename": "Message", "message_id": messageId, "user_id": userId, "conv_type": convType, "conversation_id": conversationId, "local_id": localId, "m_type": mType, "status": status, "timestamp": timestamp, "text": text, "url": url, "url_title": urlTitle, "url_thumb_url": urlThumbUrl, "url_domain": urlDomain, "url_text": urlText])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Message ID in the server DB
        public var messageId: Int {
          get {
            return snapshot["message_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "message_id")
          }
        }

        /// User ID of the sender
        public var userId: Int {
          get {
            return snapshot["user_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "user_id")
          }
        }

        /// n/a
        public var convType: Int? {
          get {
            return snapshot["conv_type"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conv_type")
          }
        }

        /// n/a
        public var conversationId: Int {
          get {
            return snapshot["conversation_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }

        /// Message ID in the local database of the sender client i.e Mobile Application
        public var localId: Int? {
          get {
            return snapshot["local_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "local_id")
          }
        }

        /// Message type Enum values : <br>
        /// ############### 0 : TEXT <br>
        /// ############### 1 : VIDEO <br>
        /// ############### 2 : PICTURE <br>
        /// ############### 3 : DOCUMENT <br>
        /// ############### 4 : LINK <br>
        /// ############### 5 : LINK_YOUTUBE <br>
        /// ############### 6 : GIF <br>
        /// ############### 7 : GIF_TENOR <br>
        /// ############### 8 : AUDIO <br>
        /// ############### 9 : LOCATION <br>
        public var mType: Int {
          get {
            return snapshot["m_type"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "m_type")
          }
        }

        /// Message status Enum values : <br>
        /// ############### 0 : SENT <br>
        /// ############### 1 : SEEN<br>
        public var status: Int? {
          get {
            return snapshot["status"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "status")
          }
        }

        /// Unix timestamp
        public var timestamp: Int? {
          get {
            return snapshot["timestamp"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "timestamp")
          }
        }

        /// Message text
        public var text: String? {
          get {
            return snapshot["text"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "text")
          }
        }

        /// URL of the attachment, link, gif
        public var url: String? {
          get {
            return snapshot["url"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url")
          }
        }

        /// URL preview Title
        public var urlTitle: String? {
          get {
            return snapshot["url_title"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_title")
          }
        }

        /// URL preview thumb
        public var urlThumbUrl: String? {
          get {
            return snapshot["url_thumb_url"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_thumb_url")
          }
        }

        /// URL preview domain
        public var urlDomain: String? {
          get {
            return snapshot["url_domain"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_domain")
          }
        }

        /// URL preview text
        public var urlText: String? {
          get {
            return snapshot["url_text"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_text")
          }
        }
      }

      public struct Typing: GraphQLSelectionSet {
        public static let possibleTypes = ["TypingCommiter"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("action", type: .nonNull(.scalar(Int.self))),
          GraphQLField("receiver_id", type: .scalar(Int.self)),
          GraphQLField("conversation_id", type: .scalar(Int.self)),
          GraphQLField("user_id", type: .scalar(Int.self)),
          GraphQLField("conversation_type", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(action: Int, receiverId: Int? = nil, conversationId: Int? = nil, userId: Int? = nil, conversationType: String? = nil) {
          self.init(snapshot: ["__typename": "TypingCommiter", "action": action, "receiver_id": receiverId, "conversation_id": conversationId, "user_id": userId, "conversation_type": conversationType])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Action Enum values : <br>
        /// ############### 0 : START_TYPING <br>
        /// ############### 1 : STOP_TYPING
        public var action: Int {
          get {
            return snapshot["action"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "action")
          }
        }

        public var receiverId: Int? {
          get {
            return snapshot["receiver_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "receiver_id")
          }
        }

        /// Conversation ID that the typing happened within
        public var conversationId: Int? {
          get {
            return snapshot["conversation_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }

        /// User ID that committed the typing action
        public var userId: Int? {
          get {
            return snapshot["user_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "user_id")
          }
        }

        public var conversationType: String? {
          get {
            return snapshot["conversation_type"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_type")
          }
        }
      }

      public struct Seen: GraphQLSelectionSet {
        public static let possibleTypes = ["SeenOutput"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("last_msg_seen_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(lastMsgSeenId: Int, conversationId: Int) {
          self.init(snapshot: ["__typename": "SeenOutput", "last_msg_seen_id": lastMsgSeenId, "conversation_id": conversationId])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Message ID of the last seen message on the other client
        public var lastMsgSeenId: Int {
          get {
            return snapshot["last_msg_seen_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "last_msg_seen_id")
          }
        }

        /// The conversation which the other client marked as seen
        public var conversationId: Int {
          get {
            return snapshot["conversation_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }
      }

      public struct Conversation: GraphQLSelectionSet {
        public static let possibleTypes = ["ConversationsListItem_startConversation"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("timestamp", type: .nonNull(.scalar(Int.self))),
          GraphQLField("peer_user", type: .nonNull(.object(PeerUser.selections))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(conversationId: Int, timestamp: Int, peerUser: PeerUser) {
          self.init(snapshot: ["__typename": "ConversationsListItem_startConversation", "conversation_id": conversationId, "timestamp": timestamp, "peer_user": peerUser.snapshot])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Conversation ID
        public var conversationId: Int {
          get {
            return snapshot["conversation_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }

        /// Unix timestamp
        public var timestamp: Int {
          get {
            return snapshot["timestamp"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "timestamp")
          }
        }

        /// The other user that is participant in the conversation<br>
        /// ######## In case It's returend from startConversation or getUserConversation; the peer_user will not be the sender/requests
        public var peerUser: PeerUser {
          get {
            return PeerUser(snapshot: snapshot["peer_user"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "peer_user")
          }
        }

        public struct PeerUser: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("user_id", type: .nonNull(.scalar(Int.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(userId: Int, name: String) {
            self.init(snapshot: ["__typename": "User", "user_id": userId, "name": name])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var userId: Int {
            get {
              return snapshot["user_id"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "user_id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }
        }
      }
    }
  }
}

public final class PublishTypingGroupConversationMutation: GraphQLMutation {
  public static let operationString =
    "mutation PublishTypingGroupConversation($group_conversation_id: Int!, $user_id: Int!) {\n  publishTypingGroupConversation(group_conversation_id: $group_conversation_id, user_id: $user_id) {\n    __typename\n    action_type\n    receiver_id\n    message {\n      __typename\n      message_id\n      user_id\n      conv_type\n      conversation_id\n      local_id\n      m_type\n      status\n      timestamp\n      text\n      url\n      url_title\n      url_thumb_url\n      url_domain\n      url_text\n    }\n    typing {\n      __typename\n      action\n      receiver_id\n      conversation_id\n      user_id\n      conversation_type\n    }\n    seen {\n      __typename\n      last_msg_seen_id\n      conversation_id\n    }\n    conversation {\n      __typename\n      conversation_id\n      timestamp\n      peer_user {\n        __typename\n        user_id\n        name\n      }\n    }\n  }\n}"

  public var group_conversation_id: Int
  public var user_id: Int

  public init(group_conversation_id: Int, user_id: Int) {
    self.group_conversation_id = group_conversation_id
    self.user_id = user_id
  }

  public var variables: GraphQLMap? {
    return ["group_conversation_id": group_conversation_id, "user_id": user_id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("publishTypingGroupConversation", arguments: ["group_conversation_id": GraphQLVariable("group_conversation_id"), "user_id": GraphQLVariable("user_id")], type: .object(PublishTypingGroupConversation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(publishTypingGroupConversation: PublishTypingGroupConversation? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "publishTypingGroupConversation": publishTypingGroupConversation.flatMap { $0.snapshot }])
    }

    public var publishTypingGroupConversation: PublishTypingGroupConversation? {
      get {
        return (snapshot["publishTypingGroupConversation"] as? Snapshot).flatMap { PublishTypingGroupConversation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "publishTypingGroupConversation")
      }
    }

    public struct PublishTypingGroupConversation: GraphQLSelectionSet {
      public static let possibleTypes = ["UserIdGenericOutput"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("action_type", type: .scalar(Int.self)),
        GraphQLField("receiver_id", type: .scalar(Int.self)),
        GraphQLField("message", type: .object(Message.selections)),
        GraphQLField("typing", type: .object(Typing.selections)),
        GraphQLField("seen", type: .object(Seen.selections)),
        GraphQLField("conversation", type: .object(Conversation.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(actionType: Int? = nil, receiverId: Int? = nil, message: Message? = nil, typing: Typing? = nil, seen: Seen? = nil, conversation: Conversation? = nil) {
        self.init(snapshot: ["__typename": "UserIdGenericOutput", "action_type": actionType, "receiver_id": receiverId, "message": message.flatMap { $0.snapshot }, "typing": typing.flatMap { $0.snapshot }, "seen": seen.flatMap { $0.snapshot }, "conversation": conversation.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      /// action_type Enum values : <br>
      /// ############### 0 : NEW_MESSAGE <br>
      /// ############### 1 : TYPING <br>
      /// ############### 2 : SEEN <br>
      /// ############### 3 : NEW_CONVERSATION <br>
      /// ############### 4 : JOINED_FOR_GROUP_CONVERSATION <br>
      public var actionType: Int? {
        get {
          return snapshot["action_type"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "action_type")
        }
      }

      /// The User ID that will receive this output through subscribeByUserID
      public var receiverId: Int? {
        get {
          return snapshot["receiver_id"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "receiver_id")
        }
      }

      /// Message body in case if action_type is 0
      public var message: Message? {
        get {
          return (snapshot["message"] as? Snapshot).flatMap { Message(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "message")
        }
      }

      /// Typing infromation in case if action_type is 1
      public var typing: Typing? {
        get {
          return (snapshot["typing"] as? Snapshot).flatMap { Typing(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "typing")
        }
      }

      /// Seen information in case of action_type = 2
      public var seen: Seen? {
        get {
          return (snapshot["seen"] as? Snapshot).flatMap { Seen(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "seen")
        }
      }

      /// New-Conversation in case of action_type = 3
      public var conversation: Conversation? {
        get {
          return (snapshot["conversation"] as? Snapshot).flatMap { Conversation(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "conversation")
        }
      }

      public struct Message: GraphQLSelectionSet {
        public static let possibleTypes = ["Message"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("user_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("conv_type", type: .scalar(Int.self)),
          GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("local_id", type: .scalar(Int.self)),
          GraphQLField("m_type", type: .nonNull(.scalar(Int.self))),
          GraphQLField("status", type: .scalar(Int.self)),
          GraphQLField("timestamp", type: .scalar(Int.self)),
          GraphQLField("text", type: .scalar(String.self)),
          GraphQLField("url", type: .scalar(String.self)),
          GraphQLField("url_title", type: .scalar(String.self)),
          GraphQLField("url_thumb_url", type: .scalar(String.self)),
          GraphQLField("url_domain", type: .scalar(String.self)),
          GraphQLField("url_text", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(messageId: Int, userId: Int, convType: Int? = nil, conversationId: Int, localId: Int? = nil, mType: Int, status: Int? = nil, timestamp: Int? = nil, text: String? = nil, url: String? = nil, urlTitle: String? = nil, urlThumbUrl: String? = nil, urlDomain: String? = nil, urlText: String? = nil) {
          self.init(snapshot: ["__typename": "Message", "message_id": messageId, "user_id": userId, "conv_type": convType, "conversation_id": conversationId, "local_id": localId, "m_type": mType, "status": status, "timestamp": timestamp, "text": text, "url": url, "url_title": urlTitle, "url_thumb_url": urlThumbUrl, "url_domain": urlDomain, "url_text": urlText])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Message ID in the server DB
        public var messageId: Int {
          get {
            return snapshot["message_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "message_id")
          }
        }

        /// User ID of the sender
        public var userId: Int {
          get {
            return snapshot["user_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "user_id")
          }
        }

        /// n/a
        public var convType: Int? {
          get {
            return snapshot["conv_type"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conv_type")
          }
        }

        /// n/a
        public var conversationId: Int {
          get {
            return snapshot["conversation_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }

        /// Message ID in the local database of the sender client i.e Mobile Application
        public var localId: Int? {
          get {
            return snapshot["local_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "local_id")
          }
        }

        /// Message type Enum values : <br>
        /// ############### 0 : TEXT <br>
        /// ############### 1 : VIDEO <br>
        /// ############### 2 : PICTURE <br>
        /// ############### 3 : DOCUMENT <br>
        /// ############### 4 : LINK <br>
        /// ############### 5 : LINK_YOUTUBE <br>
        /// ############### 6 : GIF <br>
        /// ############### 7 : GIF_TENOR <br>
        /// ############### 8 : AUDIO <br>
        /// ############### 9 : LOCATION <br>
        public var mType: Int {
          get {
            return snapshot["m_type"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "m_type")
          }
        }

        /// Message status Enum values : <br>
        /// ############### 0 : SENT <br>
        /// ############### 1 : SEEN<br>
        public var status: Int? {
          get {
            return snapshot["status"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "status")
          }
        }

        /// Unix timestamp
        public var timestamp: Int? {
          get {
            return snapshot["timestamp"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "timestamp")
          }
        }

        /// Message text
        public var text: String? {
          get {
            return snapshot["text"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "text")
          }
        }

        /// URL of the attachment, link, gif
        public var url: String? {
          get {
            return snapshot["url"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url")
          }
        }

        /// URL preview Title
        public var urlTitle: String? {
          get {
            return snapshot["url_title"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_title")
          }
        }

        /// URL preview thumb
        public var urlThumbUrl: String? {
          get {
            return snapshot["url_thumb_url"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_thumb_url")
          }
        }

        /// URL preview domain
        public var urlDomain: String? {
          get {
            return snapshot["url_domain"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_domain")
          }
        }

        /// URL preview text
        public var urlText: String? {
          get {
            return snapshot["url_text"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_text")
          }
        }
      }

      public struct Typing: GraphQLSelectionSet {
        public static let possibleTypes = ["TypingCommiter"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("action", type: .nonNull(.scalar(Int.self))),
          GraphQLField("receiver_id", type: .scalar(Int.self)),
          GraphQLField("conversation_id", type: .scalar(Int.self)),
          GraphQLField("user_id", type: .scalar(Int.self)),
          GraphQLField("conversation_type", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(action: Int, receiverId: Int? = nil, conversationId: Int? = nil, userId: Int? = nil, conversationType: String? = nil) {
          self.init(snapshot: ["__typename": "TypingCommiter", "action": action, "receiver_id": receiverId, "conversation_id": conversationId, "user_id": userId, "conversation_type": conversationType])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Action Enum values : <br>
        /// ############### 0 : START_TYPING <br>
        /// ############### 1 : STOP_TYPING
        public var action: Int {
          get {
            return snapshot["action"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "action")
          }
        }

        public var receiverId: Int? {
          get {
            return snapshot["receiver_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "receiver_id")
          }
        }

        /// Conversation ID that the typing happened within
        public var conversationId: Int? {
          get {
            return snapshot["conversation_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }

        /// User ID that committed the typing action
        public var userId: Int? {
          get {
            return snapshot["user_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "user_id")
          }
        }

        public var conversationType: String? {
          get {
            return snapshot["conversation_type"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_type")
          }
        }
      }

      public struct Seen: GraphQLSelectionSet {
        public static let possibleTypes = ["SeenOutput"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("last_msg_seen_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(lastMsgSeenId: Int, conversationId: Int) {
          self.init(snapshot: ["__typename": "SeenOutput", "last_msg_seen_id": lastMsgSeenId, "conversation_id": conversationId])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Message ID of the last seen message on the other client
        public var lastMsgSeenId: Int {
          get {
            return snapshot["last_msg_seen_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "last_msg_seen_id")
          }
        }

        /// The conversation which the other client marked as seen
        public var conversationId: Int {
          get {
            return snapshot["conversation_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }
      }

      public struct Conversation: GraphQLSelectionSet {
        public static let possibleTypes = ["ConversationsListItem_startConversation"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("timestamp", type: .nonNull(.scalar(Int.self))),
          GraphQLField("peer_user", type: .nonNull(.object(PeerUser.selections))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(conversationId: Int, timestamp: Int, peerUser: PeerUser) {
          self.init(snapshot: ["__typename": "ConversationsListItem_startConversation", "conversation_id": conversationId, "timestamp": timestamp, "peer_user": peerUser.snapshot])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Conversation ID
        public var conversationId: Int {
          get {
            return snapshot["conversation_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }

        /// Unix timestamp
        public var timestamp: Int {
          get {
            return snapshot["timestamp"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "timestamp")
          }
        }

        /// The other user that is participant in the conversation<br>
        /// ######## In case It's returend from startConversation or getUserConversation; the peer_user will not be the sender/requests
        public var peerUser: PeerUser {
          get {
            return PeerUser(snapshot: snapshot["peer_user"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "peer_user")
          }
        }

        public struct PeerUser: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("user_id", type: .nonNull(.scalar(Int.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(userId: Int, name: String) {
            self.init(snapshot: ["__typename": "User", "user_id": userId, "name": name])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var userId: Int {
            get {
              return snapshot["user_id"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "user_id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }
        }
      }
    }
  }
}

public final class AddUserGroupConversationMutation: GraphQLMutation {
  public static let operationString =
    "mutation AddUserGroupConversation($group_conversation_id: Int!, $receiver_id: Int!, $user_id: Int!) {\n  addUserGroupConversation(group_conversation_id: $group_conversation_id, receiver_id: $receiver_id, user_id: $user_id) {\n    __typename\n    action_type\n    receiver_id\n    message {\n      __typename\n      message_id\n      user_id\n      conv_type\n      conversation_id\n      local_id\n      m_type\n      status\n      timestamp\n      text\n      url\n      url_title\n      url_thumb_url\n      url_domain\n      url_text\n    }\n    typing {\n      __typename\n      action\n      receiver_id\n      conversation_id\n      user_id\n      conversation_type\n    }\n    seen {\n      __typename\n      last_msg_seen_id\n      conversation_id\n    }\n    conversation {\n      __typename\n      conversation_id\n      timestamp\n      peer_user {\n        __typename\n        user_id\n        name\n      }\n    }\n  }\n}"

  public var group_conversation_id: Int
  public var receiver_id: Int
  public var user_id: Int

  public init(group_conversation_id: Int, receiver_id: Int, user_id: Int) {
    self.group_conversation_id = group_conversation_id
    self.receiver_id = receiver_id
    self.user_id = user_id
  }

  public var variables: GraphQLMap? {
    return ["group_conversation_id": group_conversation_id, "receiver_id": receiver_id, "user_id": user_id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("addUserGroupConversation", arguments: ["group_conversation_id": GraphQLVariable("group_conversation_id"), "receiver_id": GraphQLVariable("receiver_id"), "user_id": GraphQLVariable("user_id")], type: .object(AddUserGroupConversation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(addUserGroupConversation: AddUserGroupConversation? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "addUserGroupConversation": addUserGroupConversation.flatMap { $0.snapshot }])
    }

    public var addUserGroupConversation: AddUserGroupConversation? {
      get {
        return (snapshot["addUserGroupConversation"] as? Snapshot).flatMap { AddUserGroupConversation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "addUserGroupConversation")
      }
    }

    public struct AddUserGroupConversation: GraphQLSelectionSet {
      public static let possibleTypes = ["UserIdGenericOutput"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("action_type", type: .scalar(Int.self)),
        GraphQLField("receiver_id", type: .scalar(Int.self)),
        GraphQLField("message", type: .object(Message.selections)),
        GraphQLField("typing", type: .object(Typing.selections)),
        GraphQLField("seen", type: .object(Seen.selections)),
        GraphQLField("conversation", type: .object(Conversation.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(actionType: Int? = nil, receiverId: Int? = nil, message: Message? = nil, typing: Typing? = nil, seen: Seen? = nil, conversation: Conversation? = nil) {
        self.init(snapshot: ["__typename": "UserIdGenericOutput", "action_type": actionType, "receiver_id": receiverId, "message": message.flatMap { $0.snapshot }, "typing": typing.flatMap { $0.snapshot }, "seen": seen.flatMap { $0.snapshot }, "conversation": conversation.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      /// action_type Enum values : <br>
      /// ############### 0 : NEW_MESSAGE <br>
      /// ############### 1 : TYPING <br>
      /// ############### 2 : SEEN <br>
      /// ############### 3 : NEW_CONVERSATION <br>
      /// ############### 4 : JOINED_FOR_GROUP_CONVERSATION <br>
      public var actionType: Int? {
        get {
          return snapshot["action_type"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "action_type")
        }
      }

      /// The User ID that will receive this output through subscribeByUserID
      public var receiverId: Int? {
        get {
          return snapshot["receiver_id"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "receiver_id")
        }
      }

      /// Message body in case if action_type is 0
      public var message: Message? {
        get {
          return (snapshot["message"] as? Snapshot).flatMap { Message(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "message")
        }
      }

      /// Typing infromation in case if action_type is 1
      public var typing: Typing? {
        get {
          return (snapshot["typing"] as? Snapshot).flatMap { Typing(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "typing")
        }
      }

      /// Seen information in case of action_type = 2
      public var seen: Seen? {
        get {
          return (snapshot["seen"] as? Snapshot).flatMap { Seen(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "seen")
        }
      }

      /// New-Conversation in case of action_type = 3
      public var conversation: Conversation? {
        get {
          return (snapshot["conversation"] as? Snapshot).flatMap { Conversation(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "conversation")
        }
      }

      public struct Message: GraphQLSelectionSet {
        public static let possibleTypes = ["Message"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("user_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("conv_type", type: .scalar(Int.self)),
          GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("local_id", type: .scalar(Int.self)),
          GraphQLField("m_type", type: .nonNull(.scalar(Int.self))),
          GraphQLField("status", type: .scalar(Int.self)),
          GraphQLField("timestamp", type: .scalar(Int.self)),
          GraphQLField("text", type: .scalar(String.self)),
          GraphQLField("url", type: .scalar(String.self)),
          GraphQLField("url_title", type: .scalar(String.self)),
          GraphQLField("url_thumb_url", type: .scalar(String.self)),
          GraphQLField("url_domain", type: .scalar(String.self)),
          GraphQLField("url_text", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(messageId: Int, userId: Int, convType: Int? = nil, conversationId: Int, localId: Int? = nil, mType: Int, status: Int? = nil, timestamp: Int? = nil, text: String? = nil, url: String? = nil, urlTitle: String? = nil, urlThumbUrl: String? = nil, urlDomain: String? = nil, urlText: String? = nil) {
          self.init(snapshot: ["__typename": "Message", "message_id": messageId, "user_id": userId, "conv_type": convType, "conversation_id": conversationId, "local_id": localId, "m_type": mType, "status": status, "timestamp": timestamp, "text": text, "url": url, "url_title": urlTitle, "url_thumb_url": urlThumbUrl, "url_domain": urlDomain, "url_text": urlText])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Message ID in the server DB
        public var messageId: Int {
          get {
            return snapshot["message_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "message_id")
          }
        }

        /// User ID of the sender
        public var userId: Int {
          get {
            return snapshot["user_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "user_id")
          }
        }

        /// n/a
        public var convType: Int? {
          get {
            return snapshot["conv_type"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conv_type")
          }
        }

        /// n/a
        public var conversationId: Int {
          get {
            return snapshot["conversation_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }

        /// Message ID in the local database of the sender client i.e Mobile Application
        public var localId: Int? {
          get {
            return snapshot["local_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "local_id")
          }
        }

        /// Message type Enum values : <br>
        /// ############### 0 : TEXT <br>
        /// ############### 1 : VIDEO <br>
        /// ############### 2 : PICTURE <br>
        /// ############### 3 : DOCUMENT <br>
        /// ############### 4 : LINK <br>
        /// ############### 5 : LINK_YOUTUBE <br>
        /// ############### 6 : GIF <br>
        /// ############### 7 : GIF_TENOR <br>
        /// ############### 8 : AUDIO <br>
        /// ############### 9 : LOCATION <br>
        public var mType: Int {
          get {
            return snapshot["m_type"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "m_type")
          }
        }

        /// Message status Enum values : <br>
        /// ############### 0 : SENT <br>
        /// ############### 1 : SEEN<br>
        public var status: Int? {
          get {
            return snapshot["status"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "status")
          }
        }

        /// Unix timestamp
        public var timestamp: Int? {
          get {
            return snapshot["timestamp"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "timestamp")
          }
        }

        /// Message text
        public var text: String? {
          get {
            return snapshot["text"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "text")
          }
        }

        /// URL of the attachment, link, gif
        public var url: String? {
          get {
            return snapshot["url"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url")
          }
        }

        /// URL preview Title
        public var urlTitle: String? {
          get {
            return snapshot["url_title"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_title")
          }
        }

        /// URL preview thumb
        public var urlThumbUrl: String? {
          get {
            return snapshot["url_thumb_url"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_thumb_url")
          }
        }

        /// URL preview domain
        public var urlDomain: String? {
          get {
            return snapshot["url_domain"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_domain")
          }
        }

        /// URL preview text
        public var urlText: String? {
          get {
            return snapshot["url_text"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_text")
          }
        }
      }

      public struct Typing: GraphQLSelectionSet {
        public static let possibleTypes = ["TypingCommiter"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("action", type: .nonNull(.scalar(Int.self))),
          GraphQLField("receiver_id", type: .scalar(Int.self)),
          GraphQLField("conversation_id", type: .scalar(Int.self)),
          GraphQLField("user_id", type: .scalar(Int.self)),
          GraphQLField("conversation_type", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(action: Int, receiverId: Int? = nil, conversationId: Int? = nil, userId: Int? = nil, conversationType: String? = nil) {
          self.init(snapshot: ["__typename": "TypingCommiter", "action": action, "receiver_id": receiverId, "conversation_id": conversationId, "user_id": userId, "conversation_type": conversationType])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Action Enum values : <br>
        /// ############### 0 : START_TYPING <br>
        /// ############### 1 : STOP_TYPING
        public var action: Int {
          get {
            return snapshot["action"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "action")
          }
        }

        public var receiverId: Int? {
          get {
            return snapshot["receiver_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "receiver_id")
          }
        }

        /// Conversation ID that the typing happened within
        public var conversationId: Int? {
          get {
            return snapshot["conversation_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }

        /// User ID that committed the typing action
        public var userId: Int? {
          get {
            return snapshot["user_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "user_id")
          }
        }

        public var conversationType: String? {
          get {
            return snapshot["conversation_type"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_type")
          }
        }
      }

      public struct Seen: GraphQLSelectionSet {
        public static let possibleTypes = ["SeenOutput"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("last_msg_seen_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(lastMsgSeenId: Int, conversationId: Int) {
          self.init(snapshot: ["__typename": "SeenOutput", "last_msg_seen_id": lastMsgSeenId, "conversation_id": conversationId])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Message ID of the last seen message on the other client
        public var lastMsgSeenId: Int {
          get {
            return snapshot["last_msg_seen_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "last_msg_seen_id")
          }
        }

        /// The conversation which the other client marked as seen
        public var conversationId: Int {
          get {
            return snapshot["conversation_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }
      }

      public struct Conversation: GraphQLSelectionSet {
        public static let possibleTypes = ["ConversationsListItem_startConversation"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("timestamp", type: .nonNull(.scalar(Int.self))),
          GraphQLField("peer_user", type: .nonNull(.object(PeerUser.selections))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(conversationId: Int, timestamp: Int, peerUser: PeerUser) {
          self.init(snapshot: ["__typename": "ConversationsListItem_startConversation", "conversation_id": conversationId, "timestamp": timestamp, "peer_user": peerUser.snapshot])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Conversation ID
        public var conversationId: Int {
          get {
            return snapshot["conversation_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }

        /// Unix timestamp
        public var timestamp: Int {
          get {
            return snapshot["timestamp"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "timestamp")
          }
        }

        /// The other user that is participant in the conversation<br>
        /// ######## In case It's returend from startConversation or getUserConversation; the peer_user will not be the sender/requests
        public var peerUser: PeerUser {
          get {
            return PeerUser(snapshot: snapshot["peer_user"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "peer_user")
          }
        }

        public struct PeerUser: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("user_id", type: .nonNull(.scalar(Int.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(userId: Int, name: String) {
            self.init(snapshot: ["__typename": "User", "user_id": userId, "name": name])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var userId: Int {
            get {
              return snapshot["user_id"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "user_id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }
        }
      }
    }
  }
}

public final class GetConversationMessagesQuery: GraphQLQuery {
  public static let operationString =
    "query GetConversationMessages($user_id: Int!, $conversation_id: Int!, $fetch_count: Int!, $start_from: Int) {\n  getConversationMessages(user_id: $user_id, conversation_id: $conversation_id, fetch_count: $fetch_count, start_from: $start_from) {\n    __typename\n    message_id\n    user_id\n    conv_type\n    conversation_id\n    local_id\n    m_type\n    status\n    timestamp\n    text\n    url\n    url_title\n    url_thumb_url\n    url_domain\n    url_text\n  }\n}"

  public var user_id: Int
  public var conversation_id: Int
  public var fetch_count: Int
  public var start_from: Int?

  public init(user_id: Int, conversation_id: Int, fetch_count: Int, start_from: Int? = nil) {
    self.user_id = user_id
    self.conversation_id = conversation_id
    self.fetch_count = fetch_count
    self.start_from = start_from
  }

  public var variables: GraphQLMap? {
    return ["user_id": user_id, "conversation_id": conversation_id, "fetch_count": fetch_count, "start_from": start_from]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getConversationMessages", arguments: ["user_id": GraphQLVariable("user_id"), "conversation_id": GraphQLVariable("conversation_id"), "fetch_count": GraphQLVariable("fetch_count"), "start_from": GraphQLVariable("start_from")], type: .list(.object(GetConversationMessage.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getConversationMessages: [GetConversationMessage?]? = nil) {
      self.init(snapshot: ["__typename": "Query", "getConversationMessages": getConversationMessages.flatMap { $0.map { $0.flatMap { $0.snapshot } } }])
    }

    /// Get messages for the desired conversation in a descencing order
    public var getConversationMessages: [GetConversationMessage?]? {
      get {
        return (snapshot["getConversationMessages"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { GetConversationMessage(snapshot: $0) } } }
      }
      set {
        snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "getConversationMessages")
      }
    }

    public struct GetConversationMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["Message"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("message_id", type: .nonNull(.scalar(Int.self))),
        GraphQLField("user_id", type: .nonNull(.scalar(Int.self))),
        GraphQLField("conv_type", type: .scalar(Int.self)),
        GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
        GraphQLField("local_id", type: .scalar(Int.self)),
        GraphQLField("m_type", type: .nonNull(.scalar(Int.self))),
        GraphQLField("status", type: .scalar(Int.self)),
        GraphQLField("timestamp", type: .scalar(Int.self)),
        GraphQLField("text", type: .scalar(String.self)),
        GraphQLField("url", type: .scalar(String.self)),
        GraphQLField("url_title", type: .scalar(String.self)),
        GraphQLField("url_thumb_url", type: .scalar(String.self)),
        GraphQLField("url_domain", type: .scalar(String.self)),
        GraphQLField("url_text", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(messageId: Int, userId: Int, convType: Int? = nil, conversationId: Int, localId: Int? = nil, mType: Int, status: Int? = nil, timestamp: Int? = nil, text: String? = nil, url: String? = nil, urlTitle: String? = nil, urlThumbUrl: String? = nil, urlDomain: String? = nil, urlText: String? = nil) {
        self.init(snapshot: ["__typename": "Message", "message_id": messageId, "user_id": userId, "conv_type": convType, "conversation_id": conversationId, "local_id": localId, "m_type": mType, "status": status, "timestamp": timestamp, "text": text, "url": url, "url_title": urlTitle, "url_thumb_url": urlThumbUrl, "url_domain": urlDomain, "url_text": urlText])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      /// Message ID in the server DB
      public var messageId: Int {
        get {
          return snapshot["message_id"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "message_id")
        }
      }

      /// User ID of the sender
      public var userId: Int {
        get {
          return snapshot["user_id"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "user_id")
        }
      }

      /// n/a
      public var convType: Int? {
        get {
          return snapshot["conv_type"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "conv_type")
        }
      }

      /// n/a
      public var conversationId: Int {
        get {
          return snapshot["conversation_id"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "conversation_id")
        }
      }

      /// Message ID in the local database of the sender client i.e Mobile Application
      public var localId: Int? {
        get {
          return snapshot["local_id"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "local_id")
        }
      }

      /// Message type Enum values : <br>
      /// ############### 0 : TEXT <br>
      /// ############### 1 : VIDEO <br>
      /// ############### 2 : PICTURE <br>
      /// ############### 3 : DOCUMENT <br>
      /// ############### 4 : LINK <br>
      /// ############### 5 : LINK_YOUTUBE <br>
      /// ############### 6 : GIF <br>
      /// ############### 7 : GIF_TENOR <br>
      /// ############### 8 : AUDIO <br>
      /// ############### 9 : LOCATION <br>
      public var mType: Int {
        get {
          return snapshot["m_type"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "m_type")
        }
      }

      /// Message status Enum values : <br>
      /// ############### 0 : SENT <br>
      /// ############### 1 : SEEN<br>
      public var status: Int? {
        get {
          return snapshot["status"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "status")
        }
      }

      /// Unix timestamp
      public var timestamp: Int? {
        get {
          return snapshot["timestamp"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "timestamp")
        }
      }

      /// Message text
      public var text: String? {
        get {
          return snapshot["text"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "text")
        }
      }

      /// URL of the attachment, link, gif
      public var url: String? {
        get {
          return snapshot["url"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "url")
        }
      }

      /// URL preview Title
      public var urlTitle: String? {
        get {
          return snapshot["url_title"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "url_title")
        }
      }

      /// URL preview thumb
      public var urlThumbUrl: String? {
        get {
          return snapshot["url_thumb_url"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "url_thumb_url")
        }
      }

      /// URL preview domain
      public var urlDomain: String? {
        get {
          return snapshot["url_domain"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "url_domain")
        }
      }

      /// URL preview text
      public var urlText: String? {
        get {
          return snapshot["url_text"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "url_text")
        }
      }
    }
  }
}

public final class GetUserMessagesQuery: GraphQLQuery {
  public static let operationString =
    "query GetUserMessages($user_id: Int!, $fetch_count: Int!, $start_from: Int) {\n  getUserMessages(user_id: $user_id, fetch_count: $fetch_count, start_from: $start_from) {\n    __typename\n    message_id\n    user_id\n    conv_type\n    conversation_id\n    local_id\n    m_type\n    status\n    timestamp\n    text\n    url\n    url_title\n    url_thumb_url\n    url_domain\n    url_text\n  }\n}"

  public var user_id: Int
  public var fetch_count: Int
  public var start_from: Int?

  public init(user_id: Int, fetch_count: Int, start_from: Int? = nil) {
    self.user_id = user_id
    self.fetch_count = fetch_count
    self.start_from = start_from
  }

  public var variables: GraphQLMap? {
    return ["user_id": user_id, "fetch_count": fetch_count, "start_from": start_from]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getUserMessages", arguments: ["user_id": GraphQLVariable("user_id"), "fetch_count": GraphQLVariable("fetch_count"), "start_from": GraphQLVariable("start_from")], type: .list(.object(GetUserMessage.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getUserMessages: [GetUserMessage?]? = nil) {
      self.init(snapshot: ["__typename": "Query", "getUserMessages": getUserMessages.flatMap { $0.map { $0.flatMap { $0.snapshot } } }])
    }

    /// Get messages by User ID <br>
    /// ############### this query will return all the messages for the user without grouping them by conversation, the will be orderd by ID.
    public var getUserMessages: [GetUserMessage?]? {
      get {
        return (snapshot["getUserMessages"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { GetUserMessage(snapshot: $0) } } }
      }
      set {
        snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "getUserMessages")
      }
    }

    public struct GetUserMessage: GraphQLSelectionSet {
      public static let possibleTypes = ["Message"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("message_id", type: .nonNull(.scalar(Int.self))),
        GraphQLField("user_id", type: .nonNull(.scalar(Int.self))),
        GraphQLField("conv_type", type: .scalar(Int.self)),
        GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
        GraphQLField("local_id", type: .scalar(Int.self)),
        GraphQLField("m_type", type: .nonNull(.scalar(Int.self))),
        GraphQLField("status", type: .scalar(Int.self)),
        GraphQLField("timestamp", type: .scalar(Int.self)),
        GraphQLField("text", type: .scalar(String.self)),
        GraphQLField("url", type: .scalar(String.self)),
        GraphQLField("url_title", type: .scalar(String.self)),
        GraphQLField("url_thumb_url", type: .scalar(String.self)),
        GraphQLField("url_domain", type: .scalar(String.self)),
        GraphQLField("url_text", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(messageId: Int, userId: Int, convType: Int? = nil, conversationId: Int, localId: Int? = nil, mType: Int, status: Int? = nil, timestamp: Int? = nil, text: String? = nil, url: String? = nil, urlTitle: String? = nil, urlThumbUrl: String? = nil, urlDomain: String? = nil, urlText: String? = nil) {
        self.init(snapshot: ["__typename": "Message", "message_id": messageId, "user_id": userId, "conv_type": convType, "conversation_id": conversationId, "local_id": localId, "m_type": mType, "status": status, "timestamp": timestamp, "text": text, "url": url, "url_title": urlTitle, "url_thumb_url": urlThumbUrl, "url_domain": urlDomain, "url_text": urlText])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      /// Message ID in the server DB
      public var messageId: Int {
        get {
          return snapshot["message_id"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "message_id")
        }
      }

      /// User ID of the sender
      public var userId: Int {
        get {
          return snapshot["user_id"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "user_id")
        }
      }

      /// n/a
      public var convType: Int? {
        get {
          return snapshot["conv_type"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "conv_type")
        }
      }

      /// n/a
      public var conversationId: Int {
        get {
          return snapshot["conversation_id"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "conversation_id")
        }
      }

      /// Message ID in the local database of the sender client i.e Mobile Application
      public var localId: Int? {
        get {
          return snapshot["local_id"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "local_id")
        }
      }

      /// Message type Enum values : <br>
      /// ############### 0 : TEXT <br>
      /// ############### 1 : VIDEO <br>
      /// ############### 2 : PICTURE <br>
      /// ############### 3 : DOCUMENT <br>
      /// ############### 4 : LINK <br>
      /// ############### 5 : LINK_YOUTUBE <br>
      /// ############### 6 : GIF <br>
      /// ############### 7 : GIF_TENOR <br>
      /// ############### 8 : AUDIO <br>
      /// ############### 9 : LOCATION <br>
      public var mType: Int {
        get {
          return snapshot["m_type"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "m_type")
        }
      }

      /// Message status Enum values : <br>
      /// ############### 0 : SENT <br>
      /// ############### 1 : SEEN<br>
      public var status: Int? {
        get {
          return snapshot["status"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "status")
        }
      }

      /// Unix timestamp
      public var timestamp: Int? {
        get {
          return snapshot["timestamp"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "timestamp")
        }
      }

      /// Message text
      public var text: String? {
        get {
          return snapshot["text"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "text")
        }
      }

      /// URL of the attachment, link, gif
      public var url: String? {
        get {
          return snapshot["url"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "url")
        }
      }

      /// URL preview Title
      public var urlTitle: String? {
        get {
          return snapshot["url_title"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "url_title")
        }
      }

      /// URL preview thumb
      public var urlThumbUrl: String? {
        get {
          return snapshot["url_thumb_url"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "url_thumb_url")
        }
      }

      /// URL preview domain
      public var urlDomain: String? {
        get {
          return snapshot["url_domain"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "url_domain")
        }
      }

      /// URL preview text
      public var urlText: String? {
        get {
          return snapshot["url_text"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "url_text")
        }
      }
    }
  }
}

public final class GetUserConversationsQuery: GraphQLQuery {
  public static let operationString =
    "query GetUserConversations($user_id: Int, $fetch_count: Int!, $start_from: Int) {\n  getUserConversations(user_id: $user_id, fetch_count: $fetch_count, start_from: $start_from) {\n    __typename\n    conversation_id\n    timestamp\n    peer_user {\n      __typename\n      user_id\n      name\n    }\n  }\n}"

  public var user_id: Int?
  public var fetch_count: Int
  public var start_from: Int?

  public init(user_id: Int? = nil, fetch_count: Int, start_from: Int? = nil) {
    self.user_id = user_id
    self.fetch_count = fetch_count
    self.start_from = start_from
  }

  public var variables: GraphQLMap? {
    return ["user_id": user_id, "fetch_count": fetch_count, "start_from": start_from]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getUserConversations", arguments: ["user_id": GraphQLVariable("user_id"), "fetch_count": GraphQLVariable("fetch_count"), "start_from": GraphQLVariable("start_from")], type: .list(.object(GetUserConversation.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getUserConversations: [GetUserConversation?]? = nil) {
      self.init(snapshot: ["__typename": "Query", "getUserConversations": getUserConversations.flatMap { $0.map { $0.flatMap { $0.snapshot } } }])
    }

    /// Returns a list of all the conversations that the user is a participant in
    public var getUserConversations: [GetUserConversation?]? {
      get {
        return (snapshot["getUserConversations"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { GetUserConversation(snapshot: $0) } } }
      }
      set {
        snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "getUserConversations")
      }
    }

    public struct GetUserConversation: GraphQLSelectionSet {
      public static let possibleTypes = ["ConversationsListItem"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
        GraphQLField("timestamp", type: .nonNull(.scalar(Int.self))),
        GraphQLField("peer_user", type: .nonNull(.object(PeerUser.selections))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(conversationId: Int, timestamp: Int, peerUser: PeerUser) {
        self.init(snapshot: ["__typename": "ConversationsListItem", "conversation_id": conversationId, "timestamp": timestamp, "peer_user": peerUser.snapshot])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      /// Conversation ID
      public var conversationId: Int {
        get {
          return snapshot["conversation_id"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "conversation_id")
        }
      }

      /// Unix timestamp
      public var timestamp: Int {
        get {
          return snapshot["timestamp"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "timestamp")
        }
      }

      /// The other user that is participant in the conversation<br>
      /// ######## In case It's returend from startConversation or getUserConversation; the peer_user will not be the sender/requests
      public var peerUser: PeerUser {
        get {
          return PeerUser(snapshot: snapshot["peer_user"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "peer_user")
        }
      }

      public struct PeerUser: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("user_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(userId: Int, name: String) {
          self.init(snapshot: ["__typename": "User", "user_id": userId, "name": name])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var userId: Int {
          get {
            return snapshot["user_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "user_id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }
      }
    }
  }
}

public final class GetUserConversationsDepQuery: GraphQLQuery {
  public static let operationString =
    "query GetUserConversationsDep($user_id: Int, $fetch_count: Int!, $start_from: Int) {\n  getUserConversations_dep(user_id: $user_id, fetch_count: $fetch_count, start_from: $start_from) {\n    __typename\n    conversation_id\n    sender_id\n    receiver_id\n  }\n}"

  public var user_id: Int?
  public var fetch_count: Int
  public var start_from: Int?

  public init(user_id: Int? = nil, fetch_count: Int, start_from: Int? = nil) {
    self.user_id = user_id
    self.fetch_count = fetch_count
    self.start_from = start_from
  }

  public var variables: GraphQLMap? {
    return ["user_id": user_id, "fetch_count": fetch_count, "start_from": start_from]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getUserConversations_dep", arguments: ["user_id": GraphQLVariable("user_id"), "fetch_count": GraphQLVariable("fetch_count"), "start_from": GraphQLVariable("start_from")], type: .list(.object(GetUserConversationsDep.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getUserConversationsDep: [GetUserConversationsDep?]? = nil) {
      self.init(snapshot: ["__typename": "Query", "getUserConversations_dep": getUserConversationsDep.flatMap { $0.map { $0.flatMap { $0.snapshot } } }])
    }

    /// (Deprecated)  Returns a list of all the conversations that the user is a participant in
    public var getUserConversationsDep: [GetUserConversationsDep?]? {
      get {
        return (snapshot["getUserConversations_dep"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { GetUserConversationsDep(snapshot: $0) } } }
      }
      set {
        snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "getUserConversations_dep")
      }
    }

    public struct GetUserConversationsDep: GraphQLSelectionSet {
      public static let possibleTypes = ["Conversation"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("conversation_id", type: .scalar(Int.self)),
        GraphQLField("sender_id", type: .scalar(Int.self)),
        GraphQLField("receiver_id", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(conversationId: Int? = nil, senderId: Int? = nil, receiverId: Int? = nil) {
        self.init(snapshot: ["__typename": "Conversation", "conversation_id": conversationId, "sender_id": senderId, "receiver_id": receiverId])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      /// n/a
      public var conversationId: Int? {
        get {
          return snapshot["conversation_id"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "conversation_id")
        }
      }

      /// User ID of the craetor
      public var senderId: Int? {
        get {
          return snapshot["sender_id"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "sender_id")
        }
      }

      /// User of the targeted user
      public var receiverId: Int? {
        get {
          return snapshot["receiver_id"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "receiver_id")
        }
      }
    }
  }
}

public final class GetUserConversationsBassamTestQuery: GraphQLQuery {
  public static let operationString =
    "query GetUserConversationsBassamTest($user_id: Int, $fetch_count: Int!, $start_from: Int) {\n  getUserConversations_BassamTest(user_id: $user_id, fetch_count: $fetch_count, start_from: $start_from) {\n    __typename\n    conversation_id\n    timestamp\n    peer_user {\n      __typename\n      user_id\n      name\n    }\n  }\n}"

  public var user_id: Int?
  public var fetch_count: Int
  public var start_from: Int?

  public init(user_id: Int? = nil, fetch_count: Int, start_from: Int? = nil) {
    self.user_id = user_id
    self.fetch_count = fetch_count
    self.start_from = start_from
  }

  public var variables: GraphQLMap? {
    return ["user_id": user_id, "fetch_count": fetch_count, "start_from": start_from]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getUserConversations_BassamTest", arguments: ["user_id": GraphQLVariable("user_id"), "fetch_count": GraphQLVariable("fetch_count"), "start_from": GraphQLVariable("start_from")], type: .list(.object(GetUserConversationsBassamTest.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getUserConversationsBassamTest: [GetUserConversationsBassamTest?]? = nil) {
      self.init(snapshot: ["__typename": "Query", "getUserConversations_BassamTest": getUserConversationsBassamTest.flatMap { $0.map { $0.flatMap { $0.snapshot } } }])
    }

    /// (This is for bassam to test)  Returns a list of all the conversations that the user is a participant in
    public var getUserConversationsBassamTest: [GetUserConversationsBassamTest?]? {
      get {
        return (snapshot["getUserConversations_BassamTest"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { GetUserConversationsBassamTest(snapshot: $0) } } }
      }
      set {
        snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "getUserConversations_BassamTest")
      }
    }

    public struct GetUserConversationsBassamTest: GraphQLSelectionSet {
      public static let possibleTypes = ["ConversationsListItem_BassamTest"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
        GraphQLField("timestamp", type: .nonNull(.scalar(Int.self))),
        GraphQLField("peer_user", type: .nonNull(.object(PeerUser.selections))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(conversationId: Int, timestamp: Int, peerUser: PeerUser) {
        self.init(snapshot: ["__typename": "ConversationsListItem_BassamTest", "conversation_id": conversationId, "timestamp": timestamp, "peer_user": peerUser.snapshot])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      /// Conversation ID
      public var conversationId: Int {
        get {
          return snapshot["conversation_id"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "conversation_id")
        }
      }

      /// # # Unix timestamp
      public var timestamp: Int {
        get {
          return snapshot["timestamp"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "timestamp")
        }
      }

      /// # The other user that is participant in the conversation<br>
      /// ######## In case It's returend from startConversation or getUserConversation; the peer_user will not be the sender/requests
      public var peerUser: PeerUser {
        get {
          return PeerUser(snapshot: snapshot["peer_user"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "peer_user")
        }
      }

      public struct PeerUser: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("user_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(userId: Int, name: String) {
          self.init(snapshot: ["__typename": "User", "user_id": userId, "name": name])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var userId: Int {
          get {
            return snapshot["user_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "user_id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }
      }
    }
  }
}

public final class GetUserOnlineStatusQuery: GraphQLQuery {
  public static let operationString =
    "query GetUserOnlineStatus($user_id: Int!) {\n  getUserOnlineStatus(user_id: $user_id) {\n    __typename\n    last_seen\n    is_online\n  }\n}"

  public var user_id: Int

  public init(user_id: Int) {
    self.user_id = user_id
  }

  public var variables: GraphQLMap? {
    return ["user_id": user_id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getUserOnlineStatus", arguments: ["user_id": GraphQLVariable("user_id")], type: .object(GetUserOnlineStatus.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getUserOnlineStatus: GetUserOnlineStatus? = nil) {
      self.init(snapshot: ["__typename": "Query", "getUserOnlineStatus": getUserOnlineStatus.flatMap { $0.snapshot }])
    }

    /// Get the online status of
    public var getUserOnlineStatus: GetUserOnlineStatus? {
      get {
        return (snapshot["getUserOnlineStatus"] as? Snapshot).flatMap { GetUserOnlineStatus(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getUserOnlineStatus")
      }
    }

    public struct GetUserOnlineStatus: GraphQLSelectionSet {
      public static let possibleTypes = ["SignalOnlineStatus"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("last_seen", type: .scalar(Int.self)),
        GraphQLField("is_online", type: .scalar(Bool.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(lastSeen: Int? = nil, isOnline: Bool? = nil) {
        self.init(snapshot: ["__typename": "SignalOnlineStatus", "last_seen": lastSeen, "is_online": isOnline])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      /// Unix timestamp in seconds
      public var lastSeen: Int? {
        get {
          return snapshot["last_seen"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "last_seen")
        }
      }

      /// Detemines whether the user last_seen is no more 5 seconds past from the time of calling getUserOnlineStatus
      public var isOnline: Bool? {
        get {
          return snapshot["is_online"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "is_online")
        }
      }
    }
  }
}

public final class SubscribeByUserIdSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription SubscribeByUserId($receiver_id: Int) {\n  subscribeByUserID(receiver_id: $receiver_id) {\n    __typename\n    action_type\n    receiver_id\n    message {\n      __typename\n      message_id\n      user_id\n      conv_type\n      conversation_id\n      local_id\n      m_type\n      status\n      timestamp\n      text\n      url\n      url_title\n      url_thumb_url\n      url_domain\n      url_text\n    }\n    typing {\n      __typename\n      action\n      receiver_id\n      conversation_id\n      user_id\n      conversation_type\n    }\n    seen {\n      __typename\n      last_msg_seen_id\n      conversation_id\n    }\n    conversation {\n      __typename\n      conversation_id\n      timestamp\n      peer_user {\n        __typename\n        user_id\n        name\n      }\n    }\n  }\n}"

  public var receiver_id: Int?

  public init(receiver_id: Int? = nil) {
    self.receiver_id = receiver_id
  }

  public var variables: GraphQLMap? {
    return ["receiver_id": receiver_id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("subscribeByUserID", arguments: ["receiver_id": GraphQLVariable("receiver_id")], type: .object(SubscribeByUserId.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(subscribeByUserId: SubscribeByUserId? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "subscribeByUserID": subscribeByUserId.flatMap { $0.snapshot }])
    }

    /// - This is generic subscription for all actions <br>
    /// ############### - The cleint will subscribe for this topic and all the actions will be recieved through this channel <br>
    /// ############### - This subscription will be attached for the following mutations : <br>
    /// ###############		- addMessage <br>
    /// ############### 		- publishTyping <br>
    /// ###############		- setSeenConversation <br>
    /// ###############		- newGroupAdded <br>
    /// ############### - The subscriber will receive a message when someone calls any of the preceeded mutations <br>
    /// ############### - The "receiver_id" in any of the preceeded mutations should should match the receiver_id(which is your User ID as a subscriber) of this subscription. <br>
    public var subscribeByUserId: SubscribeByUserId? {
      get {
        return (snapshot["subscribeByUserID"] as? Snapshot).flatMap { SubscribeByUserId(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "subscribeByUserID")
      }
    }

    public struct SubscribeByUserId: GraphQLSelectionSet {
      public static let possibleTypes = ["UserIdGenericOutput"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("action_type", type: .scalar(Int.self)),
        GraphQLField("receiver_id", type: .scalar(Int.self)),
        GraphQLField("message", type: .object(Message.selections)),
        GraphQLField("typing", type: .object(Typing.selections)),
        GraphQLField("seen", type: .object(Seen.selections)),
        GraphQLField("conversation", type: .object(Conversation.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(actionType: Int? = nil, receiverId: Int? = nil, message: Message? = nil, typing: Typing? = nil, seen: Seen? = nil, conversation: Conversation? = nil) {
        self.init(snapshot: ["__typename": "UserIdGenericOutput", "action_type": actionType, "receiver_id": receiverId, "message": message.flatMap { $0.snapshot }, "typing": typing.flatMap { $0.snapshot }, "seen": seen.flatMap { $0.snapshot }, "conversation": conversation.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      /// action_type Enum values : <br>
      /// ############### 0 : NEW_MESSAGE <br>
      /// ############### 1 : TYPING <br>
      /// ############### 2 : SEEN <br>
      /// ############### 3 : NEW_CONVERSATION <br>
      /// ############### 4 : JOINED_FOR_GROUP_CONVERSATION <br>
      public var actionType: Int? {
        get {
          return snapshot["action_type"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "action_type")
        }
      }

      /// The User ID that will receive this output through subscribeByUserID
      public var receiverId: Int? {
        get {
          return snapshot["receiver_id"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "receiver_id")
        }
      }

      /// Message body in case if action_type is 0
      public var message: Message? {
        get {
          return (snapshot["message"] as? Snapshot).flatMap { Message(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "message")
        }
      }

      /// Typing infromation in case if action_type is 1
      public var typing: Typing? {
        get {
          return (snapshot["typing"] as? Snapshot).flatMap { Typing(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "typing")
        }
      }

      /// Seen information in case of action_type = 2
      public var seen: Seen? {
        get {
          return (snapshot["seen"] as? Snapshot).flatMap { Seen(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "seen")
        }
      }

      /// New-Conversation in case of action_type = 3
      public var conversation: Conversation? {
        get {
          return (snapshot["conversation"] as? Snapshot).flatMap { Conversation(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "conversation")
        }
      }

      public struct Message: GraphQLSelectionSet {
        public static let possibleTypes = ["Message"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("user_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("conv_type", type: .scalar(Int.self)),
          GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("local_id", type: .scalar(Int.self)),
          GraphQLField("m_type", type: .nonNull(.scalar(Int.self))),
          GraphQLField("status", type: .scalar(Int.self)),
          GraphQLField("timestamp", type: .scalar(Int.self)),
          GraphQLField("text", type: .scalar(String.self)),
          GraphQLField("url", type: .scalar(String.self)),
          GraphQLField("url_title", type: .scalar(String.self)),
          GraphQLField("url_thumb_url", type: .scalar(String.self)),
          GraphQLField("url_domain", type: .scalar(String.self)),
          GraphQLField("url_text", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(messageId: Int, userId: Int, convType: Int? = nil, conversationId: Int, localId: Int? = nil, mType: Int, status: Int? = nil, timestamp: Int? = nil, text: String? = nil, url: String? = nil, urlTitle: String? = nil, urlThumbUrl: String? = nil, urlDomain: String? = nil, urlText: String? = nil) {
          self.init(snapshot: ["__typename": "Message", "message_id": messageId, "user_id": userId, "conv_type": convType, "conversation_id": conversationId, "local_id": localId, "m_type": mType, "status": status, "timestamp": timestamp, "text": text, "url": url, "url_title": urlTitle, "url_thumb_url": urlThumbUrl, "url_domain": urlDomain, "url_text": urlText])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Message ID in the server DB
        public var messageId: Int {
          get {
            return snapshot["message_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "message_id")
          }
        }

        /// User ID of the sender
        public var userId: Int {
          get {
            return snapshot["user_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "user_id")
          }
        }

        /// n/a
        public var convType: Int? {
          get {
            return snapshot["conv_type"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conv_type")
          }
        }

        /// n/a
        public var conversationId: Int {
          get {
            return snapshot["conversation_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }

        /// Message ID in the local database of the sender client i.e Mobile Application
        public var localId: Int? {
          get {
            return snapshot["local_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "local_id")
          }
        }

        /// Message type Enum values : <br>
        /// ############### 0 : TEXT <br>
        /// ############### 1 : VIDEO <br>
        /// ############### 2 : PICTURE <br>
        /// ############### 3 : DOCUMENT <br>
        /// ############### 4 : LINK <br>
        /// ############### 5 : LINK_YOUTUBE <br>
        /// ############### 6 : GIF <br>
        /// ############### 7 : GIF_TENOR <br>
        /// ############### 8 : AUDIO <br>
        /// ############### 9 : LOCATION <br>
        public var mType: Int {
          get {
            return snapshot["m_type"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "m_type")
          }
        }

        /// Message status Enum values : <br>
        /// ############### 0 : SENT <br>
        /// ############### 1 : SEEN<br>
        public var status: Int? {
          get {
            return snapshot["status"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "status")
          }
        }

        /// Unix timestamp
        public var timestamp: Int? {
          get {
            return snapshot["timestamp"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "timestamp")
          }
        }

        /// Message text
        public var text: String? {
          get {
            return snapshot["text"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "text")
          }
        }

        /// URL of the attachment, link, gif
        public var url: String? {
          get {
            return snapshot["url"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url")
          }
        }

        /// URL preview Title
        public var urlTitle: String? {
          get {
            return snapshot["url_title"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_title")
          }
        }

        /// URL preview thumb
        public var urlThumbUrl: String? {
          get {
            return snapshot["url_thumb_url"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_thumb_url")
          }
        }

        /// URL preview domain
        public var urlDomain: String? {
          get {
            return snapshot["url_domain"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_domain")
          }
        }

        /// URL preview text
        public var urlText: String? {
          get {
            return snapshot["url_text"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "url_text")
          }
        }
      }

      public struct Typing: GraphQLSelectionSet {
        public static let possibleTypes = ["TypingCommiter"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("action", type: .nonNull(.scalar(Int.self))),
          GraphQLField("receiver_id", type: .scalar(Int.self)),
          GraphQLField("conversation_id", type: .scalar(Int.self)),
          GraphQLField("user_id", type: .scalar(Int.self)),
          GraphQLField("conversation_type", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(action: Int, receiverId: Int? = nil, conversationId: Int? = nil, userId: Int? = nil, conversationType: String? = nil) {
          self.init(snapshot: ["__typename": "TypingCommiter", "action": action, "receiver_id": receiverId, "conversation_id": conversationId, "user_id": userId, "conversation_type": conversationType])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Action Enum values : <br>
        /// ############### 0 : START_TYPING <br>
        /// ############### 1 : STOP_TYPING
        public var action: Int {
          get {
            return snapshot["action"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "action")
          }
        }

        public var receiverId: Int? {
          get {
            return snapshot["receiver_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "receiver_id")
          }
        }

        /// Conversation ID that the typing happened within
        public var conversationId: Int? {
          get {
            return snapshot["conversation_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }

        /// User ID that committed the typing action
        public var userId: Int? {
          get {
            return snapshot["user_id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "user_id")
          }
        }

        public var conversationType: String? {
          get {
            return snapshot["conversation_type"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_type")
          }
        }
      }

      public struct Seen: GraphQLSelectionSet {
        public static let possibleTypes = ["SeenOutput"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("last_msg_seen_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(lastMsgSeenId: Int, conversationId: Int) {
          self.init(snapshot: ["__typename": "SeenOutput", "last_msg_seen_id": lastMsgSeenId, "conversation_id": conversationId])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Message ID of the last seen message on the other client
        public var lastMsgSeenId: Int {
          get {
            return snapshot["last_msg_seen_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "last_msg_seen_id")
          }
        }

        /// The conversation which the other client marked as seen
        public var conversationId: Int {
          get {
            return snapshot["conversation_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }
      }

      public struct Conversation: GraphQLSelectionSet {
        public static let possibleTypes = ["ConversationsListItem_startConversation"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("conversation_id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("timestamp", type: .nonNull(.scalar(Int.self))),
          GraphQLField("peer_user", type: .nonNull(.object(PeerUser.selections))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(conversationId: Int, timestamp: Int, peerUser: PeerUser) {
          self.init(snapshot: ["__typename": "ConversationsListItem_startConversation", "conversation_id": conversationId, "timestamp": timestamp, "peer_user": peerUser.snapshot])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Conversation ID
        public var conversationId: Int {
          get {
            return snapshot["conversation_id"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "conversation_id")
          }
        }

        /// Unix timestamp
        public var timestamp: Int {
          get {
            return snapshot["timestamp"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "timestamp")
          }
        }

        /// The other user that is participant in the conversation<br>
        /// ######## In case It's returend from startConversation or getUserConversation; the peer_user will not be the sender/requests
        public var peerUser: PeerUser {
          get {
            return PeerUser(snapshot: snapshot["peer_user"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "peer_user")
          }
        }

        public struct PeerUser: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("user_id", type: .nonNull(.scalar(Int.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(userId: Int, name: String) {
            self.init(snapshot: ["__typename": "User", "user_id": userId, "name": name])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var userId: Int {
            get {
              return snapshot["user_id"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "user_id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }
        }
      }
    }
  }
}