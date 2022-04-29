workspace {

    model {
        user = person "User test2 "
        softwareSystem = softwareSystem "Software System some test text 222" {
        }

        user -> softwareSystem "Uses"
    }
    
    views {
        theme default
    }

}
