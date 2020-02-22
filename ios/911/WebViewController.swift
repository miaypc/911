import UIKit
import WebKit

class WebViewController: UIViewController {
    private lazy var _webView: WKWebView = {
        let config = WKWebViewConfiguration()
        let webView = WKWebView(frame: .zero, configuration: config)
        webView.translatesAutoresizingMaskIntoConstraints = false
        webView.loadFileURL(self._webAppIndexURL, allowingReadAccessTo: _webAppDirectory)
        webView.backgroundColor = .red
        return webView
    }()

    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(_webView)
        _webView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        _webView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        _webView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        _webView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }

    private var _webAppDirectory: URL {
        guard let resources = Bundle.main.resourceURL else { preconditionFailure() }
        return resources.appendingPathComponent("web-app")
    }

    private var _webAppIndexURL: URL { _webAppDirectory.appendingPathComponent("index.html") }
}

