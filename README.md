# Half modal

**Simplest half modal.** Get pan gestures and transitions for free by simply punching a hole in a standard modal sheet.

## How it works

By adding a transparent view to the upper half of a modal, you can get a half modal with all the **transitions and the pan gesture for free.** See [`ModalViewController.swift`](Half%20Modal/Views/ModalViewController.swift) for details.

> For iOS 15+ you should just use [`UISheetPresentationController`](https://developer.apple.com/documentation/uikit/uisheetpresentationcontroller).

## Hide shadow

To get rid the shadow of the original modal view, you can resolve the next `UIDropShadowView` in the hierarchy, and set its `shadowColor` to `.clear`. See [`UIView+DropShadowView.swift`](Half%20Modal/Views/UIView+DropShadowView.swift) for details

```Swift
view.dropShadowView?.layer.shadowColor = UIColor.clear.cgColor
```

## License

> Licensed under the [**MIT License**](https://en.wikipedia.org/wiki/MIT_License).
