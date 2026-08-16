package T0;

import android.app.Application;
import android.os.Build;
import android.os.Process;
import android.os.StrictMode;
import com.google.android.gms.internal.common.zzac;
import h1.C13409c;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import javax.annotation.Nullable;

@C0.a
public class z {

    @Nullable
    public static String f23854a;

    public static int f23855b;

    @Nullable
    public static Boolean f23856c;

    @androidx.annotation.Nullable
    @C0.a
    public static String a() {
        BufferedReader bufferedReader;
        String processName;
        if (f23854a == null) {
            if (Build.VERSION.SDK_INT >= 28) {
                processName = Application.getProcessName();
                f23854a = processName;
            } else {
                int i10 = f23855b;
                if (i10 == 0) {
                    i10 = Process.myPid();
                    f23855b = i10;
                }
                String str = null;
                str = null;
                str = null;
                BufferedReader bufferedReader2 = null;
                if (i10 > 0) {
                    try {
                        String str2 = "/proc/" + i10 + "/cmdline";
                        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                        try {
                            bufferedReader = new BufferedReader(new FileReader(str2));
                            try {
                                String readLine = bufferedReader.readLine();
                                G0.A.r(readLine);
                                str = readLine.trim();
                            } catch (IOException unused) {
                            } catch (Throwable th2) {
                                th = th2;
                                bufferedReader2 = bufferedReader;
                                q.b(bufferedReader2);
                                throw th;
                            }
                        } finally {
                            StrictMode.setThreadPolicy(allowThreadDiskReads);
                        }
                    } catch (IOException unused2) {
                        bufferedReader = null;
                    } catch (Throwable th3) {
                        th = th3;
                    }
                    q.b(bufferedReader);
                }
                f23854a = str;
            }
        }
        return f23854a;
    }

    public static boolean b() {
        boolean isIsolated;
        Boolean bool = f23856c;
        if (bool == null) {
            if (v.o()) {
                isIsolated = Process.isIsolated();
                bool = Boolean.valueOf(isIsolated);
            } else {
                try {
                    Object a10 = h1.z.a(Process.class, "isIsolated", new h1.x[0]);
                    Object[] objArr = new Object[0];
                    if (a10 == null) {
                        throw new zzac(C13409c.a("expected a non-null reference", objArr));
                    }
                    bool = (Boolean) a10;
                } catch (ReflectiveOperationException unused) {
                    bool = Boolean.FALSE;
                }
            }
            f23856c = bool;
        }
        return bool.booleanValue();
    }
}
