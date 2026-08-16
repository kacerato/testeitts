package android.os;

import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/os/ResultReceiver.class
 */
public class ResultReceiver implements Parcelable {
    public static final Parcelable.Creator<ResultReceiver> CREATOR = null;

    public ResultReceiver(Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public void send(int resultCode, Bundle resultData) {
        throw new RuntimeException("Stub!");
    }

    protected void onReceiveResult(int resultCode, Bundle resultData) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel out, int flags) {
        throw new RuntimeException("Stub!");
    }
}
