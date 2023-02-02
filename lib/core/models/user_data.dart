// class UserData {
//   String? uId;
//   String? countryCode;
//   String? phone;
//   String? firstName;
//   String? lastName;
//   String? userName;
//   String? createdAt;
//   String? updatedAt;
//   String? fcmToken;
//   List<String>? followersIds;
//   List<String>? requestedIds;
//   List<String>? requestedBy;
//   List<String>? tagPinIds;
//   Locations? location;
//   String? locationName;
//   List<String>? blockIds;
//   bool? isNearBy;
//   String? instagramLink;
//   String? snapchatLink;
//   bool? isPrivate;
//   bool? isDelete;
//   List<String>? blockedBy;
//   String id = '';
//   String? email;
//   String? profileUrl;
//   String? bio;
//   String? website;
//   bool? isSelect = false;

//   UserData(
//       {this.uId,
//       this.countryCode,
//       this.phone,
//       this.firstName,
//       this.lastName,
//       this.userName,
//       this.createdAt,
//       this.updatedAt,
//       this.fcmToken,
//       this.followersIds,
//       this.requestedIds,
//       this.requestedBy,
//       this.tagPinIds,
//       this.location,
//       this.blockIds,
//       this.isNearBy,
//       this.instagramLink,
//       this.snapchatLink,
//       this.isPrivate,
//       this.isDelete,
//       this.blockedBy,
//       this.email,
//       this.profileUrl,
//       this.bio, this.website, this.locationName, this.isSelect});

//   Map<String, dynamic> toJson() => {
//         'auth_id': uId,
//         'country_code': countryCode,
//         'phone': phone,
//         'first_name': firstName,
//         'last_name': lastName,
//         'user_name': userName,
//         'created_at': createdAt,
//         'updated_at': updatedAt,
//         'fcm_token': fcmToken,
//         'followers_ids': followersIds == null
//             ? []
//             : List<dynamic>.from(followersIds!.map((e) => e)).toList(),
//         'requested_ids': requestedIds == null
//             ? []
//             : List<dynamic>.from(requestedIds!.map((e) => e)).toList(),
//         'requested_by': requestedBy == null
//             ? []
//             : List<dynamic>.from(requestedBy!.map((e) => e)).toList(),
//         'tage_pin_ids': tagPinIds == null
//             ? []
//             : List<dynamic>.from(tagPinIds!.map((e) => e)).toList(),
//         'location': location == null ? null : location!.toJson(),
//         'block_ids': blockIds == null
//             ? []
//             : List<dynamic>.from(blockIds!.map((e) => e)).toList(),
//         'is_near_by': isNearBy,
//         'instagram_link': instagramLink,
//         'snapchat_link': snapchatLink,
//         'is_private': isPrivate,
//         'is_delete': isDelete,
//         'blocked_by': blockedBy == null
//             ? []
//             : List<dynamic>.from(blockedBy!.map((e) => e)).toList(),
//         'id': id,
//         'email': email,
//         'profile_url': profileUrl,
//         'bio': bio,
//         'website': website,
//         'location_name': locationName
//       };

//   UserData.fromJson(Map<String, dynamic> json) {
//     uId = json['auth_id'];
//     countryCode = json['country_code'];
//     phone = json['phone'];
//     firstName = json['first_name'];
//     lastName = json['last_name'];
//     userName = json['user_name'];
//     createdAt = json['created_at'];
//     updatedAt = json['update_at'];
//     fcmToken = json['fcm_token'];
//     followersIds = List<String>.from(json["followers_ids"] == null
//             ? []
//             : json["followers_ids"].map((x) => x))
//         .toList();
//     requestedIds = List<String>.from(json["requested_ids"] == null
//             ? []
//             : json["requested_ids"].map((x) => x))
//         .toList();
//     requestedBy = List<String>.from(json["requested_by"] == null
//             ? []
//             : json["requested_by"].map((x) => x))
//         .toList();
//     tagPinIds = List<String>.from(json["tag_pin_ids"] == null
//             ? []
//             : json["tag_pin_ids"].map((x) => x))
//         .toList();
//     location =
//         json['location'] == null ? null : Locations.fromJson(json['location']);
//     blockIds = List<String>.from(
//             json["block_ids"] == null ? [] : json["block_ids"].map((x) => x))
//         .toList();
//     isNearBy = json['is_near_by'];
//     instagramLink = json['instagram_link'];
//     snapchatLink = json['snapchat_link'];
//     isPrivate = json['is_private'];
//     isDelete = json['is_delete'];
//     blockedBy = List<String>.from(
//             json["blocked_by"] == null ? [] : json["blocked_by"].map((x) => x))
//         .toList();
//     id = json['id'];
//     email = json['email'];
//     profileUrl = json['profile_url'];
//     bio = json['bio'];
//     website = json['website'];
//     locationName = json['location_name'];
//   }
// }

// class Locations {
//   double? longitude;
//   double? latitude;
//   Locations({this.longitude, this.latitude});

//   Map<String, dynamic> toJson() => {
//         'longitude': longitude,
//         'latitude': latitude,
//       };
//   Locations.fromJson(Map<String, dynamic> json) {
//     longitude = json['longitude'];
//     latitude = json['latitude'];
//   }
// }
