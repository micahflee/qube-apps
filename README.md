# Qube Apps

Install, run, and update apps in the private storage of a Qube.

See the blog post: [Qube Apps: a Flatpak-based app store for each qube](https://micahflee.com/2021/11/introducing-qube-apps/)

## Build and install in Qubes

Get the code:

```sh
git clone https://github.com/micahflee/qube-apps.git
cd qube-apps
```

Install dependencies:

- Fedora: `sudo dnf install -y python3-pyside2`
- Debian: `sudo apt-get install -y python3-setuptools python3-stdeb dh-python flatpak python3-pyside2.qtcore python3-pyside2.qtgui python3-pyside2.qtwidgets`

Make a package:

- Fedora: `./build_rpm.sh`
- Debian: `./build_deb.sh`

To install, copy the package you built to your template and install it.

Now, in your Qube Settings for each qube, you can add "Qube Apps" as an application.

In practice, you will likely need to give each qube that you install apps in more private storage than the default 2GB.
