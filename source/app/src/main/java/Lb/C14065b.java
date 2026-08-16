package lb;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Debug;
import android.os.Process;
import android.util.Log;

public class C14065b {

    public long f96228a = 0;

    public static float c(long kb2) {
        return ((float) kb2) / 1024.0f;
    }

    public long a() {
        return this.f96228a;
    }

    public float b() {
        return c(this.f96228a);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x003b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public float d(Context ctx) {
        ActivityManager activityManager;
        Debug.MemoryInfo[] processMemoryInfo;
        Debug.MemoryInfo memoryInfo;
        long parseLong;
        if (ctx == null || (activityManager = (ActivityManager) ctx.getSystemService(Context.ACTIVITY_SERVICE)) == null || (processMemoryInfo = activityManager.getProcessMemoryInfo(new int[]{Process.myPid()})) == null || processMemoryInfo.length == 0 || (memoryInfo = processMemoryInfo[0]) == null) {
            return 0.0f;
        }
        String memoryStat = memoryInfo.getMemoryStat("summary.graphics");
        if (memoryStat != null) {
            try {
                parseLong = Long.parseLong(memoryStat);
            } catch (NumberFormatException unused) {
            }
            if (parseLong > this.f96228a) {
                this.f96228a = parseLong;
            }
            float c10 = c(parseLong);
            Log.i("MEM", "graphicsNow=" + c10 + " MB, graphicsPeak=" + c(this.f96228a) + " MB");
            return c10;
        }
        parseLong = 0;
        if (parseLong > this.f96228a) {
        }
        float c102 = c(parseLong);
        Log.i("MEM", "graphicsNow=" + c102 + " MB, graphicsPeak=" + c(this.f96228a) + " MB");
        return c102;
    }
}
