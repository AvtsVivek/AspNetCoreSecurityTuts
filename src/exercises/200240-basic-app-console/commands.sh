
cd ../../..

cd src/exercises/200220-break-point-middle-ware

pwd

start ./../../dotnet-apps/00150-EmptyWebAppConsole/EmptyWebAppConsole.sln

dotnet build ./../../dotnet-apps/00150-EmptyWebAppConsole/EmptyWebAppConsole.csproj

dotnet run --project ./../../dotnet-apps/00150-EmptyWebAppConsole/EmptyWebAppConsole.csproj

cd ./../../dotnet-apps/00150-EmptyWebAppConsole/

dotnet run --project ./EmptyWebAppConsole.csproj

