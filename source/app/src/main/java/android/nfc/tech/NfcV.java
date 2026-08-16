package android.nfc.tech;

import android.nfc.Tag;
import java.io.IOException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/nfc/tech/NfcV.class
 */
public final class NfcV extends BasicTagTechnology {
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

    NfcV() {
        throw new RuntimeException("Stub!");
    }

    public static NfcV get(Tag tag) {
        throw new RuntimeException("Stub!");
    }

    public byte getResponseFlags() {
        throw new RuntimeException("Stub!");
    }

    public byte getDsfId() {
        throw new RuntimeException("Stub!");
    }

    public byte[] transceive(byte[] data) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public int getMaxTransceiveLength() {
        throw new RuntimeException("Stub!");
    }
}
