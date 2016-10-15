# Docker image for OpenJDK debug build

> "I could have sworn that
> http://jdk6.java.net/download.html and http://jdk7.java.net/download.html
> always contained product AND fastdebug builds, but as I just
> verified today there are no more fastdebug builds available neither
> for JDK6 nor for JDK7 and JDK8. Is this intentional?"

> "Yes."

## Usage

```bash
hg clone "http://hg.openjdk.java.net/jdk8u/jdk8u" repo
cd repo
sh ./get_source.sh
cd ..
docker build -t java-fastdebug .
docker run --rm java-fastdebug java -version
```

**NB: For successful build, path of java repository can't contain `j` letter. Deal with it.**
