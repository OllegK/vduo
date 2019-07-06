curl -X POST -H "Authorization: key=AAAAVdcjvSI:APA91bEwIlmallqt0D7YKL7nUNq1WRMDL_5gC_Otuz8K7bKQBgglMMcZ5N9X890IVxT2anQZ7CI0fcvgGRP_ma15BD9MfbpyYmTLbI6dgUlX_NTV-1KSCDWxRZF4dM9dgMoLqqQXz58h" -H "Content-Type: application/json" -d '{
  "to": "d_JQQBGcvIU:APA91bFkRNHKDfDaC3iBAH5oc7E40AnTaS7St0GG-YKPQEWZrMYPK6by820NIqQvQXqF-xiYEVVaGBo6K7hFVoTTtee-fH8ADegqg7WWdz9fIxMhOBD155cUb2wGkVyO32RbnSr7flKk",
  "notification": {
    "title": "FCM Message",
    "body": "This is an FCM Message",
    "icon": "./img/icons/android-chrome-192x192.png"
  }
}' https://fcm.googleapis.com/fcm/send