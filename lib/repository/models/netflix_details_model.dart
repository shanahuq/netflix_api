
class NetflixDetailsModel {
    String? titleId;
    Details? details;

    NetflixDetailsModel({this.titleId, this.details});

    NetflixDetailsModel.fromJson(Map<String, dynamic> json) {
        titleId = json["titleId"];
        details = json["details"] == null ? null : Details.fromJson(json["details"]);
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["titleId"] = titleId;
        if(details != null) {
            _data["details"] = details?.toJson();
        }
        return _data;
    }
}

class Details {
    TrackIds? trackIds;
    List<Tags>? tags;
    List<Cast>? cast;
    List<Creators>? creators;
    List<dynamic>? directors;
    List<dynamic>? writers;
    List<Genres>? genres;
    Availability? availability;
    ContextualSynopsis? contextualSynopsis;
    CurrentContextualSynopsis? currentContextualSynopsis;
    Maturity? maturity;
    String? unifiedEntityId;
    int? id;
    String? type;
    bool? isOriginal;
    LiveEvent? liveEvent;
    int? mostLikedVideoId;
    int? videoId;
    String? requestId;
    String? userRatingRequestId;
    String? title;
    dynamic copyright;
    int? releaseYear;
    bool? watched;
    bool? hasAudioDescription;
    String? synopsis;
    String? synopsisRegular;
    bool? hasSensitiveMetaData;
    Delivery? delivery;
    TitleMaturity? titleMaturity;
    Broadcaster? broadcaster;
    TrailerSummary? trailerSummary;
    String? supplementalMessageIcon;
    VideoMerch? videoMerch;
    String? seasonAbbr;
    int? seasonCount;
    String? numSeasonsLabel;
    int? episodeCount;
    String? episodeTitle;
    LogoImage? logoImage;
    BackgroundImage? backgroundImage;

    Details({this.trackIds, this.tags, this.cast, this.creators, this.directors, this.writers, this.genres, this.availability, this.contextualSynopsis, this.currentContextualSynopsis, this.maturity, this.unifiedEntityId, this.id, this.type, this.isOriginal, this.liveEvent, this.mostLikedVideoId, this.videoId, this.requestId, this.userRatingRequestId, this.title, this.copyright, this.releaseYear, this.watched, this.hasAudioDescription, this.synopsis, this.synopsisRegular, this.hasSensitiveMetaData, this.delivery, this.titleMaturity, this.broadcaster, this.trailerSummary, this.supplementalMessageIcon, this.videoMerch, this.seasonAbbr, this.seasonCount, this.numSeasonsLabel, this.episodeCount, this.episodeTitle, this.logoImage, this.backgroundImage});

