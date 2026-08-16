package android.nfc.tech;

import android.nfc.Tag;
import java.io.IOException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/nfc/tech/IsoDep.class
 */
public final class IsoDep extends BasicTagTechnology {
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

    IsoDep() {
        throw new RuntimeException("Stub!");
    }

    public static IsoDep get(Tag tag) {
        throw new RuntimeException("Stub!");
    }

    public void setTimeout(int timeout) {
        throw new RuntimeException("Stub!");
    }

    public int getTimeout() {
        throw new RuntimeException("Stub!");
    }

    public byte[] getHistoricalBytes() {
        throw new RuntimeException("Stub!");
    }

    public byte[] getHiLayerResponse() {
        throw new RuntimeException("Stub!");
    }

    public byte[] transceive(byte[] data) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public int getMaxTransceiveLength() {
        throw new RuntimeException("Stub!");
    }

    public boolean isExtendedLengthApduSupported() {
        throw new RuntimeException("Stub!");
    }
}
