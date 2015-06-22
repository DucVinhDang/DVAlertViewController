# DVAlertViewController
DVAlertViewController is a third party help you to display many type of alert and you can customize it if you want, i want to use a new kind of AlertViewController instead of Apple's so i decided to create it, i hope you like it ! Thanks

## Setup
Go to anywhere you want to show your alert and write the following code below:
```
var alert = DVAlertViewController()
```
It's used to create a new alert, now you want to show any types of alert you want, let's do it!!!
I bring to you 6 types of DVAlertViewController:
* Success Alert:
```
alert.showAlertSuccess(target: self, delegate: self, title:"Wonderful", subTitle: "You have finished this event. Now you can send your result to all your friends.", duration: 0.8, cancelButtonTitle: "Cancel", otherButtonsTitles: ["Send Result", "Feedback", "Report", "Setting"], animate: true)
```

* Info Alert:
```
alert.showAlertInfo(target: self, delegate: self, title:"Wonderful", subTitle: "You have finished this event. Now you can send your result to all your friends.", duration: 0.7, cancelButtonTitle: "Cancel", otherButtonsTitles: ["Send Result", "Feedback"], animate: true)
```

* Warning Alert:
```
alert.showAlertWarning(target: self, delegate: self, title:"Wonderful", subTitle: "You have finished this event. Now you can send your result to all your friends.", duration: 0.8, cancelButtonTitle: "Cancel", otherButtonsTitles: ["Send Result", "Feedback"], animate: true)
```

* Error Alert:
```
alert.showAlertError(target: self, title: "Errors detected", subTitle: "You are in trouble!!! There are so many errors right here, please do something or your device will be destroyed !!!", cancelButtonTitle: "I know it")
```

* Notice Alert:
```
alert.showAlertNotice(target: self, delegate: self, title:"Wonderful", subTitle: "You have finished this event. Now you can send your result to all your friends.", duration: 0.7, cancelButtonTitle: "Cancel", otherButtonsTitles: ["Send Result", "Feedback"], animate: true)
```

* Normal Alert:
```
alert.showAlertNormal(target: self, delegate: self, title:"Wonderful", subTitle: "You have finished this event. Now you can send your result to all your friends.", duration: 0.7, cancelButtonTitle: "Cancel", otherButtonsTitles: ["Send Result", "Feedback"], animate: true)
```
