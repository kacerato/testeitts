package android.telecom;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/telecom/CallAudioState.class
 */
public final class CallAudioState implements Parcelable {
    public static final Parcelable.Creator<CallAudioState> CREATOR = null;
    public static final int ROUTE_BLUETOOTH = 2;
    public static final int ROUTE_EARPIECE = 1;
    public static final int ROUTE_SPEAKER = 8;
    public static final int ROUTE_WIRED_HEADSET = 4;
    public static final int ROUTE_WIRED_OR_EARPIECE = 5;

    public CallAudioState(boolean muted, int route, int supportedRouteMask) {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object obj) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public boolean isMuted() {
        throw new RuntimeException("Stub!");
    }

    public int getRoute() {
        throw new RuntimeException("Stub!");
    }

    public int getSupportedRouteMask() {
        throw new RuntimeException("Stub!");
    }

    public static String audioRouteToString(int route) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel destination, int flags) {
        throw new RuntimeException("Stub!");
    }
}
