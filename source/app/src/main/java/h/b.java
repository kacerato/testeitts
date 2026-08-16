package H;

import android.os.StrictMode;
import android.util.Log;
import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Pattern;

public final class b {

    public static final String f7950a = "GlideRuntimeCompat";

    public static final String f7951b = "cpu[0-9]+";

    public static final String f7952c = "/sys/devices/system/cpu/";

    public class a implements FilenameFilter {

        public final Pattern f7953a;

        public a(Pattern pattern) {
            this.f7953a = pattern;
        }

        @Override
        public boolean accept(File file, String str) {
            return this.f7953a.matcher(str).matches();
        }
    }

    public static int a() {
        return Runtime.getRuntime().availableProcessors();
    }

    public static int b() {
        File[] fileArr;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            fileArr = new File(f7952c).listFiles(new a(Pattern.compile(f7951b)));
        } catch (Throwable th2) {
            try {
                if (Log.isLoggable(f7950a, 6)) {
                    Log.e(f7950a, "Failed to calculate accurate cpu count", th2);
                }
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                fileArr = null;
            } finally {
                StrictMode.setThreadPolicy(allowThreadDiskReads);
            }
        }
        return Math.max(1, fileArr != null ? fileArr.length : 0);
    }
}
