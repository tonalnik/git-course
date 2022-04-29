workspace {

    model {
        user = person "User"
        softwareSystem = softwareSystem "Software System some test text" {
        }

        user -> softwareSystem "Uses"
    }
        theme default
    }

}
