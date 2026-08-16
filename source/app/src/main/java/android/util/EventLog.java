package android.util;

import java.io.IOException;
import java.util.Collection;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/util/EventLog.class
 */
public class EventLog {
    public static native int writeEvent(int i10, int i11);

    public static native int writeEvent(int i10, long j10);

    public static native int writeEvent(int i10, float f10);

    public static native int writeEvent(int i10, String str);

    public static native int writeEvent(int i10, Object... objArr);

    public static native void readEvents(int[] iArr, Collection<Event> collection) throws IOException;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/util/EventLog$Event.class
 */
    public static final class Event {
        Event() {
            throw new RuntimeException("Stub!");
        }

        public int getProcessId() {
            throw new RuntimeException("Stub!");
        }

        public int getThreadId() {
            throw new RuntimeException("Stub!");
        }

        public long getTimeNanos() {
            throw new RuntimeException("Stub!");
        }

        public int getTag() {
            throw new RuntimeException("Stub!");
        }

        public synchronized Object getData() {
            throw new RuntimeException("Stub!");
        }
    }

    EventLog() {
        throw new RuntimeException("Stub!");
    }

    public static String getTagName(int tag) {
        throw new RuntimeException("Stub!");
    }

    public static int getTagCode(String name) {
        throw new RuntimeException("Stub!");
    }
}
