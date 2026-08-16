package android.nfc.tech;

import android.nfc.Tag;
import java.io.Closeable;
import java.io.IOException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/nfc/tech/TagTechnology.class
 */
public interface TagTechnology extends Closeable {
    Tag getTag();

    void connect() throws IOException;

    @Override
    void close() throws IOException;

    boolean isConnected();
}
