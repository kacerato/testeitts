package JAVARuntime;

import java.io.InputStream;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Resources.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Resources.class
  classes.dex
 */
public class Resources {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Resources$File.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Resources$File.class
  classes.dex
 */
    public static class File {
        private final String path;
        private final boolean isDirectory;

        public File(String str, boolean z10) {
            this.path = str;
            this.isDirectory = z10;
        }

        public InputStream getInputStream() {
            return null;
        }

        public String getPath() {
            return this.path;
        }

        public String getName() {
            return null;
        }

        public int fileCount() {
            return 0;
        }

        public File[] getFiles() {
            return null;
        }

        public boolean isDirectory() {
            return this.isDirectory;
        }
    }

    public static File getFile(String str) {
        return null;
    }

    public static boolean isFolder(String str) {
        return false;
    }
}
