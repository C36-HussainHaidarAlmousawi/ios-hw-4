//
//  SongsDataSet.swift
//  ios-hw4-p1
//
//  Created by hussain haidar almousawi on 10/11/20.
//

import Foundation

fileprivate var OnePieceSongs: [Song] = [
    .init(name: "OP 1", image: "OP 1" , songName: "OP1.mp3"),
    .init(name: "OP 2", image: "OP 2" , songName: "OP2.mp3"),
    .init(name: "OP 3", image: "OP 3" , songName: "OP3.mp3"),
]
fileprivate var KurokoNoBasketSongs: [Song] = [
    .init(name: "KNB 1", image: "KNB 1" , songName: "KNB1.mp3"),
    .init(name: "KNB 2", image: "KNB 2" , songName: "KNB2.mp3"),
    .init(name: "KNB 3", image: "KNB 3" , songName: "KNB3.mp3"),
]
fileprivate var NarutoSongs: [Song] = [
    .init(name: "Naruto 1", image: "Naruto 1" , songName: "Naruto1.mp3"),
    .init(name: "Naruto 2", image: "Naruto 2" , songName: "Naruto2.mp3"),
    .init(name: "Naruto 3", image: "Naruto 3" , songName: "Naruto3.mp3"),
]


var animes: [Anime] = [
    .init(name: "One Piece", image: "One Piece", songs: OnePieceSongs),
    .init(name: "Kuroko No Basket", image: "Koruko No Basket", songs: KurokoNoBasketSongs),
    .init(name: "Naruto", image: "Naruto", songs: NarutoSongs)
    
]
