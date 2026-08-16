package android.nfc;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/nfc/NfcAdapter.class
 */
public final class NfcAdapter {
    public static final String ACTION_ADAPTER_STATE_CHANGED = "android.nfc.action.ADAPTER_STATE_CHANGED";
    public static final String ACTION_NDEF_DISCOVERED = "android.nfc.action.NDEF_DISCOVERED";
    public static final String ACTION_TAG_DISCOVERED = "android.nfc.action.TAG_DISCOVERED";
    public static final String ACTION_TECH_DISCOVERED = "android.nfc.action.TECH_DISCOVERED";
    public static final String EXTRA_ADAPTER_STATE = "android.nfc.extra.ADAPTER_STATE";
    public static final String EXTRA_ID = "android.nfc.extra.ID";
    public static final String EXTRA_NDEF_MESSAGES = "android.nfc.extra.NDEF_MESSAGES";
    public static final String EXTRA_READER_PRESENCE_CHECK_DELAY = "presence";
    public static final String EXTRA_TAG = "android.nfc.extra.TAG";
    public static final int FLAG_READER_NFC_A = 1;
    public static final int FLAG_READER_NFC_B = 2;
    public static final int FLAG_READER_NFC_BARCODE = 16;
    public static final int FLAG_READER_NFC_F = 4;
    public static final int FLAG_READER_NFC_V = 8;
    public static final int FLAG_READER_NO_PLATFORM_SOUNDS = 256;
    public static final int FLAG_READER_SKIP_NDEF_CHECK = 128;
    public static final int STATE_OFF = 1;
    public static final int STATE_ON = 3;
    public static final int STATE_TURNING_OFF = 4;
    public static final int STATE_TURNING_ON = 2;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/nfc/NfcAdapter$CreateBeamUrisCallback.class
 */
    public interface CreateBeamUrisCallback {
        Uri[] createBeamUris(NfcEvent nfcEvent);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/nfc/NfcAdapter$CreateNdefMessageCallback.class
 */
    public interface CreateNdefMessageCallback {
        NdefMessage createNdefMessage(NfcEvent nfcEvent);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/nfc/NfcAdapter$OnNdefPushCompleteCallback.class
 */
    public interface OnNdefPushCompleteCallback {
        void onNdefPushComplete(NfcEvent nfcEvent);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/nfc/NfcAdapter$OnTagRemovedListener.class
 */
    public interface OnTagRemovedListener {
        void onTagRemoved();
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/nfc/NfcAdapter$ReaderCallback.class
 */
    public interface ReaderCallback {
        void onTagDiscovered(Tag tag);
    }

    NfcAdapter() {
        throw new RuntimeException("Stub!");
    }

    public static NfcAdapter getDefaultAdapter(Context context) {
        throw new RuntimeException("Stub!");
    }

    public boolean isEnabled() {
        throw new RuntimeException("Stub!");
    }

    public void setBeamPushUris(Uri[] uris, Activity activity) {
        throw new RuntimeException("Stub!");
    }

    public void setBeamPushUrisCallback(CreateBeamUrisCallback callback, Activity activity) {
        throw new RuntimeException("Stub!");
    }

    public void setNdefPushMessage(NdefMessage message, Activity activity, Activity... activities) {
        throw new RuntimeException("Stub!");
    }

    public void setNdefPushMessageCallback(CreateNdefMessageCallback callback, Activity activity, Activity... activities) {
        throw new RuntimeException("Stub!");
    }

    public void setOnNdefPushCompleteCallback(OnNdefPushCompleteCallback callback, Activity activity, Activity... activities) {
        throw new RuntimeException("Stub!");
    }

    public void enableForegroundDispatch(Activity activity, PendingIntent intent, IntentFilter[] filters, String[][] techLists) {
        throw new RuntimeException("Stub!");
    }

    public void disableForegroundDispatch(Activity activity) {
        throw new RuntimeException("Stub!");
    }

    public void enableReaderMode(Activity activity, ReaderCallback callback, int flags, Bundle extras) {
        throw new RuntimeException("Stub!");
    }

    public void disableReaderMode(Activity activity) {
        throw new RuntimeException("Stub!");
    }

    public boolean invokeBeam(Activity activity) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void enableForegroundNdefPush(Activity activity, NdefMessage message) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void disableForegroundNdefPush(Activity activity) {
        throw new RuntimeException("Stub!");
    }

    public boolean isNdefPushEnabled() {
        throw new RuntimeException("Stub!");
    }

    public boolean ignore(Tag tag, int debounceMs, OnTagRemovedListener tagRemovedListener, Handler handler) {
        throw new RuntimeException("Stub!");
    }
}
