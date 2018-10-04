# MSVXcodeBuildNumberToCountGitCommits - Set the build number to the count of Git commits
Xcode: Set the build number to the count of Git commits
http://camopu.rhorse.ru/MSVXcodeBuildNumberToCountGitCommits.html

Set the build number to the count of Git commits

```perl
# Set the build number to the count of Git commits
# https://github.com/sergemoskalenko/MSVXcodeBuildNumberToCountGitCommits

buildNumber=$(git rev-list --count --first-parent HEAD)
/usr/libexec/PlistBuddy -c "Set :CFBundleVersion $buildNumber" "${INFOPLIST_FILE}"
```

Synchronize build number and version on extensions and main application.
```perl
buildNumber=$(git rev-list --count --first-parent HEAD)
/usr/libexec/PlistBuddy -c "Set :CFBundleVersion $buildNumber" "${INFOPLIST_FILE}"
/usr/libexec/PlistBuddy -c "Set :CFBundleVersion ${buildNumber}" "${PROJECT_DIR}/TodayExtension/Info.plist"
/usr/libexec/PlistBuddy -c "Set :CFBundleVersion ${buildNumber}" "${PROJECT_DIR}/Watch/Info.plist"
/usr/libexec/PlistBuddy -c "Set :CFBundleVersion ${buildNumber}" "${PROJECT_DIR}/Watch Extension/Info.plist"

buildVersion=$(/usr/libexec/PlistBuddy -c "Print :CFBundleShortVersionString" "${INFOPLIST_FILE}")
/usr/libexec/PlistBuddy -c "Set :CFBundleShortVersionString ${buildVersion}" "${PROJECT_DIR}/TodayExtension/Info.plist"
/usr/libexec/PlistBuddy -c "Set :CFBundleShortVersionString ${buildVersion}" "${PROJECT_DIR}/Watch/Info.plist"
/usr/libexec/PlistBuddy -c "Set :CFBundleShortVersionString ${buildVersion}" "${PROJECT_DIR}/Watch Extension/Info.plist"
```


[<img src="https://raw.githubusercontent.com/sergemoskalenko/MSVXcodeBuildNumberToCountGitCommits/master/images/image1-726468.png" alt="Screen"/>](https://ios-objective-c.blogspot.com/2017/08/set-build-number-to-count-of-git-commits.html)


[<img src="https://raw.githubusercontent.com/sergemoskalenko/MSVXcodeBuildNumberToCountGitCommits/master/images/image2-727203.png" alt="Screen" />](https://ios-objective-c.blogspot.com/2017/08/set-build-number-to-count-of-git-commits.html)




Add new script to build phase and paste it.
