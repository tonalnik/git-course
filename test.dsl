workspace "test workspace" {

    model {
        user = person "User"
        softwareSystem = softwareSystem "Software System some test text" {
        }

        user -> softwareSystem "Uses"
    }

    views {
        systemContext softwareSystem "Diagram1" {
            include *
            autoLayout
        }

        theme default
    }

}
