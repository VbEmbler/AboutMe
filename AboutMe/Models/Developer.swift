//
//  Developer.swift
//  AboutMe
//
//  Created by Vladimir on 30/08/2020.
//  Copyright © 2020 Embler. All rights reserved.
//

struct Developer {
    var name = ""
    var photo = ""
    var about = ""
    var workInfo = [String: String]()
    var hobby = [String: String]()
}

extension Developer {
    static func getGeneralInformation() -> Developer {
        return Developer(name: "Vladimir Bondarenko",
                         photo: "VladimirBondarenko",
                         about: """
                                Родился в г.Симферополе. 35 лет. В основном \
                                работал в сфере IT: от эникейщика до конмады \
                                саппорта. Был перерыв небольшой, но решил \
                                вернуться в разработку.
                                """)
        
    }
    
    static func getWorkInfo() -> Developer {
        return Developer(
            name: "Vladimir Bondarenko",
            workInfo: [
            "02.2015 - 10.2016": "Компания Ардинвест. Junior PHP developer",
            "06.2011 - 12.2014": "Mary Kay Inc. Net Developer, Support Team. C#"
        ])
    }
    
    static func getHobby() -> Developer{
        return Developer(
            name: "Vladimir Bondarenko",
            hobby: [
            "футбол": "Играю в футбол. Предпочитаю мини футбол",
            "покатушки": """
                Люблю кататься на всем, что имеет колеса: картинг, велосипед,
                квадроциклы, питбайки
                """
        ])
    }
}
