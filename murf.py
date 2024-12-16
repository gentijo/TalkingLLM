
import requests
import json

url = "https://api.murf.ai/v1/speech/generate"

payload = json.dumps({
  "voiceId": "en-US-natalie",
  "style": "Promo",
  "text": "In this experiential e-learning module, you’ll master the basics of using this Text to Speech widget. Choose a voice, experiment with styles, explore languages, customize text, and play with various use-cases for a view into all that Murf offers.",
  "rate": 0,
  "pitch": 0,
  "sampleRate": 48000,
  "format": "MP3",
  "channelType": "MONO",
  "pronunciationDictionary": {},
  "encodeAsBase64": False,
  "variation": 1,
  "audioDuration": 0,
  "modelVersion": "GEN2",
  "multiNativeLocale": "en-US"
})
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'api-key': 'ap2_5a208b2f-0ae2-46b6-a20c-61bd7808b57c'
}

response = requests.request("POST", url, headers=headers, data=payload)

print(response.text)
    