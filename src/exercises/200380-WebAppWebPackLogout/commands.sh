
cd ../../..

cd src/exercises/200380-WebAppWebPackLogout

pwd

################################################################################################

dotnet build ./../../dotnet-apps/00380-WebAppWebPackLogout/WebAppWebPackLogout.csproj

dotnet run --project ./../../dotnet-apps/00380-WebAppWebPackLogout/WebAppWebPackLogout.csproj

# Once the app is up and running, browse it, then go to the login page. Enter creds.
# See them in the Terminal.

################################################################################################

cd ../../..

cd src/dotnet-apps/00360-WebAppWpAuthorizeService

Set-Location ClientApp

npm install

npm run wpbuild

Set-Location ..

dotnet build ./WebAppWpAuthorizeService.csproj

dotnet run --project ./WebAppWpAuthorizeService.csproj

