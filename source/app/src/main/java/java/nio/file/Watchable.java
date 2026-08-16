package java.nio.file;

import java.io.IOException;
import java.nio.file.WatchEvent;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/file/Watchable.class
 */
public interface Watchable {
    WatchKey register(WatchService watchService, WatchEvent.Kind<?>[] kindArr, WatchEvent.Modifier... modifierArr) throws IOException;

    WatchKey register(WatchService watchService, WatchEvent.Kind<?>... kindArr) throws IOException;
}
