# sympl-scripts

Extra scripts for [Sympl](https://sympl.host/).

Although these scripts work with Sympl, the author is not affiliated with the project.

## WordPress

Download wp-cli into `${HOME}/bin`:

```
  cd ${HOME}/bin
  curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
```

Copy `wp-update.sh` and `wp-update-all.sh` into `${HOME}/bin`

The `wp-update-all.sh` script should automatically detect all WordPress sites based on the presence of a `wp-config.php` file.

Core, all plugins and all themes will be updated automatically. There are no checks for whether updates are security related or not.

Only plugins and themes available from wordpress.org will be updated. Premium plugins and themes may still need to be updated manually.