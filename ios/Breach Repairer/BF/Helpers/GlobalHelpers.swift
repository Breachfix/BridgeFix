//
//  GlobalHelpers.swift
//  Breach Repairer
//
//  Created by Jack Ntihaniraho on 2022-05-08.
//
import Foundation
import SwiftUI
let exampleVideoURL = URL(string: "https://player.vimeo.com/external/269971860.sd.mp4?s=a3036bd1a9f15c1b31daedad98c06a3b24cdd747&profile_id=164&oauth2_token_id=57447761")!
let exampleVideURL1 = URL(string: "https://bit.ly/swswift")!

var randomExampleVideURL: URL{
    return [exampleVideoURL, exampleVideURL1].randomElement() ?? exampleVideoURL
}
let exampleImageURL = URL(string: "https://amazingdiscoveries-assets.azureedge.net/pictures/2021/10/17/8wcpghoys5_Series_Title_Cover_WUP.jpg")!
let exampleImageURL1 = URL(string: "https://amazingdiscoveries-assets.azureedge.net/pictures/2021/08/10/97ge8t3h3q_The_Loud_Cry_ModernDay_Babilon3.jpg")!
let exampleImageURL2 = URL(string: "https://amazingdiscoveries-assets.azureedge.net/pictures/2021/11/10/7yfx6e0vhs_SERIE_TITLE_Three_Angels_Messages.jpg")!
let exampleImageURL3 = URL(string: "https://amazingdiscoveries-assets.azureedge.net/pictures/2021/08/11/844jvi4qcy_The_Final_Elijah_ITSOT_Ep08.jpg")!
let exampleImageURL4 = URL(string: "https://amazingdiscoveries-assets.azureedge.net/pictures/2021/08/10/7z9z3ggfvv_hystorys_coming_climax.jpg")!
let exampleImageURL5 = URL(string: "https://amazingdiscoveries-assets.azureedge.net/pictures/2021/10/15/685bicfvzj_Worldview_and_culture_720x440.jpg")!
let exampleImageURL6 = URL(string: "https://amazingdiscoveries-assets.azureedge.net/pictures/2021/08/10/8x5lrvme6r_the_beast_of_bottomless_pit_title.jpg")!
let exampleImageURL7 = URL(string: "https://amazingdiscoveries-assets.azureedge.net/pictures/2021/10/22/jizee3zh6_the_dragon_realm_thumbnail.jpg")!
let exampleImageURL8 = URL(string: "https://amazingdiscoveries-assets.azureedge.net/pictures/2021/08/10/5eagq4sy0s_revolution_tyrants_e_wars_title.jpg")!

var randomExampleImageURL: URL{
    return [exampleImageURL, exampleImageURL1, exampleImageURL2, exampleImageURL3, exampleImageURL4, exampleImageURL5, exampleImageURL6, exampleImageURL7, exampleImageURL8].randomElement() ?? exampleImageURL
}

let exampleTrailer1 = Trailer(name: "Lineage Trailer", videoURL: "JrdAJEWSTxg&t=6s", thumbnailImageURL: URL(string: "https://image.roku.com/developer_channels/prod/62409fc1dedee525c4dd48eb92b247620cb4d671e679dd08a0c910fa34b89499.jpg")!)
let exampleTrailer2 = Trailer(name: "The Three Angels Messages Documentary", videoURL: "QwiKcLWIZBE", thumbnailImageURL: URL(string: "https://record.adventistchurch.com/wp-content/uploads/2020/02/Three-angels-messages.jpg")!)
let exampleTrailer3 = Trailer(name: "Cosmic Conflict 2", videoURL: "p3q9e2HLUa0", thumbnailImageURL: URL(string: "https://lh3.ggpht.com/_qEbc1LSCBcY/TQw0JzKvlZI/AAAAAAAABNo/F02lunQm904/download.jpeg")!)

let exampleTrailers = [exampleTrailer1, exampleTrailer2, exampleTrailer3]
let episode1 = Episode(name: "CONSTANTINE : COMPROMISE & CONTROVERSY",
                         season: 1,
                         episodeNumber: 1,
                         thumbnailImageURLString: "https://image.roku.com/developer_channels/prod/62409fc1dedee525c4dd48eb92b247620cb4d671e679dd08a0c910fa34b89499.jpg",
                         description: "We begin our journey with an event that changed the Christian landscape immeasurably - the conversion of Constantine. This event would lead to the persecution of Gods faithful believers from within the church and the beginning of a clear distinction between the two branches of Christianity that would emerge.",
                         length: 5,
                         videoURL: "E20tbiVCAJc&list=PLAortNXplLTgL7xXwlONUUC0i2pbH8QIE&index=2")
