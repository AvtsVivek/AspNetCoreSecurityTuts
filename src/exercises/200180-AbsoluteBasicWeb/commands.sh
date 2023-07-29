
cd ../../..

cd ./src/dotnet-apps/200180-AbsoluteBasicWeb

dotnet new web --name AbsoluteBasicWeb --framework net7.0

cd ./AbsoluteBasicWeb

dotnet build ./AbsoluteBasicWeb.csproj

dotnet run --project ./AbsoluteBasicWeb.csproj

