//
//  SourceModel.swift
//  RealEyes_CodingChallenge
//
//  Created by Oniel Rosario on 8/21/19.
//  Copyright © 2019 Oniel Rosario. All rights reserved.
//

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
        VideoClip(link: URL(string: "https://liveprodeuwest.akamaized.net/eu1/Channel-EUTVqvs-AWS-ireland-1/Source-EUTVqvs-1000-1_live.m3u8")!, thumbNail: URL(fileURLWithPath: Bundle.main.path(forResource: "BloombergTV", ofType: "png")!), name: "Bloomberg TV"),
        VideoClip(link: URL(string: "https://manifest.googlevideo.com/api/manifest/hls_playlist/expire/1567095815/ei/p6dnXbmKDsfoD-fUrKAK/ip/71.218.140.12/id/EcEMX-63PKY.1/itag/96/source/yt_live_broadcast/requiressl/yes/ratebypass/yes/live/1/goi/160/sgoap/gir%3Dyes%3Bitag%3D140/sgovp/gir%3Dyes%3Bitag%3D137/hls_chunk_host/r3---sn-qxo7rn7l.googlevideo.com/playlist_type/DVR/initcwndbps/7360/mm/44/mn/sn-qxo7rn7l/ms/lva/mv/m/mvi/2/pl/15/dover/11/keepalive/yes/mt/1567074148/disable_polymer/true/sparams/expire,ei,ip,id,itag,source,requiressl,ratebypass,live,goi,sgoap,sgovp,playlist_type/sig/ALgxI2wwRAIgbmFl3zdazc19eNB5CWErPy_4RGMmqZiGAyJzhnfYIwUCIBYJU87nvcIvrzB22dmPNDE8JKG91AFlxnFTF9Ya_FHU/lsparams/hls_chunk_host,initcwndbps,mm,mn,ms,mv,mvi,pl/lsig/AHylml4wRgIhAKiZG0IUNvgbR5bETLEUPH0LqZcLrQUDQ7gl8doBaUtqAiEArSO2A4PKniClNiKGIYpPYRsuRRogPTxoabNcAggROJ4%3D/playlist/index.m3u8")!, thumbNail: URL(fileURLWithPath: Bundle.main.path(forResource: "lowfiradio", ofType: "png")!), name: "Lo-Fi Radio"),
        VideoClip(link: URL(string: "https://manifest.googlevideo.com/api/manifest/hls_playlist/expire/1567097635/ei/w65nXdzPGJWitQe4ya64DQ/ip/71.218.140.12/id/21X5lGlDOfg.1/itag/94/source/yt_live_broadcast/requiressl/yes/ratebypass/yes/live/1/goi/160/sgoap/gir%3Dyes%3Bitag%3D140/sgovp/gir%3Dyes%3Bitag%3D135/hls_chunk_host/r5---sn-qxoedn7k.googlevideo.com/playlist_type/DVR/initcwndbps/7030/mm/44/mn/sn-qxoedn7k/ms/lva/mv/m/mvi/4/pl/15/dover/11/keepalive/yes/mt/1567075936/disable_polymer/true/sparams/expire,ei,ip,id,itag,source,requiressl,ratebypass,live,goi,sgoap,sgovp,playlist_type/sig/ALgxI2wwRAIgRDePiG20XcCAzjTKhkMBadB_CdV1ztj3vz4xvQJIBEcCICdjrLCAeBRMTs1azCcjs8EImZoMdIpB87_KAOdhylAK/lsparams/hls_chunk_host,initcwndbps,mm,mn,ms,mv,mvi,pl/lsig/AHylml4wRQIgPO05Zg6sN6cFRzzBulk2EKliLGvJNYdX2MtggDc1i9ECIQDGv0jm61ec-x2GY5ltdIZLYST0-uWawDmFvqvE6_EbDw%3D%3D/playlist/index.m3u8")!, thumbNail: URL(fileURLWithPath: Bundle.main.path(forResource: "nasa", ofType: "jpg")!), name: "NASA TV")
    ]
}
