#  Half modal

Simplest half modal: a modal in half. 😆

> For iOS 15+ you should just use [`UISheetPresentationController`](https://developer.apple.com/documentation/uikit/uisheetpresentationcontroller).

## How it works

By adding a transparent view to the upper half of a modal, you can get a half modal with all the **transitions and the pan gesture for free.**

> The project uses a couple of convinience extension from [Declarative UIKit with 10 lines of code](http://blog.eppz.eu/declarative-uikit-with-10-lines-of-code/), but it is entirely optional.

## Hide shadow

To get rid the shadow of the original modal view, you can resolve the next `UIDropShadowView` in the hierarchy, and set its `shadowColor` to `.clear`.

```Swift
view.dropShadowView?.layer.shadowColor = UIColor.clear.cgColor
```

## License

> Licensed under the [**MIT License**](https://en.wikipedia.org/wiki/MIT_License).
