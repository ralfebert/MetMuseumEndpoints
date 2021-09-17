import Foundation
import SweetURLRequest

public struct ArtworksSearchResult: Codable {
    /// The total number of publicly-available objects
    public var total: Int

    /// An array containing the object ID of publicly-available object
    public var objectIDs: [Int]
}

public struct Artwork: Codable, Identifiable {
    public var id: Int { objectID }

    /// Identifying number for each artwork (unique, can be used as key field)
    public let objectID: Int

    /// When "true" indicates a popular and important artwork in the collection
    public let isHighlight: Bool

    /// Identifying number for each artwork (not always unique)
    public let accessionNumber: String

    /// Year the artwork was acquired.
    public let accessionYear: String

    /// When "true" indicates an artwork in the Public Domain
    public let isPublicDomain: Bool

    /// URL to the primary image of an object in JPEG format
    public let primaryImage: String
    var primaryImageURL: URL? { URL(string: primaryImage) }

    /// URL to the lower-res primary image of an object in JPEG format
    public let primaryImageSmall: String
    public var primaryImageSmallURL: URL? { URL(string: primaryImageSmall) }

    /// An array containing URLs to the additional images of an object in JPEG format
    public let additionalImages: [String]

    /// An array containing the constituents associated with an object, with the constituent's role, name, ULAN URL, Wikidata URL, and gender, when available (currently contains female designations only).
    public let constituents: [Constituent]

    /// Indicates The Met's curatorial department responsible for the artwork
    public let department: String

    /// Describes the physical type of the object
    public let objectName: String

    /// Title, identifying phrase, or name given to a work of art
    public let title: String

    /// Information about the culture, or people from which an object was created
    public let culture: String

    /// Time or time period when an object was created
    public let period: String

    /// Dynasty (a succession of rulers of the same line or family) under which an object was created
    public let dynasty: String

    /// Reign of a monarch or ruler under which an object was created
    public let reign: String

    /// A set of works created as a group or published as a series.
    public let portfolio: String

    /// Role of the artist related to the type of artwork or object that was created
    public let artistRole: String

    /// Describes the extent of creation or describes an attribution qualifier to the information given in the artistRole field
    public let artistPrefix: String

    /// Artist name in the correct order for display
    public let artistDisplayName: String

    /// Nationality and life dates of an artist, also includes birth and death city when known.
    public let artistDisplayBio: String

    /// Used to record complex information that qualifies the role of a constituent, e.g. extent of participation by the Constituent (verso only, and followers)
    public let artistSuffix: String

    /// Used to sort artist names alphabetically. Last Name, First Name, Middle Name, Suffix, and Honorific fields, in that order.
    public let artistAlphaSort: String

    /// National, geopolitical, cultural, or ethnic origins or affiliation of the creator or institution that made the artwork
    public let artistNationality: String

    /// Year the artist was born
    public let artistBeginDate: String

    /// Year the artist died
    public let artistEndDate: String

    /// Gender of the artist (currently contains female designations only)
    public let artistGender: String

    /// Wikidata URL for the artist
    public let artistWikidataURL: String

    /// ULAN URL for the artist
    public let artistULANURL: String

    /// Year, a span of years, or a phrase that describes the specific or approximate date when an artwork was designed or created
    public let objectDate: String

    /// Machine readable date indicating the year the artwork was started to be created
    public let objectBeginDate: Int

    /// Machine readable date indicating the year the artwork was completed (may be the same year or different year than the objectBeginDate)
    public let objectEndDate: Int

    /// Refers to the materials that were used to create the artwork
    public let medium: String

    /// Size of the artwork or object
    public let dimensions: String

    // Array of elements, each with a name, description, and set of measurements. Spatial measurements are in centimeters; weights are in kg.
    // let measurements: [Measurement]?

    /// Text acknowledging the source or origin of the artwork and the year the object was acquired by the museum.
    public let creditLine: String

    /// Qualifying information that describes the relationship of the place catalogued in the geography fields to the object that is being catalogued
    public let geographyType: String

    /// City where the artwork was created
    public let city: String

    /// State or province where the artwork was created, may sometimes overlap with County
    public let state: String

    /// County where the artwork was created, may sometimes overlap with State
    public let county: String

    /// Country where the artwork was created or found
    public let country: String

    /// Geographic location more specific than country, but more specific than subregion, where the artwork was created or found (frequently null)
    public let region: String

    /// Geographic location more specific than Region, but less specific than Locale, where the artwork was created or found (frequently null)
    public let subregion: String

    /// Geographic location more specific than subregion, but more specific than locus, where the artwork was found (frequently null)
    public let locale: String

    /// Geographic location that is less specific than locale, but more specific than excavation, where the artwork was found (frequently null)
    public let locus: String

    /// The name of an excavation. The excavation field usually includes dates of excavation.
    public let excavation: String

    /// River is a natural watercourse, usually freshwater, flowing toward an ocean, a lake, a sea or another river related to the origins of an artwork (frequently null)
    public let river: String

