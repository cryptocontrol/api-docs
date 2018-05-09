---
title: API Reference

language_tabs: # must be one of https://git.io/vQNgJ
  - shell

toc_footers:
  - <a href='mailto:contact@cryptocontrol.io'>Contact Us for a API Key</a>

# includes:
#   - errors

search: true
---

# Introduction

This documentation allows users to access the CryptoControl newsfeed via our API endpoint.

CryptoControl allows users to use our powerful news engine for professional or commercial use. CryptoControl goes through more than 5,000 articles daily from over 1000+ news sources. We then use a specialized AI to understand context of each article and attribute coins and categories to each article.

# Authentication

> To authorize, use this code:


```shell
curl "https://cryptocontrol.io/api/v1/public?ref=API_KEY_HERE"
```

> Make sure to replace `API_KEY_HERE` with your API key.

CryptoControl uses API keys to allow access users to access our newsfeed. You can register a new CryptoControl API key by simply [contacting us](mailto:contact@cryptocontrol.io). We issue tokens almost instantly.

CryptoControl expects for the API key to be included in all API requests to the server in a GET query field that looks like the following:

`https://cryptocontrol.io/endpoint?key=API_KEY_HERE`

<aside class="notice">
You must replace <code>API_KEY_HERE</code> with your personal API key.
</aside>

# Endpoints

## Get News

```shell
curl "https://cryptocontrol.io/api/v1/public/news"
```

> The above command returns JSON structured like this:

```json
[
  {
    "publishedAt": "2018-05-09T09:39:37.000Z",
    "hotness": 70641.80597856482,
    "activityHotness": 0.1,
    "primaryCategory": "General",
    "words": 384,
    "similarArticles": [],
    "coins": [
      {
        "_id": "59cb59e81c073f09e76f614b",
        "name": "Bitcoin",
        "slug": "bitcoin",
        "tradingSymbol": "btc"
      },
      {
        "_id": "5ac2c404a8134644d0cc0a32",
        "name": "Consensus",
        "slug": "consensus",
        "tradingSymbol": "sen"
      }
    ],
    "_id": "5af2c28c11f336001472caff",
    "description": "Tom Lee, managing partner at Fundstrat Global, said that the annual cryptocurrency conference – that will take place the next week – could see Bitcoin price",
    "title": "Fundstrat’s Tom Lee Says that Bitcoin Could Skyrocket More than 70% in the Next Week",
    "url": "https://cryptocontrol.io/r/api/article/5af2c28c11f336001472caff?ref=5ac11440ec0af7be35528459",
    "thumbnail": "https://cryptocontrol.io/r/thumbnail/5af2c28c11f336001472caff?ref=5ac11440ec0af7be35528459"
  },
  ...
]
```

This endpoint retrieves the top news articles.

Articles are sorted by hotness which represents how popular an article is. If you'd like to have articles sorted by date published, then set the latest key in the query parameter.

### HTTP Request

`GET https://cryptocontrol.io/api/v1/public/news`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
latest | false | If set to true, the result will sort articles by "published at" date.


## Get News by Category

```shell
curl "https://cryptocontrol.io/api/v1/public/news/category"
```

> The above command returns JSON structured like this:

```json
{
  "analysis": [
      {
      "publishedAt": "2018-05-09T09:39:37.000Z",
      "hotness": 70641.80597856482,
      "activityHotness": 0.1,
      "primaryCategory": "General",
      "words": 384,
      "similarArticles": [],
      "coins": [
        {
          "_id": "59cb59e81c073f09e76f614b",
          "name": "Bitcoin",
          "slug": "bitcoin",
          "tradingSymbol": "btc"
        },
        {
          "_id": "5ac2c404a8134644d0cc0a32",
          "name": "Consensus",
          "slug": "consensus",
          "tradingSymbol": "sen"
        }
      ],
      "_id": "5af2c28c11f336001472caff",
      "description": "Tom Lee, managing partner at Fundstrat Global, said that the annual cryptocurrency conference – that will take place the next week – could see Bitcoin price",
      "title": "Fundstrat’s Tom Lee Says that Bitcoin Could Skyrocket More than 70% in the Next Week",
      "url": "https://cryptocontrol.io/r/api/article/5af2c28c11f336001472caff?ref=5ac11440ec0af7be35528459",
      "thumbnail": "https://cryptocontrol.io/r/thumbnail/5af2c28c11f336001472caff?ref=5ac11440ec0af7be35528459"
    },
    ...
  ],
  "blockchain": [...],
  "exchanges": [...],
  "general": [...],
  "government": [...],
  "ico": [...],
  "mining": [...]
}
```

