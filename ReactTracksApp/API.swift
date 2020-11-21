// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class GetTracksQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetTracks {
      tracks {
        __typename
        id
        title
        description
        url
        createdAt
      }
    }
    """

  public let operationName: String = "GetTracks"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("tracks", type: .list(.object(Track.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(tracks: [Track?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "tracks": tracks.flatMap { (value: [Track?]) -> [ResultMap?] in value.map { (value: Track?) -> ResultMap? in value.flatMap { (value: Track) -> ResultMap in value.resultMap } } }])
    }

    public var tracks: [Track?]? {
      get {
        return (resultMap["tracks"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Track?] in value.map { (value: ResultMap?) -> Track? in value.flatMap { (value: ResultMap) -> Track in Track(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Track?]) -> [ResultMap?] in value.map { (value: Track?) -> ResultMap? in value.flatMap { (value: Track) -> ResultMap in value.resultMap } } }, forKey: "tracks")
      }
    }

    public struct Track: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["TrackType"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("title", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .nonNull(.scalar(String.self))),
          GraphQLField("url", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, title: String, description: String, url: String, createdAt: String) {
        self.init(unsafeResultMap: ["__typename": "TrackType", "id": id, "title": title, "description": description, "url": url, "createdAt": createdAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return resultMap["title"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "title")
        }
      }

      public var description: String {
        get {
          return resultMap["description"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "description")
        }
      }

      public var url: String {
        get {
          return resultMap["url"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "url")
        }
      }

      public var createdAt: String {
        get {
          return resultMap["createdAt"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }
    }
  }
}

public final class SetTrackMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation SetTrack($title: String!, $description: String!, $url: String!) {
      createTrack(title: $title, description: $description, url: $url) {
        __typename
        track {
          __typename
          title
          description
          url
        }
      }
    }
    """

  public let operationName: String = "SetTrack"

  public var title: String
  public var description: String
  public var url: String

  public init(title: String, description: String, url: String) {
    self.title = title
    self.description = description
    self.url = url
  }

  public var variables: GraphQLMap? {
    return ["title": title, "description": description, "url": url]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("createTrack", arguments: ["title": GraphQLVariable("title"), "description": GraphQLVariable("description"), "url": GraphQLVariable("url")], type: .object(CreateTrack.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(createTrack: CreateTrack? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "createTrack": createTrack.flatMap { (value: CreateTrack) -> ResultMap in value.resultMap }])
    }

    public var createTrack: CreateTrack? {
      get {
        return (resultMap["createTrack"] as? ResultMap).flatMap { CreateTrack(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "createTrack")
      }
    }

    public struct CreateTrack: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["CreateTrack"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("track", type: .object(Track.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(track: Track? = nil) {
        self.init(unsafeResultMap: ["__typename": "CreateTrack", "track": track.flatMap { (value: Track) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var track: Track? {
        get {
          return (resultMap["track"] as? ResultMap).flatMap { Track(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "track")
        }
      }

      public struct Track: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["TrackType"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("title", type: .nonNull(.scalar(String.self))),
            GraphQLField("description", type: .nonNull(.scalar(String.self))),
            GraphQLField("url", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(title: String, description: String, url: String) {
          self.init(unsafeResultMap: ["__typename": "TrackType", "title": title, "description": description, "url": url])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var title: String {
          get {
            return resultMap["title"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "title")
          }
        }

        public var description: String {
          get {
            return resultMap["description"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "description")
          }
        }

        public var url: String {
          get {
            return resultMap["url"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "url")
          }
        }
      }
    }
  }
}
