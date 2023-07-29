
cd ../../..

cd src/tasks/220620-WebAppCallApiWithJwtPolicy

pwd

################################################################################################

dotnet build ./../../apps/220620-WebAppCallApiWithJwtPolicy/WebAppCallApiWithJwtPolicy.sln

dotnet run --project ./../../apps/220620-WebAppCallApiWithJwtPolicy/SecureApi/SecureApi.csproj

# Open a new terminal.

cd src/tasks/220620-WebAppCallApiWithJwtPolicy

dotnet run --project ./../../apps/220620-WebAppCallApiWithJwtPolicy/WebApp/WebApp.csproj

################################################################################################

cd ../../..

cd src/apps/220620-WebAppCallApiWithJwtPolicy/

Set-Location WebApp

Set-Location ClientApp

npm install

npm run wpbuild

Set-Location ..

pwd

dotnet build ./../WebAppCallApiWithJwtPolicy.sln

dotnet run --project ./../SecureApi/SecureApi.csproj

# Open a new terminal.

cd src/tasks/220620-WebAppCallApiWithJwtPolicy

dotnet run --project ./../../apps/220620-WebAppCallApiWithJwtPolicy/WebApp/WebApp.csproj

################################################################################################
