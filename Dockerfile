FROM microsoft/dotnet:2.0.4-sdk-2.1.3-stretch

COPY . /usr/src/app
WORKDIR /usr/src/app/app

ENV ASPNETCORE_URLS=http://+:5000

RUN dotnet restore
CMD ["dotnet", "run"]
