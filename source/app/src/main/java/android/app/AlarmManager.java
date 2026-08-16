package android.app;

import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/AlarmManager.class
 */
public class AlarmManager {
    public static final String ACTION_NEXT_ALARM_CLOCK_CHANGED = "android.app.action.NEXT_ALARM_CLOCK_CHANGED";
    public static final int ELAPSED_REALTIME = 3;
    public static final int ELAPSED_REALTIME_WAKEUP = 2;
    public static final long INTERVAL_DAY = 86400000;
    public static final long INTERVAL_FIFTEEN_MINUTES = 900000;
    public static final long INTERVAL_HALF_DAY = 43200000;
    public static final long INTERVAL_HALF_HOUR = 1800000;
    public static final long INTERVAL_HOUR = 3600000;
    public static final int RTC = 1;
    public static final int RTC_WAKEUP = 0;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/AlarmManager$OnAlarmListener.class
 */
    public interface OnAlarmListener {
        void onAlarm();
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/AlarmManager$AlarmClockInfo.class
 */
    public static final class AlarmClockInfo implements Parcelable {
        public static final Parcelable.Creator<AlarmClockInfo> CREATOR = null;

        public AlarmClockInfo(long triggerTime, PendingIntent showIntent) {
            throw new RuntimeException("Stub!");
        }

        public long getTriggerTime() {
            throw new RuntimeException("Stub!");
        }

        public PendingIntent getShowIntent() {
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

    AlarmManager() {
        throw new RuntimeException("Stub!");
    }

    public void set(int type, long triggerAtMillis, PendingIntent operation) {
        throw new RuntimeException("Stub!");
    }

    public void set(int type, long triggerAtMillis, String tag, OnAlarmListener listener, Handler targetHandler) {
        throw new RuntimeException("Stub!");
    }

    public void setRepeating(int type, long triggerAtMillis, long intervalMillis, PendingIntent operation) {
        throw new RuntimeException("Stub!");
    }

    public void setWindow(int type, long windowStartMillis, long windowLengthMillis, PendingIntent operation) {
        throw new RuntimeException("Stub!");
    }

    public void setWindow(int type, long windowStartMillis, long windowLengthMillis, String tag, OnAlarmListener listener, Handler targetHandler) {
        throw new RuntimeException("Stub!");
    }

    public void setExact(int type, long triggerAtMillis, PendingIntent operation) {
        throw new RuntimeException("Stub!");
    }

    public void setExact(int type, long triggerAtMillis, String tag, OnAlarmListener listener, Handler targetHandler) {
        throw new RuntimeException("Stub!");
    }

    public void setAlarmClock(AlarmClockInfo info, PendingIntent operation) {
        throw new RuntimeException("Stub!");
    }

    public void setInexactRepeating(int type, long triggerAtMillis, long intervalMillis, PendingIntent operation) {
        throw new RuntimeException("Stub!");
    }

    public void setAndAllowWhileIdle(int type, long triggerAtMillis, PendingIntent operation) {
        throw new RuntimeException("Stub!");
    }

    public void setExactAndAllowWhileIdle(int type, long triggerAtMillis, PendingIntent operation) {
        throw new RuntimeException("Stub!");
    }

    public void cancel(PendingIntent operation) {
        throw new RuntimeException("Stub!");
    }

    public void cancel(OnAlarmListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void setTime(long millis) {
        throw new RuntimeException("Stub!");
    }

    public void setTimeZone(String timeZone) {
        throw new RuntimeException("Stub!");
    }

    public AlarmClockInfo getNextAlarmClock() {
        throw new RuntimeException("Stub!");
    }
}
