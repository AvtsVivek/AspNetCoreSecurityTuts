
cd ../../..

cd src/exercises/200310-WebAppSecurityContext

pwd

################################################################################################

# The web pack approach.

cd ../../..

cd src/dotnet-apps/200310-WebAppCookieAuthContextPrep

Set-Location ClientApp

npm install

npm run wpbuild

Set-Location ..

dotnet build ./WebAppCookieAuthContextPrep.csproj

dotnet run --project ./WebAppCookieAuthContextPrep.csproj

################################################################################################

dotnet build ./../../dotnet-apps/200310-WebAppCookieAuthContextPrep/WebAppCookieAuthContextPrep.csproj

dotnet run --project ./../../dotnet-apps/200310-WebAppCookieAuthContextPrep/WebAppCookieAuthContextPrep.csproj

# Once the app is up and running, browse it, then go to the login page. Enter creds.
# See them in the Terminal.

