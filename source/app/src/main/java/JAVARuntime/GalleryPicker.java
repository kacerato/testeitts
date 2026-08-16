package JAVARuntime;

import w3.f;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:GalleryPicker.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:GalleryPicker.class
  classes.dex
 */
@ClassCategory(cat = {"Files"})
public class GalleryPicker {

    public class AnonymousClass1 implements f.c {
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
        public void onSuccess(String imageName, java.io.File imageFile) {
            this.val$listener.onSuccess(imageName, imageFile);
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:GalleryPicker$Listener.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:GalleryPicker$Listener.class
  classes.dex
 */
    public interface Listener {
        void onSuccess(String str, java.io.File file);

        void onCancel();

        void onError(String str);
    }

    private GalleryPicker() {
    }

    public static void open(Listener listener) {
    }
}
