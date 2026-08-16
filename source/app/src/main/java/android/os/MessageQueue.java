package android.os;

import java.io.FileDescriptor;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/os/MessageQueue.class
 */
public final class MessageQueue {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/os/MessageQueue$IdleHandler.class
 */
    public interface IdleHandler {
        boolean queueIdle();
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/os/MessageQueue$OnFileDescriptorEventListener.class
 */
    public interface OnFileDescriptorEventListener {
        public static final int EVENT_ERROR = 4;
        public static final int EVENT_INPUT = 1;
        public static final int EVENT_OUTPUT = 2;

        int onFileDescriptorEvents(FileDescriptor fileDescriptor, int i10);
    }

    MessageQueue() {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() throws Throwable {
        throw new RuntimeException("Stub!");
    }

    public boolean isIdle() {
        throw new RuntimeException("Stub!");
    }

    public void addIdleHandler(IdleHandler handler) {
        throw new RuntimeException("Stub!");
    }

    public void removeIdleHandler(IdleHandler handler) {
        throw new RuntimeException("Stub!");
    }

    public void addOnFileDescriptorEventListener(FileDescriptor fd2, int events, OnFileDescriptorEventListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void removeOnFileDescriptorEventListener(FileDescriptor fd2) {
        throw new RuntimeException("Stub!");
    }
}