let episode2 = Episode(name: "IONA: SCOTLAND’S BRAVEHEART",
                         season: 1,
                         episodeNumber: 2,
                         thumbnailImageURLString: "https://image.roku.com/developer_channels/prod/62409fc1dedee525c4dd48eb92b247620cb4d671e679dd08a0c910fa34b89499.jpg",
                         description: "Isolated from the rest of Britain and Europe lies the island of Iona, off the coast of Scotland. Yet from this small, barren and windswept island a great impact would be felt far and wide. Columba, that great missionary and trainer of missionaries made this his base and set up a school that would last for several centuries.",
                         length: 5,
                         videoURL: "yIdHlLaMflM&list=PLAortNXplLTgL7xXwlONUUC0i2pbH8QIE&index=3")
let episode3 = Episode(name: "LINDISFARNE: THE HOLY ISLAND",
                         season: 1,
                         episodeNumber: 3,
                         thumbnailImageURLString: "https://image.roku.com/developer_channels/prod/62409fc1dedee525c4dd48eb92b247620cb4d671e679dd08a0c910fa34b89499.jpg",
                         description: "Lindisfarne, also known as the Holy Island, situated on the north Coast of England would be the base of mission operations in England in the 7th century. Aidan came from Iona, planted a school here and along with his two successors would convert almost three-quarters of England in under 50 years.",
                         length: 5,
                         videoURL: "UxUFn3aF6Rk&list=PLAortNXplLTgL7xXwlONUUC0i2pbH8QIE&index=4")


let episode4 = Episode(name: "WHITBY: THE TIDE TURNS",
                         season: 2,
                         episodeNumber: 4,
                         thumbnailImageURLString: "https://image.roku.com/developer_channels/prod/62409fc1dedee525c4dd48eb92b247620cb4d671e679dd08a0c910fa34b89499.jpg",
                         description: "Crucial decisions would be made during the Whitby Synod in 664 A.D. that would affect the future of Christianity in the British Isles. The tide would turn away from Celtic Christianity.",
                         length: 5,
                         videoURL: "WeQYB4tIDAk&list=PLAortNXplLTgL7xXwlONUUC0i2pbH8QIE&index=5")
let episode5 = Episode(name: "DINOOTH AND COLUMBANUS",
                         season: 2,
                         episodeNumber: 5,
                         thumbnailImageURLString: "https://image.roku.com/developer_channels/prod/62409fc1dedee525c4dd48eb92b247620cb4d671e679dd08a0c910fa34b89499.jpg",
                         description: "This week we travel from Iona to Wales where another training school was established and then we follow one of their missionaries as he went to France, Switzerland, Germany and then finally Italy, setting up training mission schools along the way.",
                         length: 5,
                         videoURL: "TUmTIbgylCk&list=PLAortNXplLTgL7xXwlONUUC0i2pbH8QIE&index=6")
let episode6 = Episode(name: "WALDENSIANS: PEOPLE OF THE VALLEYS",
                         season: 3,
                         episodeNumber: 6,
                         thumbnailImageURLString: "https://image.roku.com/developer_channels/prod/62409fc1dedee525c4dd48eb92b247620cb4d671e679dd08a0c910fa34b89499.jpg",
                         description: "The Church in the Wilderness of Revelation 12:6,14 is perhaps best illustrated by the experience of the Waldensians. This week, and the next few weeks, we will visit the valleys that they called home and see where they lived and died. Seeing their faithfulness and commitment to mission and service for God.",
                         length: 5,
                         videoURL: "VLldz5MlAAE&list=PLAortNXplLTgL7xXwlONUUC0i2pbH8QIE&index=7")

var allExampleEpisodes = [episode1, episode2, episode3, episode4, episode5, episode6]
let similarMovies = [exampleMovie7, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6]

