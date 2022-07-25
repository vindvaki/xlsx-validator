/*
get's openxml
*/
{ fetchNuGet,
}:

# https://www.nuget.org/packages/DocumentFormat.OpenXml
fetchNuGet {
    pname = "DocumentFormat.OpenXml";
    version = "2.17.1";
    sha256 = "05fcyh53hz6m45pgq49lvgaz9a150hkgl66xx6i4inaax9kcpr46";
    outputFiles = [ "lib/*" ];
    }
