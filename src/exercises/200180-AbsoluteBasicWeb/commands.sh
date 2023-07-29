
cd ./src/dotnet-apps/00115-AbsoluteBasicWeb

dotnet new web --name AbsoluteBasicWeb --framework net6.0

cd ./AbsoluteBasicWeb

dotnet build ./AbsoluteBasicWeb.csproj

dotnet run --project ./AbsoluteBasicWeb.csproj

