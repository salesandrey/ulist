import 'dart:convert';

ChartModel? chartModelFromJson(String str) => ChartModel.fromJson(json.decode(str));

String chartModelToJson(ChartModel? data) => json.encode(data!.toJson());

class ChartModel {
  ChartModel({this.chart});

  Chart? chart;

  factory ChartModel.fromJson(Map<String, dynamic> json) => ChartModel(chart: Chart.fromJson(json["chart"]));

  Map<String, dynamic> toJson() => {
    "chart": chart!.toJson(),
  };
}

class Chart {
  Chart({
    this.result,
    this.error,
  });

  List<Result?>? result;
  dynamic error;

  factory Chart.fromJson(Map<String, dynamic> json) => Chart(
    result: json["result"] == null ? [] : List<Result?>.from(json["result"]!.map((x) => Result.fromJson(x))),
    error: json["error"],
  );

  Map<String, dynamic> toJson() => {
    "result": result == null ? [] : List<dynamic>.from(result!.map((x) => x!.toJson())),
    "error": error,
  };
}

class Result {
  Result({
    this.meta,
    this.timestamp,
    this.indicators,
  });

  Meta? meta;
  List<int?>? timestamp;
  Indicators? indicators;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    meta: Meta.fromJson(json["meta"]),
    timestamp: json["timestamp"] == null ? [] : List<int?>.from(json["timestamp"]!.map((x) => x)),
    indicators: Indicators.fromJson(json["indicators"]),
  );

  Map<String, dynamic> toJson() => {
    "meta": meta!.toJson(),
    "timestamp": timestamp == null ? [] : List<dynamic>.from(timestamp!.map((x) => x)),
    "indicators": indicators!.toJson(),
  };
}

class Indicators {
  Indicators({this.quote});

  List<Quote?>? quote;

