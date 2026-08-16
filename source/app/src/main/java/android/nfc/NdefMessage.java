package android.nfc;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/nfc/NdefMessage.class
 */
public final class NdefMessage implements Parcelable {
    public static final Parcelable.Creator<NdefMessage> CREATOR = null;

    public NdefMessage(byte[] data) throws FormatException {
        throw new RuntimeException("Stub!");
    }

    public NdefMessage(NdefRecord record, NdefRecord... records) {
        throw new RuntimeException("Stub!");
    }

    public NdefMessage(NdefRecord[] records) {
        throw new RuntimeException("Stub!");
    }

    public NdefRecord[] getRecords() {
        throw new RuntimeException("Stub!");
    }

    public int getByteArrayLength() {
        throw new RuntimeException("Stub!");
    }

    public byte[] toByteArray() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object obj) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
