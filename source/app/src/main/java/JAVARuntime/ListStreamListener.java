package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:ListStreamListener.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:ListStreamListener.class
  classes.dex
 */
@ClassCategory(cat = {"Lists"})
public interface ListStreamListener {
    void execute(Object obj, int i10, Object obj2);

    void onError(Exception exc, Error error, int i10, Object obj);

    void onFinish(Object obj);
}
