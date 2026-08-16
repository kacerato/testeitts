package android.nfc.tech;

import android.nfc.Tag;
import java.io.IOException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/nfc/tech/MifareUltralight.class
 */
public final class MifareUltralight extends BasicTagTechnology {
    public static final int PAGE_SIZE = 4;
    public static final int TYPE_ULTRALIGHT = 1;
    public static final int TYPE_ULTRALIGHT_C = 2;
    public static final int TYPE_UNKNOWN = -1;

    @Override
    public void close() throws IOException {
        super.close();
    }

    @Override
    public void connect() throws IOException {
        super.connect();
    }

    @Override
    public boolean isConnected() {
        return super.isConnected();
    }

    @Override
    public Tag getTag() {
        return super.getTag();
    }

    MifareUltralight() {
        throw new RuntimeException("Stub!");
    }

    public static MifareUltralight get(Tag tag) {
        throw new RuntimeException("Stub!");
    }

    public int getType() {
        throw new RuntimeException("Stub!");
    }

    public byte[] readPages(int pageOffset) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void writePage(int pageOffset, byte[] data) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public byte[] transceive(byte[] data) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public int getMaxTransceiveLength() {
        throw new RuntimeException("Stub!");
    }

    public void setTimeout(int timeout) {
        throw new RuntimeException("Stub!");
    }

    public int getTimeout() {
        throw new RuntimeException("Stub!");
    }
}