    Details.fromJson(Map<String, dynamic> json) {
        trackIds = json["trackIds"] == null ? null : TrackIds.fromJson(json["trackIds"]);
        tags = json["tags"] == null ? null : (json["tags"] as List).map((e) => Tags.fromJson(e)).toList();
        cast = json["cast"] == null ? null : (json["cast"] as List).map((e) => Cast.fromJson(e)).toList();
        creators = json["creators"] == null ? null : (json["creators"] as List).map((e) => Creators.fromJson(e)).toList();
        directors = json["directors"] ?? [];
        writers = json["writers"] ?? [];
        genres = json["genres"] == null ? null : (json["genres"] as List).map((e) => Genres.fromJson(e)).toList();
        availability = json["availability"] == null ? null : Availability.fromJson(json["availability"]);
        contextualSynopsis = json["contextualSynopsis"] == null ? null : ContextualSynopsis.fromJson(json["contextualSynopsis"]);
        currentContextualSynopsis = json["currentContextualSynopsis"] == null ? null : CurrentContextualSynopsis.fromJson(json["currentContextualSynopsis"]);
        maturity = json["maturity"] == null ? null : Maturity.fromJson(json["maturity"]);
        unifiedEntityId = json["unifiedEntityId"];
        id = json["id"];
        type = json["type"];
        isOriginal = json["isOriginal"];
        liveEvent = json["liveEvent"] == null ? null : LiveEvent.fromJson(json["liveEvent"]);
        mostLikedVideoId = json["mostLikedVideoId"];
        videoId = json["videoId"];
        requestId = json["requestId"];
        userRatingRequestId = json["userRatingRequestId"];
        title = json["title"];
        copyright = json["copyright"];
        releaseYear = json["releaseYear"];
        watched = json["watched"];
        hasAudioDescription = json["hasAudioDescription"];
        synopsis = json["synopsis"];
        synopsisRegular = json["synopsisRegular"];
        hasSensitiveMetaData = json["hasSensitiveMetaData"];
        delivery = json["delivery"] == null ? null : Delivery.fromJson(json["delivery"]);
        titleMaturity = json["titleMaturity"] == null ? null : TitleMaturity.fromJson(json["titleMaturity"]);
        broadcaster = json["broadcaster"] == null ? null : Broadcaster.fromJson(json["broadcaster"]);
        trailerSummary = json["trailerSummary"] == null ? null : TrailerSummary.fromJson(json["trailerSummary"]);
        supplementalMessageIcon = json["supplementalMessageIcon"];
        videoMerch = json["videoMerch"] == null ? null : VideoMerch.fromJson(json["videoMerch"]);
        seasonAbbr = json["seasonAbbr"];
        seasonCount = json["seasonCount"];
        numSeasonsLabel = json["numSeasonsLabel"];
        episodeCount = json["episodeCount"];
        episodeTitle = json["episodeTitle"];
        logoImage = json["logoImage"] == null ? null : LogoImage.fromJson(json["logoImage"]);
        backgroundImage = json["backgroundImage"] == null ? null : BackgroundImage.fromJson(json["backgroundImage"]);
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        if(trackIds != null) {
            _data["trackIds"] = trackIds?.toJson();
        }
        if(tags != null) {
            _data["tags"] = tags?.map((e) => e.toJson()).toList();
        }
        if(cast != null) {
            _data["cast"] = cast?.map((e) => e.toJson()).toList();
        }
        if(creators != null) {
            _data["creators"] = creators?.map((e) => e.toJson()).toList();
        }
        if(directors != null) {
            _data["directors"] = directors;
        }
        if(writers != null) {
            _data["writers"] = writers;
        }
        if(genres != null) {
            _data["genres"] = genres?.map((e) => e.toJson()).toList();
        }
        if(availability != null) {
            _data["availability"] = availability?.toJson();
        }
        if(contextualSynopsis != null) {
            _data["contextualSynopsis"] = contextualSynopsis?.toJson();
        }
        if(currentContextualSynopsis != null) {
            _data["currentContextualSynopsis"] = currentContextualSynopsis?.toJson();
        }
        if(maturity != null) {
            _data["maturity"] = maturity?.toJson();
        }
        _data["unifiedEntityId"] = unifiedEntityId;
        _data["id"] = id;
        _data["type"] = type;
        _data["isOriginal"] = isOriginal;
        if(liveEvent != null) {
            _data["liveEvent"] = liveEvent?.toJson();
        }
        _data["mostLikedVideoId"] = mostLikedVideoId;
        _data["videoId"] = videoId;
        _data["requestId"] = requestId;
        _data["userRatingRequestId"] = userRatingRequestId;
        _data["title"] = title;
        _data["copyright"] = copyright;
        _data["releaseYear"] = releaseYear;
        _data["watched"] = watched;
        _data["hasAudioDescription"] = hasAudioDescription;
        _data["synopsis"] = synopsis;
        _data["synopsisRegular"] = synopsisRegular;
        _data["hasSensitiveMetaData"] = hasSensitiveMetaData;
        if(delivery != null) {
            _data["delivery"] = delivery?.toJson();
        }
        if(titleMaturity != null) {
            _data["titleMaturity"] = titleMaturity?.toJson();
        }
        if(broadcaster != null) {
            _data["broadcaster"] = broadcaster?.toJson();
        }
        if(trailerSummary != null) {
            _data["trailerSummary"] = trailerSummary?.toJson();
        }
        _data["supplementalMessageIcon"] = supplementalMessageIcon;
        if(videoMerch != null) {
            _data["videoMerch"] = videoMerch?.toJson();
        }
        _data["seasonAbbr"] = seasonAbbr;
        _data["seasonCount"] = seasonCount;
        _data["numSeasonsLabel"] = numSeasonsLabel;
        _data["episodeCount"] = episodeCount;
        _data["episodeTitle"] = episodeTitle;
        if(logoImage != null) {
            _data["logoImage"] = logoImage?.toJson();
        }
        if(backgroundImage != null) {
            _data["backgroundImage"] = backgroundImage?.toJson();
        }
        return _data;
    }
}

class BackgroundImage {
    String? videoId;
    String? url;
    int? width;
    int? height;
    String? imageKey;

    BackgroundImage({this.videoId, this.url, this.width, this.height, this.imageKey});

