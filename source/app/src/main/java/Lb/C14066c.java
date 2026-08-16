package lb;

import android.app.ActivityManager;
import android.content.Context;
import com.itsmagic.engine.Engines.Engine.GC.SGC;
import java.util.Locale;

public class C14066c {

    public float f96229a;

    public float f96230b;

    public static float a(long bytes) {
        return ((float) bytes) / 1048576.0f;
    }

    public static String b(float value) {
        return String.format(Locale.ENGLISH, "%.1f MB", Float.valueOf(value));
    }

    public static float c(Context context) {
        return a(SGC.countGPUConsumptionBytes(M9.d.FRAME_BUFFER));
    }

    public static float d(Context context) {
        return a(SGC.countGPUConsumptionBytes(M9.d.MODEL));
    }

    public static float e(Context context) {
        return a(SGC.countGPUConsumptionBytes(M9.d.TEXTURE));
    }

    public static float f(Context context) {
        return a(SGC.countGPUConsumptionBytes());
    }

    public static float g(Context context) {
        return a(SGC.countNativeConsumptionBytes(M9.f.BUFFER));
    }

    public static float h(Context context) {
        return a(SGC.countNativeConsumptionBytes(M9.f.TEXTURE));
    }

    public static float i(Context context) {
        return a(SGC.countNativeConsumptionBytes());
    }

    public static float j(Context context) {
        ActivityManager activityManager;
        if (context == null || (activityManager = (ActivityManager) context.getSystemService(Context.ACTIVITY_SERVICE)) == null) {
            return 0.0f;
        }
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        activityManager.getMemoryInfo(memoryInfo);
        return a(memoryInfo.availMem);
    }

    public static float k(Context context) {
        ActivityManager activityManager;
        if (context == null || (activityManager = (ActivityManager) context.getSystemService(Context.ACTIVITY_SERVICE)) == null) {
            return 0.0f;
        }
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        activityManager.getMemoryInfo(memoryInfo);
        return a(memoryInfo.totalMem);
    }

    public static String l() {
        return String.format(Locale.ENGLISH, "%.1f MB", Float.valueOf(((((float) Runtime.getRuntime().totalMemory()) * 1.0f) / 1024.0f) / 1024.0f));
    }

    public static float m(long kb2) {
        return ((float) kb2) / 1024.0f;
    }

    public void n(Context context) {
        this.f96229a = ((((float) Runtime.getRuntime().totalMemory()) * 1.0f) / 1024.0f) / 1024.0f;
        if (this.f96230b == 0.0f) {
            this.f96230b = ((((float) Runtime.getRuntime().maxMemory()) * 1.0f) / 1024.0f) / 1024.0f;
        }
    }
}
