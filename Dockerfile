FROM mcr.microsoft.com/dotnet/core/sdk:3.0 as build
WORKDIR /
COPY ./protos ./protos
WORKDIR /app
# copy csproj and restore as distinct layers
COPY QinIssue.Server/ .
RUN dotnet restore
RUN dotnet publish -c Release -o out

FROM mcr.microsoft.com/dotnet/core/aspnet:3.0 as runtime
WORKDIR /app
COPY --from=build /app/out ./
EXPOSE 50051
ENTRYPOINT ["dotnet", "QinIssue.Server.dll", "--urls", "http://0.0.0.0:50051"]