    BackgroundImage.fromJson(Map<String, dynamic> json) {
        videoId = json["videoId"];
        url = json["url"];
        width = json["width"];
        height = json["height"];
        imageKey = json["image_key"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["videoId"] = videoId;
        _data["url"] = url;
        _data["width"] = width;
        _data["height"] = height;
        _data["image_key"] = imageKey;
        return _data;
    }
}

class LogoImage {
    int? videoId;
    String? url;
    String? type;
    int? width;
    int? height;
    String? extension;
    String? size;
    String? imageKey;

    LogoImage({this.videoId, this.url, this.type, this.width, this.height, this.extension, this.size, this.imageKey});

    LogoImage.fromJson(Map<String, dynamic> json) {
        videoId = json["videoId"];
        url = json["url"];
        type = json["type"];
        width = json["width"];
        height = json["height"];
        extension = json["extension"];
        size = json["size"];
        imageKey = json["imageKey"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["videoId"] = videoId;
        _data["url"] = url;
        _data["type"] = type;
        _data["width"] = width;
        _data["height"] = height;
        _data["extension"] = extension;
        _data["size"] = size;
        _data["imageKey"] = imageKey;
        return _data;
    }
}

class VideoMerch {
    String? unifiedEntityId;
    int? videoId;
    int? id;
    int? start;
    String? computeId;

    VideoMerch({this.unifiedEntityId, this.videoId, this.id, this.start, this.computeId});

    VideoMerch.fromJson(Map<String, dynamic> json) {
        unifiedEntityId = json["unifiedEntityId"];
        videoId = json["videoId"];
        id = json["id"];
        start = json["start"];
        computeId = json["computeId"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["unifiedEntityId"] = unifiedEntityId;
        _data["videoId"] = videoId;
        _data["id"] = id;
        _data["start"] = start;
        _data["computeId"] = computeId;
        return _data;
    }
}

class TrailerSummary {
    int? length;

    TrailerSummary({this.length});

    TrailerSummary.fromJson(Map<String, dynamic> json) {
        length = json["length"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["length"] = length;
        return _data;
    }
}

class Broadcaster {
    dynamic broadcasterName;

    Broadcaster({this.broadcasterName});

    Broadcaster.fromJson(Map<String, dynamic> json) {
        broadcasterName = json["broadcasterName"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["broadcasterName"] = broadcasterName;
        return _data;
    }
}

class TitleMaturity {
    int? level;

    TitleMaturity({this.level});

    TitleMaturity.fromJson(Map<String, dynamic> json) {
        level = json["level"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["level"] = level;
        return _data;
    }
}

class Delivery {
    bool? has3D;
    bool? hasHd;
    bool? hasUltraHd;
    bool? hasHdr;
    bool? hasDolbyVision;
    bool? hasDolbyAtmos;
    bool? has51Audio;
    String? quality;
    bool? hasAudioAssistive;
    bool? hasTextClosedCaptions;
    bool? hasAudioSpatial;

    Delivery({this.has3D, this.hasHd, this.hasUltraHd, this.hasHdr, this.hasDolbyVision, this.hasDolbyAtmos, this.has51Audio, this.quality, this.hasAudioAssistive, this.hasTextClosedCaptions, this.hasAudioSpatial});

    Delivery.fromJson(Map<String, dynamic> json) {
        has3D = json["has3D"];
        hasHd = json["hasHD"];
        hasUltraHd = json["hasUltraHD"];
        hasHdr = json["hasHDR"];
        hasDolbyVision = json["hasDolbyVision"];
        hasDolbyAtmos = json["hasDolbyAtmos"];
        has51Audio = json["has51Audio"];
        quality = json["quality"];
        hasAudioAssistive = json["hasAudioAssistive"];
        hasTextClosedCaptions = json["hasTextClosedCaptions"];
        hasAudioSpatial = json["hasAudioSpatial"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["has3D"] = has3D;
        _data["hasHD"] = hasHd;
        _data["hasUltraHD"] = hasUltraHd;
        _data["hasHDR"] = hasHdr;
        _data["hasDolbyVision"] = hasDolbyVision;
        _data["hasDolbyAtmos"] = hasDolbyAtmos;
        _data["has51Audio"] = has51Audio;
        _data["quality"] = quality;
        _data["hasAudioAssistive"] = hasAudioAssistive;
        _data["hasTextClosedCaptions"] = hasTextClosedCaptions;
        _data["hasAudioSpatial"] = hasAudioSpatial;
        return _data;
    }
}

class LiveEvent {
    LiveEvent();