let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "Revelation: The Bride, the Beast & Babylon",
    thumbnailURL: URL(string: "https://manna.amazingfacts.org/amazingfacts/website/revelationmystery/images/banners/revelation-dvd.jpg")!,
    categories: [ "Prophecy", "Life","Sanctuary","Thriller"],
    year: 2013, rating:"PG",
    numberOfSeasons: 1,
    resolution: "HD",
    defaultEpisodInfo:exampleEpisodeInfo1,
    creators:"Doug Batchelor, Jonathan Gifford, Wayne Leman",
    cast:"Alessandro Bianchi    ...    Dr. Alan Parker (voice), Ami Garbi    Ami Garbi    ...    John, Lynn Holmes    Lynn Holmes    ...    Babylon, Laura O'Brien    Laura O'Brien    ...    Bride",
    moreLikeThisMovies: similarMovies,
    episodes: allExampleEpisodes,
    promotionHeadline:"Best Rated Show",
    trailers: exampleTrailers, previewImageName: "CosmicCoflictPreview", previewVideoURL: "vDKG_WFLUi4"
   )
let exampleMovie2 = Movie(
    id: UUID().uuidString,
    name: "Cosmic Conflict: The Origin of Evil",
    thumbnailURL: URL(string: "https://www.themoviedb.org/t/p/w1000_and_h563_face/23kBjDMkkg5IOiDP2gN3GZSpieu.jpg")!,
    categories: ["Prophecy", "Health","Sanctuary","Songs"],
    year: 2009,
    rating:"TV-MA",
    numberOfSeasons: 1,
    resolution: "SD",
    defaultEpisodInfo: exampleEpisodeInfo,
    creators:"Douglas Garcia, Doug Batchelor, Brod Boyd, Wayne Leman, Gabe Arruda, Michael Buffington, Nancy Myers",
    cast:"Erik Jorn Sundquist,Erik Jorn Sundquist,Shaun Elliot, Frans Loriaux,Jaclyn Watt,Kylie Adair,Ilea Alfaro, GoldAndy Allo,Nicole Bain, Joseph Chansa, Jared Colangelo", moreLikeThisMovies: [],
    trailers: exampleTrailers, previewImageName: "TheDaysOfNoaHPreview", previewVideoURL: "JqLIndMA9Ks&t=15s")
let exampleMovie3 = Movie(
    id: UUID().uuidString,
    name: "Kingdoms in Time",
    thumbnailURL:  URL(string: "https://www.themoviedb.org/t/p/w1066_and_h600_bestv2/mqYAd6kXw24EcjgC48hTLrFi9H6.jpg")!,
    categories: ["Prophecy", "Health","Sanctuary","Songs"],
    year: 2018,
    rating:"TV-MA",
    numberOfSeasons: 3,
    resolution: "HD",
    defaultEpisodInfo: exampleEpisodeInfo2,
    creators: "Doug Batchelor, Wayne Leman",
    cast:"Doug Batchelor    ...    Self, Joshua Fallat    ...    Jesus, Zak Syed    Zak Syed    ...    Nahum,  Glen Caspillo    ...    Ezekiel, Luis Espinosa    Luis Espinosa    ...    Isaiah, Ahmed    Salmeen Ahmed    ...    Shepard Boy, Carlos Flores    ...    Blind Man, Batuhan Gurel    ...    Lame Man,  Simon Marin    ...    Judas, Bailey Musto    ...    Mary, Sean Daniel    ...    Archeologist 1, Cameron Gilliam    ...    Archeologist 2, Eddie Buraye    ...    Roman Soldier 1, Chris Pagano    ...    Roman Soldier 2, Luis Delgado    ...    Roman Soldier 3,  Alexia Gradford Deloza    ...    Villager, Masato Di Santo    ...    Villager",
    moreLikeThisMovies: [],
    trailers: exampleTrailers, previewImageName: "FinalEventsPreview", previewVideoURL: "6SgSqKqmvNM&t=696s")
let exampleMovie4 = Movie(
    id: UUID().uuidString,
    name: "THE DAYS OF NOAH",
    thumbnailURL:  URL(string: "https://www.hearthymn.com/wp-content/uploads/2017/11/The-Great-Flood.jpg")!,
    categories: ["Prophecy", "Health","Sanctuary","Songs"],
    year: 2018,
    rating: "TV-MA",
    numberOfSeasons: 1,
    resolution: "SD",
    defaultEpisodInfo: exampleEpisodeInfo3,
    creators: "Michael McCaffrey",
    cast: "Doug Batchelor, Stephen Bohr, Leonard Brand,  Art Chadwick,  H. Allen Davis Jr , Dave Fiedler, Karen Jensen, Ivor Myers , Elaine Kennedy  , Ariel A. Roth , Timothy G. Standish, Walter J. Veith, Clyde L. Webster Jr",
    moreLikeThisMovies: [],
    promotionHeadline: "Watch Season 4 Now",
    trailers: exampleTrailers, previewImageName: "KingdomInTimePreview", previewVideoURL: "ncA3Nf0dt4Q")
