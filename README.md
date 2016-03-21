#linuxsimba-docker-sflowrt


Sflow-RT image

## Usage

To create the image `linuxsimba/sflow-rt`, execute the following command in the
sflow-rt-docker folder:

```
docker build -t linuxsimba/sflow-rt
```

You can now push the image new to the registry:

```
docker push linuxsimba/sflow-rt
```

## Tags

```
linuxsimba/sflow-rt:latest --> sflow-rt 2.0-1072
linuxsimba/sflow-rt:2.0-1072 --> sflow-rt 2.0-1072
```

## Running the Sflow-RT image

Bind the external ports `8008`(API) and `6343`(Sflow Collector) in all interfaces to
the container.

```
docker run -d -p 6343:6343 -p 8008:8008 linuxsimba/sflow-rt
```

No configuration is provided yet with this container. This may come with future
versions. It just installs the default sflow-rt settings.

## LICENSE
MIT
