package java.nio.file;

import java.io.Closeable;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/file/WatchService.class
 */
public interface WatchService extends Closeable {
    @Override
    void close() throws IOException;

    WatchKey poll();

    WatchKey poll(long j10, TimeUnit timeUnit) throws InterruptedException;

    WatchKey take() throws InterruptedException;
}
