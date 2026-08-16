package android.media.midi;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/midi/MidiDeviceService.class
 */
public abstract class MidiDeviceService extends Service {
    public static final String SERVICE_INTERFACE = "android.media.midi.MidiDeviceService";

    public abstract MidiReceiver[] onGetInputPortReceivers();

    public MidiDeviceService() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onCreate() {
        throw new RuntimeException("Stub!");
    }

    public final MidiReceiver[] getOutputPortReceivers() {
        throw new RuntimeException("Stub!");
    }

    public final MidiDeviceInfo getDeviceInfo() {
        throw new RuntimeException("Stub!");
    }

    public void onDeviceStatusChanged(MidiDeviceStatus status) {
        throw new RuntimeException("Stub!");
    }

    public void onClose() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public IBinder onBind(Intent intent) {
        throw new RuntimeException("Stub!");
    }
}
