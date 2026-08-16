package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:ConnectionListener.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:ConnectionListener.class
  classes.dex
 */
public interface ConnectionListener {
    void onConnected();

    void onDisconnected();

    void onError(String str, int i10);
}
