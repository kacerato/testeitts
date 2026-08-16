package android.nfc.tech;

import android.nfc.FormatException;
import android.nfc.NdefMessage;
import android.nfc.Tag;
import java.io.IOException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/nfc/tech/Ndef.class
 */
public final class Ndef extends BasicTagTechnology {
    public static final String MIFARE_CLASSIC = "com.nxp.ndef.mifareclassic";
    public static final String NFC_FORUM_TYPE_1 = "org.nfcforum.ndef.type1";
    public static final String NFC_FORUM_TYPE_2 = "org.nfcforum.ndef.type2";
    public static final String NFC_FORUM_TYPE_3 = "org.nfcforum.ndef.type3";
    public static final String NFC_FORUM_TYPE_4 = "org.nfcforum.ndef.type4";

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

    Ndef() {
        throw new RuntimeException("Stub!");
    }

    public static Ndef get(Tag tag) {
        throw new RuntimeException("Stub!");
    }

    public NdefMessage getCachedNdefMessage() {
        throw new RuntimeException("Stub!");
    }

    public String getType() {
        throw new RuntimeException("Stub!");
    }

    public int getMaxSize() {
        throw new RuntimeException("Stub!");
    }

    public boolean isWritable() {
        throw new RuntimeException("Stub!");
    }

    public NdefMessage getNdefMessage() throws IOException, FormatException {
        throw new RuntimeException("Stub!");
    }

    public void writeNdefMessage(NdefMessage msg) throws IOException, FormatException {
        throw new RuntimeException("Stub!");
    }

    public boolean canMakeReadOnly() {
        throw new RuntimeException("Stub!");
    }

    public boolean makeReadOnly() throws IOException {
        throw new RuntimeException("Stub!");
    }
}
