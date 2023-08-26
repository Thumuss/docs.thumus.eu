#import "@local/ghp:1.0.0": *
#show: project.with(title: "Introduction")
#set text(font: "Droid Serif")
#let data = json("../data.json")
#let a = json("../a.json")

#let makeURL = (domain) => { 
    let http = if (data.https) { "https" } else { "http" }
    let port = if ((data.https and data.port == 443) or (not data.https and data.port == 80)) {
        ""
    } else {
        ":" + data.port
    }
    http + "://" + domain + port + "" 
}

#show figure.where(kind: "code"): it => [
  #block(fill: rgb("#f7f7f7"), width: 100%, inset: 5pt)[#it.body]
  #set text(size: 12pt)
  Code #it.counter.display(it.numbering): #it.caption
]


#let code = (name, cont) => figure(caption: name, kind: "code", supplement: [Code])[
    #show raw.where(block: true): box.with(width: 50%)
    #align(left)[#raw(lang: cont.lang, cont.text.replace("$$", makeURL(data.api_domain)))]
]

#let codifyJSON = (text, jsonObj) => code(text, raw(lang: "json", [#jsonObj].text.replace("(", "{").replace(")", "}")))


= How to use it 

You will need to have a webhook set in your ENV (better will be a webhook from discord).

You will need next to follow these steps

== Step One, generate a verify token

You will need to post a request to `/token/create`.



Example : 
#code("Post to get a new verify token with curl", ```sh
curl -X POST $$/token/create
```)

== Step Two, get the token from your webhook and get the new token

After you got your verify token, you will need to send it to `/token/verify` with the *same* ip

#code("Post to verify the token", 
```sh
curl -d '{"token":"YOURTOKEN"}' \
-H "Content-Type: application/json" \
-X POST $$/token/verify
```
)