    /// General term describing the artwork type.
    public let classification: String

    /// Credit line for artworks still under copyright.
    public let rightsAndReproduction: String

    /// URL to object's page on metmuseum.org
    public let linkResource: String

    /// Date metadata was last updated
    public let metadataDate: String

    public let repository: String

    /// URL to object's page on metmuseum.org
    public let objectURL: String

    // An array of subject keyword tags associated with the object and their respective AAT URL
    // let tags: [Tag]?

    /// Wikidata URL for the object
    public let objectWikidataURL: String

    /// Whether the object is on the Timeline of Art History website
    public let isTimelineWork: Bool

    /// Gallery number, where available
    public let galleryNumber: String

    public enum CodingKeys: String, CodingKey {
        case objectID
        case isHighlight
        case accessionNumber
        case accessionYear
        case isPublicDomain
        case primaryImage
        case primaryImageSmall
        case additionalImages
        case constituents
        case department
        case objectName
        case title
        case culture
        case period
        case dynasty
        case reign
        case portfolio
        case artistRole
        case artistPrefix
        case artistDisplayName
        case artistDisplayBio
        case artistSuffix
        case artistAlphaSort
        case artistNationality
        case artistBeginDate
        case artistEndDate
        case artistGender
        case artistWikidataURL = "artistWikidata_URL"
        case artistULANURL = "artistULAN_URL"
        case objectDate
        case objectBeginDate
        case objectEndDate
        case medium
        case dimensions
        // case measurements
        case creditLine
        case geographyType
        case city
        case state
        case county
        case country
        case region
        case subregion
        case locale
        case locus
        case excavation
        case river
        case classification
        case rightsAndReproduction
        case linkResource
        case metadataDate
        case repository
        case objectURL
        // case tags
        case objectWikidataURL = "objectWikidata_URL"
        case isTimelineWork
        case galleryNumber = "GalleryNumber"
    }
}

public struct Constituent: Codable {
    public let constituentID: Int
    public let role: String
    public let name: String
    public let constituentULANURL: String
    public let constituentWikidataURL: String
    public let gender: String

    enum CodingKeys: String, CodingKey {
        case constituentID
        case role
        case name
        case constituentULANURL = "constituentULAN_URL"
        case constituentWikidataURL = "constituentWikidata_URL"
        case gender
    }
}

public struct Measurement: Codable {
    public let elementName: String
    public let elementDescription: String?
    public let elementMeasurements: ElementMeasurements

    enum CodingKeys: String, CodingKey {
        case elementName
        case elementDescription
        case elementMeasurements
    }
}

public struct ElementMeasurements: Codable {
    public let height: Decimal
    public let width: Decimal

    enum CodingKeys: String, CodingKey {
        case height = "Height"
        case width = "Width"
    }
}

public struct Tag: Codable {
    public let term: String
    public let aatURL: String?
    public let wikidataURL: String?

    enum CodingKeys: String, CodingKey {
        case term
        case aatURL = "AAT_URL"
        case wikidataURL = "Wikidata_URL"
    }
}

/**
 Endpoints for [The Metropolitan Museum of Art Collection API](https://metmuseum.github.io/).
 */
public struct MetMuseumEndpoints {
    let baseURL = URL(string: "https://collectionapi.metmuseum.org/public/collection/v1/")!
    let urlSession: URLSession
    let decoder = JSONDecoder()

    public init(urlSession: URLSession = .shared) {
        self.urlSession = urlSession
    }

    /**
     Returns a listing of all Object IDs for objects that contain the search query within the object’s data.

     Example request:
     - https://collectionapi.metmuseum.org/public/collection/v1/search?q=sunflowers
     */
    public func search(query: String) async throws -> ArtworksSearchResult {
        try await request(
            URLRequest(
                method: .get,
                url: baseURL.appendingPathComponent("search"),
                parameters: [
                    "q": query,
                    "artistOrCulture": "true",
                    "hasImages": "true",
                ]
            ),
            type: ArtworksSearchResult.self
        )
    }

    /**
     Returns a record for an object, containing all open access data about that object, including its image (if the image is available under Open Access).

     Example request:
     - https://collectionapi.metmuseum.org/public/collection/v1/objects/45734
     */
    public func artwork(id: Artwork.ID) async throws -> Artwork {
        try await request(
            URLRequest(
                method: .get,
                url: baseURL.appendingPathComponent("objects").appendingPathComponent(String(id))
            ),
            type: Artwork.self
        )
    }

    private func request<T: Decodable>(_ urlRequest: URLRequest, type _: T.Type) async throws -> T {
        let (data, response) = try await urlSession.data(for: urlRequest)
        try expectSuccess(response: response)
        return try decoder.decode(T.self, from: data)
    }

    private func expectSuccess(response: URLResponse) throws {
        let status = (response as! HTTPURLResponse).status
        guard status.responseType == .success else { throw status }
    }
}
