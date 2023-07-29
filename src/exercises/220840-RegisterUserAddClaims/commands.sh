
cd ../../..

cd src/tasks/220840-RegisterUserAddClaims

pwd

# Ensure docker is up and running, fire up docker desktop
docker-compose up -d mailhog

# If you want to tear that donw, use the following
docker-compose down

# Now browse to localhost:8025
start http://localhost:8025

################################################################################################

dotnet build ./../../apps/220840-RegisterUserAddClaims/RegisterUserAddClaims.sln

dotnet run --project ./../../apps/220840-RegisterUserAddClaims/RegisterUserAddClaims.csproj

################################################################################################

cd ../../..

cd src/apps/220840-RegisterUserAddClaims/

Set-Location ClientApp

npm install

npm run wpbuild

Set-Location ..

pwd

dotnet build ./RegisterUserAddClaims.sln

dotnet run --project ./RegisterUserAddClaims.csproj

################################################################################################

# https://learn.microsoft.com/en-us/ef/core/cli/dotnet#update-the-tools

# Ensure a database is created before executing the following migration commands.
# You can use the following command. CREATE DATABASE AspNetCoreId. If you want to drop and recreate, then 
# DROP DATABASE AspNetCoreId

cd ../../..

cd src/apps/220840-RegisterUserAddClaims/

dotnet tool update --global dotnet-ef

dotnet ef migrations add AddMoreInfo

dotnet ef migrations list

dotnet ef database update AddMoreInfo

dotnet run --project ./RegisterUserAddClaims.csproj

