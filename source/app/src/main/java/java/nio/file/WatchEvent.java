package java.nio.file;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/file/WatchEvent.class
 */
public interface WatchEvent<T> {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/file/WatchEvent$Kind.class
 */
    public interface Kind<T> {
        String name();

        Class<T> type();
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/file/WatchEvent$Modifier.class
 */
    public interface Modifier {
        String name();
    }

    Kind<T> kind();

    int count();

    T context();
}
