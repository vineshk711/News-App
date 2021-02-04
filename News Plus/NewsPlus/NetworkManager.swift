import WebKit
class NetworkManager {
    private let baseUrlString = "http://newsapi.org/v2/"
    private let topHeadline = "top-headlines?country=in&category=technology"
    
func getNews(completion: @escaping (([News]?) -> Void)) {
    let urlString = "\(baseUrlString)\(topHeadline)&apiKey=\(API.key)"
    guard let url = URL(string: urlString) else {
        completion(nil)
        print("Invalid url")
        return
        
    }
    URLSession.shared.dataTask(with: url) { data, response, error in guard error == nil, let data = data else {
        completion(nil)
        print("invalid response")
        return
        
    }
    let newsRes = try? JSONDecoder().decode(NewsEnvelope.self, from: data)
    newsRes == nil ? completion(nil) : completion(newsRes!.articles) }.resume()
}
func getImage(urlString: String, completion: @escaping (Data?) -> Void){
    guard let url = URL(string: urlString) else { completion(nil)
        print("invalid imageUrl")
        return
}
URLSession.shared.dataTask(with: url) { (data, response, error) in
    guard error == nil, let data = data else { completion(nil)
        print("error")
        return
    }
completion(data) }.resume()
} }
