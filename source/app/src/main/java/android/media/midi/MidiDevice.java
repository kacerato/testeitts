package android.media.midi;

import java.io.Closeable;
import java.io.IOException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/midi/MidiDevice.class
 */
public final class MidiDevice implements Closeable {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/midi/MidiDevice$MidiConnection.class
 */
    public class MidiConnection implements Closeable {
        MidiConnection() {
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

    MidiDevice() {
        throw new RuntimeException("Stub!");
    }

    public MidiDeviceInfo getInfo() {
        throw new RuntimeException("Stub!");
    }

    public MidiInputPort openInputPort(int portNumber) {
        throw new RuntimeException("Stub!");
    }

    public MidiOutputPort openOutputPort(int portNumber) {
        throw new RuntimeException("Stub!");
    }

    public MidiConnection connectPorts(MidiInputPort inputPort, int outputPortNumber) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void close() throws IOException {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() throws Throwable {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
