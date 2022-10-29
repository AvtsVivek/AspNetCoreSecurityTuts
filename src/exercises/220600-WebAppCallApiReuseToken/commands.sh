
cd ../../..

cd src/exercises/220600-WebAppCallApiReuseToken

pwd

################################################################################################

dotnet build ./../../dotnet-apps/20600-WebAppCallApiReuseToken/WebAppCallApiReuseToken.sln

dotnet run --project ./../../dotnet-apps/20600-WebAppCallApiReuseToken/SecureApi/SecureApi.csproj

# Open a new terminal.

cd src/exercises/220600-WebAppCallApiReuseToken

dotnet run --project ./../../dotnet-apps/20600-WebAppCallApiReuseToken/WebApp/WebApp.csproj

################################################################################################

cd ../../..

cd src/dotnet-apps/20600-WebAppCallApiReuseToken/

Set-Location WebApp

Set-Location ClientApp

npm install

npm run wpbuild

Set-Location ..

pwd

dotnet build ./../WebAppCallApiReuseToken.sln

dotnet run --project ./../SecureApi/SecureApi.csproj

# Open a new terminal.

cd src/exercises/220600-WebAppCallApiReuseToken

dotnet run --project ./../../dotnet-apps/20600-WebAppCallApiReuseToken/WebApp/WebApp.csproj

################################################################################################

