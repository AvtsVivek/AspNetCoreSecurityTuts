
cd ../../..

cd src/exercises/200420-WebAppWpCookieExpiry

pwd

################################################################################################

dotnet build ./../../dotnet-apps/00420-WebAppWpCookieExpiry/WebAppWpCookieExpiry.csproj

dotnet run --project ./../../dotnet-apps/00420-WebAppWpCookieExpiry/WebAppWpCookieExpiry.csproj

# Once the app is up and running, browse it, then go to the login page. Enter creds.
# See them in the Terminal.

################################################################################################

cd ../../..

cd src/dotnet-apps/00420-WebAppWpCookieExpiry

Set-Location ClientApp

npm install

npm run wpbuild

Set-Location ..

dotnet build ./WebAppWpCustomRequirement.csproj

dotnet run --project ./WebAppWpCustomRequirement.csproj

