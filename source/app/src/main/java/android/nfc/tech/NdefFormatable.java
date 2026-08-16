package android.nfc.tech;

import android.nfc.FormatException;
import android.nfc.NdefMessage;
import android.nfc.Tag;
import java.io.IOException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/nfc/tech/NdefFormatable.class
 */
public final class NdefFormatable extends BasicTagTechnology {
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

    NdefFormatable() {
        throw new RuntimeException("Stub!");
    }

    public static NdefFormatable get(Tag tag) {
        throw new RuntimeException("Stub!");
    }

    public void format(NdefMessage firstMessage) throws IOException, FormatException {
        throw new RuntimeException("Stub!");
    }

    public void formatReadOnly(NdefMessage firstMessage) throws IOException, FormatException {
        throw new RuntimeException("Stub!");
    }
}
