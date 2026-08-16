package android.app;

import android.content.ComponentName;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Printer;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/ApplicationErrorReport.class
 */
public class ApplicationErrorReport implements Parcelable {
    public static final Parcelable.Creator<ApplicationErrorReport> CREATOR = null;
    public static final int TYPE_ANR = 2;
    public static final int TYPE_BATTERY = 3;
    public static final int TYPE_CRASH = 1;
    public static final int TYPE_NONE = 0;
    public static final int TYPE_RUNNING_SERVICE = 5;
    public AnrInfo anrInfo;
    public BatteryInfo batteryInfo;
    public CrashInfo crashInfo;
    public String installerPackageName;
    public String packageName;
    public String processName;
    public RunningServiceInfo runningServiceInfo;
    public boolean systemApp;
    public long time;
    public int type;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/ApplicationErrorReport$CrashInfo.class
 */
    public static class CrashInfo {
        public String exceptionClassName;
        public String exceptionMessage;
        public String stackTrace;
        public String throwClassName;
        public String throwFileName;
        public int throwLineNumber;
        public String throwMethodName;

        public CrashInfo() {
            throw new RuntimeException("Stub!");
        }

        public CrashInfo(Throwable tr) {
            throw new RuntimeException("Stub!");
        }

        public CrashInfo(Parcel in2) {
            throw new RuntimeException("Stub!");
        }

        public void writeToParcel(Parcel dest, int flags) {
            throw new RuntimeException("Stub!");
        }

        public void dump(Printer pw, String prefix) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/ApplicationErrorReport$AnrInfo.class
 */
    public static class AnrInfo {
        public String activity;
        public String cause;
        public String info;

        public AnrInfo() {
            throw new RuntimeException("Stub!");
        }

        public AnrInfo(Parcel in2) {
            throw new RuntimeException("Stub!");
        }

        public void writeToParcel(Parcel dest, int flags) {
            throw new RuntimeException("Stub!");
        }

        public void dump(Printer pw, String prefix) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/ApplicationErrorReport$BatteryInfo.class
 */
    public static class BatteryInfo {
        public String checkinDetails;
        public long durationMicros;
        public String usageDetails;
        public int usagePercent;

        public BatteryInfo() {
            throw new RuntimeException("Stub!");
        }

        public BatteryInfo(Parcel in2) {
            throw new RuntimeException("Stub!");
        }

        public void writeToParcel(Parcel dest, int flags) {
            throw new RuntimeException("Stub!");
        }

        public void dump(Printer pw, String prefix) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/ApplicationErrorReport$RunningServiceInfo.class
 */
    public static class RunningServiceInfo {
        public long durationMillis;
        public String serviceDetails;

        public RunningServiceInfo() {
            throw new RuntimeException("Stub!");
        }

        public RunningServiceInfo(Parcel in2) {
            throw new RuntimeException("Stub!");
        }

        public void writeToParcel(Parcel dest, int flags) {
            throw new RuntimeException("Stub!");
        }

        public void dump(Printer pw, String prefix) {
            throw new RuntimeException("Stub!");
        }
    }

    public ApplicationErrorReport() {
        throw new RuntimeException("Stub!");
    }

    public static ComponentName getErrorReportReceiver(Context context, String packageName, int appFlags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        throw new RuntimeException("Stub!");
    }

    public void readFromParcel(Parcel in2) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    public void dump(Printer pw, String prefix) {
        throw new RuntimeException("Stub!");
    }
}
