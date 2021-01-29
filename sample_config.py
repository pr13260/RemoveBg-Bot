import os

from telethon.tl.types import ChatBannedRights

class Config(object):


    LOGGER = True
    # Get your own API key from https://www.remove.bg/ or
    REM_BG_API_KEY = os.environ.get("REM_BG_API_KEY", None)


class Production(Config):
    LOGGER = False


class Development(Config):
    LOGGER = True
