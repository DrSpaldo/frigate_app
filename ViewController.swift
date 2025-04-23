import UIKit
import WebKit

class ViewController: UIViewController {
    var webView: WKWebView!

    let cfAccessClientId = "TOKEN1"
    let cfAccessClientSecret = "TOKEN2"
    let baseURL = "https://frigate.laquinta.au/"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let config = WKWebViewConfiguration()
        webView = WKWebView(frame: self.view.frame, configuration: config)
        self.view.addSubview(webView)
        
        var request = URLRequest(url: URL(string: baseURL)!)
        request.setValue(cfAccessClientId, forHTTPHeaderField: "CF-Access-Client-Id")
        request.setValue(cfAccessClientSecret, forHTTPHeaderField: "CF-Access-Client-Secret")
        
        webView.load(request)
    }
}
