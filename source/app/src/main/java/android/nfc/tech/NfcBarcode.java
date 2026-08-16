package android.nfc.tech;

import android.nfc.Tag;
import java.io.IOException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/nfc/tech/NfcBarcode.class
 */
public final class NfcBarcode extends BasicTagTechnology {
    public static final int TYPE_KOVIO = 1;
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

    NfcBarcode() {
        throw new RuntimeException("Stub!");
    }

    public static NfcBarcode get(Tag tag) {
        throw new RuntimeException("Stub!");
    }

    public int getType() {
        throw new RuntimeException("Stub!");
    }

    public byte[] getBarcode() {
        throw new RuntimeException("Stub!");
    }
}
