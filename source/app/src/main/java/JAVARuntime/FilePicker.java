package JAVARuntime;

import android.net.Uri;
import androidx.documentfile.provider.DocumentFile;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import w3.e;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:FilePicker.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:FilePicker.class
  classes.dex
 */
@ClassCategory(cat = {"Files"})
public class FilePicker {

    public class AnonymousClass1 implements e.d {
        final Listener val$listener;

        public AnonymousClass1(final Listener val$listener) {
            this.val$listener = val$listener;
        }

        @Override
        public void onCancel() {
            this.val$listener.onCancel();
        }

        @Override
        public void onError(String error) {
            this.val$listener.onError(error);
        }

        @Override
        public void onSuccess(List<DocumentFile> files, e.c callback) {
            ArrayList arrayList = new ArrayList();
            Iterator<DocumentFile> it = files.iterator();
            while (it.hasNext()) {
                arrayList.add(new DFile(it.next()));
            }
            this.val$listener.onSuccess(arrayList);
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:FilePicker$Listener.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:FilePicker$Listener.class
  classes.dex
 */
    public interface Listener {
        void onSuccess(List<DFile> list);

        void onCancel();

        void onError(String str);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:FilePicker$DFile.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:FilePicker$DFile.class
  classes.dex
 */
    public static class DFile {
        private DFile() {
        }

        public String getName() {
            return null;
        }

        public String getType() {
            return null;
        }

        public Uri getUri() {
            return null;
        }

        public DFile getParentFile() {
            return null;
        }

        public boolean importTo(java.io.File file) {
            return false;
        }
    }

    private FilePicker() {
    }

    public static void open(Listener listener) {
    }

    public static boolean importFile(DFile dFile, java.io.File file) {
        return false;
    }
}
