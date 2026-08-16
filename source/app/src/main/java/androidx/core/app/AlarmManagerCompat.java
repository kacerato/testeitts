package androidx.core.app;

import android.app.AlarmManager;
import android.app.PendingIntent;

public final class AlarmManagerCompat {

    public static class Api19Impl {
        private Api19Impl() {
        }

        public static void setExact(AlarmManager alarmManager, int i10, long j10, PendingIntent pendingIntent) {
            alarmManager.setExact(i10, j10, pendingIntent);
        }
    }

    public static class Api21Impl {
        private Api21Impl() {
        }

        public static AlarmManager.AlarmClockInfo createAlarmClockInfo(long j10, PendingIntent pendingIntent) {
            return new AlarmManager.AlarmClockInfo(j10, pendingIntent);
        }

        public static void setAlarmClock(AlarmManager alarmManager, Object obj, PendingIntent pendingIntent) {
            alarmManager.setAlarmClock((AlarmManager.AlarmClockInfo) obj, pendingIntent);
        }
    }

    public static class Api23Impl {
        private Api23Impl() {
        }

        public static void setAndAllowWhileIdle(AlarmManager alarmManager, int i10, long j10, PendingIntent pendingIntent) {
            alarmManager.setAndAllowWhileIdle(i10, j10, pendingIntent);
        }

        public static void setExactAndAllowWhileIdle(AlarmManager alarmManager, int i10, long j10, PendingIntent pendingIntent) {
            alarmManager.setExactAndAllowWhileIdle(i10, j10, pendingIntent);
        }
    }

    private AlarmManagerCompat() {
    }

    public static void setAlarmClock(AlarmManager alarmManager, long j10, PendingIntent pendingIntent, PendingIntent pendingIntent2) {
        Api21Impl.setAlarmClock(alarmManager, Api21Impl.createAlarmClockInfo(j10, pendingIntent), pendingIntent2);
    }

    public static void setAndAllowWhileIdle(AlarmManager alarmManager, int i10, long j10, PendingIntent pendingIntent) {
        Api23Impl.setAndAllowWhileIdle(alarmManager, i10, j10, pendingIntent);
    }

    public static void setExact(AlarmManager alarmManager, int i10, long j10, PendingIntent pendingIntent) {
        Api19Impl.setExact(alarmManager, i10, j10, pendingIntent);
    }

    public static void setExactAndAllowWhileIdle(AlarmManager alarmManager, int i10, long j10, PendingIntent pendingIntent) {
        Api23Impl.setExactAndAllowWhileIdle(alarmManager, i10, j10, pendingIntent);
    }
}
