
class NetflixModel {
    String? seasonId;
    List<Episodes>? episodes;

    NetflixModel({this.seasonId, this.episodes});

    NetflixModel.fromJson(Map<String, dynamic> json) {
        seasonId = json["seasonId"];
        episodes = json["episodes"] == null ? null : (json["episodes"] as List).map((e) => Episodes.fromJson(e)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["seasonId"] = seasonId;
        if(episodes != null) {
            _data["episodes"] = episodes?.map((e) => e.toJson()).toList();
        }
        return _data;
    }
}

class Episodes {
    String? episodeId;
    Availability? availability;
    int? bookmarkPosition;
    ContextualSynopsis? contextualSynopsis;
    int? displayRuntime;
    int? runtime;
    String? title;
    InterestingMoment? interestingMoment;
    Summary? summary;

    Episodes({this.episodeId, this.availability, this.bookmarkPosition, this.contextualSynopsis, this.displayRuntime, this.runtime, this.title, this.interestingMoment, this.summary});

    Episodes.fromJson(Map<String, dynamic> json) {
        episodeId = json["episodeId"];
        availability = json["availability"] == null ? null : Availability.fromJson(json["availability"]);
        bookmarkPosition = json["bookmarkPosition"];
        contextualSynopsis = json["contextualSynopsis"] == null ? null : ContextualSynopsis.fromJson(json["contextualSynopsis"]);
        displayRuntime = json["displayRuntime"];
        runtime = json["runtime"];
        title = json["title"];
        interestingMoment = json["interestingMoment"] == null ? null : InterestingMoment.fromJson(json["interestingMoment"]);
        summary = json["summary"] == null ? null : Summary.fromJson(json["summary"]);
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["episodeId"] = episodeId;
        if(availability != null) {
            _data["availability"] = availability?.toJson();
        }
        _data["bookmarkPosition"] = bookmarkPosition;
        if(contextualSynopsis != null) {
            _data["contextualSynopsis"] = contextualSynopsis?.toJson();
        }
        _data["displayRuntime"] = displayRuntime;
        _data["runtime"] = runtime;
        _data["title"] = title;
        if(interestingMoment != null) {
            _data["interestingMoment"] = interestingMoment?.toJson();
        }
        if(summary != null) {
            _data["summary"] = summary?.toJson();
        }
        return _data;
    }
}

class Summary {
    String? type;
    String? unifiedEntityId;
    int? id;
    bool? isOriginal;
    LiveEvent? liveEvent;
    int? idx;
    int? episode;
    int? season;
    bool? isPlayable;

    Summary({this.type, this.unifiedEntityId, this.id, this.isOriginal, this.liveEvent, this.idx, this.episode, this.season, this.isPlayable});

    Summary.fromJson(Map<String, dynamic> json) {
        type = json["type"];
        unifiedEntityId = json["unifiedEntityId"];
        id = json["id"];
        isOriginal = json["isOriginal"];
        liveEvent = json["liveEvent"] == null ? null : LiveEvent.fromJson(json["liveEvent"]);
        idx = json["idx"];
        episode = json["episode"];
        season = json["season"];
        isPlayable = json["isPlayable"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["type"] = type;
        _data["unifiedEntityId"] = unifiedEntityId;
        _data["id"] = id;
        _data["isOriginal"] = isOriginal;
        if(liveEvent != null) {
            _data["liveEvent"] = liveEvent?.toJson();
        }
        _data["idx"] = idx;
        _data["episode"] = episode;
        _data["season"] = season;
        _data["isPlayable"] = isPlayable;
        return _data;
    }
}

class LiveEvent {
    bool? hasLiveEvent;

    LiveEvent({this.hasLiveEvent});

    LiveEvent.fromJson(Map<String, dynamic> json) {
        hasLiveEvent = json["hasLiveEvent"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["hasLiveEvent"] = hasLiveEvent;
        return _data;
    }
}

class InterestingMoment {
    Image342X192? image342X192;

    InterestingMoment({this.image342X192});

    InterestingMoment.fromJson(Map<String, dynamic> json) {
        image342X192 = json["_342x192"] == null ? null : Image342X192.fromJson(json["_342x192"]);
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        if(image342X192 != null) {
            _data["_342x192"] = image342X192?.toJson();
        }
        return _data;
    }
}

class Image342X192 {
    Webp? webp;

    Image342X192({this.webp});

    Image342X192.fromJson(Map<String, dynamic> json) {
        webp = json["webp"] == null ? null : Webp.fromJson(json["webp"]);
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        if(webp != null) {
            _data["webp"] = webp?.toJson();
        }
        return _data;
    }
}

class Webp {
    String? type;
    Value? value;

    Webp({this.type, this.value});

    Webp.fromJson(Map<String, dynamic> json) {
        type = json["\$type"];
        value = json["value"] == null ? null : Value.fromJson(json["value"]);
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["\$type"] = type;
        if(value != null) {
            _data["value"] = value?.toJson();
        }
        return _data;
    }
}

class Value {
    int? width;
    int? height;
    String? url;
    String? imageKey;

    Value({this.width, this.height, this.url, this.imageKey});

    Value.fromJson(Map<String, dynamic> json) {
        width = json["width"];
        height = json["height"];
        url = json["url"];
        imageKey = json["image_key"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["width"] = width;
        _data["height"] = height;
        _data["url"] = url;
        _data["image_key"] = imageKey;
        return _data;
    }
}

class ContextualSynopsis {
    String? text;
    String? evidenceKey;

    ContextualSynopsis({this.text, this.evidenceKey});

    ContextualSynopsis.fromJson(Map<String, dynamic> json) {
        text = json["text"];
        evidenceKey = json["evidenceKey"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["text"] = text;
        _data["evidenceKey"] = evidenceKey;
        return _data;
    }
}

class Availability {
    bool? isPlayable;
    dynamic unplayableCause;

    Availability({this.isPlayable, this.unplayableCause});

    Availability.fromJson(Map<String, dynamic> json) {
        isPlayable = json["isPlayable"];
        unplayableCause = json["unplayableCause"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["isPlayable"] = isPlayable;
        _data["unplayableCause"] = unplayableCause;
        return _data;
    }
}