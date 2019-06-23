curl -X POST -H "Authorization: key=AAAAVdcjvSI:APA91bEwIlmallqt0D7YKL7nUNq1WRMDL_5gC_Otuz8K7bKQBgglMMcZ5N9X890IVxT2anQZ7CI0fcvgGRP_ma15BD9MfbpyYmTLbI6dgUlX_NTV-1KSCDWxRZF4dM9dgMoLqqQXz58h" -H "Content-Type: application/json" -d '{
  "to": "cauiugElVEk:APA91bEnF6v0qboU23w3mWcGFeJx9xYPGk5LnP1kWPpibwzFSbjT0-7zCHvjw0BkvU1AyvO9bIJ9HpdCBTu1Jqg4AOlpuH0OOA3954WJFTfb0OeUjSSN9sjnlPgFHx99XyPzeax8nRLM",
  "notification": {
    "title": "FCM Message",
    "body": "This is an FCM Message",
    "icon": "./img/icons/android-chrome-192x192.png"
  }
}' https://fcm.googleapis.com/fcm/send