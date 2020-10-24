$Out="bin"
$count=$args.Count

if ($count -gt 1) {
    $Out=$args[1]
}
dotnet publish $args[0] -c=Release --self-contained=true -p:PublishSingleFile=true -o $Out/win64 -r=win-x64     
dotnet publish $args[0] -c=Release --self-contained=true -p:PublishSingleFile=true -o $Out/linux64 -r=linux-x64 
dotnet publish $args[0] -c=Release --self-contained=true -p:PublishSingleFile=true -o $Out/osx64 -r=osx-x64