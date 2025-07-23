import requests

def get_instagram_info(username):
    url = f"https://www.instagram.com/api/v1/users/web_profile_info/?username={username}"
    headers = {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36",
        "Accept": "*/*",
        "X-IG-App-ID": "936619743392459",  # optional, simulates real app
        "Referer": f"https://www.instagram.com/{username}/"
    }
    try:
        response = requests.get(url, headers=headers)
        print("Status:", response.status_code)
        if response.status_code == 200:
            data = response.json()
            user = data.get("data", {}).get("user", {})
            return user
        else:
            print("Failed:", response.text)
            return {}
    except Exception as e:
        print("Error:", e)
        return {}

# Test
info = get_instagram_info("niksoriginal")
print(info)
