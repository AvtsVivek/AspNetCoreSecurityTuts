
cd ../../..

cd src/exercises/220350-WebAppCallSecureApi

pwd

################################################################################################

dotnet build ./../../dotnet-apps/20350-WebAppCallSecureApi/WebAppCallSecureApi.sln

dotnet run --project ./../../dotnet-apps/20350-WebAppCallSecureApi/SecureApi/SecureApi.csproj

# Open a new terminal.

cd src/exercises/220350-WebAppCallSecureApi

dotnet run --project ./../../dotnet-apps/20350-WebAppCallSecureApi/WebApp/WebApp.csproj


