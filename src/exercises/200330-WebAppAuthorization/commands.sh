
cd ../../..

cd src/exercises/200330-WebAppAuthorization

pwd

################################################################################################

# The web pack approach.

cd ../../..

cd src/dotnet-apps/200330-WebAppAuthorization

Set-Location ClientApp

npm install

npm run wpbuild

Set-Location ..

dotnet build ./WebAppAuthorization.csproj

dotnet run --project ./WebAppAuthorization.csproj

################################################################################################

dotnet build ./../../dotnet-apps/200330-WebAppAuthorization/WebAppAuthorization.csproj

dotnet run --project ./../../dotnet-apps/200330-WebAppAuthorization/WebAppAuthorization.csproj

# Once the app is up and running, browse it, then go to the login page. Enter creds.
# See them in the Terminal.

