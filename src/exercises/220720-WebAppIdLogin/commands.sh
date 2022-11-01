
cd ../../..

cd src/exercises/220720-WebAppIdLogin

pwd

################################################################################################

dotnet build ./../../dotnet-apps/20720-WebAppIdLogin/WebAppIdLogin.sln

dotnet run --project ./../../dotnet-apps/20720-WebAppIdLogin/WebAppIdLogin.csproj

################################################################################################

cd ../../..

cd src/dotnet-apps/20720-WebAppIdLogin/

Set-Location ClientApp

npm install

npm run wpbuild

Set-Location ..

pwd

dotnet build ./WebAppIdLogin.sln

dotnet run --project ./WebAppIdLogin.csproj

# Open a new terminal.

cd src/exercises/220720-WebAppIdLogin

dotnet run --project ./../../dotnet-apps/20720-WebAppIdLogin/WebAppIdLogin.csproj

################################################################################################

# https://learn.microsoft.com/en-us/ef/core/cli/dotnet#update-the-tools

# Ensure a database is created before executing the following migration commands.
# You can use the following command. CREATE DATABASE AspNetCoreId. If you want to drop and recreate, then 
# DROP DATABASE AspNetCoreId

cd src/dotnet-apps/20720-WebAppIdLogin/

dotnet tool update --global dotnet-ef

dotnet ef migrations add InitialMigration

dotnet ef database update InitialMigration

dotnet run --project ./WebAppIdLogin.csproj


