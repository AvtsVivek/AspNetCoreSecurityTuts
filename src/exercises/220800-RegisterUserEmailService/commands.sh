
cd ../../..

cd src/exercises/220800-RegisterUserEmailService

pwd

docker-compose up -d mailhog

# If you want to tear that donw, use the following
docker-compose down

# Now browse to localhost:8025
start http://localhost:8025

################################################################################################

dotnet build ./../../dotnet-apps/20800-RegisterUserEmailService/RegisterUserEmailService.sln

dotnet run --project ./../../dotnet-apps/20800-RegisterUserEmailService/RegisterUserEmailService.csproj

################################################################################################

cd ../../..

cd src/dotnet-apps/20800-RegisterUserEmailService/

Set-Location ClientApp

npm install

npm run wpbuild

Set-Location ..

pwd

dotnet build ./RegisterUserEmailService.sln

dotnet run --project ./RegisterUserEmailService.csproj

################################################################################################

# https://learn.microsoft.com/en-us/ef/core/cli/dotnet#update-the-tools

# Ensure a database is created before executing the following migration commands.
# You can use the following command. CREATE DATABASE AspNetCoreId. If you want to drop and recreate, then 
# DROP DATABASE AspNetCoreId

cd ../../..

cd src/dotnet-apps/20800-RegisterUserEmailService/

dotnet tool update --global dotnet-ef

dotnet ef migrations add InitialMigration

dotnet ef database update InitialMigration

dotnet run --project ./RegisterUserEmailService.csproj
