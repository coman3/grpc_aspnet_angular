@echo off

echo Generating Dart / Flutter Protos....
mkdir "QinIssue.Flutter/lib/generated"
protoc --dart_out=grpc:QinIssue.Flutter/lib/generated -Iprotos protos/models.proto

echo Generated Dart / Flutter Protos!
echo Generating Javascript / Typescript Protos....
cd "QinIssue.Frontend"
call npm install
call npm run-script compile
cd ..
echo Generated Javascript / Typescript Protos!

echo Generating C# Protos....
cd "QinIssue.Server"
call dotnet build
cd ..
echo Generated C# Protos!


echo All done! You should be good to go asuming there is no errors above ^