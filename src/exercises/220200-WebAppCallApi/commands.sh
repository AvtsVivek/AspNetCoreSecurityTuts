
cd ../../..

cd src/exercises/220200-WebAppCallApi

pwd

################################################################################################

dotnet build ./../../dotnet-apps/220200-WebAppCallApi/WebAppCallApi.sln

dotnet run --project ./../../dotnet-apps/220200-WebAppCallApi/WebApi/WebApi.csproj

# Open a new terminal.

cd src/exercises/220200-WebAppCallApi

dotnet run --project ./../../dotnet-apps/220200-WebAppCallApi/WebApp/WebApp.csproj


# Once the app is up and running, browse it, then go to the login page. Enter creds.
# See them in the Terminal.

################################################################################################

cd ../../..

cd src/dotnet-apps/220200-WebAppCallApi

Set-Location WebApp

Set-Location ClientApp

npm install

npm run wpbuild

Set-Location ..

dotnet build ./../../dotnet-apps/220200-WebAppCallApi/WebAppCallApi.sln

dotnet run --project ./../../dotnet-apps/220200-WebAppCallApi/WebApi/WebApi.csproj

# Open a new terminal.

cd src/exercises/220200-WebAppCallApi

dotnet run --project ./../../dotnet-apps/220200-WebAppCallApi/WebApp/WebApp.csproj

################################################################################################

