import 'dart:convert';

class GithubUserModel {
  final String login;
  final String avatar_url;
  final String? location;
  final String? name;
  final int? followers;
  final int? public_repos;


  GithubUserModel({
    required this.login, 
    required this.avatar_url, 
    this.location, this.name, 
    this.followers, 
    this.public_repos
    });


    Map<String, dynamic> toMap() {
      return <String,dynamic> {
        'login': login,
        'avatar_url' : avatar_url,
        'location' : location,
        'name' : name,
        'followers' : followers,
        'publicRepos' : public_repos,
      };
    }

    factory GithubUserModel.fromMap(Map<String, dynamic> map) {
      return GithubUserModel(
        login: map['login'],
        avatar_url: map ['avatar_url'],
        location: map ['location'],
        name: map ['name'],
        followers: map ['followers'],
        public_repos: map ['public_repos'],
        );
    }

    String toJson() => json.encode(toMap());

    factory GithubUserModel.fromJson(String source) => GithubUserModel.fromMap(json as Map<String, dynamic>);
}