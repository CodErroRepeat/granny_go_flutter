class TipsDataModel{
  String name = "",ImageUrl = "",desc = "";

  TipsDataModel(this.name, this.ImageUrl, this.desc);

  TipsDataModel.fromJson(Map<String,dynamic> json)
  {
    name = json['title'];
    desc =json['description'];
    ImageUrl = json['image'];
  }

}