package android.media.midi;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/midi/MidiSender.class
 */
public abstract class MidiSender {
    public abstract void onConnect(MidiReceiver midiReceiver);

    public abstract void onDisconnect(MidiReceiver midiReceiver);

    public MidiSender() {
        throw new RuntimeException("Stub!");
    }

    public void connect(MidiReceiver receiver) {
        throw new RuntimeException("Stub!");
    }

    public void disconnect(MidiReceiver receiver) {
        throw new RuntimeException("Stub!");
    }
}