  factory Indicators.fromJson(Map<String, dynamic> json) => Indicators(
    quote: json["quote"] == null ? [] : List<Quote?>.from(json["quote"]!.map((x) => Quote.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "quote": quote == null ? [] : List<dynamic>.from(quote!.map((x) => x!.toJson())),
  };
}

class Quote {
  Quote({
    this.volume,
    this.open,
    this.high,
    this.close,
    this.low,
  });

  List<int?>? volume;
  List<double?>? open;
  List<double?>? high;
  List<double?>? close;
  List<double?>? low;

  factory Quote.fromJson(Map<String, dynamic> json) => Quote(
    volume: json["volume"] == null ? [] : List<int?>.from(json["volume"]!.map((x) => x)),
    open: json["open"] == null ? [] : List<double?>.from(json["open"]!.map((x) => x)),
    high: json["high"] == null ? [] : List<double?>.from(json["high"]!.map((x) => x)),
    close: json["close"] == null ? [] : List<double?>.from(json["close"]!.map((x) => x)),
    low: json["low"] == null ? [] : List<double?>.from(json["low"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "volume": volume == null ? [] : List<dynamic>.from(volume!.map((x) => x)),
    "open": open == null ? [] : List<dynamic>.from(open!.map((x) => x)),
    "high": high == null ? [] : List<dynamic>.from(high!.map((x) => x)),
    "close": close == null ? [] : List<dynamic>.from(close!.map((x) => x)),
    "low": low == null ? [] : List<dynamic>.from(low!.map((x) => x)),
  };
}

class Meta {
  Meta({
    this.currency,
    this.symbol,
    this.exchangeName,
    this.instrumentType,
    this.firstTradeDate,
    this.regularMarketTime,
    this.gmtoffset,
    this.timezone,
    this.exchangeTimezoneName,
    this.regularMarketPrice,
    this.chartPreviousClose,
    this.previousClose,
    this.scale,
    this.priceHint,
    this.currentTradingPeriod,
    this.tradingPeriods,
    this.dataGranularity,
    this.range,
    this.validRanges,
  });

  String? currency;
  String? symbol;
  String? exchangeName;
  String? instrumentType;
  int? firstTradeDate;
  int? regularMarketTime;
  int? gmtoffset;
  String? timezone;
  String? exchangeTimezoneName;
  double? regularMarketPrice;
  double? chartPreviousClose;
  double? previousClose;
  int? scale;
  int? priceHint;
  CurrentTradingPeriod? currentTradingPeriod;
  List<List<Post?>?>? tradingPeriods;
  String? dataGranularity;
  String? range;
  List<String?>? validRanges;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
    currency: json["currency"],
    symbol: json["symbol"],
    exchangeName: json["exchangeName"],
    instrumentType: json["instrumentType"],
    firstTradeDate: json["firstTradeDate"],
    regularMarketTime: json["regularMarketTime"],
    gmtoffset: json["gmtoffset"],
    timezone: json["timezone"],
    exchangeTimezoneName: json["exchangeTimezoneName"],
    regularMarketPrice: json["regularMarketPrice"].toDouble(),
    chartPreviousClose: json["chartPreviousClose"].toDouble(),
    previousClose: json["previousClose"].toDouble(),
    scale: json["scale"],
    priceHint: json["priceHint"],
    currentTradingPeriod: CurrentTradingPeriod.fromJson(json["currentTradingPeriod"]),
    tradingPeriods: json["tradingPeriods"] == null ? [] : List<List<Post?>?>.from(json["tradingPeriods"]!.map((x) => x == null ? [] : List<Post?>.from(x!.map((x) => Post.fromJson(x))))),
    dataGranularity: json["dataGranularity"],
    range: json["range"],
    validRanges: json["validRanges"] == null ? [] : List<String?>.from(json["validRanges"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "currency": currency,
    "symbol": symbol,
    "exchangeName": exchangeName,
    "instrumentType": instrumentType,
    "firstTradeDate": firstTradeDate,
    "regularMarketTime": regularMarketTime,
    "gmtoffset": gmtoffset,
    "timezone": timezone,
    "exchangeTimezoneName": exchangeTimezoneName,
    "regularMarketPrice": regularMarketPrice,
    "chartPreviousClose": chartPreviousClose,
    "previousClose": previousClose,
    "scale": scale,
    "priceHint": priceHint,
    "currentTradingPeriod": currentTradingPeriod!.toJson(),
    "tradingPeriods": tradingPeriods == null ? [] : List<dynamic>.from(tradingPeriods!.map((x) => x == null ? [] : List<dynamic>.from(x.map((x) => x!.toJson())))),
    "dataGranularity": dataGranularity,
    "range": range,
    "validRanges": validRanges == null ? [] : List<dynamic>.from(validRanges!.map((x) => x)),
  };
}

class CurrentTradingPeriod {
  CurrentTradingPeriod({
    this.pre,
    this.regular,
    this.post,
  });

  Post? pre;
  Post? regular;
  Post? post;

  factory CurrentTradingPeriod.fromJson(Map<String, dynamic> json) => CurrentTradingPeriod(
    pre: Post.fromJson(json["pre"]),
    regular: Post.fromJson(json["regular"]),
    post: Post.fromJson(json["post"]),
  );

  Map<String, dynamic> toJson() => {
    "pre": pre!.toJson(),
    "regular": regular!.toJson(),
    "post": post!.toJson(),
  };
}

class Post {
  Post({
    this.timezone,
    this.start,
    this.end,
    this.gmtoffset,
  });

  String? timezone;
  int? start;
  int? end;
  int? gmtoffset;

  factory Post.fromJson(Map<String, dynamic> json) => Post(
    timezone: json["timezone"],
    start: json["start"],
    end: json["end"],
    gmtoffset: json["gmtoffset"],
  );

  Map<String, dynamic> toJson() => {
    "timezone": timezone,
    "start": start,
    "end": end,
    "gmtoffset": gmtoffset,
  };
}
