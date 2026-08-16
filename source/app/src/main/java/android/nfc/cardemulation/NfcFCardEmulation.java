package android.nfc.cardemulation;

import android.app.Activity;
import android.content.ComponentName;
import android.nfc.NfcAdapter;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/nfc/cardemulation/NfcFCardEmulation.class
 */
public final class NfcFCardEmulation {
    NfcFCardEmulation() {
        throw new RuntimeException("Stub!");
    }

    public static synchronized NfcFCardEmulation getInstance(NfcAdapter adapter) {
        throw new RuntimeException("Stub!");
    }

    public String getSystemCodeForService(ComponentName service) throws RuntimeException {
        throw new RuntimeException("Stub!");
    }

    public boolean registerSystemCodeForService(ComponentName service, String systemCode) throws RuntimeException {
        throw new RuntimeException("Stub!");
    }

    public boolean unregisterSystemCodeForService(ComponentName service) throws RuntimeException {
        throw new RuntimeException("Stub!");
    }

    public String getNfcid2ForService(ComponentName service) throws RuntimeException {
        throw new RuntimeException("Stub!");
    }

    public boolean setNfcid2ForService(ComponentName service, String nfcid2) throws RuntimeException {
        throw new RuntimeException("Stub!");
    }

    public boolean enableService(Activity activity, ComponentName service) throws RuntimeException {
        throw new RuntimeException("Stub!");
    }

    public boolean disableService(Activity activity) throws RuntimeException {
        throw new RuntimeException("Stub!");
    }
}
