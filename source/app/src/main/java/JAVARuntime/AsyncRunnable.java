package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:AsyncRunnable.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:AsyncRunnable.class
  classes.dex
 */
@ClassCategory(cat = {"Async"})
public interface AsyncRunnable {
    Object onBackground(Object obj);

    void onEngine(Object obj);
}
