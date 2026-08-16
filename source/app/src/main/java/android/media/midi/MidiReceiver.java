package android.media.midi;

import java.io.IOException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/midi/MidiReceiver.class
 */
public abstract class MidiReceiver {
    public abstract void onSend(byte[] bArr, int i10, int i11, long j10) throws IOException;

    public MidiReceiver() {
        throw new RuntimeException("Stub!");
    }

    public MidiReceiver(int maxMessageSize) {
        throw new RuntimeException("Stub!");
    }

    public void flush() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void onFlush() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public final int getMaxMessageSize() {
        throw new RuntimeException("Stub!");
    }

    public void send(byte[] msg, int offset, int count) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void send(byte[] msg, int offset, int count, long timestamp) throws IOException {
        throw new RuntimeException("Stub!");
    }
}
