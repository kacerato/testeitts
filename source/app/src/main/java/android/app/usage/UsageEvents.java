package android.app.usage;

import android.content.res.Configuration;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/usage/UsageEvents.class
 */
public final class UsageEvents implements Parcelable {
    public static final Parcelable.Creator<UsageEvents> CREATOR = null;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/usage/UsageEvents$Event.class
 */
    public static final class Event {
        public static final int CONFIGURATION_CHANGE = 5;
        public static final int MOVE_TO_BACKGROUND = 2;
        public static final int MOVE_TO_FOREGROUND = 1;
        public static final int NONE = 0;
        public static final int SHORTCUT_INVOCATION = 8;
        public static final int USER_INTERACTION = 7;

        public Event() {
            throw new RuntimeException("Stub!");
        }

        public String getPackageName() {
            throw new RuntimeException("Stub!");
        }

        public String getClassName() {
            throw new RuntimeException("Stub!");
        }

        public long getTimeStamp() {
            throw new RuntimeException("Stub!");
        }

        public int getEventType() {
            throw new RuntimeException("Stub!");
        }

        public Configuration getConfiguration() {
            throw new RuntimeException("Stub!");
        }

        public String getShortcutId() {
            throw new RuntimeException("Stub!");
        }
    }

    UsageEvents() {
        throw new RuntimeException("Stub!");
    }

    public boolean hasNextEvent() {
        throw new RuntimeException("Stub!");
    }

    public boolean getNextEvent(Event eventOut) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        throw new RuntimeException("Stub!");
    }
}
