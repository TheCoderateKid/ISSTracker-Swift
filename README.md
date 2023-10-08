# IssTracker

Track the ISS using this swift package

Installation

.package(url: "https://github.com/TheCoderateKid/ISSTracker-Swift", .exact("1.0.0"))

How to run the code
```swift
    IssTracker.getISS { result in
        switch result {
        case .success(let iss):
            // iss position (lat & lng)
            // iss.position
            break
        case .failure(let failure):
        // error message
            break
        }
    }
```

Example JSON response from API
```json
{
    "timestamp": 1696802737,
    "message": "success",
    "iss_position": {
        "longitude": "121.0581",
        "latitude": "-18.5890"
    }
}
```
