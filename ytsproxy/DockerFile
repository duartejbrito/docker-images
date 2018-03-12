FROM microsoft/aspnetcore:2.0 AS base
WORKDIR /app
EXPOSE 80

FROM base AS final
WORKDIR /app
COPY /app .
ENTRYPOINT ["dotnet", "djab.yts.proxy.dll"]