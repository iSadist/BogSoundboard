import AVFoundation

class AudioUtility {
    static func createAudioPlayer(filePath: String) -> AVAudioPlayer? {
        guard let urlPath = Bundle.main.path(forResource: filePath, ofType: "mp3") else { return nil }
        let url = URL(fileURLWithPath: urlPath)
        let player = try? AVAudioPlayer.init(contentsOf: url)
        return player
    }
}