let exampleMovie5 = Movie(
    id: UUID().uuidString,
    name: "Tell the World",
    thumbnailURL: URL(string: "https://www.faribaultsda.com/build/image/285.png?w=1200&h=857&fit=ratio-50-45&s=ae31986f184663bb51c8af3a6331652b")!,
    categories: ["Prophecy", "Health","Sanctuary","Songs"],
    year: 2016,
    rating:"TV-MA",
    numberOfSeasons: 5,
    resolution: "HD",
    defaultEpisodInfo: exampleEpisodeInfo4,
    creators: "Kyle Portbury, Aaron Hartzler",
    cast:"Bill Lake    ...    William Miller, Tommie-Amber Pirie    ...    Ellen Harmon (White), Stephen MacDonald    ...    James White, Timothy Paul Coderre    ...    Joseph Bates, Michael Mancini    ...    Joshua Himes, Kate Hurman    ...    Lucy Miller, Mark Slacke    ...    Hiram Edson, Mercedes Papalia    ...    Elizabeth Harmon,  Meghanne Kessels    ...    Sarah Harmon, Guy Buller    ...    Otis Nichols, Teri Loretto    ...    Mary Nichols, Trie Donovan    ...    Prudence Bates, Mac Low    ...    Young Sally Miller, Sean Tucker    ...    Mr. Sargent, Jennilee Murray    ...    Delight Oakes",
    moreLikeThisMovies: [],
    trailers: exampleTrailers, previewImageName: "FromCreatPreview", previewVideoURL: "nH2r0J5VbL4&t=4846s")

let exampleMovie6 = Movie(
    id: UUID().uuidString,
    name: "From Crete to Malta",
    thumbnailURL:  URL(string: "https://archive.org/download/241-from-crete-to-malta-part-1-walter-veith/241-from-crete-to-malta-part-1-walter-veith.thumbs/241%20-%20From%20Crete%20to%20Malta%20-%20Part%201%20-%20Walter%20Veith_000054.jpg")!,
    categories: ["Prophecy", "Health","Sanctuary","Songs"],
    year: 2022,
    rating:"TV-MA",
    numberOfSeasons: 1,
    resolution: "HD",
    defaultEpisodInfo: exampleEpisodeInfo5,
    creators:"Amazing Discoveries",
    cast:"Walter Veith",
    moreLikeThisMovies: [],
    promotionHeadline: "New episode coming Soon",
    trailers: exampleTrailers, previewImageName: "TheBrideTheBeastandBibylonPreview", previewVideoURL: "Hwk8n8eixBI&t=37s")
let exampleMovie7 = Movie(
    id: UUID().uuidString,
    name: "Repairing the Breach",
    thumbnailURL:  URL(string: "https://2.bp.blogspot.com/-aPS1PBXvBm4/V_kELZr8owI/AAAAAAAA71o/pU0eL8bKU4MMbzNmm3CUxGEeBkqEVt35QCLcB/s1600/vei.jpg")!,
    categories: ["Prophecy", "Health","Sanctuary","Songs"],
    year: 2022,
    rating:"TV-MA",
    numberOfSeasons: 7,
    resolution: "HD",
    defaultEpisodInfo: exampleEpisodeInfo6,
    creators:"Amazing Discoveries",
    cast:"Erik Jorn Sundquist,Erik Jorn Sundquist,Shaun Elliot, Frans Loriaux,Jaclyn Watt,Kylie Adair,Ilea Alfaro, GoldAndy Allo,Nicole Bain, Joseph Chansa, Jared Colangelo",
    moreLikeThisMovies: [],
    trailers: exampleTrailers, previewImageName: "FromBabylonToAmericaPreview", previewVideoURL: "xTDIsWVjh24")
