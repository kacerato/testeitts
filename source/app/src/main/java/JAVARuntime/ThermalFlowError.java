package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:ThermalFlowError.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:ThermalFlowError.class
  classes.dex
 */
public class ThermalFlowError extends RuntimeException {
    public static final int TYPE_SIMPLE = 0;
    public static final int TYPE_EXCEPTION = 1;
    public static final int TYPE_ERROR = 2;

    public ThermalFlowError(String str, String str2) {
    }

    public ThermalFlowError(String str, String str2, Exception exc) {
    }

    public ThermalFlowError(String str, String str2, Error error) {
    }

    @Override
    public String getMessage() {
        return null;
    }

    public String getCallStack() {
        return null;
    }

    public Exception getException() {
        return null;
    }

    public Error getError() {
        return null;
    }

    public int getType() {
        return 0;
    }
}
