package java.nio.file;

import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/file/WatchKey.class
 */
public interface WatchKey {
    boolean isValid();

    List<WatchEvent<?>> pollEvents();

    boolean reset();

    void cancel();

    Watchable watchable();
}
