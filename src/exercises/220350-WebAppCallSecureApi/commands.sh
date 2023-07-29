
cd ../../..

cd src/exercises/220350-WebAppCallSecureApi

pwd

################################################################################################

dotnet build ./../../dotnet-apps/220350-WebAppCallSecureApi/WebAppCallSecureApi.sln

dotnet run --project ./../../dotnet-apps/220350-WebAppCallSecureApi/SecureApi/SecureApi.csproj

# Open a new terminal.

cd src/exercises/220350-WebAppCallSecureApi

dotnet run --project ./../../dotnet-apps/220350-WebAppCallSecureApi/WebApp/WebApp.csproj

################################################################################################

cd ../../..

cd src/dotnet-apps/220350-WebAppCallSecureApi/

Set-Location WebApp

Set-Location ClientApp

npm install

npm run wpbuild

Set-Location ..

pwd

dotnet build ./../WebAppCallSecureApi.sln

dotnet run --project ./../SecureApi/SecureApi.csproj

# Open a new terminal.

cd src/exercises/220350-WebAppCallSecureApi

dotnet run --project ./../../dotnet-apps/220350-WebAppCallSecureApi/WebApp/WebApp.csproj

################################################################################################


