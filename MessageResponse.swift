import ObjectMapper

class MessageReponse: Mappable {
    var attachments: [AttachmentResponse]?
    var attributeValues: MessageAttributeValues?
    var author: AuthorResponse?
    var category: MessageCategoryResponse?
    var comments: [MessageCommentResponse]?
    var createdTs: String?
    var description: String?
    var id: String?
    var location: MessageLocationresponse?
    var publishedTs: String?
    var number: Int?
    var scoresCount: MessageScoresCountResponse?
    var status: MessageStatusResponse?
    var statusUpdatedTs: String?
    var updatedTs: String?
    var title: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        attachments <- map["attachments"]
        attributeValues <- map["attributeValues"]
        author <- map["author"]
        category <- map["category"]
        comments <- map["comments"]
        createdTs <- map["createdTs"]
        description <- map["description"]
        id <- map["id"]
        location <- map["location"]
        publishedTs <- map["publishedTs"]
        number <- map["number"]
        scoresCount <- map["scoresCount"]
        status <- map["status"]
        statusUpdatedTs <- map["statusUpdatedTs"]
        updatedTs <- map["updatedTs"]
        title <- map["title"]
    }
}

class MessageCommentResponse: Mappable {
    var attachments: [AttachmentResponse]?
    var author: AuthorResponse?
    var id: String?
    var title: String?
    var createdTs: String?
    var content: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        attachments <- map["attachments"]
        id <- map["id"]
        author <- map["author"]
        title <- map["title"]
        createdTs <- map["createdTs"]
        content <- map["content"]
    }
}

class MessageListResponse: Mappable {
    var content: [MessageContentResponse]?
    var empty: Bool?
    var first: Bool?
    var last: Bool?
    var number: Int?
    var numberOfElements: Int?
    var totalElements: Int?
    var totalPages: Int?
    var size: Int?
    var pageable: PageableMessageResponse?
    var sort: SortMessageResponse?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        content <- map["content"]
        empty <- map["empty"]
        first <- map["first"]
        last <- map["last"]
        number <- map["number"]
        numberOfElements <- map["numberOfElements"]
        totalPages <- map["totalPages"]
        totalElements <- map["totalElements"]
        size <- map["size"]
        pageable <- map["pageable"]
        sort <- map["sort"]
    }
}

class SortMessageResponse: Mappable {
    var empty: Bool?
    var sorted: Bool?
    var unsorted: Bool?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        empty <- map["empty"]
        sorted <- map["sorted"]
        unsorted <- map["unsorted"]
    }
}

class PageableMessageResponse: Mappable {
    var page: Int?
    var size: Int?
    var sort: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        page <- map["page"]
        size <- map["size"]
        sort <- map["sort"]
    }
}

class MessageContentResponse: Mappable {
    var attachments: [AttachmentResponse]?
    var attributeValues: MessageAttributeValues?
    var author: AuthorResponse?
    var createdTs: String?
    var description: String?
    var category: MessageCategoryResponse?
    var id: String?
    var publishedTs: String?
    var number: Int?
    var scoresCount: MessageScoresCountResponse?
    var status: MessageStatusResponse?
    var statusUpdatedTs: String?
    var title: String?
    var location: MessageLocationresponse?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        attachments <- map["attachments"]
        author <- map["author"]
        attributeValues <- map["attributeValues"]
        createdTs <- map["createdTs"]
        description <- map["description"]
        category <- map["category"]
        id <- map["id"]
        publishedTs <- map["publishedTs"]
        number <- map["number"]
        scoresCount <- map["scoresCount"]
        status <- map["status"]
        statusUpdatedTs <- map["statusUpdatedTs"]
        title <- map["title"]
        location <- map["location"]
    }
}

class MessageLocationresponse: Mappable {
    var addresses: [String]?
    var coordinates: MessageCoordinatesResponse?
    var fiasAddresses: [MessageFiasAddressesResponse]?
    var regions: MessageRegionsResponse?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        addresses <- map["addresses"]
        coordinates <- map["coordinates"]
        regions <- map["regions"]
        fiasAddresses <- map ["fiasAddresses"]
    }
}

class MessageFiasAddressesResponse: Mappable {
    var fullAddress: String?
    var additionalProp2: String?
    var additionalProp3: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        fullAddress <- map["fullAddress"]
        additionalProp2 <- map["additionalProp2"]
        additionalProp3 <- map["additionalProp3"]
    }
}

class MessageRegionsResponse: Mappable {
    var coordinates: [[[Int]]]?
    var type: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        coordinates <- map["coordinates"]
        type <- map["type"]
    }
}

class MessageCoordinatesResponse: Mappable {
    var coordinates: [[Int]]?
    var type: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        coordinates <- map["coordinates"]
        type <- map["type"]
    }
}

class MessageStatusResponse: Mappable {
    var allowComments: Bool?
    var code: Int?
    var name: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        allowComments <- map["allowComments"]
        code <- map["code"]
        name <- map["name"]
    }
}

class MessageScoresCountResponse: Mappable {
    var leftVoteType: VoteType?
    var negative: Int?
    var positive: Int?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        leftVoteType <- map["leftVoteType"]
        negative <- map["negative"]
        positive <- map["positive"]
    }
}

class MessageCategoryResponse: Mappable {
    var id: String?
    var name: String?
    var parent: MessageCategoryParentResponse?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        parent <- map["parent"]
    }
}

class MessageCategoryParentResponse: Mappable {
    var id: String?
    var name: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
    }
}

class MessageAttributeValues: Mappable {
    var additionalProp1: String?
    var additionalProp2: String?
    var additionalProp3: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        additionalProp1 <- map["additionalProp1"]
        additionalProp2 <- map["additionalProp2"]
        additionalProp3 <- map["additionalProp3"]
    }
}

class AttachmentResponse: Mappable {
    var details: MessageDetailResponse?
    var fileDescriptorId: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        details <- map["details"]
        fileDescriptorId <- map["fileDescriptorId"]
    }
}

class MessageDetailResponse: Mappable {
    var author: AuthorResponse?
    var ext: String?
    var name: String?
    var size: Int?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        author <- map["author"]
        ext <- map["ext"]
        name <- map["name"]
        size <- map["size"]
    }
}

class AuthorResponse: Mappable {
    var userId: String?
    var details: AuthorDetailsResponse?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        userId <- map["userId"]
        details <- map["details"]
    }
}

class AuthorDetailsResponse: Mappable {
    var name: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        name <- map["name"]
    }
}


enum VoteType: String {
    case positive = "POSITIVE"
    case negative = "NEGATIVE"
    case none = "NONE"
}
