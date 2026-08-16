package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Key.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Key.class
  classes.dex
 */
@ClassCategory(cat = {"Input"})
public final class Key {
    public Key(String str) {
    }

    @HideGetSet
    public boolean isPressed() {
        return false;
    }

    @HideGetSet
    public boolean isDown() {
        return false;
    }

    @HideGetSet
    public boolean isUp() {
        return false;
    }

    public void requestPress(Object obj) {
    }

    public void releasePress(Object obj) {
    }

    @HideGetSet
    public String getName() {
        return "";
    }
}
