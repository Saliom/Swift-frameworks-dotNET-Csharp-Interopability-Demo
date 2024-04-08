# Swift Frameworks/.NET C# Interoperability Demo
 Simple demo to showcase interoperability between swift frameworks and .NET C#

## Prerequisites
* [Xcode](https://xcodereleases.com)
* [JetBrains Rider](https://www.jetbrains.com/rider/download/)
* [.NET 8 SDK](https://dotnet.microsoft.com/en-us/download/dotnet/8.0)

## Steps to build:
1. Open and build `FrameworkA` in Xcode

2. Copy `FrameworkA.framework` and place it next to `FrameworkB` folder and `FrameworkB.xcodeproj`

3. Open and build `FrameworkB` in Xcode

4. Copy `FrameworkA.framework` and place it inside `Frameworks` folder in the dotNET C# Project folder

5. Copy `FrameworkB` binary (located inside `FrameworkB.framework/Versions/A/`) and place it inside `dotNET C# Project` folder

6. Open, build and run `SwiftFrameworkIntegrationDemo` project inside `dotNET C# Project` folder using JetBrains Rider
