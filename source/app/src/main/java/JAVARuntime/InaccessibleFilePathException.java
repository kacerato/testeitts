package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:InaccessibleFilePathException.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:InaccessibleFilePathException.class
  classes.dex
 */
public class InaccessibleFilePathException extends RuntimeException {
    public InaccessibleFilePathException(String str) {
        super("Since Android 11, apps cannot freely read or write files outside their designated storage directories.\n\nITsMagic provides a directory for creating and managing application files. Use Directories.internal() as the root directory.\n\nExample:\nnew File(Directories.internal(), \"myfile.txt\");\n\nFor more information, search for \"Android Scoped Storage\".\n\nInaccessible file path: " + str);
    }
}
