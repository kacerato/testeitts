package java.util;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/ListResourceBundle.class
 */
public abstract class ListResourceBundle extends ResourceBundle {
    protected abstract Object[][] getContents();

    public ListResourceBundle() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final Object handleGetObject(String key) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Enumeration<String> getKeys() {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected Set<String> handleKeySet() {
        throw new RuntimeException("Stub!");
    }
}
