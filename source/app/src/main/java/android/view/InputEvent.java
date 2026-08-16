package android.view;

import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/InputEvent.class
 */
public abstract class InputEvent implements Parcelable {
    public static final Parcelable.Creator<InputEvent> CREATOR = null;

    public abstract int getDeviceId();

    public abstract int getSource();

    public abstract long getEventTime();

    public InputEvent() {
        throw new RuntimeException("Stub!");
    }

    public final InputDevice getDevice() {
        throw new RuntimeException("Stub!");
    }

    public boolean isFromSource(int source) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }
}
