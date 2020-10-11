//
//  SongVC.swift
//  ios-hw4-p1
//
//  Created by hussain haidar almousawi on 10/11/20.
//

import UIKit
import AVFoundation


class SongVC: UIViewController {
    var songPlayer: AVAudioPlayer?

    
    var song: Song!
    @IBOutlet weak var songImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        configureSong()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {

    }
    
    func configureView()
    {
        songImageView.image = UIImage(named: song.image)
    }
    func configureSong()
    {
//        if let songPlayer = songPlayer, songPlayer.isPlaying
//        {
//            songPlayer.stop()
//        }
//        else
//        {
//            let a = song.name
//            let urlString = Bundle.main.path(forResource: a, ofType: "mp3")
//            do
//            {
//                try AVAudioSession.sharedInstance().setMode(.default)
//                try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
//
//                guard let urlString = urlString else {
//                    return
//                }
//
//                songPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
//
//                guard let songPlayer = songPlayer else
//                {
//                    return
//                }
//                songPlayer.play()
//            }
//            catch
//            {
//                print("meow")
//            }
//        }
//
//
//
//
        let path = Bundle.main.path(forResource: song.songName, ofType: nil)!
        let url = URL(fileURLWithPath: path)

        do {
            songPlayer = try AVAudioPlayer(contentsOf: url)
        } catch {
            // couldn't load file :(
        }
        
    }
    
    
    var played: Bool = false
    
    @IBAction func play(_ sender: UIButton)
    {
        if played {
            songPlayer!.pause()
            sender.setImage(UIImage(systemName: "play.circle.fill"), for: .normal)
        }
        else {
            songPlayer!.play()
            sender.setImage(UIImage(systemName: "pause.circle.fill"), for: .normal)

        }
        played.toggle()
    }
    
    
    
    @IBAction func forward()
    {
        
    }
    
    @IBAction func backward()
    {
        
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
