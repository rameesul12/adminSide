// To parse this JSON data, do
//
//     final searchResp = searchRespFromJson(jsonString);

import 'dart:convert';

SearchResp searchRespFromJson(String str) => SearchResp.fromJson(json.decode(str));

String searchRespToJson(SearchResp data) => json.encode(data.toJson());

class SearchResp {
    
    List<SearchResult?> results;
   

    SearchResp({
      
         this.results=const[],
       
    });

    factory SearchResp.fromJson(Map<String, dynamic> json) => SearchResp(
       
        results: List<SearchResult>.from(json["results"].map((x) => SearchResult.fromJson(x))),
      
    );

    Map<String, dynamic> toJson() => {
     
        "results": List<dynamic>.from(results.map((x) => x!.toJson())),
       
    };
}

class SearchResult {
  //  bool adult;
   // String? backdropPath;
   // List<int> genreIds;
    int id;
   // String originalLanguage;
    String originalTitle;
  //  String overview;
   // double popularity;
    String posterPath;
   // DateTime releaseDate;
    //String title;
    // bool video;
    // double voteAverage;
    // int voteCount;

   SearchResult({
        // required this.adult,
        // this.backdropPath,
        // required this.genreIds,
        required this.id,
      //  required this.originalLanguage,
        required this.originalTitle,
        // required this.overview,
        // required this.popularity,
        required this.posterPath,
      
    });

    factory SearchResult.fromJson(Map<String, dynamic> json) => SearchResult(
     //   adult: json["adult"],
        // backdropPath: json["backdrop_path"],
        // genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
        id: json["id"],
        //originalLanguage: json["original_language"],
        originalTitle: json["original_title"],
        // overview: json["overview"],
        // popularity: json["popularity"]?.toDouble(),
        posterPath: json["poster_path"],
        // releaseDate: DateTime.parse(json["release_date"]),
        // title: json["title"],
        // video: json["video"],
        // voteAverage: json["vote_average"]?.toDouble(),
        // voteCount: json["vote_count"],
    );

    Map<String, dynamic> toJson() => {
      //  "adult": adult,
     //   "backdrop_path": backdropPath,
    //    "genre_ids": List<dynamic>.from(genreIds.map((x) => x)),
        "id": id,
     //   "original_language": originalLanguage,
        "original_title": originalTitle,
      //  "overview": overview,
      //  "popularity": popularity,
        "poster_path": posterPath,
    //    "release_date": "${releaseDate.year.toString().padLeft(4, '0')}-${releaseDate.month.toString().padLeft(2, '0')}-${releaseDate.day.toString().padLeft(2, '0')}",
        // "title": title,
        // "video": video,
        // "vote_average": voteAverage,
        // "vote_count": voteCount,
    };
}