This endpoint retrieves the news articles categorized by category.

CryptoControl's AI understands articles and groups them into 7 categories (`Analysis`, `Blockchain`, `Exchanges`, `General`, `Government`, `ICO`, `Mining`).

### HTTP Request

`GET https://cryptocontrol.io/api/v1/public/news/category`



## Get News for a Coin

```shell
curl "https://cryptocontrol.io/api/v1/public/news/category"
```

> The above command returns JSON structured like this:

```json
{
  "analysis": [
      {
      "publishedAt": "2018-05-09T09:39:37.000Z",
      "hotness": 70641.80597856482,
      "activityHotness": 0.1,
      "primaryCategory": "General",
      "words": 384,
      "similarArticles": [],
      "coins": [
        {
          "_id": "59cb59e81c073f09e76f614b",
          "name": "Bitcoin",
          "slug": "bitcoin",
          "tradingSymbol": "btc"
        },
        {
          "_id": "5ac2c404a8134644d0cc0a32",
          "name": "Consensus",
          "slug": "consensus",
          "tradingSymbol": "sen"
        }
      ],
      "_id": "5af2c28c11f336001472caff",
      "description": "Tom Lee, managing partner at Fundstrat Global, said that the annual cryptocurrency conference – that will take place the next week – could see Bitcoin price",
      "title": "Fundstrat’s Tom Lee Says that Bitcoin Could Skyrocket More than 70% in the Next Week",
      "url": "https://cryptocontrol.io/r/api/article/5af2c28c11f336001472caff?ref=5ac11440ec0af7be35528459",
      "thumbnail": "https://cryptocontrol.io/r/thumbnail/5af2c28c11f336001472caff?ref=5ac11440ec0af7be35528459"
    },
    ...
  ],
  "blockchain": [...],
  "exchanges": [...],
  "general": [...],
  "government": [...],
  "ico": [...],
  "mining": [...]
}
```

This endpoint retrieves the news articles categorized by category.

CryptoControl's AI understands articles and groups them into 7 categories (`Analysis`, `Blockchain`, `Exchanges`, `General`, `Government`, `ICO`, `Mining`).

### HTTP Request

`GET https://cryptocontrol.io/api/v1/public/news/category`


## Get News for a Coin by Category

```shell
curl "https://cryptocontrol.io/api/v1/public/news/category"
```

> The above command returns JSON structured like this:

```json
{
  "analysis": [
      {
      "publishedAt": "2018-05-09T09:39:37.000Z",
      "hotness": 70641.80597856482,
      "activityHotness": 0.1,
      "primaryCategory": "General",
      "words": 384,
      "similarArticles": [],
      "coins": [
        {
          "_id": "59cb59e81c073f09e76f614b",
          "name": "Bitcoin",
          "slug": "bitcoin",
          "tradingSymbol": "btc"
        },
        {
          "_id": "5ac2c404a8134644d0cc0a32",
          "name": "Consensus",
          "slug": "consensus",
          "tradingSymbol": "sen"
        }
      ],
      "_id": "5af2c28c11f336001472caff",
      "description": "Tom Lee, managing partner at Fundstrat Global, said that the annual cryptocurrency conference – that will take place the next week – could see Bitcoin price",
      "title": "Fundstrat’s Tom Lee Says that Bitcoin Could Skyrocket More than 70% in the Next Week",
      "url": "https://cryptocontrol.io/r/api/article/5af2c28c11f336001472caff?ref=5ac11440ec0af7be35528459",
      "thumbnail": "https://cryptocontrol.io/r/thumbnail/5af2c28c11f336001472caff?ref=5ac11440ec0af7be35528459"
    },
    ...
  ],
  "blockchain": [...],
  "exchanges": [...],
  "general": [...],
  "government": [...],
  "ico": [...],
  "mining": [...]
}
```

This endpoint retrieves the news articles categorized by category.

CryptoControl's AI understands articles and groups them into 7 categories (`Analysis`, `Blockchain`, `Exchanges`, `General`, `Government`, `ICO`, `Mining`).

### HTTP Request

`GET https://cryptocontrol.io/api/v1/public/news/category`
