package android.nfc.tech;

import android.nfc.Tag;
import java.io.IOException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/nfc/tech/BasicTagTechnology.class
 */
abstract class BasicTagTechnology implements TagTechnology {
    public BasicTagTechnology() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Tag getTag() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isConnected() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void connect() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void close() throws IOException {
        throw new RuntimeException("Stub!");
    }
}
