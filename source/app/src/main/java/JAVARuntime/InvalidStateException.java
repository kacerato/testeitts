package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:InvalidStateException.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:InvalidStateException.class
  classes.dex
 */
public class InvalidStateException extends RuntimeException {
    public InvalidStateException() {
    }

    public InvalidStateException(String str) {
        super(str);
    }

    public InvalidStateException(String str, Throwable th2) {
        super(str, th2);
    }

    public InvalidStateException(Throwable th2) {
        super(th2);
    }
}
