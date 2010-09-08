import platform

env = Environment( CPPPATH=['src','spotify'] )

# Link to the spotify lib
if platform.system() == "Darwin":
    env["FRAMEWORKS"] = ['libspotify', 'OpenAL'];
    libspotify = ""
else:
    libspotify = "spotify"

env.Program(
    target = 'jukebox',
    source = [
        'src/jukebox.c',
        'src/openal-audio.c',
        'src/audio.c',
        'spotify/spotify_appkey.c' ],
    LIBS = libspotify,
    LIBPATH = ['spotify'] )
