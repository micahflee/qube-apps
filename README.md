# Qube Apps

Install, run, and update apps in the private storage of a Qube

## Building instrutions

Get the code:

```sh
git clone https://github.com/micahflee/flatpak-apps.git
cd flatpak-apps
```

Install dependencies in Fedora:

```sh
sudo dnf install -y python3-pyside2
```

Make an RPM:

```sh
./build_rpm.sh
```

Copy the RPM to your template:

```sh
qvm-copy dist/qube-apps-*.noarch.rpm
```

Copy it to your latest Fedora template, and then open a terminal in that template and install it with `sudo dnf install ./QubesIncoming/myqube/qube-apps-*.noarch.rpm`, replacing `myqube` with the name of the Qube you build the RPM in.
