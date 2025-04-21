//
//  HomeViewModel.swift
//  pasacao-hotline
//
//  Created by Jco Bea on 4/20/25.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    
    @Published var hotlines = [Hotline]()
    
    init() {
        fetchData()
    }
    
    func fetchData() {
        let url = URL(string: "https://lvkdolhbctktrygamphh.supabase.co/rest/v1/Hotline")!
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue(Secrets.apiKey, forHTTPHeaderField: "Authorization")
        request.setValue(Secrets.apiKey, forHTTPHeaderField: "apikey")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("❌ Error fetching:", error)
                return
            }
            
            guard let data = data else {
                print("❌ No data")
                return
            }
            
            print("📦 Raw JSON:", String(data: data, encoding: .utf8) ?? "nil")
            
            do {
                let decoder = JSONDecoder()
                let hotlines = try decoder.decode([Hotline].self, from: data)
                
                DispatchQueue.main.async {
                    self.hotlines = hotlines.sorted(by: { $0.id ?? 0 < $1.id ?? 1 })
                }
            } catch {
                print("❌ Failed to decode:", error)
            }
        }.resume()
    
    }
}
