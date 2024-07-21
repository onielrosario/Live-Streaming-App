import Foundation

protocol SourceModeling {
    var sources: [VideoClip] { get }
}

class Source: SourceModeling {
    lazy var sources: [VideoClip] = [
        VideoClip(link: URL(string:"https://bitdash-a.akamaihd.net/content/MI201109210084_1/m3u8s/f08e80da-bf1d-4e3d-8899-f0f6155f6efa.m3u8")!, thumbNail: URL(fileURLWithPath: Bundle.main.path(forResource: "videoStillFrame1", ofType: "png")!), name: "Parkour"),
        VideoClip(link: URL(string: "https://abclive1-lh.akamaihd.net/i/abc_live05@423399/master.m3u8")!, thumbNail: URL(fileURLWithPath: Bundle.main.path(forResource: "ABCNews", ofType: "jpg")!), name: "ABC News Live Coverage"),
        VideoClip(link: URL(string: "https://adultswimhls-i.akamaihd.net/hls/live/238460/adultswim/main/1/master.m3u8")!, thumbNail: URL(fileURLWithPath: Bundle.main.path(forResource: "adultSwim", ofType: "jpg")!), name: "Adult Swim"),
        VideoClip(link: URL(string: "https://adultswim-vodlive.cdn.turner.com/live/rick-and-morty/stream_3.m3u8")!, thumbNail: URL(fileURLWithPath: Bundle.main.path(forResource: "rickAndMorty", ofType: "png")!), name: "Rick & Morty"),
        VideoClip(link: URL(string: "https://liveprodeuwest.akamaized.net/eu1/Channel-EUTVqvs-AWS-ireland-1/Source-EUTVqvs-1000-1_live.m3u8")!, thumbNail: URL(fileURLWithPath: Bundle.main.path(forResource: "BloombergTV", ofType: "png")!), name: "Bloomberg TV")
    ]
}
