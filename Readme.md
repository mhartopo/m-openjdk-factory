### Open JDK Factory
A simple way to build OpenJDK from source

### Requirements

- JDK 6 for OpenJDK 7 or JDK 7 for OpenJDK 8

### How to build
- Run `./getsource.sh` to download source code from mercurial repository, it will take about 15 - 30 minutes to download
- Set JAVA_HOME environtment variable to the required JDK version
- Run `XBUILD=true ./make-jdk/compile.sh`

