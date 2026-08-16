package com.google.android.gms.dynamite;

import B0.C2324i;
import G0.A;
import G0.C2601y;
import T0.C3039i;
import T0.v;
import X0.j;
import android.content.ContentProviderClient;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.NonNull;
import b3.s;
import com.google.android.gms.common.util.DynamiteApi;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import org.apache.commons.math3.distribution.PoissonDistribution;

@C0.a
public final class DynamiteModule {

    @C0.a
    public static final int f61433b = -1;

    @C0.a
    public static final int f61434c = 1;

    @C0.a
    public static final int f61435d = 0;

    @C0.a
    public static final int f61436e = 0;

    public static Boolean f61443l = null;

    public static String f61444m = null;

    public static boolean f61445n = false;

    public static int f61446o = -1;

    public static Boolean f61447p;

    public static X0.i f61452u;

    public static j f61453v;

    public final Context f61454a;

    public static final ThreadLocal f61448q = new ThreadLocal();

    public static final ThreadLocal f61449r = new X0.f();

    public static final a.InterfaceC0955a f61450s = new com.google.android.gms.dynamite.a();

    @NonNull
    @C0.a
    public static final a f61437f = new b();

    @NonNull
    @C0.a
    public static final a f61438g = new c();

    @NonNull
    @C0.a
    public static final a f61439h = new d();

    @NonNull
    @C0.a
    public static final a f61440i = new e();

    @NonNull
    @C0.a
    public static final a f61441j = new f();

    @NonNull
    @C0.a
    public static final a f61442k = new g();

    @NonNull
    public static final a f61451t = new h();

    @DynamiteApi
    public static class DynamiteLoaderClassLoader {

        @NonNull
        public static ClassLoader sClassLoader;
    }

    @C0.a
    public static class LoadingException extends Exception {
        public LoadingException(String str, X0.h hVar) {
            super(str);
        }

        public LoadingException(String str, Throwable th2, X0.h hVar) {
            super(str, th2);
        }
    }

    public interface a {

        @C0.a
        public interface InterfaceC0955a {
            int a(@NonNull Context context, @NonNull String str, boolean z10) throws LoadingException;

            int b(@NonNull Context context, @NonNull String str);
        }

        @C0.a
        public static class b {

            @C0.a
            public int f61455a = 0;

            @C0.a
            public int f61456b = 0;

            @C0.a
            public int f61457c = 0;
        }

        @NonNull
        @C0.a
        b a(@NonNull Context context, @NonNull String str, @NonNull InterfaceC0955a interfaceC0955a) throws LoadingException;
    }

    public DynamiteModule(Context context) {
        A.r(context);
        this.f61454a = context;
    }

    @C0.a
    public static int a(@NonNull Context context, @NonNull String str) {
        try {
            Class<?> loadClass = context.getApplicationContext().getClassLoader().loadClass("com.google.android.gms.dynamite.descriptors." + str + ".ModuleDescriptor");
            Field declaredField = loadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = loadClass.getDeclaredField("MODULE_VERSION");
            if (C2601y.b(declaredField.get(null), str)) {
                return declaredField2.getInt(null);
            }
            Log.e("DynamiteModule", "Module descriptor id '" + String.valueOf(declaredField.get(null)) + "' didn't match expected id '" + str + "'");
            return 0;
        } catch (ClassNotFoundException unused) {
            Log.w("DynamiteModule", "Local module descriptor class for " + str + " not found.");
            return 0;
        } catch (Exception e10) {
            Log.e("DynamiteModule", "Failed to load module descriptor class: ".concat(String.valueOf(e10.getMessage())));
            return 0;
        }
    }

    @C0.a
    public static int c(@NonNull Context context, @NonNull String str) {
        return f(context, str, false);
    }

