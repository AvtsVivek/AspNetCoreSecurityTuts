
cd ../../..

cd src/exercises/200340-WebAppWebPackAuthorize

pwd

################################################################################################

dotnet build ./../../dotnet-apps/00340-WebAppWebPackAuthorize/WebAppWebPackAuthorize.csproj

dotnet run --project ./../../dotnet-apps/00340-WebAppWebPackAuthorize/WebAppWebPackAuthorize.csproj

# Once the app is up and running, browse it, then go to the login page. Enter creds.
# See them in the Terminal.

################################################################################################

cd ../../..

cd src/dotnet-apps/00340-WebAppWebPackAuthorize

Set-Location ClientApp

npm install

npm run wpbuild

Set-Location ..

dotnet build ./WebAppWebPackAuthorize.csproj

dotnet run --project ./WebAppWebPackAuthorize.csproj

