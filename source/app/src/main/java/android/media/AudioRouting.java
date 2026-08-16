package android.media;

import android.os.Handler;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/AudioRouting.class
 */
public interface AudioRouting {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/AudioRouting$OnRoutingChangedListener.class
 */
    public interface OnRoutingChangedListener {
        void onRoutingChanged(AudioRouting audioRouting);
    }

    boolean setPreferredDevice(AudioDeviceInfo audioDeviceInfo);

    AudioDeviceInfo getPreferredDevice();

    AudioDeviceInfo getRoutedDevice();

    void addOnRoutingChangedListener(OnRoutingChangedListener onRoutingChangedListener, Handler handler);

    void removeOnRoutingChangedListener(OnRoutingChangedListener onRoutingChangedListener);
}