    /* JADX WARN: Not initialized variable reg: 17, insn: 0x0226: MOVE (r6 I:??[OBJECT, ARRAY]) = (r17 I:??[OBJECT, ARRAY]), block:B:168:0x0226 */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0275  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x027b  */
    @NonNull
    @C0.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static DynamiteModule e(@NonNull Context context, @NonNull a aVar, @NonNull String str) throws LoadingException {
        X0.g gVar;
        X0.g gVar2;
        int i10;
        DynamiteModule h10;
        W0.d h12;
        DynamiteModule dynamiteModule;
        j jVar;
        boolean z10;
        W0.d e12;
        Cursor cursor;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            throw new LoadingException("null application Context", null);
        }
        ThreadLocal threadLocal = f61448q;
        X0.g gVar3 = (X0.g) threadLocal.get();
        X0.g gVar4 = new X0.g(null);
        threadLocal.set(gVar4);
        ThreadLocal threadLocal2 = f61449r;
        Long l10 = (Long) threadLocal2.get();
        long longValue = l10.longValue();
        try {
            threadLocal2.set(Long.valueOf(SystemClock.uptimeMillis()));
            a.b a10 = aVar.a(context, str, f61450s);
            Log.i("DynamiteModule", "Considering local module " + str + s.f32937c + a10.f61455a + " and remote module " + str + s.f32937c + a10.f61456b);
            int i11 = a10.f61457c;
            if (i11 != 0) {
                if (i11 == -1) {
                    if (a10.f61455a != 0) {
                        i11 = -1;
                    }
                }
                if (i11 != 1 || a10.f61456b != 0) {
                    if (i11 == -1) {
                        h10 = h(applicationContext, str);
                        gVar2 = gVar3;
                    } else {
                        try {
                            if (i11 != 1) {
                                throw new LoadingException("VersionPolicy returned invalid code:" + i11, null);
                            }
                            try {
                                try {
                                    int i12 = a10.f61456b;
                                    try {
                                        try {
                                            try {
                                                synchronized (DynamiteModule.class) {
                                                    try {
                                                        if (!k(context)) {
                                                            throw new LoadingException("Remote loading disabled", null);
                                                        }
                                                        Boolean bool = f61443l;
                                                        if (bool == null) {
                                                            throw new LoadingException("Failed to determine which loading route to use.", null);
                                                        }
                                                        if (bool.booleanValue()) {
                                                            Log.i("DynamiteModule", "Selected remote version of " + str + ", version >= " + i12);
                                                            synchronized (DynamiteModule.class) {
                                                                try {
                                                                    jVar = f61453v;
                                                                } catch (Throwable th2) {
                                                                    th = th2;
                                                                    while (true) {
                                                                        try {
                                                                            break;
                                                                        } catch (Throwable th3) {
                                                                            th = th3;
                                                                        }
                                                                    }
                                                                    throw th;
                                                                }
                                                            }
                                                            if (jVar == null) {
                                                                throw new LoadingException("DynamiteLoaderV2 was not cached.", null);
                                                            }
                                                            X0.g gVar5 = (X0.g) threadLocal.get();
                                                            if (gVar5 == null || gVar5.f27884a == null) {
                                                                throw new LoadingException("No result cursor", null);
                                                            }
                                                            Context applicationContext2 = context.getApplicationContext();
                                                            Cursor cursor2 = gVar5.f27884a;
                                                            W0.f.l0(null);
                                                            synchronized (DynamiteModule.class) {
                                                                gVar2 = gVar3;
                                                                z10 = f61446o >= 2;
                                                            }
                                                            if (z10) {
                                                                Log.v("DynamiteModule", "Dynamite loader version >= 2, using loadModule2NoCrashUtils");
                                                                e12 = jVar.f1(W0.f.l0(applicationContext2), str, i12, W0.f.l0(cursor2));
                                                            } else {
                                                                Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to loadModule2");
                                                                e12 = jVar.e1(W0.f.l0(applicationContext2), str, i12, W0.f.l0(cursor2));
                                                            }
                                                            Context context2 = (Context) W0.f.t(e12);
                                                            if (context2 == null) {
                                                                throw new LoadingException("Failed to get module context", null);
                                                            }
                                                            dynamiteModule = new DynamiteModule(context2);
                                                        } else {
                                                            gVar2 = gVar3;
                                                            Log.i("DynamiteModule", "Selected remote version of " + str + ", version >= " + i12);
                                                            X0.i l11 = l(context);
                                                            if (l11 == null) {
                                                                throw new LoadingException("Failed to create IDynamiteLoader.", null);
                                                            }
                                                            int e13 = l11.e1();
                                                            if (e13 >= 3) {
                                                                X0.g gVar6 = (X0.g) threadLocal.get();
                                                                if (gVar6 == null) {
                                                                    throw new LoadingException("No cached result cursor holder", null);
                                                                }
                                                                h12 = l11.i1(W0.f.l0(context), str, i12, W0.f.l0(gVar6.f27884a));
                                                            } else if (e13 == 2) {
                                                                Log.w("DynamiteModule", "IDynamite loader version = 2");
                                                                h12 = l11.j1(W0.f.l0(context), str, i12);
                                                            } else {
                                                                Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to createModuleContext");
                                                                h12 = l11.h1(W0.f.l0(context), str, i12);
                                                            }
                                                            Object t10 = W0.f.t(h12);
                                                            if (t10 == null) {
                                                                throw new LoadingException("Failed to load remote module.", null);
                                                            }
                                                            dynamiteModule = new DynamiteModule((Context) t10);
                                                        }
                                                        h10 = dynamiteModule;
                                                    } catch (Throwable th4) {
                                                        th = th4;
                                                        throw th;
                                                    }
                                                }
                                            } catch (Throwable th5) {
                                                th = th5;
                                            }
                                        } catch (RemoteException e10) {
                                            e = e10;
                                            throw new LoadingException("Failed to load remote module.", e, null);
                                        } catch (LoadingException e11) {
                                            throw e11;
                                        } catch (Throwable th6) {
                                            th = th6;
                                            C3039i.a(context, th);
                                            throw new LoadingException("Failed to load remote module.", th, null);
                                        }
                                    } catch (RemoteException e14) {
                                        e = e14;
                                        throw new LoadingException("Failed to load remote module.", e, null);
                                    } catch (LoadingException e15) {
                                        throw e15;
                                    } catch (Throwable th7) {
                                        th = th7;
                                        C3039i.a(context, th);
                                        throw new LoadingException("Failed to load remote module.", th, null);
                                    }
                                } catch (LoadingException e16) {
                                    e = e16;
                                    Log.w("DynamiteModule", "Failed to load remote module: " + e.getMessage());
                                    i10 = a10.f61455a;
                                    if (i10 != 0 || aVar.a(context, str, new i(i10, 0)).f61457c != -1) {
                                        throw new LoadingException("Remote load failed. No local fallback found.", e, null);
                                    }
                                    h10 = h(applicationContext, str);
                                    if (longValue != 0) {
                                    }
                                    cursor = gVar4.f27884a;
                                    if (cursor != null) {
                                    }
                                    f61448q.set(gVar2);
                                    return h10;
                                }
                            } catch (LoadingException e17) {
                                e = e17;
                                gVar2 = gVar3;
                                Log.w("DynamiteModule", "Failed to load remote module: " + e.getMessage());
                                i10 = a10.f61455a;
                                if (i10 != 0) {
                                }
                                throw new LoadingException("Remote load failed. No local fallback found.", e, null);
                            } catch (Throwable th8) {
                                th = th8;
                                if (longValue == 0) {
                                    f61449r.remove();
                                } else {
                                    f61449r.set(l10);
                                }
                                Cursor cursor3 = gVar4.f27884a;
                                if (cursor3 != null) {
                                    cursor3.close();
                                }
                                f61448q.set(gVar3);
                                throw th;
                            }
                        } catch (Throwable th9) {
                            th = th9;
                            gVar3 = gVar;
                        }
                    }
                    if (longValue != 0) {
                        f61449r.remove();
                    } else {
                        f61449r.set(l10);
                    }
                    cursor = gVar4.f27884a;
                    if (cursor != null) {
                        cursor.close();
                    }
                    f61448q.set(gVar2);
                    return h10;
                }
            }
            throw new LoadingException("No acceptable module " + str + " found. Local version is " + a10.f61455a + " and remote version is " + a10.f61456b + ".", null);
        } catch (Throwable th10) {
            th = th10;
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x01bf -> B:24:0x01c4). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x01c1 -> B:24:0x01c4). Please report as a decompilation issue!!! */
    public static int f(@NonNull Context context, @NonNull String str, boolean z10) {
        Field declaredField;
        Throwable th2;
        RemoteException e10;
        Cursor cursor;
        try {
            synchronized (DynamiteModule.class) {
                Boolean bool = f61443l;
                int i10 = 0;
                if (bool == null) {
                    try {
                        declaredField = context.getApplicationContext().getClassLoader().loadClass(DynamiteLoaderClassLoader.class.getName()).getDeclaredField("sClassLoader");
                    } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e11) {
                        Log.w("DynamiteModule", "Failed to load module via V2: " + e11.toString());
                        bool = Boolean.FALSE;
                    }
                    synchronized (declaredField.getDeclaringClass()) {
                        ClassLoader classLoader = (ClassLoader) declaredField.get(null);
                        if (classLoader == ClassLoader.getSystemClassLoader()) {
                            bool = Boolean.FALSE;
                        } else if (classLoader != null) {
                            try {
                                i(classLoader);
                            } catch (LoadingException unused) {
                            }
                            bool = Boolean.TRUE;
                        } else {
                            if (!k(context)) {
                                return 0;
                            }
                            if (!f61445n) {
                                Boolean bool2 = Boolean.TRUE;
                                if (!bool2.equals(null)) {
                                    try {
                                        int g10 = g(context, str, z10, true);
                                        String str2 = f61444m;
                                        if (str2 != null && !str2.isEmpty()) {
                                            ClassLoader a10 = X0.d.a();
                                            if (a10 == null) {
                                                if (Build.VERSION.SDK_INT >= 29) {
                                                    X0.b.a();
                                                    String str3 = f61444m;
                                                    A.r(str3);
                                                    a10 = X0.a.a(str3, ClassLoader.getSystemClassLoader());
                                                } else {
                                                    String str4 = f61444m;
                                                    A.r(str4);
                                                    a10 = new X0.e(str4, ClassLoader.getSystemClassLoader());
                                                }
                                            }
                                            i(a10);
                                            declaredField.set(null, a10);
                                            f61443l = bool2;
                                            return g10;
                                        }
                                        return g10;
                                    } catch (LoadingException unused2) {
                                        declaredField.set(null, ClassLoader.getSystemClassLoader());
                                        bool = Boolean.FALSE;
                                    }
                                }
                            }
                            declaredField.set(null, ClassLoader.getSystemClassLoader());
                            bool = Boolean.FALSE;
                        }
                        f61443l = bool;
                    }
                }
                if (bool.booleanValue()) {
                    try {
                        return g(context, str, z10, false);
                    } catch (LoadingException e12) {
                        Log.w("DynamiteModule", "Failed to retrieve remote module version: " + e12.getMessage());
                        return 0;
                    }
                }
                X0.i l10 = l(context);
                try {
                    if (l10 != null) {
                        try {
                            int e13 = l10.e1();
                            if (e13 >= 3) {
                                X0.g gVar = (X0.g) f61448q.get();
                                if (gVar == null || (cursor = gVar.f27884a) == null) {
                                    Cursor cursor2 = (Cursor) W0.f.t(l10.k1(W0.f.l0(context), str, z10, ((Long) f61449r.get()).longValue()));
                                    if (cursor2 != null) {
                                        try {
                                            if (cursor2.moveToFirst()) {
                                                int i11 = cursor2.getInt(0);
                                                r2 = (i11 <= 0 || !j(cursor2)) ? cursor2 : null;
                                                if (r2 != null) {
                                                    r2.close();
                                                }
                                                i10 = i11;
                                            }
                                        } catch (RemoteException e14) {
                                            e10 = e14;
                                            r2 = cursor2;
                                            Log.w("DynamiteModule", "Failed to retrieve remote module version: " + e10.getMessage());
                                            if (r2 != null) {
                                                r2.close();
                                            }
                                            return i10;
                                        } catch (Throwable th3) {
                                            th2 = th3;
                                            r2 = cursor2;
                                            if (r2 != null) {
                                                r2.close();
                                            }
                                            throw th2;
                                        }
                                    }
                                    Log.w("DynamiteModule", "Failed to retrieve remote module version.");
                                    if (cursor2 != null) {
                                        cursor2.close();
                                    }
                                } else {
                                    i10 = cursor.getInt(0);
                                }
                            } else if (e13 == 2) {
                                Log.w("DynamiteModule", "IDynamite loader version = 2, no high precision latency measurement.");
                                i10 = l10.g1(W0.f.l0(context), str, z10);
                            } else {
                                Log.w("DynamiteModule", "IDynamite loader version < 2, falling back to getModuleVersion2");
                                i10 = l10.f1(W0.f.l0(context), str, z10);
                            }
                        } catch (RemoteException e15) {
                            e10 = e15;
                        }
                    }
                    return i10;
                } catch (Throwable th4) {
                    th2 = th4;
                }
            }
        } catch (Throwable th5) {
            C3039i.a(context, th5);
            throw th5;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x0141, code lost:
    
        r4.close();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 4, insn: 0x013d: MOVE (r0 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]), block:B:110:0x013d */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00e8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int g(Context context, String str, boolean z10, boolean z11) throws LoadingException {
        AutoCloseable autoCloseable;
        Cursor query;
        MatrixCursor matrixCursor;
        AutoCloseable autoCloseable2 = null;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        try {
            try {
                boolean z12 = true;
                Uri build = new Uri.Builder().scheme("content").authority("com.google.android.gms.chimera").path(true != z10 ? "api" : "api_force_staging").appendPath(str).appendQueryParameter("requestStartUptime", String.valueOf(((Long) f61449r.get()).longValue())).build();
                ContentProviderClient acquireUnstableContentProviderClient = context.getContentResolver().acquireUnstableContentProviderClient(build);
                boolean z13 = false;
                if (acquireUnstableContentProviderClient != null) {
                    try {
                        query = acquireUnstableContentProviderClient.query(build, null, null, null, null);
                    } catch (RemoteException unused) {
                    } catch (Throwable th2) {
                        acquireUnstableContentProviderClient.release();
                        throw th2;
                    }
                    if (query != null) {
                        try {
                            int count = query.getCount();
                            int columnCount = query.getColumnCount();
                            matrixCursor = new MatrixCursor(query.getColumnNames(), count);
                            for (int i10 = 0; i10 < count; i10++) {
                                if (!query.moveToPosition(i10)) {
                                    throw new RemoteException("Cursor read incomplete (ContentProvider dead?)");
                                }
                                Object[] objArr4 = new Object[columnCount];
                                for (int i11 = 0; i11 < columnCount; i11++) {
                                    int type = query.getType(i11);
                                    if (type == 0) {
                                        objArr4[i11] = null;
                                    } else if (type == 1) {
                                        objArr4[i11] = Long.valueOf(query.getLong(i11));
                                    } else if (type == 2) {
                                        objArr4[i11] = Double.valueOf(query.getDouble(i11));
                                    } else if (type == 3) {
                                        objArr4[i11] = query.getString(i11);
                                    } else {
                                        if (type != 4) {
                                            throw new RemoteException("Unknown column type");
                                        }
                                        objArr4[i11] = query.getBlob(i11);
                                    }
                                }
                                matrixCursor.addRow(objArr4);
                            }
                            query.close();
                            acquireUnstableContentProviderClient.release();
                            if (matrixCursor != null) {
                                try {
                                    if (matrixCursor.moveToFirst()) {
                                        int i12 = matrixCursor.getInt(0);
                                        if (i12 > 0) {
                                            synchronized (DynamiteModule.class) {
                                                try {
                                                    f61444m = matrixCursor.getString(2);
                                                    int columnIndex = matrixCursor.getColumnIndex("loaderVersion");
                                                    if (columnIndex >= 0) {
                                                        f61446o = matrixCursor.getInt(columnIndex);
                                                    }
                                                    int columnIndex2 = matrixCursor.getColumnIndex("disableStandaloneDynamiteLoader2");
                                                    if (columnIndex2 >= 0) {
                                                        if (matrixCursor.getInt(columnIndex2) == 0) {
                                                            z12 = false;
                                                        }
                                                        f61445n = z12;
                                                        z13 = z12;
                                                    }
                                                } finally {
                                                }
                                            }
                                            if (j(matrixCursor)) {
                                                matrixCursor = null;
                                            }
                                        }
                                        if (z11 && z13) {
                                            throw new LoadingException("forcing fallback to container DynamiteLoader impl", objArr2 == true ? 1 : 0);
                                        }
                                        return i12;
                                    }
                                } catch (Exception e10) {
                                    e = e10;
                                    if (e instanceof LoadingException) {
                                        throw e;
                                    }
                                    throw new LoadingException("V2 version check failed: " + e.getMessage(), e, objArr == true ? 1 : 0);
                                }
                            }
                            Log.w("DynamiteModule", "Failed to retrieve remote module version.");
                            throw new LoadingException("Failed to connect to dynamite module ContentResolver.", objArr3 == true ? 1 : 0);
                        } finally {
                            try {
                                query.close();
                            } catch (Throwable th3) {
                                th.addSuppressed(th3);
                            }
                        }
                    }
                    acquireUnstableContentProviderClient.release();
                }
                matrixCursor = null;
                if (matrixCursor != null) {
                }
                Log.w("DynamiteModule", "Failed to retrieve remote module version.");
                throw new LoadingException("Failed to connect to dynamite module ContentResolver.", objArr3 == true ? 1 : 0);
            } catch (Throwable th4) {
                th = th4;
                autoCloseable2 = autoCloseable;
                if (autoCloseable2 != null) {
                    autoCloseable2.close();
                }
                throw th;
            }
        } catch (Exception e11) {
            e = e11;
        } catch (Throwable th5) {
            th = th5;
            if (autoCloseable2 != null) {
            }
            throw th;
        }
    }

    public static DynamiteModule h(Context context, String str) {
        Log.i("DynamiteModule", "Selected local version of ".concat(String.valueOf(str)));
        return new DynamiteModule(context);
    }

    public static void i(ClassLoader classLoader) throws LoadingException {
        j jVar;
        X0.h hVar = null;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(null).newInstance(null);
            if (iBinder == null) {
                jVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                jVar = queryLocalInterface instanceof j ? (j) queryLocalInterface : new j(iBinder);
            }
            f61453v = jVar;
        } catch (ClassNotFoundException e10) {
            e = e10;
            throw new LoadingException("Failed to instantiate dynamite loader", e, hVar);
        } catch (IllegalAccessException e11) {
            e = e11;
            throw new LoadingException("Failed to instantiate dynamite loader", e, hVar);
        } catch (InstantiationException e12) {
            e = e12;
            throw new LoadingException("Failed to instantiate dynamite loader", e, hVar);
        } catch (NoSuchMethodException e13) {
            e = e13;
            throw new LoadingException("Failed to instantiate dynamite loader", e, hVar);
        } catch (InvocationTargetException e14) {
            e = e14;
            throw new LoadingException("Failed to instantiate dynamite loader", e, hVar);
        }
    }

    public static boolean j(Cursor cursor) {
        X0.g gVar = (X0.g) f61448q.get();
        if (gVar == null || gVar.f27884a != null) {
            return false;
        }
        gVar.f27884a = cursor;
        return true;
    }

    public static boolean k(Context context) {
        ApplicationInfo applicationInfo;
        Boolean bool = Boolean.TRUE;
        if (bool.equals(null) || bool.equals(f61447p)) {
            return true;
        }
        boolean z10 = false;
        if (f61447p == null) {
            ProviderInfo resolveContentProvider = context.getPackageManager().resolveContentProvider("com.google.android.gms.chimera", true != v.p() ? 0 : 268435456);
            if (C2324i.i().k(context, PoissonDistribution.DEFAULT_MAX_ITERATIONS) == 0 && resolveContentProvider != null && "com.google.android.gms".equals(resolveContentProvider.packageName)) {
                z10 = true;
            }
            f61447p = Boolean.valueOf(z10);
            if (z10 && (applicationInfo = resolveContentProvider.applicationInfo) != null && (applicationInfo.flags & 129) == 0) {
                Log.i("DynamiteModule", "Non-system-image GmsCore APK, forcing V1");
                f61445n = true;
            }
        }
        if (!z10) {
            Log.e("DynamiteModule", "Invalid GmsCore APK, remote loading disabled.");
        }
        return z10;
    }

    public static X0.i l(Context context) {
        X0.i iVar;
        synchronized (DynamiteModule.class) {
            X0.i iVar2 = f61452u;
            if (iVar2 != null) {
                return iVar2;
            }
            try {
                IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                if (iBinder == null) {
                    iVar = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                    iVar = queryLocalInterface instanceof X0.i ? (X0.i) queryLocalInterface : new X0.i(iBinder);
                }
                if (iVar != null) {
                    f61452u = iVar;
                    return iVar;
                }
            } catch (Exception e10) {
                Log.e("DynamiteModule", "Failed to load IDynamiteLoader from GmsCore: " + e10.getMessage());
            }
            return null;
        }
    }

    @NonNull
    @C0.a
    public Context b() {
        return this.f61454a;
    }

    @NonNull
    @C0.a
    public IBinder d(@NonNull String str) throws LoadingException {
        try {
            return (IBinder) this.f61454a.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e10) {
            throw new LoadingException("Failed to instantiate module class: ".concat(String.valueOf(str)), e10, null);
        }
    }
}
