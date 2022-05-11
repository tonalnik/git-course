workspace {
    model {
        sourceSystems = softwareSystem "SA" "Источники данных" {
        }
        
        analyst = person "an" "Аналитик" {
        }

        olap = softwareSystem "OLAP" {
            analyst -> this "Смотрит отчеты"
        }

        dev = person "DWH Developer" {
        }
    
        solution = softwareSystem "DWH Solution" " sadfasd asdfads description1" {
            mdt = container MDT 
            dwh = container DWH {
                // technology "MSSQL 2016"

                sa = component SA {
                    sourceSystems -> this "предоставляет данные"     
                }
                hist = component Hist {
                    sa -> this "some 123"     
                }
                fact = component Fact {
                    hist -> this "some 123"     
                }
                marts = component Marts {
                    fact -> this "some 123"  
                    this -> olap "данные из витрин"
                }
                
                dwh -> mdt "Данные справочников на меппинг"
                mdt -> dwh "Замепленные данные"
            }
            dcore = container DCore {
                // technology "MDT ASP.NET"
                // description "Хранит информацию по маршрутам связывается с внешними источниками"
                this -> dwh "Управляет загрузкой"
                dev -> dcore "Настраивает загрузки"
            }
        }
    }
    
    views {
        theme default
    }
}
