package com.google.android.gms.internal.measurement;

import android.Manifest;
import android.annotation.TargetApi;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.Context;
import android.os.UserHandle;
import android.util.Log;
import androidx.annotation.Nullable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@TargetApi(24)
public final class C12122m0 {

    @Nullable
    public static final Method f62357a;

    @Nullable
    public static final Method f62358b;

    static {
        Method method;
        Method method2 = null;
        try {
            method = JobScheduler.class.getDeclaredMethod("scheduleAsPackage", JobInfo.class, String.class, Integer.TYPE, String.class);
        } catch (NoSuchMethodException unused) {
            if (Log.isLoggable("JobSchedulerCompat", 6)) {
                Log.e("JobSchedulerCompat", "No scheduleAsPackage method available, falling back to schedule");
            }
            method = null;
        }
        f62357a = method;
        try {
            method2 = UserHandle.class.getDeclaredMethod("myUserId", null);
        } catch (NoSuchMethodException unused2) {
            if (Log.isLoggable("JobSchedulerCompat", 6)) {
                Log.e("JobSchedulerCompat", "No myUserId method available");
            }
        }
        f62358b = method2;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int a(Context context, JobInfo jobInfo, String str, String str2) {
        Integer num;
        int intValue;
        Method method;
        JobScheduler jobScheduler = (JobScheduler) w2.H.E((JobScheduler) context.getSystemService(Context.JOB_SCHEDULER_SERVICE));
        if (f62357a == null || context.checkSelfPermission(Manifest.permission.UPDATE_DEVICE_STATS) != 0) {
            return jobScheduler.schedule(jobInfo);
        }
        Method method2 = f62358b;
        if (method2 != null) {
            try {
                num = (Integer) method2.invoke(UserHandle.class, null);
            } catch (IllegalAccessException | InvocationTargetException e10) {
                if (Log.isLoggable("JobSchedulerCompat", 6)) {
                    Log.e("JobSchedulerCompat", "myUserId invocation illegal", e10);
                }
            }
            if (num != null) {
                intValue = num.intValue();
                method = f62357a;
                if (method != null) {
                    try {
                        Integer num2 = (Integer) method.invoke(jobScheduler, jobInfo, "com.google.android.gms", Integer.valueOf(intValue), "UploadAlarm");
                        if (num2 != null) {
                            return num2.intValue();
                        }
                        return 0;
                    } catch (IllegalAccessException | InvocationTargetException e11) {
                        Log.e("UploadAlarm", "error calling scheduleAsPackage", e11);
                    }
                }
                return jobScheduler.schedule(jobInfo);
            }
        }
        intValue = 0;
        method = f62357a;
        if (method != null) {
        }
        return jobScheduler.schedule(jobInfo);
    }
}
