
cd ../../..

cd src/exercises/220500-AspNetCoreSessionIntro

pwd

################################################################################################

cd ../../..

cd src/dotnet-apps/220500-AspNetCoreSessionIntro

Set-Location ClientApp

npm install

npm run wpbuild

Set-Location ..

dotnet build ./AspNetCoreSessionIntro.csproj

dotnet run --project ./AspNetCoreSessionIntro.csproj

################################################################################################

dotnet build ./../../dotnet-apps/220500-AspNetCoreSessionIntro/AspNetCoreSessionIntro.csproj

dotnet run --project ./../../dotnet-apps/220500-AspNetCoreSessionIntro/AspNetCoreSessionIntro.csproj

# Once the app is up and running, browse it, then go to the login page. Enter creds.
# See them in the Terminal.

################################################################################################
