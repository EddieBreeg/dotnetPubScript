out="bin"
in=$1
if [ $# -ge 2 ]
then
    out=$2
fi

dotnet publish $in -c=Release --self-contained=true -p:PublishSingleFile=true -o $out/win64 -r=win-x64 
dotnet publish $in -c=Release --self-contained=true -p:PublishSingleFile=true -o $out/linux64 -r=linux-x64
dotnet publish $in -c=Release --self-contained=true -p:PublishSingleFile=true -o $out/osx64 -r=osx-x64