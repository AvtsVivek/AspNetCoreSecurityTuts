
cd ../../..

cd src/exercises/220300-GenerateJwtToken

pwd

################################################################################################

# If you want to create the project from scratch.

# First cd into the correct folder. Ensure first the folder is present.
cd ./../../dotnet-apps/20300-GenerateJwtToken/

dotnet new sln --name GenerateJwtToken

dotnet new webapi --name GenerateJwtToken --framework net6.0

Copy-Item ./GenerateJwtToken/* . -Recurse

# Now that we have copied all of the items inside of the folder, we can delete all of the items inside of it and the folder itself.
Remove-Item ./GenerateJwtToken -Recurse

dotnet sln add GenerateJwtToken.csproj

dotnet build ./GenerateJwtToken.csproj

dotnet run --project ./GenerateJwtToken.csproj

# If you want to remove, un comment the following and execute to clean up the folder
# Remove-Item ./* -Recurse

# Now come back to the exercise folder.
cd ./../../exercises/200300-WebAppCookieAuth/

################################################################################################

dotnet build ./../../dotnet-apps/00300-WebAppCookieAuth/WebAppCookieAuth.csproj

dotnet run --project ./../../dotnet-apps/00300-WebAppCookieAuth/WebAppCookieAuth.csproj

# Once the app is up and running, browse it, then go to the login page. Enter creds.
# See them in the Terminal.

