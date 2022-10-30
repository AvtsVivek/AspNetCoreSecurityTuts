
cd ../../..

cd src/exercises/220700-WebAppIdentity

pwd

################################################################################################

dotnet build ./../../dotnet-apps/20700-WebAppIdentity/WebAppIdentity.sln

dotnet run --project ./../../dotnet-apps/20700-WebAppIdentity/WebAppIdentity.csproj

# Open a new terminal.

cd src/exercises/220700-WebAppIdentity

dotnet run --project ./../../dotnet-apps/20700-WebAppIdentity/WebAppIdentity.csproj

################################################################################################

cd ../../..

cd src/dotnet-apps/20700-WebAppIdentity/

Set-Location ClientApp

npm install

npm run wpbuild

Set-Location ..

pwd

dotnet build ./WebAppIdentity.sln

dotnet run --project ./WebAppIdentity.csproj

# Open a new terminal.

cd src/exercises/220700-WebAppIdentity

dotnet run --project ./../../dotnet-apps/20700-WebAppIdentity/WebAppIdentity.csproj

################################################################################################

