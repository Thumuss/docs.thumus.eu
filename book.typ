#import "@preview/book:0.2.1": *
#show: book
#let data = json("data.json")
#book-meta(
    title: "Docs for " + data.api_domain,
    description: "Simple book about the documentation of the api of this app",
    authors: ("Thumus",),
    language: "en",
    summary: [
        #prefix-chapter("intro.typ")[Introduction]

        = #data.api_domain
        #chapter("htui/api.typ", section: "1")[How to use it]
        #chapter(none, section: "2")[Routes]
        - #chapter(none, section: "2.1")[/token]
          - #chapter(none, section: "2.1.1")[/token/create]
          - #chapter(none, section: "2.1.2")[/token/verify]
        - #chapter(none, section: "2.2")[/code]
            - #chapter(none, section: "2.2.1")[/code/create]
            - #chapter(none, section: "2.2.2")[/code/list]
            - #chapter(none, section: "2.2.3")[/code/delete]
        #chapter(none, section: "3")[Status]
        - #chapter(none, section: "3.1")[Exceptions]
          - #chapter(none, section: "3.1.1")[NotFoundException]
          - #chapter(none, section: "3.1.2")[UnauthorizeException]
          - #chapter(none, section: "3.1.3")[BadTokenException]
          - #chapter(none, section: "3.1.4")[MissingPortException]
          - #chapter(none, section: "3.1.5")[MissingTokenException]
          - #chapter(none, section: "3.1.6")[MissingTokenVerifyException]
          - #chapter(none, section: "3.1.7")[BadTokenVerifyException]
          - #chapter(none, section: "3.1.8")[MissingCodeException]
          - #chapter(none, section: "3.1.9")[CodeNotFoundException]
        - #chapter(none, section: "3.2")[OK]
          - #chapter(none, section: "3.2.1")[GenericResponse]
          - #chapter(none, section: "3.2.1")[VerifyTokenCreated]
          - #chapter(none, section: "3.2.1")[VerifyTokenAccepted]
          - #chapter(none, section: "3.2.1")[CodeCreated]
          - #chapter(none, section: "3.2.1")[ListGiven]
          - #chapter(none, section: "3.2.1")[CodeDeleted]

        = #data.serving_domain
        = #data.domain
    ]
)

#build-meta(
    dest-dir: "../backend/docs"
)