
cd ../../..

cd src/exercises/200440-WebAppWpRememberMe

pwd

################################################################################################

dotnet build ./../../dotnet-apps/00440-WebAppWpRememberMe/WebAppWpRememberMe.csproj

dotnet run --project ./../../dotnet-apps/00440-WebAppWpRememberMe/WebAppWpRememberMe.csproj

# Once the app is up and running, browse it, then go to the login page. Enter creds.
# See them in the Terminal.

################################################################################################

cd ../../..

cd src/dotnet-apps/00440-WebAppWpRememberMe

Set-Location ClientApp

npm install

npm run wpbuild

Set-Location ..

dotnet build ./WebAppWpRememberMe.csproj

dotnet run --project ./WebAppWpRememberMe.csproj

################################################################################################

