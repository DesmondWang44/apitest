
import Foundation


struct APIProduct : Decodable {
    
    
    var MemberInfo : String?
    var MemberAge : String?
    var StoreName : String?
    var Data : [APIProductDetail]?

}


struct APIProductDetail : Decodable {
    var ProductName : String?
    var ProductPrice : Float?
    var IsPay : String?
    var IsTake : String?
    var IsArrive : String?
    var Image : String?
    var QTY : Int?
}



struct APIShopMoney : Decodable {
    var RestOfShopMoney : Float
    var Data : [APIShopMoneyDetail]
}


struct APIShopMoneyDetail : Decodable {
    var SysRemark : String?
    var HPay : Float?
    var IOKind :  String?
    var SetData : String?
}


struct APISaleProductDetail : Decodable {
    var ProductId : String?
    var ProductName : String?
    var ProductPrice : Float?
    var ProductLink : String?
    var ProductPic :String?
    var Productabndat:String?
    
}


struct APISaleProducts : Decodable {
    var Data : [APISaleProductDetail]
    

}

struct APIHistorySaleList : Decodable {
    var Info : String?
    var StoreName : String?
    var Data : [APIDetailHistroySaleList]
    
}



struct APIDetailHistroySaleList : Decodable {
    
    var ProductName : String?
    var QTY : Int?
    var Abndat : String?
    var Remark : String?
    var TakeKind : String?
    var ProductPrice : Float?
    var PayTime : String?
    var Istake : String?
    var TakeTime : String?
    var PayKind : String?
    var FbMessage : String?
    var ImageUrl : String?
    
}

struct APIPreOrderPorductList : Decodable {
    var info : String?
    var Data : [APIPreOrderProductDetail]
}

struct APIPreOrderProductDetail : Decodable {
    var ProductId : String?
    var ProductName : String?
    var ProductPrice : Decimal?
    var ProductSpc : String?
    var ProductDescription : String?
    var ProductPic : String?
    var ProductSpcPrice : String?
    
}

struct APIFinalOrderSet : Codable {
    let WorkID : String
    let MemberID : String
    let OrderItemList : String
    let OrderSpcList : String
    let OrderPriceList : String
    let OrderQTY : String
    
}
