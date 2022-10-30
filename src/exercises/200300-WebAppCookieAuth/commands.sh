
cd ../../..

cd src/exercises/200300-WebAppCookieAuth

pwd

################################################################################################

# If you want to create the project from scratch. We will not be using this approach. We will be using web pack approach.

# First cd into the correct folder. Ensure first the folder is present.
cd ./../../dotnet-apps/00300-WebAppCookieAuth/

dotnet new sln --name WebAppCookieAuth 

dotnet new webapp --name WebAppCookieAuth --framework net6.0

Copy-Item ./WebAppCookieAuth/* . -Recurse

# Now that we have copied all of the items inside of the folder, we can delete all of the items inside of it and the folder itself.
Remove-Item ./WebAppCookieAuth -Recurse

dotnet sln add WebAppCookieAuth.csproj

dotnet build ./WebAppCookieAuth.csproj

dotnet run --project ./WebAppCookieAuth.csproj

# If you want to remove, un comment the following and execute to clean up the folder
# Remove-Item ./* -Recurse

# Now come back to the exercise folder.
cd ./../../exercises/200300-WebAppCookieAuth/

################################################################################################

# The web pack approach.

cd ../../..

cd src/dotnet-apps/00300-WebAppCookieAuth

Set-Location ClientApp

npm install

npm run wpbuild

Set-Location ..

dotnet build ./WebAppCookieAuth.csproj

dotnet run --project ./WebAppCookieAuth.csproj

################################################################################################

dotnet build ./../../dotnet-apps/00300-WebAppCookieAuth/WebAppCookieAuth.csproj

dotnet run --project ./../../dotnet-apps/00300-WebAppCookieAuth/WebAppCookieAuth.csproj

# Once the app is up and running, browse it, then go to the login page. Enter creds.
# See them in the Terminal.

