package android.telecom;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/telecom/DisconnectCause.class
 */
public final class DisconnectCause implements Parcelable {
    public static final int ANSWERED_ELSEWHERE = 11;
    public static final int BUSY = 7;
    public static final int CALL_PULLED = 12;
    public static final int CANCELED = 4;
    public static final int CONNECTION_MANAGER_NOT_SUPPORTED = 10;
    public static final Parcelable.Creator<DisconnectCause> CREATOR = null;
    public static final int ERROR = 1;
    public static final int LOCAL = 2;
    public static final int MISSED = 5;
    public static final int OTHER = 9;
    public static final int REJECTED = 6;
    public static final int REMOTE = 3;
    public static final int RESTRICTED = 8;
    public static final int UNKNOWN = 0;

    public DisconnectCause(int code) {
        throw new RuntimeException("Stub!");
    }

    public DisconnectCause(int code, String reason) {
        throw new RuntimeException("Stub!");
    }

    public DisconnectCause(int code, CharSequence label, CharSequence description, String reason) {
        throw new RuntimeException("Stub!");
    }

    public DisconnectCause(int code, CharSequence label, CharSequence description, String reason, int toneToPlay) {
        throw new RuntimeException("Stub!");
    }

    public int getCode() {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getLabel() {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getDescription() {
        throw new RuntimeException("Stub!");
    }

    public String getReason() {
        throw new RuntimeException("Stub!");
    }

    public int getTone() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel destination, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object o10) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