let exampleMovie8 = Movie(
    id: UUID().uuidString,
    name: "Darkness Before Dawn",
    thumbnailURL: URL(string: "https://i0.wp.com/ytimg.googleusercontent.com/vi/qNYv1xtvTNA/mqdefault.jpg?resize=91,91")!,
    categories: ["Prophecy", "Health","Sanctuary","Songs"],
    year: 2022,
    rating:"TV-MA",
    numberOfSeasons: 8,
    resolution: "SD",
    defaultEpisodInfo: exampleEpisodeInfo7,
    creators:"Amazing Discoveries",
    cast:"Erik Jorn Sundquist,Erik Jorn Sundquist,Shaun Elliot, Frans Loriaux,Jaclyn Watt,Kylie Adair,Ilea Alfaro, GoldAndy Allo,Nicole Bain, Joseph Chansa, Jared Colangelo",
    moreLikeThisMovies: [],
    trailers: exampleTrailers, previewImageName: "Leopard1Preview", previewVideoURL: "XmbSYq7WKDc")

let exampleMovie9 = Movie(
    id: UUID().uuidString,
    name: "The Final Events of Bible Prophecy",
    thumbnailURL:  URL(string: "https://manna.amazingfacts.org/amazingfacts/specialproj/offerdownloads/prodimages/finalevents-compressed.jpg")!,
    categories: ["Prophecy", "Health","Sanctuary","Songs"],
    year: 2022, rating:"TV-MA",
    numberOfSeasons: 9,
    resolution: "4K",
    defaultEpisodInfo: exampleEpisodeInfo8,
    creators:"Douglas Garcia, Doug Batchelor, Brod Boyd, Wayne Leman, Gabe Arruda, Michael Buffington, Nancy Myers",
    cast:"Erik Jorn Sundquist,Erik Jorn Sundquist,Shaun Elliot, Frans Loriaux,Jaclyn Watt,Kylie Adair,Ilea Alfaro, GoldAndy Allo,Nicole Bain, Joseph Chansa, Jared Colangelo",
    moreLikeThisMovies: [],
    promotionHeadline: "Watch Season 9 Now",
    trailers: exampleTrailers, previewImageName: "HealthPreview", previewVideoURL: "xUFIZh4qEqU&t=155s")

var exampleMovies: [Movie] {
    [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7, exampleMovie8, exampleMovie9].shuffled()
    
}