    LiveEvent.fromJson(Map<String, dynamic> json) {

    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};

        return _data;
    }
}

class Maturity {
    Rating? rating;

    Maturity({this.rating});

    Maturity.fromJson(Map<String, dynamic> json) {
        rating = json["rating"] == null ? null : Rating.fromJson(json["rating"]);
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        if(rating != null) {
            _data["rating"] = rating?.toJson();
        }
        return _data;
    }
}

class Rating {
    String? value;
    String? maturityDescription;
    String? specificRatingReason;
    int? maturityLevel;
    String? board;
    int? boardId;
    int? ratingId;
    List<Reasons>? reasons;

    Rating({this.value, this.maturityDescription, this.specificRatingReason, this.maturityLevel, this.board, this.boardId, this.ratingId, this.reasons});

    Rating.fromJson(Map<String, dynamic> json) {
        value = json["value"];
        maturityDescription = json["maturityDescription"];
        specificRatingReason = json["specificRatingReason"];
        maturityLevel = json["maturityLevel"];
        board = json["board"];
        boardId = json["boardId"];
        ratingId = json["ratingId"];
        reasons = json["reasons"] == null ? null : (json["reasons"] as List).map((e) => Reasons.fromJson(e)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["value"] = value;
        _data["maturityDescription"] = maturityDescription;
        _data["specificRatingReason"] = specificRatingReason;
        _data["maturityLevel"] = maturityLevel;
        _data["board"] = board;
        _data["boardId"] = boardId;
        _data["ratingId"] = ratingId;
        if(reasons != null) {
            _data["reasons"] = reasons?.map((e) => e.toJson()).toList();
        }
        return _data;
    }
}

class Reasons {
    int? id;
    dynamic levelDescription;
    String? reasonDescription;

    Reasons({this.id, this.levelDescription, this.reasonDescription});

    Reasons.fromJson(Map<String, dynamic> json) {
        id = json["id"];
        levelDescription = json["levelDescription"];
        reasonDescription = json["reasonDescription"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["id"] = id;
        _data["levelDescription"] = levelDescription;
        _data["reasonDescription"] = reasonDescription;
        return _data;
    }
}

class CurrentContextualSynopsis {
    String? text;
    String? evidenceKey;

    CurrentContextualSynopsis({this.text, this.evidenceKey});

    CurrentContextualSynopsis.fromJson(Map<String, dynamic> json) {
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

class Genres {
    int? id;
    String? name;

    Genres({this.id, this.name});

    Genres.fromJson(Map<String, dynamic> json) {
        id = json["id"];
        name = json["name"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["id"] = id;
        _data["name"] = name;
        return _data;
    }
}

class Creators {
    int? id;
    String? name;

    Creators({this.id, this.name});

    Creators.fromJson(Map<String, dynamic> json) {
        id = json["id"];
        name = json["name"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["id"] = id;
        _data["name"] = name;
        return _data;
    }
}

class Cast {
    int? id;
    String? name;

    Cast({this.id, this.name});

    Cast.fromJson(Map<String, dynamic> json) {
        id = json["id"];
        name = json["name"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["id"] = id;
        _data["name"] = name;
        return _data;
    }
}

class Tags {
    int? id;
    String? name;

    Tags({this.id, this.name});

    Tags.fromJson(Map<String, dynamic> json) {
        id = json["id"];
        name = json["name"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["id"] = id;
        _data["name"] = name;
        return _data;
    }
}

class TrackIds {
    int? videoId;
    int? trackIdJaw;
    int? trackIdJawEpisode;
    int? trackIdJawTrailer;
    int? trackId;

    TrackIds({this.videoId, this.trackIdJaw, this.trackIdJawEpisode, this.trackIdJawTrailer, this.trackId});

    TrackIds.fromJson(Map<String, dynamic> json) {
        videoId = json["videoId"];
        trackIdJaw = json["trackId_jaw"];
        trackIdJawEpisode = json["trackId_jawEpisode"];
        trackIdJawTrailer = json["trackId_jawTrailer"];
        trackId = json["trackId"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["videoId"] = videoId;
        _data["trackId_jaw"] = trackIdJaw;
        _data["trackId_jawEpisode"] = trackIdJawEpisode;
        _data["trackId_jawTrailer"] = trackIdJawTrailer;
        _data["trackId"] = trackId;
        return _data;
    }
}