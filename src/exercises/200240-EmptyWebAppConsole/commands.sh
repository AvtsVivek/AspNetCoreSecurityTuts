
cd ../../..

cd src/exercises/200240-EmptyWebAppConsole

pwd

start ./../../dotnet-apps/200240-EmptyWebAppConsole/EmptyWebAppConsole.sln

dotnet build ./../../dotnet-apps/200240-EmptyWebAppConsole/EmptyWebAppConsole.sln

dotnet build ./../../dotnet-apps/200240-EmptyWebAppConsole/EmptyWebAppConsole.csproj

dotnet run --project ./../../dotnet-apps/200240-EmptyWebAppConsole/EmptyWebAppConsole.csproj

cd ./../../dotnet-apps/200240-EmptyWebAppConsole/

dotnet run --project ./EmptyWebAppConsole.csproj

