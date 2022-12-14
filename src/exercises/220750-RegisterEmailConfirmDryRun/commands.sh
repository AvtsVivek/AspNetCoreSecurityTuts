
cd ../../..

cd src/exercises/220750-RegisterEmailConfirmDryRun

pwd

################################################################################################

dotnet build ./../../dotnet-apps/20750-RegisterEmailConfirmDryRun/RegisterEmailConfirmDryRun.sln

dotnet run --project ./../../dotnet-apps/20750-RegisterEmailConfirmDryRun/RegisterEmailConfirmDryRun.csproj

################################################################################################

cd ../../..

cd src/dotnet-apps/20750-RegisterEmailConfirmDryRun/

Set-Location ClientApp

npm install

npm run wpbuild

Set-Location ..

pwd

dotnet build ./RegisterEmailConfirmDryRun.sln

dotnet run --project ./RegisterEmailConfirmDryRun.csproj

################################################################################################

# https://learn.microsoft.com/en-us/ef/core/cli/dotnet#update-the-tools

# Ensure a database is created before executing the following migration commands.
# You can use the following command. CREATE DATABASE AspNetCoreId. If you want to drop and recreate, then 
# DROP DATABASE AspNetCoreId

cd src/dotnet-apps/20750-RegisterEmailConfirmDryRun/

dotnet tool update --global dotnet-ef

dotnet ef migrations add InitialMigration

dotnet ef database update InitialMigration

dotnet run --project ./RegisterEmailConfirmDryRun.csproj

