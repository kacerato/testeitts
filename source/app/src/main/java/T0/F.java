package T0;

import android.Manifest;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Process;
import android.os.WorkSource;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import com.ardor3d.util.export.xml.XMLExporter;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

@C0.a
public class F {

    public static final int f23809a = Process.myUid();

    public static final Method f23810b;

    public static final Method f23811c;

    public static final Method f23812d;

    public static final Method f23813e;

    public static final Method f23814f;

    public static final Method f23815g;

    public static final Method f23816h;

    public static final Method f23817i;

    @GuardedBy("WorkSourceUtil.class")
    public static Boolean f23818j;

    /* JADX WARN: Removed duplicated region for block: B:28:0x0093 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0071 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        Method method;
        Method method2;
        Method method3;
        Method method4;
        Method method5;
        Method method6;
        Method method7;
        Method method8;
        try {
            method = WorkSource.class.getMethod("add", Integer.TYPE);
        } catch (Exception unused) {
            method = null;
        }
        f23810b = method;
        try {
            method2 = WorkSource.class.getMethod("add", Integer.TYPE, String.class);
        } catch (Exception unused2) {
            method2 = null;
        }
        f23811c = method2;
        try {
            method3 = WorkSource.class.getMethod(XMLExporter.ATTRIBUTE_SIZE, null);
        } catch (Exception unused3) {
            method3 = null;
        }
        f23812d = method3;
        try {
            method4 = WorkSource.class.getMethod("get", Integer.TYPE);
        } catch (Exception unused4) {
            method4 = null;
        }
        f23813e = method4;
        try {
            method5 = WorkSource.class.getMethod("getName", Integer.TYPE);
        } catch (Exception unused5) {
            method5 = null;
        }
        f23814f = method5;
        if (v.o()) {
            try {
                method6 = WorkSource.class.getMethod("createWorkChain", null);
            } catch (Exception e10) {
                Log.w("WorkSourceUtil", "Missing WorkChain API createWorkChain", e10);
            }
            f23815g = method6;
            if (v.o()) {
                try {
                    method7 = Class.forName("android.os.WorkSource$WorkChain").getMethod("addNode", Integer.TYPE, String.class);
                } catch (Exception e11) {
                    Log.w("WorkSourceUtil", "Missing WorkChain class", e11);
                }
                f23816h = method7;
                if (v.o()) {
                    try {
                        method8 = WorkSource.class.getMethod("isEmpty", null);
                        try {
                            method8.setAccessible(true);
                        } catch (Exception unused6) {
                        }
                    } catch (Exception unused7) {
                    }
                    f23817i = method8;
                    f23818j = null;
                }
                method8 = null;
                f23817i = method8;
                f23818j = null;
            }
            method7 = null;
            f23816h = method7;
            if (v.o()) {
            }
            method8 = null;
            f23817i = method8;
            f23818j = null;
        }
        method6 = null;
        f23815g = method6;
        if (v.o()) {
        }
        method7 = null;
        f23816h = method7;
        if (v.o()) {
        }
        method8 = null;
        f23817i = method8;
        f23818j = null;
    }

    @C0.a
    public static void a(@NonNull WorkSource workSource, int i10, @NonNull String str) {
        Method method = f23811c;
        if (method != null) {
            if (str == null) {
                str = "";
            }
            try {
                method.invoke(workSource, Integer.valueOf(i10), str);
                return;
            } catch (Exception e10) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e10);
                return;
            }
        }
        Method method2 = f23810b;
        if (method2 != null) {
            try {
                method2.invoke(workSource, Integer.valueOf(i10));
            } catch (Exception e11) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e11);
            }
        }
    }

    @NonNull
    @C0.a
    public static WorkSource b(@NonNull Context context, @NonNull String str) {
        if (context != null && context.getPackageManager() != null && str != null) {
            try {
                ApplicationInfo c10 = V0.d.a(context).c(str, 0);
                if (c10 == null) {
                    Log.e("WorkSourceUtil", "Could not get applicationInfo from package: ".concat(str));
                    return null;
                }
                int i10 = c10.uid;
                WorkSource workSource = new WorkSource();
                a(workSource, i10, str);
                return workSource;
            } catch (PackageManager.NameNotFoundException unused) {
                Log.e("WorkSourceUtil", "Could not find package: ".concat(str));
            }
        }
        return null;
    }

    @NonNull
    @C0.a
    public static WorkSource c(@NonNull Context context, @NonNull String str, @NonNull String str2) {
        Method method;
        if (context == null || context.getPackageManager() == null || str2 == null || str == null) {
            Log.w("WorkSourceUtil", "Unexpected null arguments");
            return null;
        }
        int i10 = -1;
        try {
            ApplicationInfo c10 = V0.d.a(context).c(str, 0);
            if (c10 == null) {
                Log.e("WorkSourceUtil", "Could not get applicationInfo from package: ".concat(str));
            } else {
                i10 = c10.uid;
            }
        } catch (PackageManager.NameNotFoundException unused) {
            Log.e("WorkSourceUtil", "Could not find package: ".concat(str));
        }
        if (i10 < 0) {
            return null;
        }
        WorkSource workSource = new WorkSource();
        Method method2 = f23815g;
        if (method2 == null || (method = f23816h) == null) {
            a(workSource, i10, str);
        } else {
            try {
                Object invoke = method2.invoke(workSource, null);
                int i11 = f23809a;
                if (i10 != i11) {
                    method.invoke(invoke, Integer.valueOf(i10), str);
                }
                method.invoke(invoke, Integer.valueOf(i11), str2);
            } catch (Exception e10) {
                Log.w("WorkSourceUtil", "Unable to assign chained blame through WorkSource", e10);
            }
        }
        return workSource;
    }

    @C0.a
    public static int d(@NonNull WorkSource workSource, int i10) {
        Method method = f23813e;
        if (method == null) {
            return 0;
        }
        try {
            Object invoke = method.invoke(workSource, Integer.valueOf(i10));
            G0.A.r(invoke);
            return ((Integer) invoke).intValue();
        } catch (Exception e10) {
            Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e10);
            return 0;
        }
    }

    @NonNull
    @C0.a
    public static String e(@NonNull WorkSource workSource, int i10) {
        Method method = f23814f;
        if (method == null) {
            return null;
        }
        try {
            return (String) method.invoke(workSource, Integer.valueOf(i10));
        } catch (Exception e10) {
            Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e10);
            return null;
        }
    }

    @NonNull
    @C0.a
    public static List<String> f(@NonNull WorkSource workSource) {
        ArrayList arrayList = new ArrayList();
        int i10 = workSource == null ? 0 : i(workSource);
        if (i10 != 0) {
            for (int i11 = 0; i11 < i10; i11++) {
                String e10 = e(workSource, i11);
                if (!D.b(e10)) {
                    G0.A.r(e10);
                    arrayList.add(e10);
                }
            }
        }
        return arrayList;
    }

    @C0.a
    public static synchronized boolean g(@NonNull Context context) {
        synchronized (F.class) {
            Boolean bool = f23818j;
            if (bool != null) {
                return bool.booleanValue();
            }
            if (context == null) {
                return false;
            }
            boolean z10 = ContextCompat.checkSelfPermission(context, Manifest.permission.UPDATE_DEVICE_STATS) == 0;
            f23818j = Boolean.valueOf(z10);
            return z10;
        }
    }

    @C0.a
    public static boolean h(@NonNull WorkSource workSource) {
        Method method = f23817i;
        if (method != null) {
            try {
                Object invoke = method.invoke(workSource, null);
                G0.A.r(invoke);
                return ((Boolean) invoke).booleanValue();
            } catch (Exception e10) {
                Log.e("WorkSourceUtil", "Unable to check WorkSource emptiness", e10);
            }
        }
        return i(workSource) == 0;
    }

    @C0.a
    public static int i(@NonNull WorkSource workSource) {
        Method method = f23812d;
        if (method == null) {
            return 0;
        }
        try {
            Object invoke = method.invoke(workSource, null);
            G0.A.r(invoke);
            return ((Integer) invoke).intValue();
        } catch (Exception e10) {
            Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e10);
            return 0;
        }
    }
}
