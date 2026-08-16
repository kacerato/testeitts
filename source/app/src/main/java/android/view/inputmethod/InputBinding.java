package android.view.inputmethod;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/inputmethod/InputBinding.class
 */
public final class InputBinding implements Parcelable {
    public static final Parcelable.Creator<InputBinding> CREATOR = null;

    public InputBinding(InputConnection conn, IBinder connToken, int uid, int pid) {
        throw new RuntimeException("Stub!");
    }

    public InputBinding(InputConnection conn, InputBinding binding) {
        throw new RuntimeException("Stub!");
    }

    public InputConnection getConnection() {
        throw new RuntimeException("Stub!");
    }

    public IBinder getConnectionToken() {
        throw new RuntimeException("Stub!");
    }

    public int getUid() {
        throw new RuntimeException("Stub!");
    }

    public int getPid() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }
}
