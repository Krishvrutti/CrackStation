import Foundation
public class CrackStation:Decrypter {
   
    public required init(){}
      
        
    
    
    static func loadDictionaryFromDisk() throws -> [String : String] {
        
        guard let path = Bundle.module.url(forResource: "data", withExtension: "json") else { return [:] }
        
        let data = try Data(contentsOf: path)
        let jsonResult = try JSONSerialization.jsonObject(with: data)
        
        if let temp: Dictionary = jsonResult as? Dictionary<String, String> {
            return temp
        } else {
            return [:]
        }
    }
    
    
    public func decrypt(shaHash: String) -> String? {
        let lookuptable = try? CrackStation.loadDictionaryFromDisk()
        return lookuptable?[shaHash]
        
        
        
    }
    
}
