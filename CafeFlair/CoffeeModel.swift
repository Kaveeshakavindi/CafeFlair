import SwiftUI

class CoffeeModel: ObservableObject {
    @Published var coffees: [Coffee] = []
    //var DATA_URL = "http://172.20.10.3:8080/coffees"
var DATA_URL = "http://localhost:8080/coffees"
    
    func fetchCoffees() {
        guard let url = URL(string: DATA_URL) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let response = response as? HTTPURLResponse {
                print("HTTP Status Code: \(response.statusCode)")
                print("Response Headers: \(response.allHeaderFields)")
            }
            
            if let data = data {
                do {
                    let coffees = try JSONDecoder().decode([Coffee].self, from: data)
                    DispatchQueue.main.async {
                        self.coffees = coffees
                    }
                } catch {
                    print("Error decoding data: \(error)")
                }
            } else if let error = error {
                print("Error fetching data: \(error.localizedDescription)") 
            }
        }.resume()
    }
}
