# Planet NixOS 

Collected here are the most recent blog posts from all over the NixOS
community. The content here is unfiltered and uncensored, and represents the
views of individual community members. Individual posts are owned by their
authors -- see original source for licensing information.

https://planet.nixos.org


## Add your blog to NixOS planet

- clone this repository
- open `planet.ini`
- add your blog to the list, example:

```
[https://example.com/path/to.rss]
name = Your Name
link = https://example.com
```

- send pull request

## Developing

- In one terminal window run:

  ```
  $ nix-shell --run "git ls-files | entr -s 'venus-planet planet.ini'"`
  ```

  Have some patience initial so that cache of blogs builds up.

- In the other terminal window run:

  ```
  $ nix-shell --run "cd dist && python -m http.server"
  ```
