env = Environment(
    CPPPATH=['src','spotify'] )

env.Program(
    target = 'jukebox',

    source = [
        'src/jukebox.c',
        'src/openal-audio.c',
        'src/audio.c',
        'spotify/spotify_appkey.c' ],

    LIBS = ['spotify'],

    LIBPATH = ['spotify'] )
