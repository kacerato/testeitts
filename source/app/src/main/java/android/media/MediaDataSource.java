package android.media;

import java.io.Closeable;
import java.io.IOException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaDataSource.class
 */
public abstract class MediaDataSource implements Closeable {
    public abstract int readAt(long j10, byte[] bArr, int i10, int i11) throws IOException;

    public abstract long getSize() throws IOException;

    public MediaDataSource() {
        throw new RuntimeException("Stub!");
    }
}
