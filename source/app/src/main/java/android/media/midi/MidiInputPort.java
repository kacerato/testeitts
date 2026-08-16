package android.media.midi;

import java.io.Closeable;
import java.io.IOException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/midi/MidiInputPort.class
 */
public final class MidiInputPort extends MidiReceiver implements Closeable {
    MidiInputPort() {
        throw new RuntimeException("Stub!");
    }

    public final int getPortNumber() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onSend(byte[] msg, int offset, int count, long timestamp) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onFlush() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void close() throws IOException {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() throws Throwable {
        throw new RuntimeException("Stub!");
    }
}
