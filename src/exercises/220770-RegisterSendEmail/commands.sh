
cd ../../..

cd src/exercises/220770-RegisterSendEmail

pwd

docker-compose up -d mailhog

# Now browse to localhost:8025
start http://localhost:8025

################################################################################################

dotnet build ./../../dotnet-apps/20770-RegisterSendEmail/RegisterSendEmail.sln

dotnet run --project ./../../dotnet-apps/20770-RegisterSendEmail/RegisterSendEmail.csproj

################################################################################################

cd ../../..

cd src/dotnet-apps/20770-RegisterSendEmail/

Set-Location ClientApp

npm install

npm run wpbuild

Set-Location ..

pwd

dotnet build ./RegisterSendEmail.sln

dotnet run --project ./RegisterSendEmail.csproj

################################################################################################

# https://learn.microsoft.com/en-us/ef/core/cli/dotnet#update-the-tools

# Ensure a database is created before executing the following migration commands.
# You can use the following command. CREATE DATABASE AspNetCoreId. If you want to drop and recreate, then 
# DROP DATABASE AspNetCoreId

cd ../../..

cd src/dotnet-apps/20770-RegisterSendEmail/

dotnet tool update --global dotnet-ef

dotnet ef migrations add InitialMigration

dotnet ef database update InitialMigration

dotnet run --project ./RegisterSendEmail.csproj

