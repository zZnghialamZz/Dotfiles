import dracula.draw

# Load existing settings made via :set
config.load_autoconfig()

dracula.draw.blood(c, {
    'spacing': {
        'vertical': 3,
        'horizontal': 4
    }
})

# Aliases for commands. The keys of the given dictionary are the
# aliases, while the values are the commands they map to.
# Type: Dict
c.aliases = {'q': 'quit', 'w': 'session-save', 'wq': 'quit --save'}

# Setting default page for when opening new tabs or new windows with
# commands like :open -t and :open -w .
c.url.default_page = 'https://github.com/'
c.url.start_pages = 'https://github.com/'

# Search engines which can be used via the address bar.  Maps a search
# engine name (such as `DEFAULT`, or `ddg`) to a URL with a `{}`
# placeholder. The placeholder will be replaced by the search term, use
# `{{` and `}}` for literal `{`/`}` braces.  The following further
# placeholds are defined to configure how special characters in the
# search terms are replaced by safe characters (called 'quoting'):  *
# `{}` and `{semiquoted}` quote everything except slashes; this is the
# most   sensible choice for almost all search engines (for the search
# term   `slash/and&amp` this placeholder expands to `slash/and%26amp`).
# * `{quoted}` quotes all characters (for `slash/and&amp` this
# placeholder   expands to `slash%2Fand%26amp`). * `{unquoted}` quotes
# nothing (for `slash/and&amp` this placeholder   expands to
# `slash/and&amp`).  The search engine named `DEFAULT` is used when
# `url.auto_search` is turned on and something else than a URL was
# entered to be opened. Other search engines can be used by prepending
# the search engine name to the search term, e.g. `:open google
# qutebrowser`.
# Type: Dict
c.url.searchengines = {'DEFAULT': 'https://www.google.com/search?q={}', 
                       'am': 'https://www.amazon.com/s?k={}', 
                       'aw': 'https://wiki.archlinux.org/?search={}', 
                       'hoog': 'https://hoogle.haskell.org/?hoogle={}', 
                       're': 'https://www.reddit.com/r/{}', 
                       'ub': 'https://www.urbandictionary.com/define.php?term={}',
                       'wiki': 'https://en.wikipedia.org/wiki/{}', 
                       'yt': 'https://www.youtube.com/results?search_query={}'}

# Default font families to use. Whenever "default_family" is used in a
# font setting, it's replaced with the fonts listed here. If set to an
# empty value, a system-specific monospace default is used.
# Type: List of Font, or Font
c.fonts.default_family = '"Source Code Pro"'

# Default font size to use. Whenever "default_size" is used in a font
# setting, it's replaced with the size listed here. Valid values are
# either a float value with a "pt" suffix, or an integer value with a
# "px" suffix.
# Type: String
c.fonts.default_size = '11pt'

# Font used in the completion widget.
# Type: Font
c.fonts.completion.entry = '11pt "Source Code Pro"'

# Font used for the debugging console.
# Type: Font
c.fonts.debug_console = '11pt "Source Code Pro"'

# Font used for prompts.
# Type: Font
c.fonts.prompts = 'default_size sans-serif'

# Font used in the statusbar.
# Type: Font
c.fonts.statusbar = '11pt "Source Code Pro"'