let exampleEpisodeInfo = CurrentEpisodeInfo(episodeName: "The Cosmic Conflict", description: "A powerful, eye-opening documentary that focuses on the great controversy that began when Lucifer rebelled in heaven. It traces the transformation of a perfect angel into Satan, the creation of a beautiful new world, and the fall of man in Eden.", season: 1, episode: 1)
let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "The Bride, the Beast & Babylon", description: "The World's Most Mysterious and Controversial Book is Now Unveiled! No other book in the Bible has been more misunderstood or misrepresented than Revelation. But now, that all changes with Revelation: The Bride, The Beast & Babylon! Going to the very heart of the Bible's most", season: 1, episode: 2)
let exampleEpisodeInfo2 = CurrentEpisodeInfo(episodeName: "Kingdoms in Time", description: "Journey through ancient Israel and hear from expert theologians, historians, and archaeologists on how we can know these prophecies were written in advance--and what it means for the ones that have yet to come true. Featuring reenactments and power evidence, Kingdoms in Time is an extraordinary adventure through history where you will discover the astonishing evidence that Bible prophecy has been precisely fulfilled throughout the ages. You will believe that God's Word stands forever and can be trusted!", season: 1, episode: 3)
let exampleEpisodeInfo3 = CurrentEpisodeInfo(episodeName: "THE DAYS OF NOAH", description: "TTHE DAYS OF NOAH series investigates the revealing prophetic parallels between the message of Noah and the book of Revelation to uncover as never before, the Truth about the Ark of refuge at the end of time and how to enter into it. These prophecies such as the Antichrist, the Mark of the Beast and others, have left many confused about the events to come, but viewed through the story of Noah and the flood, these end-times events are brought into sharp focus. Discover how the Bible reveals that even today we are living in the very time of which 'the days of Noah' were but a symbol, that time is short, God's mercy is pleading with mankind and the door of the Ark is about to close - forever.", season: 1, episode: 4)
let exampleEpisodeInfo4 = CurrentEpisodeInfo(episodeName: "Tell the World", description: "In 19th Century New England, the lives of a diverse group of people collide through interweaving stories of despair, identity, faith, hope and trust.", season: 1, episode: 1)
let exampleEpisodeInfo5 = CurrentEpisodeInfo(episodeName: "From Crete to Malta", description: "After 500 years of conflict, Catholic-Protestant reunification is now happening. How did we get here? Beginning with a study of the typologies of Paul’s shipwreck on the island of Malta to see what lies ahead, Professor Walter J. Veith examines Satan’s strategies for war against Protestantism. What light can the ancient war strategist Sun Tzu teach us in The Art of War about how the enemy works?How have the Jesuits and the counter reformation contributed to Catholic-Protestant reunification? What effects have Jesuit education and Jesuit drama had on society? How have these institutions fulfilled the mission of the Society of Jesus to destroy Protestantism? The series ends with an analysis of the document, From Conflict to Communion and an appeal to stand for the Biblical truths that Reformation martyrs gave their lives for.Amazing Discoveries presents From Crete to Malta, a 5-part series by Professor Walter J. Veith which looks at Catholic-Protestant church unity.", season: 1, episode: 5)
let exampleEpisodeInfo6 = CurrentEpisodeInfo(episodeName: "Repairing the Breach", description: "The signs foretold in Bible prophecy are being fulfilled all around us, showing we are living in the last days. The war that began in heaven has moved to battlefield earth. What was that war in heaven about? How will it end? Daniel 11 describes the details of the final conflict between Christ and Satan. Who are the players? What strategies is the enemy using? Will you recognize the battle’s progression as prophecy unfolds? The climax is about to break upon the world and you will have to make a choice. In this follow-up series to Total Onslaught, Walter Veith discusses Bible prophecy and its present-day applications. How are the prophecies of Daniel 11 being fulfilled in current events? What are the similarities between Catholic teachings and the Qur’an? Is unity of all religions a goal that we should aim for? Will that unity bring peace on earth? What will the price of this unity be? What does the future hold? Find out in this in-depth Bible study series on Bible prophecy and current events.", season: 1, episode: 15)
let exampleEpisodeInfo7 = CurrentEpisodeInfo(episodeName: "Darkness Before Dawn", description: "In 2017 the Christian world celebrated the 500th anniversary of the Protestant Reformation. But what did they actually celebrate? A God-led, spiritually revitalizing movement still vibrant in its influence today? Or the death of that movement? The Reformation restored Biblical truths that had been buried in the ritualism and errors of the Catholic church. Because of the Reformation, the Bible was freely given to the nations in their own languages. These cataclysmic changes sent shock waves through the world. First led by a handful of courageous Reformers within the Catholic church, the movement took on a life of its own as people internalized the Scriptures and put its lessons into practice. Many gave their lives, defending the truths they’d discovered. Led by the Spirit of God, for a time, the Reformation was unstoppable. All that has changed. Is the Reformation over? Have its lessons become irrelevant to us? What has happened in the last 500 years that caused the Reformation to sputter and die? Learn why a clear understanding of the issues dealt with by the Reformation is of vital importance to our salvation today. Amazing Discoveries presents Darkness Before Dawn, a 5-part series by Professor Walter J. Veith on the compromises Protestant churches are making for the sake of church unity.", season: 1, episode: 5)
let exampleEpisodeInfo8 = CurrentEpisodeInfo(episodeName: "The Final Events of Bible Prophecy", description: "The Final Events of Bible Prophecy is a gripping 43-minute documentary on last-day events. Hosted by author and evangelist Pastor Doug Batchelor, this amazing DVD leads you step by step through seven end-time 'events' including signs of the end, Christ's return, the millennium, and more. Featuring stunning special effects and a rich music soundtrack, this one-of-a-kind presentation is packed with Bible references that give you a clear and straightforward look at what the Bible really has to say about the last days of earth history. An awesome resource to share in a study groups or with friends and family! The multi-language documentary includes the following audio tracks: English, Spanish, German, Portuguese, French, Russian, Mandarin Chinese and Bulgarian. Subtitles are available in English, Swedish, Danish and Norwegian.", season: 1, episode: 1)
let exampleEpisodeInfo9 = CurrentEpisodeInfo(episodeName: "The Bride, the Beast & Babylon", description: "The World's Most Mysterious and Controversial Book is Now Unveiled! No other book in the Bible has been more misunderstood or misrepresented than Revelation. But now, that all changes with Revelation: The Bride, The Beast & Babylon! Going to the very heart of the Bible's most", season: 1, episode: 2)

extension LinearGradient{
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0),
                                    Color.black.opacity(1)]),
                               startPoint: .top,
                               endPoint: .bottom
                              )
       
}

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}

extension View{
    func hideKeyboard(){
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
