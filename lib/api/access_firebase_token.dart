import 'package:googleapis_auth/auth_io.dart';

class AccessFirebaseToken {
  static String fmsgScope =
      "https://www.googleapis.com/auth/firebase.messaging";

  Future<String> getAccessToken() async {
    final client = await clientViaServiceAccount(
      ServiceAccountCredentials.fromJson({
        "type": "service_account",
        "project_id": "riseupgraded",
        "private_key_id": "4d5aec9a77549224f79ea51c0f6090cc3891d094",
        "private_key":
            "-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDvWvY6R4Rd5Ydi\nw8iw006GIrFupaoyK10hP/JRFYF387Tj0oniU4a9joxfbwE9u0cgavjfAoX9e5Zu\nzi4QnPdaVM0K6n0ntPg0xhAC5oJOfiA2z1HuCS2OwADnPLvZ/LzvG6w/3Ry/IB4/\niPI2mVNW3X4C3MUUcvm/WsfU5/c7wD1XHkUe3NviyknBcBKPO/YnI5mlM09ItH8E\nM+M5Qj7tY+w0V2loKFQp5gaDD30g3jazJn1TCnIywppZ0ejDaSFkRGXGld2oBIp9\ntQ38IaBZR4ifwfdS1UlN+AJTCi2x3piNLQRc4vQf4vYi3HokaGIcjaxLttoEyIkw\nBjrSeAWFAgMBAAECggEAVznT33sujrVVuDVXDrGCvTkpZgQzWOMapkJSgSAQNXF3\nq0qPew4rXSr0ltayIhf8nKC/Hy4hPDXspWa3vNAnCCE9M8wuXekCRuEi9pugQxCN\nlsvItLFdi9cGvT4RyyfihlSUWhWvIyuGOmsisakAiPhgspRXsdMQlp5zknASVhBN\nGXarj7w/zEDzlYsKl1wxEzxCB/MEL8X2Umq8VRY1+MjjZfsSiq9/c7Tgn+p+F6HP\nVqjPQfsqmZJnHlF/aZDBUoMp8jjQ3IH3PPpEvJHzPPpiM0kmfJ6wU1KqHpj5BCUf\nE7m2AUKhR3hk1SCxsl1TZqbCt1QvTnQcQn1JqJ21pQKBgQD7fF8x2HRL+JiY57LD\nNmDtHFkLm6Scj/g5d41fmU7qsZpekxJ9OV3OXjgO6xbHDoWjjf+8jwZZ1p6GE0kQ\ntWt71rMrtcvi9aSIbTD8nC6q6p7WJnwSAN0k64upFLtBN7VSzQ8V0u2kZ1tN5QGS\nKr5kCXdUoZGl2wM0ZbbAWq6LBwKBgQDzptkMBlJxfTevN0mbxMloo78lpL7V2Yth\ntDafPRhEDEsUJ2EblZ4G5GIVmR4Ak9phmOSISjkazoBGpY/Yp3vlNbW1iF8vjxyT\n+1cw2OecBAq7AnB2iugFfg6FactBs7snlA2/xcYT+7K7uRh6PrnOLsMFM/hkUQIh\nyz9zt02sEwKBgFCkHgZmyUv/KDeHvIvaaRQ/TdJqE0vc4pTS4DNyfprFXqHK+VfM\nSGc/USx/d+tWncXHZ+T32+p85pJJptlDw3aPbx6qCfn6GMticB3gmxpVZ5918bz4\nJ/GJ0lviePU9vtgRRzARVgCs39tHfsx3BlwfqPMrZ//ODeYEY6ikq2mLAoGBAJrh\n6P8X1biG3Kro/kWiplV6IbwQKa9PBqcpI7+92nsHRYKeNcCPL1E6RI9uMgAz/JIl\n2sA4TmyX8Dr4a6RRcxSVO9kVw0w8MPJwx1Ap0bD/cMLIHi18x1kWdKyiP66YTdQu\n7T6Gvg9d5JQoaULsNLi4SQg5rSA3zp8k0EUCtME5AoGBAMjEthq+7CZ4I+OwUHiV\nD6mKVg2HnuRUWeKJqX8/esMkLT4K+klbykVWhhMssgmdjPOlfpG/yTpch/jMBR7z\nUh5DaPBFb+g0nEFoIOZk5GeSmV92Rw3kM8x/rPrcWgvW2XdzL3hu/YyHoUCWYMfr\n9FlRzsF28A2V2BvNB1mlI+P7\n-----END PRIVATE KEY-----\n",
        "client_email":
            "firebase-adminsdk-7n0kt@riseupgraded.iam.gserviceaccount.com",
        "client_id": "107133150027409976603",
        "auth_uri": "https://accounts.google.com/o/oauth2/auth",
        "token_uri": "https://oauth2.googleapis.com/token",
        "auth_provider_x509_cert_url":
            "https://www.googleapis.com/oauth2/v1/certs",
        "client_x509_cert_url":
            "https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-7n0kt%40riseupgraded.iam.gserviceaccount.com",
        "universe_domain": "googleapis.com"
      }),
      [fmsgScope],
    );

    final accessToken = client.credentials.accessToken.data;
    return accessToken;
  }
}
