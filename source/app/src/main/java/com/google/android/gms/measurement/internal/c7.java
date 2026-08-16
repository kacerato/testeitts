package com.google.android.gms.measurement.internal;

import T0.C3038h;
import T0.InterfaceC3037g;
import android.app.BroadcastOptions;
import android.app.job.JobInfo;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.provider.CallLog;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import com.google.android.gms.internal.measurement.AbstractC12059f0;
import com.google.android.gms.internal.measurement.AbstractC12215w4;
import com.google.android.gms.internal.measurement.C12017a3;
import com.google.android.gms.internal.measurement.C12018a4;
import com.google.android.gms.internal.measurement.C12025b2;
import com.google.android.gms.internal.measurement.C12026b3;
import com.google.android.gms.internal.measurement.C12053e3;
import com.google.android.gms.internal.measurement.C12062f3;
import com.google.android.gms.internal.measurement.C12089i3;
import com.google.android.gms.internal.measurement.C12116l3;
import com.google.android.gms.internal.measurement.C12117l4;
import com.google.android.gms.internal.measurement.C12125m3;
import com.google.android.gms.internal.measurement.C12133n2;
import com.google.android.gms.internal.measurement.C12134n3;
import com.google.android.gms.internal.measurement.C12186t2;
import com.google.android.gms.internal.measurement.C12227x7;
import com.google.android.gms.internal.measurement.EnumC12223x3;
import com.google.android.gms.internal.measurement.G7;
import com.google.android.gms.internal.measurement.zzmq;
import com.google.firebase.analytics.FirebaseAnalytics;
import eg.C13143u0;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;
import java.nio.charset.StandardCharsets;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Deque;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.UUID;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.GZIPInputStream;
import n1.C14345a;
import org.openjdk.tools.doclint.DocLint;

public final class c7 implements U3 {

    public static volatile c7 f63076K;

    public long f63077A;

    public final Map f63078B;

    public final Map f63079C;

    public final Map f63080D;

    public C12348m5 f63082F;

    public String f63083G;

    public AbstractC12445z f63084H;

    public long f63085I;

    public final C12266c3 f63087a;

    public final G2 f63088b;

    public C12421w f63089c;

    public J2 f63090d;

    public F6 f63091e;

    public C12278e f63092f;

    public final h7 f63093g;

    public C12308h5 f63094h;

    public C12309h6 f63095i;

    public final P6 f63096j;

    public S2 f63097k;

    public final C12370p3 f63098l;

    public boolean f63100n;

    @VisibleForTesting
    public long f63101o;

    public List f63102p;

    public int f63104r;

    public int f63105s;

    public boolean f63106t;

    public boolean f63107u;

    public boolean f63108v;

    public FileLock f63109w;

    public FileChannel f63110x;

    public List f63111y;

    public List f63112z;

    public final AtomicBoolean f63099m = new AtomicBoolean(false);

    public final Deque f63103q = new LinkedList();

    public final Map f63081E = new HashMap();

    public final l7 f63086J = new X6(this);

    public c7(d7 d7Var, C12370p3 c12370p3) {
        G0.A.r(d7Var);
        this.f63098l = C12370p3.O(d7Var.f63128a, null, null);
        this.f63077A = -1L;
        this.f63096j = new P6(this);
        h7 h7Var = new h7(this);
        h7Var.k();
        this.f63093g = h7Var;
        G2 g22 = new G2(this);
        g22.k();
        this.f63088b = g22;
        C12266c3 c12266c3 = new C12266c3(this);
        c12266c3.k();
        this.f63087a = c12266c3;
        this.f63078B = new HashMap();
        this.f63079C = new HashMap();
        this.f63080D = new HashMap();
        b().t(new Q6(this, d7Var));
    }

    public static c7 F(Context context) {
        G0.A.r(context);
        G0.A.r(context.getApplicationContext());
        if (f63076K == null) {
            synchronized (c7.class) {
                try {
                    if (f63076K == null) {
                        f63076K = new c7((d7) G0.A.r(new d7(context)), null);
                    }
                } finally {
                }
            }
        }
        return f63076K;
    }

    @VisibleForTesting
    public static final void G(C12017a3 c12017a3, @NonNull String str) {
        List t10 = c12017a3.t();
        for (int i10 = 0; i10 < t10.size(); i10++) {
            if (str.equals(((C12062f3) t10.get(i10)).F())) {
                c12017a3.C(i10);
                return;
            }
        }
    }

    public static String P(Map map, String str) {
        if (map == null) {
            return null;
        }
        for (Map.Entry entry : map.entrySet()) {
            if (str.equalsIgnoreCase((String) entry.getKey())) {
                if (((List) entry.getValue()).isEmpty()) {
                    return null;
                }
                return (String) ((List) entry.getValue()).get(0);
            }
        }
        return null;
    }

    public static void V(Context context, Intent intent) {
        BroadcastOptions makeBasic;
        BroadcastOptions shareIdentityEnabled;
        Bundle bundle;
        if (Build.VERSION.SDK_INT < 34) {
            context.sendBroadcast(intent);
            return;
        }
        makeBasic = BroadcastOptions.makeBasic();
        shareIdentityEnabled = makeBasic.setShareIdentityEnabled(true);
        bundle = shareIdentityEnabled.toBundle();
        context.sendBroadcast(intent, null, bundle);
    }

    public static final boolean W(o7 o7Var) {
        return !TextUtils.isEmpty(o7Var.f63445c);
    }

    public static final void X(C12125m3 c12125m3) {
        c12125m3.h1(Long.MAX_VALUE);
        c12125m3.j1(Long.MIN_VALUE);
        for (int i10 = 0; i10 < c12125m3.O0(); i10++) {
            C12026b3 P02 = c12125m3.P0(i10);
            if (P02.J() < c12125m3.g1()) {
                c12125m3.h1(P02.J());
            }
            if (P02.J() > c12125m3.i1()) {
                c12125m3.j1(P02.J());
            }
        }
    }

    public static final N6 Y(N6 n62) {
        if (n62 == null) {
            throw new IllegalStateException("Upload Component not created");
        }
        if (n62.i()) {
            return n62;
        }
        throw new IllegalStateException("Component not initialized: ".concat(String.valueOf(n62.getClass())));
    }

    public static final Boolean Z(o7 o7Var) {
        Boolean bool = o7Var.f63459q;
        String str = o7Var.f63441D;
        if (!TextUtils.isEmpty(str)) {
            W3 a10 = C12288f1.c(str).a();
            W3 w32 = W3.UNINITIALIZED;
            int ordinal = a10.ordinal();
            if (ordinal == 0 || ordinal == 1) {
                return null;
            }
            if (ordinal == 2) {
                return Boolean.TRUE;
            }
            if (ordinal == 3) {
                return Boolean.FALSE;
            }
        }
        return bool;
    }

    @VisibleForTesting
    public static final void z0(C12017a3 c12017a3, int i10, String str) {
        List t10 = c12017a3.t();
        for (int i11 = 0; i11 < t10.size(); i11++) {
            if ("_err".equals(((C12062f3) t10.get(i11)).F())) {
                return;
            }
        }
        C12053e3 Q10 = C12062f3.Q();
        Q10.u("_err");
        Q10.y(i10);
        C12062f3 c12062f3 = (C12062f3) Q10.q();
        C12053e3 Q11 = C12062f3.Q();
        Q11.u("_ev");
        Q11.w(str);
        C12062f3 c12062f32 = (C12062f3) Q11.q();
        c12017a3.y(c12062f3);
        c12017a3.y(c12062f32);
    }

    @WorkerThread
    public final void A(I2 i22) {
        b().h();
        if (TextUtils.isEmpty(i22.r0())) {
            B((String) G0.A.r(i22.o0()), 204, null, null, null);
            return;
        }
        String str = (String) G0.A.r(i22.o0());
        a().w().b("Fetching remote configuration", str);
        C12186t2 w10 = D0().w(str);
        String y10 = D0().y(str);
        ArrayMap arrayMap = null;
        if (w10 != null) {
            if (!TextUtils.isEmpty(y10)) {
                arrayMap = new ArrayMap();
                arrayMap.put(F2.d.f6292z, y10);
            }
            String z10 = D0().z(str);
            if (!TextUtils.isEmpty(z10)) {
                if (arrayMap == null) {
                    arrayMap = new ArrayMap();
                }
                arrayMap.put(F2.d.f6144A, z10);
            }
        }
        this.f63106t = true;
        E0().o(i22, arrayMap, new D2() {
            @Override
            public final void a(String str2, int i10, Throwable th2, byte[] bArr, Map map) {
                c7.this.B(str2, i10, th2, bArr, map);
            }
        });
    }

    @WorkerThread
    public final void A0() {
        b().h();
        F0().u();
        C12421w F02 = F0();
        F02.h();
        F02.j();
        if (F02.e0()) {
            C12273d2 c12273d2 = C12281e2.f63244w0;
            if (((Long) c12273d2.b(null)).longValue() != 0) {
                SQLiteDatabase w02 = F02.w0();
                C12370p3 c12370p3 = F02.f62917a;
                int delete = w02.delete("trigger_uris", "abs(timestamp_millis - ?) > cast(? as integer)", new String[]{String.valueOf(c12370p3.e().a()), String.valueOf(c12273d2.b(null))});
                if (delete > 0) {
                    c12370p3.a().w().b("Deleted stale trigger uris. rowsDeleted", Integer.valueOf(delete));
                }
            }
        }
        if (this.f63095i.f63335h.a() == 0) {
            this.f63095i.f63335h.b(e().a());
        }
        Q();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004c A[Catch: all -> 0x005f, TryCatch #1 {all -> 0x005f, blocks: (B:5:0x002f, B:13:0x004c, B:14:0x0153, B:24:0x0069, B:28:0x00b9, B:29:0x00aa, B:30:0x00be, B:34:0x00cf, B:35:0x00e9, B:37:0x00fd, B:38:0x011c, B:40:0x0126, B:42:0x012c, B:43:0x0130, B:45:0x013a, B:47:0x0148, B:48:0x0150, B:49:0x010b, B:50:0x00d7, B:52:0x00e1), top: B:4:0x002f, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00fd A[Catch: all -> 0x005f, TryCatch #1 {all -> 0x005f, blocks: (B:5:0x002f, B:13:0x004c, B:14:0x0153, B:24:0x0069, B:28:0x00b9, B:29:0x00aa, B:30:0x00be, B:34:0x00cf, B:35:0x00e9, B:37:0x00fd, B:38:0x011c, B:40:0x0126, B:42:0x012c, B:43:0x0130, B:45:0x013a, B:47:0x0148, B:48:0x0150, B:49:0x010b, B:50:0x00d7, B:52:0x00e1), top: B:4:0x002f, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x010b A[Catch: all -> 0x005f, TryCatch #1 {all -> 0x005f, blocks: (B:5:0x002f, B:13:0x004c, B:14:0x0153, B:24:0x0069, B:28:0x00b9, B:29:0x00aa, B:30:0x00be, B:34:0x00cf, B:35:0x00e9, B:37:0x00fd, B:38:0x011c, B:40:0x0126, B:42:0x012c, B:43:0x0130, B:45:0x013a, B:47:0x0148, B:48:0x0150, B:49:0x010b, B:50:0x00d7, B:52:0x00e1), top: B:4:0x002f, outer: #0 }] */
    @VisibleForTesting
    @WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void B(String str, int i10, Throwable th2, byte[] bArr, Map map) {
        boolean z10;
        b().h();
        O0();
        G0.A.l(str);
        if (bArr == null) {
            try {
                bArr = new byte[0];
            } catch (Throwable th3) {
                this.f63106t = false;
                R();
                throw th3;
            }
        }
        C12448z2 w10 = a().w();
        Integer valueOf = Integer.valueOf(bArr.length);
        w10.b("onConfigFetched. Response size", valueOf);
        F0().t0();
        try {
            I2 L02 = F0().L0(str);
            if (i10 != 200 && i10 != 204) {
                if (i10 == 304) {
                    i10 = 304;
                }
                z10 = false;
                if (L02 == null) {
                    a().r().b("App does not exist in onConfigFetched. appId", B2.x(str));
                } else {
                    if (!z10 && i10 != 404) {
                        L02.k(e().a());
                        F0().M0(L02, false, false);
                        a().w().c("Fetching config failed. code, error", Integer.valueOf(i10), th2);
                        D0().A(str);
                        this.f63095i.f63336i.b(e().a());
                        if (i10 == 503 || i10 == 429) {
                            this.f63095i.f63334g.b(e().a());
                        }
                        Q();
                    }
                    String P10 = P(map, F2.d.f6269r0);
                    String P11 = P(map, F2.d.f6263p0);
                    if (i10 != 404 && i10 != 304) {
                        D0().C(str, bArr, P10, P11);
                        L02.i(e().a());
                        F0().M0(L02, false, false);
                        if (i10 != 404) {
                            a().t().b("Config not found. Using empty config. appId", str);
                        } else {
                            a().w().c("Successfully fetched config. Got network response. code, size", Integer.valueOf(i10), valueOf);
                        }
                        if (!E0().m() && O()) {
                            r();
                        } else if (E0().m() || !F0().p(L02.o0())) {
                            Q();
                        } else {
                            u(L02.o0());
                        }
                    }
                    if (D0().w(str) == null) {
                        D0().C(str, null, null, null);
                    }
                    L02.i(e().a());
                    F0().M0(L02, false, false);
                    if (i10 != 404) {
                    }
                    if (!E0().m()) {
                    }
                    if (E0().m()) {
                    }
                    Q();
                }
                F0().u0();
                F0().v0();
                this.f63106t = false;
                R();
            }
            if (th2 == null) {
                z10 = true;
                if (L02 == null) {
                }
                F0().u0();
                F0().v0();
                this.f63106t = false;
                R();
            }
            z10 = false;
            if (L02 == null) {
            }
            F0().u0();
            F0().v0();
            this.f63106t = false;
            R();
        } catch (Throwable th4) {
            F0().v0();
            throw th4;
        }
    }

    public final C12342m B0() {
        return ((C12370p3) G0.A.r(this.f63098l)).w();
    }

    @WorkerThread
    public final void C(Runnable runnable) {
        b().h();
        if (this.f63102p == null) {
            this.f63102p = new ArrayList();
        }
        this.f63102p.add(runnable);
    }

    public final P6 C0() {
        return this.f63096j;
    }

    @WorkerThread
    public final void D() {
        b().h();
        O0();
        if (this.f63100n) {
            return;
        }
        this.f63100n = true;
        if (E()) {
            FileChannel fileChannel = this.f63110x;
            b().h();
            int i10 = 0;
            if (fileChannel == null || !fileChannel.isOpen()) {
                a().o().a("Bad channel to read from");
            } else {
                ByteBuffer allocate = ByteBuffer.allocate(4);
                try {
                    fileChannel.position(0L);
                    int read = fileChannel.read(allocate);
                    if (read == 4) {
                        allocate.flip();
                        i10 = allocate.getInt();
                    } else if (read != -1) {
                        a().r().b("Unexpected data length. Bytes read", Integer.valueOf(read));
                    }
                } catch (IOException e10) {
                    a().o().b("Failed to read from channel", e10);
                }
            }
            int t10 = this.f63098l.L().t();
            b().h();
            if (i10 > t10) {
                a().o().c("Panic: can't downgrade version. Previous, current version", Integer.valueOf(i10), Integer.valueOf(t10));
                return;
            }
            if (i10 < t10) {
                FileChannel fileChannel2 = this.f63110x;
                b().h();
                if (fileChannel2 == null || !fileChannel2.isOpen()) {
                    a().o().a("Bad channel to read from");
                } else {
                    ByteBuffer allocate2 = ByteBuffer.allocate(4);
                    allocate2.putInt(t10);
                    allocate2.flip();
                    try {
                        fileChannel2.truncate(0L);
                        fileChannel2.write(allocate2);
                        fileChannel2.force(true);
                        if (fileChannel2.size() != 4) {
                            a().o().b("Error writing to channel. Bytes written", Long.valueOf(fileChannel2.size()));
                        }
                        a().w().c("Storage version upgraded. Previous, current version", Integer.valueOf(i10), Integer.valueOf(t10));
                        return;
                    } catch (IOException e11) {
                        a().o().b("Failed to write to channel", e11);
                    }
                }
                a().o().c("Storage version upgrade failed. Previous, current version", Integer.valueOf(i10), Integer.valueOf(t10));
            }
        }
    }

    public final C12266c3 D0() {
        C12266c3 c12266c3 = this.f63087a;
        Y(c12266c3);
        return c12266c3;
    }

    @VisibleForTesting
    @WorkerThread
    public final boolean E() {
        b().h();
        FileLock fileLock = this.f63109w;
        if (fileLock != null && fileLock.isValid()) {
            a().w().a("Storage concurrent access okay");
            return true;
        }
        this.f63089c.f62917a.w();
        File filesDir = this.f63098l.d().getFilesDir();
        com.google.android.gms.internal.measurement.Z.a();
        int i10 = AbstractC12059f0.f62276b;
        try {
            FileChannel channel = new RandomAccessFile(new File(new File(filesDir, "google_app_measurement.db").getPath()), "rw").getChannel();
            this.f63110x = channel;
            FileLock tryLock = channel.tryLock();
            this.f63109w = tryLock;
            if (tryLock != null) {
                a().w().a("Storage concurrent access okay");
                return true;
            }
            a().o().a("Storage concurrent data access panic");
            return false;
        } catch (FileNotFoundException e10) {
            a().o().b("Failed to acquire storage lock", e10);
            return false;
        } catch (IOException e11) {
            a().o().b("Failed to access storage lock file", e11);
            return false;
        } catch (OverlappingFileLockException e12) {
            a().r().b("Storage lock already acquired", e12);
            return false;
        }
    }

    public final G2 E0() {
        G2 g22 = this.f63088b;
        Y(g22);
        return g22;
    }

    public final C12421w F0() {
        C12421w c12421w = this.f63089c;
        Y(c12421w);
        return c12421w;
    }

    public final J2 G0() {
        J2 j22 = this.f63090d;
        if (j22 != null) {
            return j22;
        }
        throw new IllegalStateException("Network broadcast receiver not created");
    }

    public final int H(String str, C12358o c12358o) {
        Y3 y32;
        W3 m10;
        C12266c3 c12266c3 = this.f63087a;
        if (c12266c3.R(str) == null) {
            c12358o.c(Y3.AD_PERSONALIZATION, EnumC12350n.FAILSAFE);
            return 1;
        }
        I2 L02 = F0().L0(str);
        if (L02 != null && C12288f1.c(L02.I()).a() == W3.POLICY && (m10 = c12266c3.m(str, (y32 = Y3.AD_PERSONALIZATION))) != W3.UNINITIALIZED) {
            c12358o.c(y32, EnumC12350n.REMOTE_ENFORCED_DEFAULT);
            return m10 == W3.GRANTED ? 0 : 1;
        }
        Y3 y33 = Y3.AD_PERSONALIZATION;
        c12358o.c(y33, EnumC12350n.REMOTE_DEFAULT);
        return c12266c3.P(str, y33) ? 0 : 1;
    }

    public final F6 H0() {
        F6 f62 = this.f63091e;
        Y(f62);
        return f62;
    }

    public final Map I(C12026b3 c12026b3) {
        HashMap hashMap = new HashMap();
        K0();
        for (Map.Entry entry : h7.t(c12026b3, "gad_").entrySet()) {
            hashMap.put((String) entry.getKey(), String.valueOf(entry.getValue()));
        }
        return hashMap;
    }

    public final C12278e I0() {
        C12278e c12278e = this.f63092f;
        Y(c12278e);
        return c12278e;
    }

    public final AbstractC12445z J() {
        if (this.f63084H == null) {
            this.f63084H = new T6(this, this.f63098l);
        }
        return this.f63084H;
    }

    public final C12308h5 J0() {
        C12308h5 c12308h5 = this.f63094h;
        Y(c12308h5);
        return c12308h5;
    }

    @WorkerThread
    public final void u0() {
        b().h();
        if (this.f63103q.isEmpty() || J().c()) {
            return;
        }
        long max = Math.max(0L, ((Integer) C12281e2.f63141C0.b(null)).intValue() - (e().c() - this.f63085I));
        a().w().b("Scheduling notify next app runnable, delay in ms", Long.valueOf(max));
        J().b(max);
    }

    public final h7 K0() {
        h7 h7Var = this.f63093g;
        Y(h7Var);
        return h7Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0655  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x04e8 A[Catch: all -> 0x00f1, TryCatch #0 {all -> 0x00f1, blocks: (B:3:0x000f, B:6:0x0027, B:8:0x0031, B:9:0x0045, B:12:0x005f, B:15:0x0085, B:17:0x00ba, B:20:0x00cb, B:22:0x00d5, B:25:0x0671, B:26:0x010b, B:29:0x011d, B:31:0x0123, B:33:0x015e, B:35:0x016c, B:38:0x018c, B:40:0x0192, B:42:0x01a2, B:44:0x01b0, B:46:0x01c0, B:48:0x01cd, B:53:0x01d0, B:55:0x01e4, B:62:0x03de, B:63:0x03ea, B:66:0x03f4, B:70:0x0417, B:71:0x0406, B:80:0x0495, B:82:0x04a1, B:85:0x04b4, B:87:0x04c5, B:89:0x04d1, B:91:0x053a, B:93:0x0540, B:94:0x054c, B:96:0x0552, B:98:0x0562, B:100:0x056c, B:101:0x057f, B:103:0x0585, B:104:0x05a0, B:106:0x05a6, B:108:0x05c4, B:110:0x05cf, B:112:0x05f6, B:113:0x05d5, B:115:0x05e3, B:119:0x0601, B:120:0x061b, B:122:0x0621, B:125:0x0634, B:130:0x0641, B:131:0x0645, B:133:0x064b, B:135:0x065b, B:143:0x04e8, B:145:0x04f6, B:148:0x0509, B:150:0x051b, B:152:0x0527, B:154:0x041f, B:156:0x042b, B:158:0x0437, B:162:0x047d, B:163:0x0455, B:166:0x0467, B:168:0x046d, B:170:0x0477, B:175:0x0213, B:178:0x021d, B:180:0x022b, B:182:0x0274, B:183:0x0249, B:185:0x025b, B:192:0x0285, B:194:0x02b1, B:195:0x02db, B:197:0x0312, B:198:0x0319, B:201:0x0325, B:203:0x035c, B:204:0x0377, B:206:0x037d, B:208:0x038b, B:210:0x039f, B:211:0x0394, B:219:0x03a6, B:222:0x03ad, B:223:0x03c5, B:225:0x0129, B:227:0x0134, B:229:0x0140, B:231:0x0146, B:234:0x0151, B:239:0x0689, B:241:0x0697, B:243:0x06a0, B:245:0x06d2, B:246:0x06a9, B:248:0x06b2, B:250:0x06b8, B:252:0x06c4, B:254:0x06cc, B:257:0x06d4, B:258:0x06e0, B:261:0x06e8, B:264:0x06fa, B:265:0x0705, B:267:0x070d, B:268:0x0732, B:270:0x074c, B:271:0x0761, B:273:0x077b, B:274:0x0790, B:276:0x07d5, B:278:0x07db, B:279:0x0802, B:281:0x080a, B:282:0x0813, B:284:0x0819, B:285:0x081f, B:287:0x0834, B:289:0x0844, B:291:0x0854, B:294:0x085d, B:296:0x0863, B:297:0x0875, B:299:0x087b, B:302:0x088b, B:304:0x08a3, B:306:0x08b5, B:308:0x08dc, B:309:0x08f5, B:311:0x0907, B:312:0x0926, B:314:0x094d, B:316:0x097d, B:318:0x0988, B:320:0x099a, B:321:0x09b9, B:323:0x09e0, B:325:0x0a10, B:327:0x0a19, B:329:0x0a22, B:333:0x0a26, B:390:0x0a98, B:392:0x0ab1, B:394:0x0ac7, B:396:0x0acc, B:398:0x0ad0, B:400:0x0ad4, B:402:0x0ade, B:403:0x0ae4, B:405:0x0ae8, B:407:0x0aee, B:408:0x0afc, B:409:0x0b05, B:482:0x0b28, B:486:0x0b2f, B:497:0x07e9, B:499:0x07ef, B:501:0x07f5, B:502:0x078d, B:503:0x075e, B:504:0x0712, B:506:0x0718), top: B:2:0x000f, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:419:0x0b63 A[Catch: all -> 0x0b96, TryCatch #1 {all -> 0x0b96, blocks: (B:384:0x0a67, B:385:0x0a7a, B:387:0x0a80, B:412:0x0d37, B:414:0x0b12, B:417:0x0b43, B:419:0x0b63, B:420:0x0b6b, B:422:0x0b71, B:426:0x0b83, B:431:0x0bb4, B:434:0x0bdd, B:436:0x0be9, B:438:0x0bff, B:439:0x0c3e, B:443:0x0c5a, B:445:0x0c65, B:447:0x0c69, B:449:0x0c6d, B:451:0x0c71, B:452:0x0c7d, B:453:0x0c82, B:455:0x0c88, B:457:0x0c9e, B:458:0x0ca3, B:460:0x0d34, B:462:0x0cba, B:464:0x0cbe, B:467:0x0ce4, B:469:0x0d04, B:470:0x0d0b, B:473:0x0d23, B:476:0x0ccb, B:480:0x0b9e, B:488:0x0d43, B:490:0x0d50, B:491:0x0d56, B:492:0x0d5e, B:494:0x0d64, B:336:0x0d7c, B:338:0x0d8c, B:339:0x0e0d, B:364:0x0da4, B:366:0x0daa, B:368:0x0db4, B:369:0x0dbb, B:374:0x0dcb, B:375:0x0dd2, B:377:0x0dfe, B:378:0x0e05, B:379:0x0e02, B:380:0x0dcf, B:382:0x0db8), top: B:383:0x0a67 }] */
    /* JADX WARN: Removed duplicated region for block: B:431:0x0bb4 A[Catch: all -> 0x0b96, TryCatch #1 {all -> 0x0b96, blocks: (B:384:0x0a67, B:385:0x0a7a, B:387:0x0a80, B:412:0x0d37, B:414:0x0b12, B:417:0x0b43, B:419:0x0b63, B:420:0x0b6b, B:422:0x0b71, B:426:0x0b83, B:431:0x0bb4, B:434:0x0bdd, B:436:0x0be9, B:438:0x0bff, B:439:0x0c3e, B:443:0x0c5a, B:445:0x0c65, B:447:0x0c69, B:449:0x0c6d, B:451:0x0c71, B:452:0x0c7d, B:453:0x0c82, B:455:0x0c88, B:457:0x0c9e, B:458:0x0ca3, B:460:0x0d34, B:462:0x0cba, B:464:0x0cbe, B:467:0x0ce4, B:469:0x0d04, B:470:0x0d0b, B:473:0x0d23, B:476:0x0ccb, B:480:0x0b9e, B:488:0x0d43, B:490:0x0d50, B:491:0x0d56, B:492:0x0d5e, B:494:0x0d64, B:336:0x0d7c, B:338:0x0d8c, B:339:0x0e0d, B:364:0x0da4, B:366:0x0daa, B:368:0x0db4, B:369:0x0dbb, B:374:0x0dcb, B:375:0x0dd2, B:377:0x0dfe, B:378:0x0e05, B:379:0x0e02, B:380:0x0dcf, B:382:0x0db8), top: B:383:0x0a67 }] */
    /* JADX WARN: Removed duplicated region for block: B:434:0x0bdd A[Catch: all -> 0x0b96, TryCatch #1 {all -> 0x0b96, blocks: (B:384:0x0a67, B:385:0x0a7a, B:387:0x0a80, B:412:0x0d37, B:414:0x0b12, B:417:0x0b43, B:419:0x0b63, B:420:0x0b6b, B:422:0x0b71, B:426:0x0b83, B:431:0x0bb4, B:434:0x0bdd, B:436:0x0be9, B:438:0x0bff, B:439:0x0c3e, B:443:0x0c5a, B:445:0x0c65, B:447:0x0c69, B:449:0x0c6d, B:451:0x0c71, B:452:0x0c7d, B:453:0x0c82, B:455:0x0c88, B:457:0x0c9e, B:458:0x0ca3, B:460:0x0d34, B:462:0x0cba, B:464:0x0cbe, B:467:0x0ce4, B:469:0x0d04, B:470:0x0d0b, B:473:0x0d23, B:476:0x0ccb, B:480:0x0b9e, B:488:0x0d43, B:490:0x0d50, B:491:0x0d56, B:492:0x0d5e, B:494:0x0d64, B:336:0x0d7c, B:338:0x0d8c, B:339:0x0e0d, B:364:0x0da4, B:366:0x0daa, B:368:0x0db4, B:369:0x0dbb, B:374:0x0dcb, B:375:0x0dd2, B:377:0x0dfe, B:378:0x0e05, B:379:0x0e02, B:380:0x0dcf, B:382:0x0db8), top: B:383:0x0a67 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x03de A[Catch: all -> 0x00f1, TryCatch #0 {all -> 0x00f1, blocks: (B:3:0x000f, B:6:0x0027, B:8:0x0031, B:9:0x0045, B:12:0x005f, B:15:0x0085, B:17:0x00ba, B:20:0x00cb, B:22:0x00d5, B:25:0x0671, B:26:0x010b, B:29:0x011d, B:31:0x0123, B:33:0x015e, B:35:0x016c, B:38:0x018c, B:40:0x0192, B:42:0x01a2, B:44:0x01b0, B:46:0x01c0, B:48:0x01cd, B:53:0x01d0, B:55:0x01e4, B:62:0x03de, B:63:0x03ea, B:66:0x03f4, B:70:0x0417, B:71:0x0406, B:80:0x0495, B:82:0x04a1, B:85:0x04b4, B:87:0x04c5, B:89:0x04d1, B:91:0x053a, B:93:0x0540, B:94:0x054c, B:96:0x0552, B:98:0x0562, B:100:0x056c, B:101:0x057f, B:103:0x0585, B:104:0x05a0, B:106:0x05a6, B:108:0x05c4, B:110:0x05cf, B:112:0x05f6, B:113:0x05d5, B:115:0x05e3, B:119:0x0601, B:120:0x061b, B:122:0x0621, B:125:0x0634, B:130:0x0641, B:131:0x0645, B:133:0x064b, B:135:0x065b, B:143:0x04e8, B:145:0x04f6, B:148:0x0509, B:150:0x051b, B:152:0x0527, B:154:0x041f, B:156:0x042b, B:158:0x0437, B:162:0x047d, B:163:0x0455, B:166:0x0467, B:168:0x046d, B:170:0x0477, B:175:0x0213, B:178:0x021d, B:180:0x022b, B:182:0x0274, B:183:0x0249, B:185:0x025b, B:192:0x0285, B:194:0x02b1, B:195:0x02db, B:197:0x0312, B:198:0x0319, B:201:0x0325, B:203:0x035c, B:204:0x0377, B:206:0x037d, B:208:0x038b, B:210:0x039f, B:211:0x0394, B:219:0x03a6, B:222:0x03ad, B:223:0x03c5, B:225:0x0129, B:227:0x0134, B:229:0x0140, B:231:0x0146, B:234:0x0151, B:239:0x0689, B:241:0x0697, B:243:0x06a0, B:245:0x06d2, B:246:0x06a9, B:248:0x06b2, B:250:0x06b8, B:252:0x06c4, B:254:0x06cc, B:257:0x06d4, B:258:0x06e0, B:261:0x06e8, B:264:0x06fa, B:265:0x0705, B:267:0x070d, B:268:0x0732, B:270:0x074c, B:271:0x0761, B:273:0x077b, B:274:0x0790, B:276:0x07d5, B:278:0x07db, B:279:0x0802, B:281:0x080a, B:282:0x0813, B:284:0x0819, B:285:0x081f, B:287:0x0834, B:289:0x0844, B:291:0x0854, B:294:0x085d, B:296:0x0863, B:297:0x0875, B:299:0x087b, B:302:0x088b, B:304:0x08a3, B:306:0x08b5, B:308:0x08dc, B:309:0x08f5, B:311:0x0907, B:312:0x0926, B:314:0x094d, B:316:0x097d, B:318:0x0988, B:320:0x099a, B:321:0x09b9, B:323:0x09e0, B:325:0x0a10, B:327:0x0a19, B:329:0x0a22, B:333:0x0a26, B:390:0x0a98, B:392:0x0ab1, B:394:0x0ac7, B:396:0x0acc, B:398:0x0ad0, B:400:0x0ad4, B:402:0x0ade, B:403:0x0ae4, B:405:0x0ae8, B:407:0x0aee, B:408:0x0afc, B:409:0x0b05, B:482:0x0b28, B:486:0x0b2f, B:497:0x07e9, B:499:0x07ef, B:501:0x07f5, B:502:0x078d, B:503:0x075e, B:504:0x0712, B:506:0x0718), top: B:2:0x000f, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x04a1 A[Catch: all -> 0x00f1, TryCatch #0 {all -> 0x00f1, blocks: (B:3:0x000f, B:6:0x0027, B:8:0x0031, B:9:0x0045, B:12:0x005f, B:15:0x0085, B:17:0x00ba, B:20:0x00cb, B:22:0x00d5, B:25:0x0671, B:26:0x010b, B:29:0x011d, B:31:0x0123, B:33:0x015e, B:35:0x016c, B:38:0x018c, B:40:0x0192, B:42:0x01a2, B:44:0x01b0, B:46:0x01c0, B:48:0x01cd, B:53:0x01d0, B:55:0x01e4, B:62:0x03de, B:63:0x03ea, B:66:0x03f4, B:70:0x0417, B:71:0x0406, B:80:0x0495, B:82:0x04a1, B:85:0x04b4, B:87:0x04c5, B:89:0x04d1, B:91:0x053a, B:93:0x0540, B:94:0x054c, B:96:0x0552, B:98:0x0562, B:100:0x056c, B:101:0x057f, B:103:0x0585, B:104:0x05a0, B:106:0x05a6, B:108:0x05c4, B:110:0x05cf, B:112:0x05f6, B:113:0x05d5, B:115:0x05e3, B:119:0x0601, B:120:0x061b, B:122:0x0621, B:125:0x0634, B:130:0x0641, B:131:0x0645, B:133:0x064b, B:135:0x065b, B:143:0x04e8, B:145:0x04f6, B:148:0x0509, B:150:0x051b, B:152:0x0527, B:154:0x041f, B:156:0x042b, B:158:0x0437, B:162:0x047d, B:163:0x0455, B:166:0x0467, B:168:0x046d, B:170:0x0477, B:175:0x0213, B:178:0x021d, B:180:0x022b, B:182:0x0274, B:183:0x0249, B:185:0x025b, B:192:0x0285, B:194:0x02b1, B:195:0x02db, B:197:0x0312, B:198:0x0319, B:201:0x0325, B:203:0x035c, B:204:0x0377, B:206:0x037d, B:208:0x038b, B:210:0x039f, B:211:0x0394, B:219:0x03a6, B:222:0x03ad, B:223:0x03c5, B:225:0x0129, B:227:0x0134, B:229:0x0140, B:231:0x0146, B:234:0x0151, B:239:0x0689, B:241:0x0697, B:243:0x06a0, B:245:0x06d2, B:246:0x06a9, B:248:0x06b2, B:250:0x06b8, B:252:0x06c4, B:254:0x06cc, B:257:0x06d4, B:258:0x06e0, B:261:0x06e8, B:264:0x06fa, B:265:0x0705, B:267:0x070d, B:268:0x0732, B:270:0x074c, B:271:0x0761, B:273:0x077b, B:274:0x0790, B:276:0x07d5, B:278:0x07db, B:279:0x0802, B:281:0x080a, B:282:0x0813, B:284:0x0819, B:285:0x081f, B:287:0x0834, B:289:0x0844, B:291:0x0854, B:294:0x085d, B:296:0x0863, B:297:0x0875, B:299:0x087b, B:302:0x088b, B:304:0x08a3, B:306:0x08b5, B:308:0x08dc, B:309:0x08f5, B:311:0x0907, B:312:0x0926, B:314:0x094d, B:316:0x097d, B:318:0x0988, B:320:0x099a, B:321:0x09b9, B:323:0x09e0, B:325:0x0a10, B:327:0x0a19, B:329:0x0a22, B:333:0x0a26, B:390:0x0a98, B:392:0x0ab1, B:394:0x0ac7, B:396:0x0acc, B:398:0x0ad0, B:400:0x0ad4, B:402:0x0ade, B:403:0x0ae4, B:405:0x0ae8, B:407:0x0aee, B:408:0x0afc, B:409:0x0b05, B:482:0x0b28, B:486:0x0b2f, B:497:0x07e9, B:499:0x07ef, B:501:0x07f5, B:502:0x078d, B:503:0x075e, B:504:0x0712, B:506:0x0718), top: B:2:0x000f, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0540 A[Catch: all -> 0x00f1, TryCatch #0 {all -> 0x00f1, blocks: (B:3:0x000f, B:6:0x0027, B:8:0x0031, B:9:0x0045, B:12:0x005f, B:15:0x0085, B:17:0x00ba, B:20:0x00cb, B:22:0x00d5, B:25:0x0671, B:26:0x010b, B:29:0x011d, B:31:0x0123, B:33:0x015e, B:35:0x016c, B:38:0x018c, B:40:0x0192, B:42:0x01a2, B:44:0x01b0, B:46:0x01c0, B:48:0x01cd, B:53:0x01d0, B:55:0x01e4, B:62:0x03de, B:63:0x03ea, B:66:0x03f4, B:70:0x0417, B:71:0x0406, B:80:0x0495, B:82:0x04a1, B:85:0x04b4, B:87:0x04c5, B:89:0x04d1, B:91:0x053a, B:93:0x0540, B:94:0x054c, B:96:0x0552, B:98:0x0562, B:100:0x056c, B:101:0x057f, B:103:0x0585, B:104:0x05a0, B:106:0x05a6, B:108:0x05c4, B:110:0x05cf, B:112:0x05f6, B:113:0x05d5, B:115:0x05e3, B:119:0x0601, B:120:0x061b, B:122:0x0621, B:125:0x0634, B:130:0x0641, B:131:0x0645, B:133:0x064b, B:135:0x065b, B:143:0x04e8, B:145:0x04f6, B:148:0x0509, B:150:0x051b, B:152:0x0527, B:154:0x041f, B:156:0x042b, B:158:0x0437, B:162:0x047d, B:163:0x0455, B:166:0x0467, B:168:0x046d, B:170:0x0477, B:175:0x0213, B:178:0x021d, B:180:0x022b, B:182:0x0274, B:183:0x0249, B:185:0x025b, B:192:0x0285, B:194:0x02b1, B:195:0x02db, B:197:0x0312, B:198:0x0319, B:201:0x0325, B:203:0x035c, B:204:0x0377, B:206:0x037d, B:208:0x038b, B:210:0x039f, B:211:0x0394, B:219:0x03a6, B:222:0x03ad, B:223:0x03c5, B:225:0x0129, B:227:0x0134, B:229:0x0140, B:231:0x0146, B:234:0x0151, B:239:0x0689, B:241:0x0697, B:243:0x06a0, B:245:0x06d2, B:246:0x06a9, B:248:0x06b2, B:250:0x06b8, B:252:0x06c4, B:254:0x06cc, B:257:0x06d4, B:258:0x06e0, B:261:0x06e8, B:264:0x06fa, B:265:0x0705, B:267:0x070d, B:268:0x0732, B:270:0x074c, B:271:0x0761, B:273:0x077b, B:274:0x0790, B:276:0x07d5, B:278:0x07db, B:279:0x0802, B:281:0x080a, B:282:0x0813, B:284:0x0819, B:285:0x081f, B:287:0x0834, B:289:0x0844, B:291:0x0854, B:294:0x085d, B:296:0x0863, B:297:0x0875, B:299:0x087b, B:302:0x088b, B:304:0x08a3, B:306:0x08b5, B:308:0x08dc, B:309:0x08f5, B:311:0x0907, B:312:0x0926, B:314:0x094d, B:316:0x097d, B:318:0x0988, B:320:0x099a, B:321:0x09b9, B:323:0x09e0, B:325:0x0a10, B:327:0x0a19, B:329:0x0a22, B:333:0x0a26, B:390:0x0a98, B:392:0x0ab1, B:394:0x0ac7, B:396:0x0acc, B:398:0x0ad0, B:400:0x0ad4, B:402:0x0ade, B:403:0x0ae4, B:405:0x0ae8, B:407:0x0aee, B:408:0x0afc, B:409:0x0b05, B:482:0x0b28, B:486:0x0b2f, B:497:0x07e9, B:499:0x07ef, B:501:0x07f5, B:502:0x078d, B:503:0x075e, B:504:0x0712, B:506:0x0718), top: B:2:0x000f, inners: #2 }] */
    @WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean L(String str, long j10) {
        boolean z10;
        boolean z11;
        int i10;
        Y6 y62;
        long parseLong;
        Long l10;
        int G10;
        long j11;
        int i11;
        boolean z12;
        SecureRandom secureRandom;
        int i12;
        HashMap hashMap;
        Y6 y63;
        long Y10;
        HashMap hashMap2;
        int i13;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        boolean z13;
        String str7;
        boolean z14;
        boolean z15;
        String str8;
        C12125m3 c12125m3;
        boolean z16;
        int i14;
        String str9;
        int i15;
        boolean z17;
        int i16;
        c7 c7Var = this;
        String str10 = "_ai";
        String str11 = FirebaseAnalytics.c.f67629D;
        String str12 = FirebaseAnalytics.d.f67706j0;
        F0().t0();
        try {
            Y6 y64 = new Y6(c7Var, null);
            F0().r0(str, j10, c7Var.f63077A, y64);
            List list = y64.f62980c;
            try {
                if (list == null || list.isEmpty()) {
                    F0().u0();
                    z10 = false;
                } else {
                    C12125m3 c12125m32 = (C12125m3) y64.f62978a.q();
                    c12125m32.U0();
                    C12017a3 c12017a3 = null;
                    C12017a3 c12017a32 = null;
                    int i17 = 0;
                    int i18 = 0;
                    boolean z18 = false;
                    boolean z19 = false;
                    int i19 = -1;
                    int i20 = -1;
                    while (true) {
                        z11 = z19;
                        String str13 = "_fr";
                        i10 = i18;
                        String str14 = str12;
                        C12017a3 c12017a33 = c12017a3;
                        int i21 = i20;
                        if (i17 >= y64.f62980c.size()) {
                            break;
                        }
                        C12017a3 c12017a34 = (C12017a3) ((C12026b3) y64.f62980c.get(i17)).q();
                        int i22 = i17;
                        if (D0().D(y64.f62978a.E(), c12017a34.D())) {
                            a().r().c("Dropping blocked raw event. appId", B2.x(y64.f62978a.E()), c7Var.f63098l.D().a(c12017a34.D()));
                            if (!D0().H(y64.f62978a.E()) && !D0().I(y64.f62978a.E()) && !"_err".equals(c12017a34.D())) {
                                N0().B(c7Var.f63086J, y64.f62978a.E(), 11, "_ev", c12017a34.D(), 0);
                            }
                            z19 = z11;
                            str5 = str10;
                            str6 = str11;
                            z13 = z18;
                            i18 = i10;
                            str9 = str14;
                            c12017a3 = c12017a33;
                            i20 = i21;
                            i15 = i22;
                            c12125m3 = c12125m32;
                        } else {
                            String D10 = c12017a34.D();
                            C12125m3 c12125m33 = c12125m32;
                            if (D10.equals(str11) || D10.equals("_iap") || D10.equals("ecommerce_purchase")) {
                                C12053e3 Q10 = C12062f3.Q();
                                Q10.u("_ct");
                                if (!z18) {
                                    String E10 = y64.f62978a.E();
                                    if (c7Var.U(E10, str11) && c7Var.U(E10, "_iap") && c7Var.U(E10, "ecommerce_purchase")) {
                                        str4 = CallLog.Calls.NEW;
                                        Q10.w(str4);
                                        c12017a34.y((C12062f3) Q10.q());
                                        z18 = true;
                                    }
                                }
                                str4 = "returning";
                                Q10.w(str4);
                                c12017a34.y((C12062f3) Q10.q());
                                z18 = true;
                            }
                            if (c12017a34.D().equals(C12251a4.a(str10))) {
                                c12017a34.E(str10);
                                a().w().a("Renaming ad_impression to _ai");
                                if (Log.isLoggable(a().z(), 5)) {
                                    for (int i23 = 0; i23 < c12017a34.u(); i23++) {
                                        if (FirebaseAnalytics.d.f67691c.equals(c12017a34.v(i23).F()) && !c12017a34.v(i23).H().isEmpty() && "admob".equalsIgnoreCase(c12017a34.v(i23).H())) {
                                            a().t().a("AdMob ad impression logged from app. Potentially duplicative.");
                                        }
                                    }
                                }
                            }
                            boolean E11 = D0().E(y64.f62978a.E(), c12017a34.D());
                            if (!E11) {
                                K0();
                                String D11 = c12017a34.D();
                                G0.A.l(D11);
                                if (D11.hashCode() != 95027 || !D11.equals("_ui")) {
                                    str5 = str10;
                                    str6 = str11;
                                    z13 = z18;
                                    str7 = "_fr";
                                    E11 = false;
                                    z14 = z11;
                                    if (E11) {
                                        ArrayList arrayList = new ArrayList(c12017a34.t());
                                        int i24 = -1;
                                        int i25 = -1;
                                        for (int i26 = 0; i26 < arrayList.size(); i26++) {
                                            if ("value".equals(((C12062f3) arrayList.get(i26)).F())) {
                                                i24 = i26;
                                            } else if (FirebaseAnalytics.d.f67703i.equals(((C12062f3) arrayList.get(i26)).F())) {
                                                i25 = i26;
                                            }
                                        }
                                        if (i24 != -1) {
                                            if (((C12062f3) arrayList.get(i24)).I() || ((C12062f3) arrayList.get(i24)).M()) {
                                                if (i25 != -1) {
                                                    String H10 = ((C12062f3) arrayList.get(i25)).H();
                                                    if (H10.length() == 3) {
                                                        int i27 = 0;
                                                        while (i27 < H10.length()) {
                                                            int codePointAt = H10.codePointAt(i27);
                                                            if (Character.isLetter(codePointAt)) {
                                                                i27 += Character.charCount(codePointAt);
                                                            }
                                                        }
                                                    }
                                                }
                                                a().t().a("Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter.");
                                                c12017a34.C(i24);
                                                G(c12017a34, "_c");
                                                z0(c12017a34, 19, FirebaseAnalytics.d.f67703i);
                                                break;
                                            }
                                            a().t().a("Value must be specified with a numeric type.");
                                            c12017a34.C(i24);
                                            G(c12017a34, "_c");
                                            z0(c12017a34, 18, "value");
                                        }
                                        if ("_e".equals(c12017a34.D())) {
                                            K0();
                                            if (h7.r((C12026b3) c12017a34.q(), str7) == null) {
                                                if (c12017a32 != null && Math.abs(c12017a32.G() - c12017a34.G()) <= 1000) {
                                                    C12017a3 c12017a35 = (C12017a3) c12017a32.clone();
                                                    if (c7Var.N(c12017a34, c12017a35)) {
                                                        c12125m3 = c12125m33;
                                                        c12125m3.R0(i19, c12017a35);
                                                        i20 = i21;
                                                        c12017a3 = null;
                                                        c12017a32 = null;
                                                        if (c12017a34.u() == 0) {
                                                            K0();
                                                            Bundle q10 = h7.q(c12017a34.t());
                                                            int i28 = 0;
                                                            while (i28 < c12017a34.u()) {
                                                                C12062f3 v10 = c12017a34.v(i28);
                                                                String str15 = str14;
                                                                if (!v10.F().equals(str15) || v10.O().isEmpty()) {
                                                                    z17 = z14;
                                                                    i16 = i19;
                                                                    if (!v10.F().equals(str15)) {
                                                                        c7Var.y(c12017a34.D(), (C12053e3) v10.q(), q10, y64.f62978a.E());
                                                                    }
                                                                } else {
                                                                    String E12 = y64.f62978a.E();
                                                                    List O10 = v10.O();
                                                                    Bundle[] bundleArr = new Bundle[O10.size()];
                                                                    z17 = z14;
                                                                    int i29 = 0;
                                                                    while (i29 < O10.size()) {
                                                                        C12062f3 c12062f3 = (C12062f3) O10.get(i29);
                                                                        K0();
                                                                        List list2 = O10;
                                                                        Bundle q11 = h7.q(c12062f3.O());
                                                                        Iterator it = c12062f3.O().iterator();
                                                                        while (it.hasNext()) {
                                                                            c7Var.y(c12017a34.D(), (C12053e3) ((C12062f3) it.next()).q(), q11, E12);
                                                                            it = it;
                                                                            i19 = i19;
                                                                        }
                                                                        bundleArr[i29] = q11;
                                                                        i29++;
                                                                        O10 = list2;
                                                                        i19 = i19;
                                                                    }
                                                                    i16 = i19;
                                                                    q10.putParcelableArray(str15, bundleArr);
                                                                }
                                                                i28++;
                                                                z14 = z17;
                                                                str14 = str15;
                                                                i19 = i16;
                                                            }
                                                            z16 = z14;
                                                            i14 = i19;
                                                            str9 = str14;
                                                            c12017a34.B();
                                                            h7 K02 = K0();
                                                            ArrayList arrayList2 = new ArrayList();
                                                            for (String str16 : q10.keySet()) {
                                                                C12053e3 Q11 = C12062f3.Q();
                                                                Q11.u(str16);
                                                                Object obj = q10.get(str16);
                                                                if (obj != null) {
                                                                    K02.H(Q11, obj);
                                                                    arrayList2.add((C12062f3) Q11.q());
                                                                }
                                                            }
                                                            Iterator<E> it2 = arrayList2.iterator();
                                                            while (it2.hasNext()) {
                                                                c12017a34.y((C12062f3) it2.next());
                                                            }
                                                        } else {
                                                            z16 = z14;
                                                            i14 = i19;
                                                            str9 = str14;
                                                        }
                                                        i15 = i22;
                                                        y64.f62980c.set(i15, (C12026b3) c12017a34.q());
                                                        c12125m3.S0(c12017a34);
                                                        i18 = i10 + 1;
                                                        z19 = z16;
                                                        i19 = i14;
                                                    }
                                                }
                                                c12125m3 = c12125m33;
                                                c12017a3 = c12017a34;
                                                i20 = i10;
                                                if (c12017a34.u() == 0) {
                                                }
                                                i15 = i22;
                                                y64.f62980c.set(i15, (C12026b3) c12017a34.q());
                                                c12125m3.S0(c12017a34);
                                                i18 = i10 + 1;
                                                z19 = z16;
                                                i19 = i14;
                                            } else {
                                                c12125m3 = c12125m33;
                                                i20 = i21;
                                                c12017a3 = c12017a33;
                                                if (c12017a34.u() == 0) {
                                                }
                                                i15 = i22;
                                                y64.f62980c.set(i15, (C12026b3) c12017a34.q());
                                                c12125m3.S0(c12017a34);
                                                i18 = i10 + 1;
                                                z19 = z16;
                                                i19 = i14;
                                            }
                                        } else {
                                            c12125m3 = c12125m33;
                                            if ("_vs".equals(c12017a34.D())) {
                                                K0();
                                                if (h7.r((C12026b3) c12017a34.q(), "_et") == null) {
                                                    if (c12017a33 != null && Math.abs(c12017a33.G() - c12017a34.G()) <= 1000) {
                                                        C12017a3 c12017a36 = (C12017a3) c12017a33.clone();
                                                        if (c7Var.N(c12017a36, c12017a34)) {
                                                            c12125m3.R0(i21, c12017a36);
                                                            i20 = i21;
                                                            c12017a3 = null;
                                                            c12017a32 = null;
                                                            if (c12017a34.u() == 0) {
                                                            }
                                                            i15 = i22;
                                                            y64.f62980c.set(i15, (C12026b3) c12017a34.q());
                                                            c12125m3.S0(c12017a34);
                                                            i18 = i10 + 1;
                                                            z19 = z16;
                                                            i19 = i14;
                                                        }
                                                    }
                                                    c12017a32 = c12017a34;
                                                    i20 = i21;
                                                    i19 = i10;
                                                    c12017a3 = c12017a33;
                                                    if (c12017a34.u() == 0) {
                                                    }
                                                    i15 = i22;
                                                    y64.f62980c.set(i15, (C12026b3) c12017a34.q());
                                                    c12125m3.S0(c12017a34);
                                                    i18 = i10 + 1;
                                                    z19 = z16;
                                                    i19 = i14;
                                                }
                                            }
                                            i20 = i21;
                                            c12017a3 = c12017a33;
                                            if (c12017a34.u() == 0) {
                                            }
                                            i15 = i22;
                                            y64.f62980c.set(i15, (C12026b3) c12017a34.q());
                                            c12125m3.S0(c12017a34);
                                            i18 = i10 + 1;
                                            z19 = z16;
                                            i19 = i14;
                                        }
                                    }
                                    if ("_e".equals(c12017a34.D())) {
                                    }
                                }
                            }
                            str5 = str10;
                            int i30 = 0;
                            boolean z20 = false;
                            boolean z21 = false;
                            while (true) {
                                str6 = str11;
                                if (i30 >= c12017a34.u()) {
                                    break;
                                }
                                if ("_c".equals(c12017a34.v(i30).F())) {
                                    C12053e3 c12053e3 = (C12053e3) c12017a34.v(i30).q();
                                    z15 = z18;
                                    str8 = str13;
                                    c12053e3.y(1L);
                                    c12017a34.w(i30, (C12062f3) c12053e3.q());
                                    z20 = true;
                                } else {
                                    z15 = z18;
                                    str8 = str13;
                                    if ("_r".equals(c12017a34.v(i30).F())) {
                                        C12053e3 c12053e32 = (C12053e3) c12017a34.v(i30).q();
                                        c12053e32.y(1L);
                                        c12017a34.w(i30, (C12062f3) c12053e32.q());
                                        z21 = true;
                                    }
                                }
                                i30++;
                                str11 = str6;
                                str13 = str8;
                                z18 = z15;
                            }
                            z13 = z18;
                            str7 = str13;
                            if (!z20 && E11) {
                                a().w().b("Marking event as conversion", c7Var.f63098l.D().a(c12017a34.D()));
                                C12053e3 Q12 = C12062f3.Q();
                                Q12.u("_c");
                                Q12.y(1L);
                                c12017a34.z(Q12);
                            }
                            if (!z21) {
                                a().w().b("Marking event as real-time", c7Var.f63098l.D().a(c12017a34.D()));
                                C12053e3 Q13 = C12062f3.Q();
                                Q13.u("_r");
                                Q13.y(1L);
                                c12017a34.z(Q13);
                            }
                            if (F0().N0(h(), y64.f62978a.E(), false, false, false, false, true, false, false).f63566e > B0().E(y64.f62978a.E(), C12281e2.f63229p)) {
                                G(c12017a34, "_r");
                                z14 = z11;
                            } else {
                                z14 = true;
                            }
                            if (m7.r0(c12017a34.D()) && E11 && F0().N0(h(), y64.f62978a.E(), false, false, true, false, false, false, false).f63564c > B0().E(y64.f62978a.E(), C12281e2.f63227o)) {
                                a().r().b("Too many conversions. Not logging as conversion. appId", B2.x(y64.f62978a.E()));
                                boolean z22 = false;
                                int i31 = -1;
                                C12053e3 c12053e33 = null;
                                for (int i32 = 0; i32 < c12017a34.u(); i32++) {
                                    C12062f3 v11 = c12017a34.v(i32);
                                    if ("_c".equals(v11.F())) {
                                        c12053e33 = (C12053e3) v11.q();
                                        i31 = i32;
                                    } else if ("_err".equals(v11.F())) {
                                        z22 = true;
                                    }
                                }
                                if (z22) {
                                    if (c12053e33 != null) {
                                        c12017a34.C(i31);
                                    } else {
                                        c12053e33 = null;
                                    }
                                }
                                if (c12053e33 != null) {
                                    C12053e3 c12053e34 = (C12053e3) c12053e33.clone();
                                    c12053e34.u("_err");
                                    c12053e34.y(10L);
                                    c12017a34.w(i31, (C12062f3) c12053e34.q());
                                } else {
                                    a().o().b("Did not find conversion parameter. appId", B2.x(y64.f62978a.E()));
                                }
                            }
                            if (E11) {
                            }
                            if ("_e".equals(c12017a34.D())) {
                            }
                        }
                        int i33 = i15 + 1;
                        str12 = str9;
                        c12125m32 = c12125m3;
                        str11 = str6;
                        z18 = z13;
                        i17 = i33;
                        str10 = str5;
                    }
                    C12125m3 c12125m34 = c12125m32;
                    long j12 = 0;
                    long j13 = 0;
                    int i34 = i10;
                    int i35 = 0;
                    while (i35 < i34) {
                        C12026b3 P02 = c12125m34.P0(i35);
                        if ("_e".equals(P02.H())) {
                            K0();
                            if (h7.r(P02, "_fr") != null) {
                                c12125m34.V0(i35);
                                i34--;
                                i35--;
                                i35++;
                            }
                        }
                        K0();
                        C12062f3 r10 = h7.r(P02, "_et");
                        if (r10 != null) {
                            Long valueOf = r10.I() ? Long.valueOf(r10.J()) : null;
                            if (valueOf != null && valueOf.longValue() > 0) {
                                j13 += valueOf.longValue();
                            }
                        }
                        i35++;
                    }
                    c7Var.M(c12125m34, j13, false);
                    Iterator it3 = c12125m34.N0().iterator();
                    while (true) {
                        if (!it3.hasNext()) {
                            break;
                        }
                        if ("_s".equals(((C12026b3) it3.next()).H())) {
                            F0().B0(c12125m34.D(), "_se");
                            break;
                        }
                    }
                    if (h7.X(c12125m34, "_sid") >= 0) {
                        c7Var.M(c12125m34, j13, true);
                    } else {
                        int X10 = h7.X(c12125m34, "_se");
                        if (X10 >= 0) {
                            c12125m34.d1(X10);
                            a().o().b("Session engagement user property is in the bundle without session ID. appId", B2.x(y64.f62978a.E()));
                        }
                    }
                    String E13 = y64.f62978a.E();
                    b().h();
                    O0();
                    I2 L02 = F0().L0(E13);
                    if (L02 == null) {
                        a().o().b("Cannot fix consent fields without appInfo. appId", B2.x(E13));
                    } else {
                        c7Var.n(L02, c12125m34);
                    }
                    String E14 = y64.f62978a.E();
                    b().h();
                    O0();
                    I2 L03 = F0().L0(E14);
                    if (L03 == null) {
                        a().r().b("Cannot populate ad_campaign_info without appInfo. appId", B2.x(E14));
                    } else {
                        c7Var.o(L03, c12125m34);
                    }
                    X(c12125m34);
                    c12125m34.x0();
                    Z3 z32 = Z3.f62987c;
                    Z3 s10 = c7Var.g(y64.f62978a.E()).s(Z3.f(y64.f62978a.K0(), 100));
                    Z3 b02 = F0().b0(y64.f62978a.E());
                    F0().a0(y64.f62978a.E(), s10);
                    Y3 y32 = Y3.ANALYTICS_STORAGE;
                    if (!s10.o(y32) && b02.o(y32)) {
                        F0().z0(y64.f62978a.E());
                    } else if (s10.o(y32) && !b02.o(y32)) {
                        F0().A0(y64.f62978a.E());
                    }
                    Y3 y33 = Y3.AD_STORAGE;
                    if (!s10.o(y33)) {
                        c12125m34.K();
                        c12125m34.N();
                        c12125m34.A0();
                    }
                    if (!s10.o(y32)) {
                        c12125m34.Q();
                        c12125m34.I0();
                    }
                    C12227x7.a();
                    if (B0().H(y64.f62978a.E(), C12281e2.f63169Q0) && N0().L(y64.f62978a.E()) && c7Var.g(y64.f62978a.E()).o(y33) && y64.f62978a.P0()) {
                        for (int i36 = 0; i36 < c12125m34.O0(); i36++) {
                            C12017a3 c12017a37 = (C12017a3) c12125m34.P0(i36).q();
                            Iterator it4 = c12017a37.t().iterator();
                            while (true) {
                                if (!it4.hasNext()) {
                                    break;
                                }
                                if ("_c".equals(((C12062f3) it4.next()).F())) {
                                    if (y64.f62978a.W0() >= B0().E(y64.f62978a.E(), C12281e2.f63224m0)) {
                                        int E15 = B0().E(y64.f62978a.E(), C12281e2.f63250z0);
                                        if (E15 <= 0) {
                                            if (B0().H(y64.f62978a.E(), C12281e2.f63173S0)) {
                                                str2 = N0().l0();
                                                C12053e3 Q14 = C12062f3.Q();
                                                Q14.u("_tu");
                                                Q14.w(str2);
                                                c12017a37.y((C12062f3) Q14.q());
                                            } else {
                                                str2 = null;
                                            }
                                            C12053e3 Q15 = C12062f3.Q();
                                            Q15.u("_tr");
                                            Q15.y(1L);
                                            c12017a37.y((C12062f3) Q15.q());
                                            C6 I10 = K0().I(y64.f62978a.E(), c12125m34, c12017a37, str2);
                                            if (I10 != null) {
                                                a().w().c("Generated trigger URI. appId, uri", y64.f62978a.E(), I10.f62583b);
                                                F0().W(y64.f62978a.E(), I10);
                                                Deque deque = c7Var.f63103q;
                                                if (!deque.contains(y64.f62978a.E())) {
                                                    deque.add(y64.f62978a.E());
                                                }
                                            }
                                        } else if (F0().N0(h(), y64.f62978a.E(), false, false, false, false, false, false, true).f63568g > E15) {
                                            C12053e3 Q16 = C12062f3.Q();
                                            Q16.u("_tnr");
                                            Q16.y(1L);
                                            c12017a37.y((C12062f3) Q16.q());
                                        } else {
                                            if (B0().H(y64.f62978a.E(), C12281e2.f63173S0)) {
                                                str3 = N0().l0();
                                                C12053e3 Q17 = C12062f3.Q();
                                                Q17.u("_tu");
                                                Q17.w(str3);
                                                c12017a37.y((C12062f3) Q17.q());
                                            } else {
                                                str3 = null;
                                            }
                                            C12053e3 Q18 = C12062f3.Q();
                                            Q18.u("_tr");
                                            Q18.y(1L);
                                            c12017a37.y((C12062f3) Q18.q());
                                            C6 I11 = K0().I(y64.f62978a.E(), c12125m34, c12017a37, str3);
                                            if (I11 != null) {
                                                a().w().c("Generated trigger URI. appId, uri", y64.f62978a.E(), I11.f62583b);
                                                F0().W(y64.f62978a.E(), I11);
                                                Deque deque2 = c7Var.f63103q;
                                                if (!deque2.contains(y64.f62978a.E())) {
                                                    deque2.add(y64.f62978a.E());
                                                }
                                            }
                                        }
                                    }
                                    c12125m34.Q0(i36, (C12026b3) c12017a37.q());
                                }
                            }
                        }
                    }
                    c12125m34.t0();
                    c12125m34.s0(I0().m(c12125m34.D(), c12125m34.N0(), c12125m34.W0(), Long.valueOf(c12125m34.g1()), Long.valueOf(c12125m34.i1()), !s10.o(y32)));
                    if (B0().l(y64.f62978a.E())) {
                        try {
                            HashMap hashMap3 = new HashMap();
                            ArrayList arrayList3 = new ArrayList();
                            SecureRandom q02 = N0().q0();
                            int i37 = 0;
                            while (i37 < c12125m34.O0()) {
                                C12017a3 c12017a38 = (C12017a3) c12125m34.P0(i37).q();
                                if (c12017a38.D().equals("_ep")) {
                                    K0();
                                    String str17 = (String) h7.u((C12026b3) c12017a38.q(), "_en");
                                    E e10 = (E) hashMap3.get(str17);
                                    if (e10 == null && (e10 = F0().x0(y64.f62978a.E(), (String) G0.A.r(str17))) != null) {
                                        hashMap3.put(str17, e10);
                                    }
                                    if (e10 != null && e10.f62608i == null) {
                                        Long l11 = e10.f62609j;
                                        if (l11 != null && l11.longValue() > 1) {
                                            K0();
                                            h7.o(c12017a38, "_sr", l11);
                                        }
                                        Boolean bool = e10.f62610k;
                                        if (bool != null && bool.booleanValue()) {
                                            K0();
                                            h7.o(c12017a38, "_efs", 1L);
                                        }
                                        arrayList3.add((C12026b3) c12017a38.q());
                                    }
                                    c12125m34.R0(i37, c12017a38);
                                    hashMap2 = hashMap3;
                                    y63 = y64;
                                    secureRandom = q02;
                                    i13 = i37;
                                    i37 = i13 + 1;
                                    c7Var = this;
                                    hashMap3 = hashMap2;
                                    q02 = secureRandom;
                                    y64 = y63;
                                    j12 = 0;
                                } else {
                                    C12266c3 D02 = D0();
                                    String E16 = y64.f62978a.E();
                                    String f10 = D02.f(E16, "measurement.account.time_zone_offset_minutes");
                                    if (!TextUtils.isEmpty(f10)) {
                                        try {
                                            parseLong = Long.parseLong(f10);
                                        } catch (NumberFormatException e11) {
                                            D02.f62917a.a().r().c("Unable to parse timezone offset. appId", B2.x(E16), e11);
                                        }
                                        long Y11 = N0().Y(c12017a38.G(), parseLong);
                                        C12026b3 c12026b3 = (C12026b3) c12017a38.q();
                                        Long l12 = 1L;
                                        if (!TextUtils.isEmpty("_dbg")) {
                                            Iterator it5 = c12026b3.E().iterator();
                                            while (true) {
                                                if (!it5.hasNext()) {
                                                    break;
                                                }
                                                C12062f3 c12062f32 = (C12062f3) it5.next();
                                                Iterator it6 = it5;
                                                if (!"_dbg".equals(c12062f32.F())) {
                                                    it5 = it6;
                                                } else if (l12.equals(Long.valueOf(c12062f32.J()))) {
                                                    l10 = l12;
                                                    G10 = 1;
                                                }
                                            }
                                        }
                                        l10 = l12;
                                        G10 = D0().G(y64.f62978a.E(), c12017a38.D());
                                        if (G10 > 0) {
                                            a().r().c("Sample rate must be positive. event, rate", c12017a38.D(), Integer.valueOf(G10));
                                            arrayList3.add((C12026b3) c12017a38.q());
                                            c12125m34.R0(i37, c12017a38);
                                        } else {
                                            E e12 = (E) hashMap3.get(c12017a38.D());
                                            if (e12 == null) {
                                                j11 = parseLong;
                                                e12 = F0().x0(y64.f62978a.E(), c12017a38.D());
                                                if (e12 == null) {
                                                    a().r().c("Event being bundled has no eventAggregate. appId, eventName", y64.f62978a.E(), c12017a38.D());
                                                    e12 = new E(y64.f62978a.E(), c12017a38.D(), 1L, 1L, 1L, c12017a38.G(), 0L, null, null, null, null);
                                                }
                                            } else {
                                                j11 = parseLong;
                                            }
                                            K0();
                                            Long l13 = (Long) h7.u((C12026b3) c12017a38.q(), "_eid");
                                            if (l13 != null) {
                                                i11 = 1;
                                                z12 = true;
                                            } else {
                                                i11 = 1;
                                                z12 = false;
                                            }
                                            if (G10 == i11) {
                                                arrayList3.add((C12026b3) c12017a38.q());
                                                if (z12 && (e12.f62608i != null || e12.f62609j != null || e12.f62610k != null)) {
                                                    hashMap3.put(c12017a38.D(), e12.c(null, null, null));
                                                }
                                                c12125m34.R0(i37, c12017a38);
                                            } else {
                                                if (q02.nextInt(G10) == 0) {
                                                    K0();
                                                    Long valueOf2 = Long.valueOf(G10);
                                                    h7.o(c12017a38, "_sr", valueOf2);
                                                    arrayList3.add((C12026b3) c12017a38.q());
                                                    if (z12) {
                                                        e12 = e12.c(null, valueOf2, null);
                                                    }
                                                    hashMap3.put(c12017a38.D(), e12.b(c12017a38.G(), Y11));
                                                    hashMap2 = hashMap3;
                                                    y63 = y64;
                                                    secureRandom = q02;
                                                    i13 = i37;
                                                } else {
                                                    Long l14 = e12.f62607h;
                                                    if (l14 != null) {
                                                        hashMap = hashMap3;
                                                        y63 = y64;
                                                        i12 = i37;
                                                        Y10 = l14.longValue();
                                                        secureRandom = q02;
                                                    } else {
                                                        secureRandom = q02;
                                                        i12 = i37;
                                                        hashMap = hashMap3;
                                                        y63 = y64;
                                                        Y10 = N0().Y(c12017a38.I(), j11);
                                                    }
                                                    if (Y10 != Y11) {
                                                        K0();
                                                        h7.o(c12017a38, "_efs", l10);
                                                        K0();
                                                        Long valueOf3 = Long.valueOf(G10);
                                                        h7.o(c12017a38, "_sr", valueOf3);
                                                        arrayList3.add((C12026b3) c12017a38.q());
                                                        if (z12) {
                                                            e12 = e12.c(null, valueOf3, Boolean.TRUE);
                                                        }
                                                        hashMap2 = hashMap;
                                                        hashMap2.put(c12017a38.D(), e12.b(c12017a38.G(), Y11));
                                                        i13 = i12;
                                                    } else {
                                                        hashMap2 = hashMap;
                                                        if (z12) {
                                                            hashMap2.put(c12017a38.D(), e12.c(l13, null, null));
                                                        }
                                                        i13 = i12;
                                                        c12125m34.R0(i13, c12017a38);
                                                        i37 = i13 + 1;
                                                        c7Var = this;
                                                        hashMap3 = hashMap2;
                                                        q02 = secureRandom;
                                                        y64 = y63;
                                                        j12 = 0;
                                                    }
                                                }
                                                c12125m34.R0(i13, c12017a38);
                                                i37 = i13 + 1;
                                                c7Var = this;
                                                hashMap3 = hashMap2;
                                                q02 = secureRandom;
                                                y64 = y63;
                                                j12 = 0;
                                            }
                                        }
                                        hashMap2 = hashMap3;
                                        y63 = y64;
                                        secureRandom = q02;
                                        i13 = i37;
                                        i37 = i13 + 1;
                                        c7Var = this;
                                        hashMap3 = hashMap2;
                                        q02 = secureRandom;
                                        y64 = y63;
                                        j12 = 0;
                                    }
                                    parseLong = j12;
                                    long Y112 = N0().Y(c12017a38.G(), parseLong);
                                    C12026b3 c12026b32 = (C12026b3) c12017a38.q();
                                    Long l122 = 1L;
                                    if (!TextUtils.isEmpty("_dbg")) {
                                    }
                                    l10 = l122;
                                    G10 = D0().G(y64.f62978a.E(), c12017a38.D());
                                    if (G10 > 0) {
                                    }
                                    hashMap2 = hashMap3;
                                    y63 = y64;
                                    secureRandom = q02;
                                    i13 = i37;
                                    i37 = i13 + 1;
                                    c7Var = this;
                                    hashMap3 = hashMap2;
                                    q02 = secureRandom;
                                    y64 = y63;
                                    j12 = 0;
                                }
                            }
                            HashMap hashMap4 = hashMap3;
                            Y6 y65 = y64;
                            if (arrayList3.size() < c12125m34.O0()) {
                                c12125m34.U0();
                                c12125m34.T0(arrayList3);
                            }
                            Iterator it7 = hashMap4.entrySet().iterator();
                            while (it7.hasNext()) {
                                F0().y0((E) ((Map.Entry) it7.next()).getValue());
                            }
                            y62 = y65;
                        } catch (Throwable th2) {
                            th = th2;
                            Throwable th3 = th;
                            F0().v0();
                            throw th3;
                        }
                    } else {
                        y62 = y64;
                    }
                    String E17 = y62.f62978a.E();
                    I2 L04 = F0().L0(E17);
                    if (L04 == null) {
                        a().o().b("Bundling raw events w/o app info. appId", B2.x(y62.f62978a.E()));
                    } else if (c12125m34.O0() > 0) {
                        long B02 = L04.B0();
                        if (B02 != 0) {
                            c12125m34.t(B02);
                        } else {
                            c12125m34.u();
                        }
                        long z02 = L04.z0();
                        if (z02 != 0) {
                            B02 = z02;
                        }
                        if (B02 != 0) {
                            c12125m34.k1(B02);
                        } else {
                            c12125m34.l1();
                        }
                        L04.m(c12125m34.O0());
                        c12125m34.f0((int) L04.G());
                        c12125m34.S((int) L04.g());
                        L04.A0(c12125m34.g1());
                        L04.C0(c12125m34.i1());
                        String N10 = L04.N();
                        if (N10 != null) {
                            c12125m34.n0(N10);
                        } else {
                            c12125m34.o0();
                        }
                        F0().M0(L04, false, false);
                    }
                    if (c12125m34.O0() > 0) {
                        this.f63098l.c();
                        C12186t2 w10 = D0().w(y62.f62978a.E());
                        if (w10 != null && w10.E()) {
                            c12125m34.y0(w10.F());
                            F0().Q0((C12134n3) c12125m34.q(), z11);
                        }
                        if (y62.f62978a.T().isEmpty()) {
                            c12125m34.y0(-1L);
                        } else {
                            a().r().b("Did not find measurement config or missing version info. appId", B2.x(y62.f62978a.E()));
                        }
                        F0().Q0((C12134n3) c12125m34.q(), z11);
                    }
                    F0().E(y62.f62979b);
                    F0().F(E17);
                    F0().u0();
                    z10 = true;
                }
                F0().v0();
                return z10;
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (Throwable th5) {
            th = th5;
        }
    }

    public final C12309h6 L0() {
        return this.f63095i;
    }

    @VisibleForTesting
    public final void M(C12125m3 c12125m3, long j10, boolean z10) {
        Object obj;
        String str = true != z10 ? "_lte" : "_se";
        k7 D02 = F0().D0(c12125m3.D(), str);
        k7 k7Var = (D02 == null || (obj = D02.f63382e) == null) ? new k7(c12125m3.D(), "auto", str, e().a(), Long.valueOf(j10)) : new k7(c12125m3.D(), "auto", str, e().a(), Long.valueOf(((Long) obj).longValue() + j10));
        com.google.android.gms.internal.measurement.D3 P10 = com.google.android.gms.internal.measurement.E3.P();
        P10.u(str);
        P10.t(e().a());
        Object obj2 = k7Var.f63382e;
        P10.x(((Long) obj2).longValue());
        com.google.android.gms.internal.measurement.E3 e32 = (com.google.android.gms.internal.measurement.E3) P10.q();
        int X10 = h7.X(c12125m3, str);
        if (X10 >= 0) {
            c12125m3.Z0(X10, e32);
        } else {
            c12125m3.a1(e32);
        }
        if (j10 > 0) {
            F0().C0(k7Var);
            a().w().c("Updated engagement user property. scope, value", true != z10 ? "lifetime" : "session-scoped", obj2);
        }
    }

    public final C12408u2 M0() {
        return this.f63098l.D();
    }

    public final boolean N(C12017a3 c12017a3, C12017a3 c12017a32) {
        G0.A.a("_e".equals(c12017a3.D()));
        K0();
        C12062f3 r10 = h7.r((C12026b3) c12017a3.q(), "_sc");
        String H10 = r10 == null ? null : r10.H();
        K0();
        C12062f3 r11 = h7.r((C12026b3) c12017a32.q(), "_pc");
        String H11 = r11 != null ? r11.H() : null;
        if (H11 == null || !H11.equals(H10)) {
            return false;
        }
        G0.A.a("_e".equals(c12017a3.D()));
        K0();
        C12062f3 r12 = h7.r((C12026b3) c12017a3.q(), "_et");
        if (r12 == null || !r12.I() || r12.J() <= 0) {
            return true;
        }
        long J10 = r12.J();
        K0();
        C12062f3 r13 = h7.r((C12026b3) c12017a32.q(), "_et");
        if (r13 != null && r13.J() > 0) {
            J10 += r13.J();
        }
        K0();
        h7.o(c12017a32, "_et", Long.valueOf(J10));
        K0();
        h7.o(c12017a3, "_fr", 1L);
        return true;
    }

    public final m7 N0() {
        return ((C12370p3) G0.A.r(this.f63098l)).C();
    }

    public final boolean O() {
        b().h();
        O0();
        return F0().B() || !TextUtils.isEmpty(F0().r());
    }

    public final void O0() {
        if (!this.f63099m.get()) {
            throw new IllegalStateException("UploadController is not initialized");
        }
    }

    @WorkerThread
    public final void P0(o7 o7Var) {
        b().h();
        O0();
        String str = o7Var.f63444b;
        G0.A.l(str);
        Z3 f10 = Z3.f(o7Var.f63462t, o7Var.f63467y);
        g(str);
        a().w().c("Setting storage consent for package", str, f10);
        f(str, f10);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x01a9  */
    @WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void Q() {
        long max;
        long j10;
        b().h();
        O0();
        if (this.f63101o > 0) {
            long abs = 3600000 - Math.abs(e().c() - this.f63101o);
            if (abs > 0) {
                a().w().b("Upload has been suspended. Will update scheduling later in approximately ms", Long.valueOf(abs));
                G0().b();
                H0().n();
                return;
            }
            this.f63101o = 0L;
        }
        if (!this.f63098l.m() || !O()) {
            a().w().a("Nothing to upload or uploading impossible");
            G0().b();
            H0().n();
            return;
        }
        long a10 = e().a();
        B0();
        long max2 = Math.max(0L, ((Long) C12281e2.f63166P.b(null)).longValue());
        boolean z10 = true;
        if (!F0().D() && !F0().s()) {
            z10 = false;
        }
        if (z10) {
            String i10 = B0().i();
            if (TextUtils.isEmpty(i10) || ".none.".equals(i10)) {
                B0();
                max = Math.max(0L, ((Long) C12281e2.f63154J.b(null)).longValue());
            } else {
                B0();
                max = Math.max(0L, ((Long) C12281e2.f63156K.b(null)).longValue());
            }
        } else {
            B0();
            max = Math.max(0L, ((Long) C12281e2.f63152I.b(null)).longValue());
        }
        long a11 = this.f63095i.f63335h.a();
        long a12 = this.f63095i.f63336i.a();
        boolean z11 = z10;
        long max3 = Math.max(F0().y(), F0().A());
        if (max3 != 0) {
            long abs2 = a10 - Math.abs(max3 - a10);
            long abs3 = a10 - Math.abs(a11 - a10);
            long abs4 = a10 - Math.abs(a12 - a10);
            j10 = abs2 + max2;
            long max4 = Math.max(abs3, abs4);
            if (z11 && max4 > 0) {
                j10 = Math.min(abs2, max4) + max;
            }
            if (!K0().S(max4, max)) {
                j10 = max4 + max;
            }
            if (abs4 != 0 && abs4 >= abs2) {
                int i11 = 0;
                while (true) {
                    B0();
                    if (i11 >= Math.min(20, Math.max(0, ((Integer) C12281e2.f63170R.b(null)).intValue()))) {
                        break;
                    }
                    B0();
                    j10 += Math.max(0L, ((Long) C12281e2.f63168Q.b(null)).longValue()) * (1 << i11);
                    if (j10 > abs4) {
                        break;
                    } else {
                        i11++;
                    }
                }
            }
            if (j10 != 0) {
                a().w().a("Next upload time is 0");
                G0().b();
                H0().n();
                return;
            }
            if (!E0().m()) {
                a().w().a("No network");
                G0().a();
                H0().n();
                return;
            }
            long a13 = this.f63095i.f63334g.a();
            B0();
            long max5 = Math.max(0L, ((Long) C12281e2.f63148G.b(null)).longValue());
            if (!K0().S(a13, max5)) {
                j10 = Math.max(j10, a13 + max5);
            }
            G0().b();
            long a14 = j10 - e().a();
            if (a14 <= 0) {
                B0();
                a14 = Math.max(0L, ((Long) C12281e2.f63158L.b(null)).longValue());
                this.f63095i.f63335h.b(e().a());
            }
            a().w().b("Upload scheduled in approximately ms", Long.valueOf(a14));
            H0().m(a14);
            return;
        }
        j10 = 0;
        if (j10 != 0) {
        }
    }

    @WorkerThread
    public final void Q0(o7 o7Var) {
        b().h();
        O0();
        String str = o7Var.f63444b;
        G0.A.l(str);
        A g10 = A.g(o7Var.f63468z);
        a().w().c("Setting DMA consent for package", str, g10);
        b().h();
        O0();
        W3 c10 = A.h(S0(str), 100).c();
        this.f63079C.put(str, g10);
        F0().Z(str, g10);
        W3 c11 = A.h(S0(str), 100).c();
        b().h();
        O0();
        W3 w32 = W3.DENIED;
        boolean z10 = c10 == w32 && c11 == W3.GRANTED;
        boolean z11 = c10 == W3.GRANTED && c11 == w32;
        if (z10 || z11) {
            a().w().b("Generated _dcu event for", str);
            Bundle bundle = new Bundle();
            if (F0().N0(h(), str, false, false, false, false, false, false, false).f63567f < B0().E(str, C12281e2.f63226n0)) {
                bundle.putLong("_r", 1L);
                a().w().c("_dcu realtime event count", str, Long.valueOf(F0().N0(h(), str, false, false, false, false, false, true, false).f63567f));
            }
            this.f63086J.a(str, "_dcu", bundle);
        }
    }

    @WorkerThread
    public final void R() {
        b().h();
        if (this.f63106t || this.f63107u || this.f63108v) {
            a().w().d("Not stopping services. fetch, network, upload", Boolean.valueOf(this.f63106t), Boolean.valueOf(this.f63107u), Boolean.valueOf(this.f63108v));
            return;
        }
        a().w().a("Stopping uploading service(s)");
        List list = this.f63102p;
        if (list == null) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        ((List) G0.A.r(this.f63102p)).clear();
    }

    @WorkerThread
    public final A R0(String str) {
        b().h();
        O0();
        Map map = this.f63079C;
        A a10 = (A) map.get(str);
        if (a10 != null) {
            return a10;
        }
        A Y10 = F0().Y(str);
        map.put(str, Y10);
        return Y10;
    }

    @WorkerThread
    public final Boolean S(I2 i22) {
        try {
            if (i22.F0() != -2147483648L) {
                if (i22.F0() == V0.d.a(this.f63098l.d()).f(i22.o0(), 0).versionCode) {
                    return Boolean.TRUE;
                }
            } else {
                String str = V0.d.a(this.f63098l.d()).f(i22.o0(), 0).versionName;
                String D02 = i22.D0();
                if (D02 != null && D02.equals(str)) {
                    return Boolean.TRUE;
                }
            }
            return Boolean.FALSE;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @WorkerThread
    public final Bundle S0(String str) {
        b().h();
        O0();
        if (D0().R(str) == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        Z3 g10 = g(str);
        bundle.putAll(g10.n());
        bundle.putAll(T0(str, R0(str), g10, new C12358o()).f());
        k7 D02 = F0().D0(str, "_npa");
        bundle.putString("ad_personalization", 1 != (D02 != null ? D02.f63382e.equals(1L) : H(str, new C12358o())) ? "granted" : "denied");
        return bundle;
    }

    @WorkerThread
    public final o7 T(String str) {
        I2 L02 = F0().L0(str);
        if (L02 == null || TextUtils.isEmpty(L02.D0())) {
            a().v().b("No app data available; dropping", str);
            return null;
        }
        Boolean S10 = S(L02);
        if (S10 == null || S10.booleanValue()) {
            return new o7(str, L02.r0(), L02.D0(), L02.F0(), L02.H0(), L02.J0(), L02.L0(), (String) null, L02.d(), false, L02.x0(), 0L, 0, L02.P(), false, L02.R(), L02.b(), L02.T(), g(str).l(), "", (String) null, L02.V(), L02.X(), g(str).b(), R0(str).e(), L02.b0(), L02.j0(), L02.l0(), L02.I(), 0L, L02.M());
        }
        a().o().b("App version does not match; dropping. appId", B2.x(str));
        return null;
    }

    @VisibleForTesting
    @WorkerThread
    public final A T0(String str, A a10, Z3 z32, C12358o c12358o) {
        W3 w32;
        int i10 = 90;
        if (D0().R(str) == null) {
            if (a10.c() == W3.DENIED) {
                i10 = a10.b();
                c12358o.b(Y3.AD_USER_DATA, i10);
            } else {
                c12358o.c(Y3.AD_USER_DATA, EnumC12350n.FAILSAFE);
            }
            return new A(Boolean.FALSE, i10, Boolean.TRUE, "-");
        }
        W3 c10 = a10.c();
        W3 w33 = W3.GRANTED;
        if (c10 == w33 || c10 == (w32 = W3.DENIED)) {
            i10 = a10.b();
            c12358o.b(Y3.AD_USER_DATA, i10);
        } else {
            if (c10 == W3.POLICY) {
                C12266c3 c12266c3 = this.f63087a;
                Y3 y32 = Y3.AD_USER_DATA;
                W3 m10 = c12266c3.m(str, y32);
                if (m10 != W3.UNINITIALIZED) {
                    c12358o.c(y32, EnumC12350n.REMOTE_ENFORCED_DEFAULT);
                    c10 = m10;
                }
            }
            C12266c3 c12266c32 = this.f63087a;
            Y3 y33 = Y3.AD_USER_DATA;
            Y3 Q10 = c12266c32.Q(str, y33);
            W3 p10 = z32.p();
            boolean z10 = p10 == w33 || p10 == w32;
            if (Q10 == Y3.AD_STORAGE && z10) {
                c12358o.c(y33, EnumC12350n.REMOTE_DELEGATION);
                c10 = p10;
            } else {
                c12358o.c(y33, EnumC12350n.REMOTE_DEFAULT);
                c10 = true != c12266c32.P(str, y33) ? w32 : w33;
            }
        }
        boolean S10 = this.f63087a.S(str);
        SortedSet T10 = D0().T(str);
        if (c10 == W3.DENIED || T10.isEmpty()) {
            return new A(Boolean.FALSE, i10, Boolean.valueOf(S10), "-");
        }
        return new A(Boolean.TRUE, i10, Boolean.valueOf(S10), S10 ? TextUtils.join("", T10) : "");
    }

    @WorkerThread
    public final boolean U(String str, String str2) {
        E x02 = F0().x0(str, str2);
        return x02 == null || x02.f62602c < 1;
    }

    @Override
    public final B2 a() {
        return ((C12370p3) G0.A.r(this.f63098l)).a();
    }

    @VisibleForTesting(otherwise = 4)
    @WorkerThread
    public final void a0(o7 o7Var) {
        if (this.f63111y != null) {
            ArrayList arrayList = new ArrayList();
            this.f63112z = arrayList;
            arrayList.addAll(this.f63111y);
        }
        C12421w F02 = F0();
        String str = (String) G0.A.r(o7Var.f63444b);
        G0.A.l(str);
        F02.h();
        F02.j();
        try {
            SQLiteDatabase w02 = F02.w0();
            String[] strArr = {str};
            int delete = w02.delete("apps", "app_id=?", strArr) + w02.delete("events", "app_id=?", strArr) + w02.delete("events_snapshot", "app_id=?", strArr) + w02.delete("user_attributes", "app_id=?", strArr) + w02.delete("conditional_properties", "app_id=?", strArr) + w02.delete("raw_events", "app_id=?", strArr) + w02.delete("raw_events_metadata", "app_id=?", strArr) + w02.delete("queue", "app_id=?", strArr) + w02.delete("audience_filter_values", "app_id=?", strArr) + w02.delete("main_event_params", "app_id=?", strArr) + w02.delete("default_event_params", "app_id=?", strArr) + w02.delete("trigger_uris", "app_id=?", strArr) + w02.delete("upload_queue", "app_id=?", strArr);
            com.google.android.gms.internal.measurement.V6.a();
            C12370p3 c12370p3 = F02.f62917a;
            if (c12370p3.w().H(null, C12281e2.f63217j1)) {
                delete += w02.delete("no_data_mode_events", "app_id=?", strArr);
            }
            if (delete > 0) {
                c12370p3.a().w().c("Reset analytics data. app, records", str, Integer.valueOf(delete));
            }
        } catch (SQLiteException e10) {
            F02.f62917a.a().o().c("Error resetting analytics data. appId, error", B2.x(str), e10);
        }
        if (o7Var.f63451i) {
            g0(o7Var);
        }
    }

    @Override
    public final C12306h3 b() {
        return ((C12370p3) G0.A.r(this.f63098l)).b();
    }

    @WorkerThread
    public final void b0(i7 i7Var, o7 o7Var) {
        String str;
        k7 D02;
        long j10;
        b().h();
        O0();
        if (W(o7Var)) {
            if (!o7Var.f63451i) {
                n0(o7Var);
                return;
            }
            m7 N02 = N0();
            String str2 = i7Var.f63358c;
            int y02 = N02.y0(str2);
            if (y02 != 0) {
                m7 N03 = N0();
                B0();
                N0().B(this.f63086J, o7Var.f63444b, y02, "_ev", N03.q(str2, 24, true), str2 != null ? str2.length() : 0);
                return;
            }
            int y10 = N0().y(str2, i7Var.n());
            if (y10 != 0) {
                m7 N04 = N0();
                B0();
                String q10 = N04.q(str2, 24, true);
                Object n10 = i7Var.n();
                N0().B(this.f63086J, o7Var.f63444b, y10, "_ev", q10, (n10 == null || !((n10 instanceof String) || (n10 instanceof CharSequence))) ? 0 : n10.toString().length());
                return;
            }
            Object z10 = N0().z(str2, i7Var.n());
            if (z10 != null) {
                if ("_sid".equals(str2)) {
                    long j11 = i7Var.f63359d;
                    String str3 = i7Var.f63362g;
                    String str4 = (String) G0.A.r(o7Var.f63444b);
                    k7 D03 = F0().D0(str4, "_sno");
                    if (D03 != null) {
                        Object obj = D03.f63382e;
                        if (obj instanceof Long) {
                            j10 = ((Long) obj).longValue();
                            str = "_sid";
                            b0(new i7("_sno", j11, Long.valueOf(j10 + 1), str3), o7Var);
                        }
                    }
                    if (D03 != null) {
                        a().r().b("Retrieved last session number from database does not contain a valid (long) value", D03.f63382e);
                    }
                    E x02 = F0().x0(str4, "_s");
                    if (x02 != null) {
                        C12448z2 w10 = a().w();
                        str = "_sid";
                        long j12 = x02.f62602c;
                        w10.b("Backfill the session number. Last used session number", Long.valueOf(j12));
                        j10 = j12;
                    } else {
                        str = "_sid";
                        j10 = 0;
                    }
                    b0(new i7("_sno", j11, Long.valueOf(j10 + 1), str3), o7Var);
                } else {
                    str = "_sid";
                }
                String str5 = o7Var.f63444b;
                k7 k7Var = new k7((String) G0.A.r(str5), (String) G0.A.r(i7Var.f63362g), str2, i7Var.f63359d, z10);
                C12448z2 w11 = a().w();
                C12370p3 c12370p3 = this.f63098l;
                String str6 = k7Var.f63380c;
                w11.c("Setting user property", c12370p3.D().c(str6), z10);
                F0().t0();
                try {
                    if ("_id".equals(str6) && (D02 = F0().D0(str5, "_id")) != null && !k7Var.f63382e.equals(D02.f63382e)) {
                        F0().B0(str5, "_lair");
                    }
                    n0(o7Var);
                    boolean C02 = F0().C0(k7Var);
                    if (str.equals(str2)) {
                        long U10 = K0().U(o7Var.f63464v);
                        I2 L02 = F0().L0(str5);
                        if (L02 != null) {
                            L02.a0(U10);
                            if (L02.A()) {
                                F0().M0(L02, false, false);
                            }
                        }
                    }
                    F0().u0();
                    if (!C02) {
                        a().o().c("Too many unique user properties are set. Ignoring user property", c12370p3.D().c(str6), k7Var.f63382e);
                        N0().B(this.f63086J, str5, 9, null, null, 0);
                    }
                    F0().v0();
                } catch (Throwable th2) {
                    F0().v0();
                    throw th2;
                }
            }
        }
    }

    @Override
    public final C12286f c() {
        return this.f63098l.c();
    }

    @WorkerThread
    public final void c0(String str, o7 o7Var) {
        b().h();
        O0();
        if (W(o7Var)) {
            if (!o7Var.f63451i) {
                n0(o7Var);
                return;
            }
            Boolean Z10 = Z(o7Var);
            if ("_npa".equals(str) && Z10 != null) {
                a().v().a("Falling back to manifest metadata value for ad personalization");
                b0(new i7("_npa", e().a(), Long.valueOf(true != Z10.booleanValue() ? 0L : 1L), "auto"), o7Var);
                return;
            }
            C12448z2 v10 = a().v();
            C12370p3 c12370p3 = this.f63098l;
            v10.b("Removing user property", c12370p3.D().c(str));
            F0().t0();
            try {
                n0(o7Var);
                if ("_id".equals(str)) {
                    F0().B0((String) G0.A.r(o7Var.f63444b), "_lair");
                }
                F0().B0((String) G0.A.r(o7Var.f63444b), str);
                F0().u0();
                a().v().b("User property removed", c12370p3.D().c(str));
                F0().v0();
            } catch (Throwable th2) {
                F0().v0();
                throw th2;
            }
        }
    }

    @Override
    public final Context d() {
        return this.f63098l.d();
    }

    public final void d0() {
        this.f63104r++;
    }

    @Override
    public final InterfaceC3037g e() {
        return ((C12370p3) G0.A.r(this.f63098l)).e();
    }

    public final void e0() {
        this.f63105s++;
    }

    @WorkerThread
    public final void f(String str, Z3 z32) {
        b().h();
        O0();
        this.f63078B.put(str, z32);
        F0().X(str, z32);
    }

    public final C12370p3 f0() {
        return this.f63098l;
    }

    @WorkerThread
    public final Z3 g(String str) {
        Z3 z32 = Z3.f62987c;
        b().h();
        O0();
        Z3 z33 = (Z3) this.f63078B.get(str);
        if (z33 != null) {
            return z33;
        }
        Z3 L10 = F0().L(str);
        if (L10 != null) {
            z32 = L10;
        }
        f(str, z32);
        return z32;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:63|64|(2:66|(8:68|(3:70|(2:72|(1:74))(1:94)|75)(1:95)|76|(1:78)(1:93)|79|80|81|(4:83|(1:85)(1:89)|86|(1:88))))|96|80|81|(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x00be, code lost:
    
        if (true == r11.booleanValue()) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x00c0, code lost:
    
        r17 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x00c5, code lost:
    
        r4 = true;
        r3 = new com.google.android.gms.measurement.internal.i7("_npa", r13, java.lang.Long.valueOf(r17), "auto");
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x00d2, code lost:
    
        if (r10 == null) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x00dc, code lost:
    
        if (r10.f63382e.equals(r3.f63360e) != false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x00de, code lost:
    
        b0(r3, r26);
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x00c3, code lost:
    
        r17 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x033d, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x033e, code lost:
    
        a().o().c("Application info is null, first open report might be inaccurate. appId", com.google.android.gms.measurement.internal.B2.x(r6), r0);
        r0 = r9;
     */
    /* JADX WARN: Removed duplicated region for block: B:134:0x03d9 A[Catch: all -> 0x00b1, TryCatch #2 {all -> 0x00b1, blocks: (B:25:0x0093, B:27:0x00a4, B:31:0x00e8, B:33:0x00f5, B:34:0x00fe, B:36:0x0103, B:38:0x011c, B:41:0x0131, B:43:0x015a, B:45:0x0164, B:47:0x0173, B:48:0x024d, B:50:0x027b, B:51:0x027e, B:53:0x02a6, B:57:0x036f, B:58:0x0372, B:59:0x03fa, B:64:0x02bb, B:66:0x02de, B:68:0x02e6, B:70:0x02ec, B:74:0x02ff, B:76:0x0310, B:79:0x031c, B:81:0x032d, B:92:0x033e, B:83:0x0352, B:85:0x0358, B:86:0x0360, B:88:0x0366, B:94:0x0308, B:99:0x02ca, B:100:0x0184, B:102:0x01ad, B:103:0x01bc, B:105:0x01c3, B:107:0x01c9, B:109:0x01d3, B:111:0x01d9, B:113:0x01df, B:115:0x01e5, B:117:0x01ea, B:120:0x020a, B:125:0x020e, B:126:0x0222, B:127:0x0230, B:129:0x023e, B:130:0x038a, B:132:0x03bf, B:133:0x03c2, B:134:0x03d9, B:136:0x03df, B:137:0x010f, B:138:0x00fb, B:140:0x00b6, B:143:0x00c5, B:145:0x00d4, B:147:0x00de, B:151:0x00e5), top: B:24:0x0093, inners: #0, #1, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:137:0x010f A[Catch: all -> 0x00b1, TryCatch #2 {all -> 0x00b1, blocks: (B:25:0x0093, B:27:0x00a4, B:31:0x00e8, B:33:0x00f5, B:34:0x00fe, B:36:0x0103, B:38:0x011c, B:41:0x0131, B:43:0x015a, B:45:0x0164, B:47:0x0173, B:48:0x024d, B:50:0x027b, B:51:0x027e, B:53:0x02a6, B:57:0x036f, B:58:0x0372, B:59:0x03fa, B:64:0x02bb, B:66:0x02de, B:68:0x02e6, B:70:0x02ec, B:74:0x02ff, B:76:0x0310, B:79:0x031c, B:81:0x032d, B:92:0x033e, B:83:0x0352, B:85:0x0358, B:86:0x0360, B:88:0x0366, B:94:0x0308, B:99:0x02ca, B:100:0x0184, B:102:0x01ad, B:103:0x01bc, B:105:0x01c3, B:107:0x01c9, B:109:0x01d3, B:111:0x01d9, B:113:0x01df, B:115:0x01e5, B:117:0x01ea, B:120:0x020a, B:125:0x020e, B:126:0x0222, B:127:0x0230, B:129:0x023e, B:130:0x038a, B:132:0x03bf, B:133:0x03c2, B:134:0x03d9, B:136:0x03df, B:137:0x010f, B:138:0x00fb, B:140:0x00b6, B:143:0x00c5, B:145:0x00d4, B:147:0x00de, B:151:0x00e5), top: B:24:0x0093, inners: #0, #1, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:138:0x00fb A[Catch: all -> 0x00b1, TryCatch #2 {all -> 0x00b1, blocks: (B:25:0x0093, B:27:0x00a4, B:31:0x00e8, B:33:0x00f5, B:34:0x00fe, B:36:0x0103, B:38:0x011c, B:41:0x0131, B:43:0x015a, B:45:0x0164, B:47:0x0173, B:48:0x024d, B:50:0x027b, B:51:0x027e, B:53:0x02a6, B:57:0x036f, B:58:0x0372, B:59:0x03fa, B:64:0x02bb, B:66:0x02de, B:68:0x02e6, B:70:0x02ec, B:74:0x02ff, B:76:0x0310, B:79:0x031c, B:81:0x032d, B:92:0x033e, B:83:0x0352, B:85:0x0358, B:86:0x0360, B:88:0x0366, B:94:0x0308, B:99:0x02ca, B:100:0x0184, B:102:0x01ad, B:103:0x01bc, B:105:0x01c3, B:107:0x01c9, B:109:0x01d3, B:111:0x01d9, B:113:0x01df, B:115:0x01e5, B:117:0x01ea, B:120:0x020a, B:125:0x020e, B:126:0x0222, B:127:0x0230, B:129:0x023e, B:130:0x038a, B:132:0x03bf, B:133:0x03c2, B:134:0x03d9, B:136:0x03df, B:137:0x010f, B:138:0x00fb, B:140:0x00b6, B:143:0x00c5, B:145:0x00d4, B:147:0x00de, B:151:0x00e5), top: B:24:0x0093, inners: #0, #1, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00f5 A[Catch: all -> 0x00b1, TryCatch #2 {all -> 0x00b1, blocks: (B:25:0x0093, B:27:0x00a4, B:31:0x00e8, B:33:0x00f5, B:34:0x00fe, B:36:0x0103, B:38:0x011c, B:41:0x0131, B:43:0x015a, B:45:0x0164, B:47:0x0173, B:48:0x024d, B:50:0x027b, B:51:0x027e, B:53:0x02a6, B:57:0x036f, B:58:0x0372, B:59:0x03fa, B:64:0x02bb, B:66:0x02de, B:68:0x02e6, B:70:0x02ec, B:74:0x02ff, B:76:0x0310, B:79:0x031c, B:81:0x032d, B:92:0x033e, B:83:0x0352, B:85:0x0358, B:86:0x0360, B:88:0x0366, B:94:0x0308, B:99:0x02ca, B:100:0x0184, B:102:0x01ad, B:103:0x01bc, B:105:0x01c3, B:107:0x01c9, B:109:0x01d3, B:111:0x01d9, B:113:0x01df, B:115:0x01e5, B:117:0x01ea, B:120:0x020a, B:125:0x020e, B:126:0x0222, B:127:0x0230, B:129:0x023e, B:130:0x038a, B:132:0x03bf, B:133:0x03c2, B:134:0x03d9, B:136:0x03df, B:137:0x010f, B:138:0x00fb, B:140:0x00b6, B:143:0x00c5, B:145:0x00d4, B:147:0x00de, B:151:0x00e5), top: B:24:0x0093, inners: #0, #1, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0103 A[Catch: all -> 0x00b1, TryCatch #2 {all -> 0x00b1, blocks: (B:25:0x0093, B:27:0x00a4, B:31:0x00e8, B:33:0x00f5, B:34:0x00fe, B:36:0x0103, B:38:0x011c, B:41:0x0131, B:43:0x015a, B:45:0x0164, B:47:0x0173, B:48:0x024d, B:50:0x027b, B:51:0x027e, B:53:0x02a6, B:57:0x036f, B:58:0x0372, B:59:0x03fa, B:64:0x02bb, B:66:0x02de, B:68:0x02e6, B:70:0x02ec, B:74:0x02ff, B:76:0x0310, B:79:0x031c, B:81:0x032d, B:92:0x033e, B:83:0x0352, B:85:0x0358, B:86:0x0360, B:88:0x0366, B:94:0x0308, B:99:0x02ca, B:100:0x0184, B:102:0x01ad, B:103:0x01bc, B:105:0x01c3, B:107:0x01c9, B:109:0x01d3, B:111:0x01d9, B:113:0x01df, B:115:0x01e5, B:117:0x01ea, B:120:0x020a, B:125:0x020e, B:126:0x0222, B:127:0x0230, B:129:0x023e, B:130:0x038a, B:132:0x03bf, B:133:0x03c2, B:134:0x03d9, B:136:0x03df, B:137:0x010f, B:138:0x00fb, B:140:0x00b6, B:143:0x00c5, B:145:0x00d4, B:147:0x00de, B:151:0x00e5), top: B:24:0x0093, inners: #0, #1, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x011c A[Catch: all -> 0x00b1, TRY_LEAVE, TryCatch #2 {all -> 0x00b1, blocks: (B:25:0x0093, B:27:0x00a4, B:31:0x00e8, B:33:0x00f5, B:34:0x00fe, B:36:0x0103, B:38:0x011c, B:41:0x0131, B:43:0x015a, B:45:0x0164, B:47:0x0173, B:48:0x024d, B:50:0x027b, B:51:0x027e, B:53:0x02a6, B:57:0x036f, B:58:0x0372, B:59:0x03fa, B:64:0x02bb, B:66:0x02de, B:68:0x02e6, B:70:0x02ec, B:74:0x02ff, B:76:0x0310, B:79:0x031c, B:81:0x032d, B:92:0x033e, B:83:0x0352, B:85:0x0358, B:86:0x0360, B:88:0x0366, B:94:0x0308, B:99:0x02ca, B:100:0x0184, B:102:0x01ad, B:103:0x01bc, B:105:0x01c3, B:107:0x01c9, B:109:0x01d3, B:111:0x01d9, B:113:0x01df, B:115:0x01e5, B:117:0x01ea, B:120:0x020a, B:125:0x020e, B:126:0x0222, B:127:0x0230, B:129:0x023e, B:130:0x038a, B:132:0x03bf, B:133:0x03c2, B:134:0x03d9, B:136:0x03df, B:137:0x010f, B:138:0x00fb, B:140:0x00b6, B:143:0x00c5, B:145:0x00d4, B:147:0x00de, B:151:0x00e5), top: B:24:0x0093, inners: #0, #1, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0352 A[Catch: all -> 0x00b1, TryCatch #2 {all -> 0x00b1, blocks: (B:25:0x0093, B:27:0x00a4, B:31:0x00e8, B:33:0x00f5, B:34:0x00fe, B:36:0x0103, B:38:0x011c, B:41:0x0131, B:43:0x015a, B:45:0x0164, B:47:0x0173, B:48:0x024d, B:50:0x027b, B:51:0x027e, B:53:0x02a6, B:57:0x036f, B:58:0x0372, B:59:0x03fa, B:64:0x02bb, B:66:0x02de, B:68:0x02e6, B:70:0x02ec, B:74:0x02ff, B:76:0x0310, B:79:0x031c, B:81:0x032d, B:92:0x033e, B:83:0x0352, B:85:0x0358, B:86:0x0360, B:88:0x0366, B:94:0x0308, B:99:0x02ca, B:100:0x0184, B:102:0x01ad, B:103:0x01bc, B:105:0x01c3, B:107:0x01c9, B:109:0x01d3, B:111:0x01d9, B:113:0x01df, B:115:0x01e5, B:117:0x01ea, B:120:0x020a, B:125:0x020e, B:126:0x0222, B:127:0x0230, B:129:0x023e, B:130:0x038a, B:132:0x03bf, B:133:0x03c2, B:134:0x03d9, B:136:0x03df, B:137:0x010f, B:138:0x00fb, B:140:0x00b6, B:143:0x00c5, B:145:0x00d4, B:147:0x00de, B:151:0x00e5), top: B:24:0x0093, inners: #0, #1, #3 }] */
    @WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void g0(o7 o7Var) {
        boolean z10;
        E x02;
        boolean z11;
        long j10;
        PackageInfo packageInfo;
        ApplicationInfo applicationInfo;
        ApplicationInfo applicationInfo2;
        long j11;
        boolean z12;
        b().h();
        O0();
        G0.A.r(o7Var);
        String str = o7Var.f63444b;
        G0.A.l(str);
        if (W(o7Var)) {
            I2 L02 = F0().L0(str);
            if (L02 != null && TextUtils.isEmpty(L02.r0()) && !TextUtils.isEmpty(o7Var.f63445c)) {
                L02.i(0L);
                F0().M0(L02, false, false);
                D0().B(str);
            }
            if (!o7Var.f63451i) {
                n0(o7Var);
                return;
            }
            long j12 = o7Var.f63455m;
            if (j12 == 0) {
                j12 = e().a();
            }
            int i10 = o7Var.f63456n;
            if (i10 != 0 && i10 != 1) {
                a().r().c("Incorrect app type, assuming installed app. appId, appType", B2.x(str), Integer.valueOf(i10));
                i10 = 0;
            }
            F0().t0();
            try {
                k7 D02 = F0().D0(str, "_npa");
                Boolean Z10 = Z(o7Var);
                if (D02 != null && !"auto".equals(D02.f63379b)) {
                    z10 = true;
                    if (B0().H(null, C12281e2.f63199d1)) {
                        m0(o7Var, j12);
                    } else {
                        m0(o7Var, o7Var.f63442E);
                    }
                    n0(o7Var);
                    if (i10 != 0) {
                        x02 = F0().x0(str, "_f");
                        z11 = false;
                    } else {
                        x02 = F0().x0(str, "_v");
                        z11 = z10;
                    }
                    if (x02 != null) {
                        long j13 = ((j12 / 3600000) + 1) * 3600000;
                        if (z11) {
                            long j14 = j12;
                            b0(new i7("_fvt", j14, Long.valueOf(j13), "auto"), o7Var);
                            b().h();
                            O0();
                            Bundle bundle = new Bundle();
                            bundle.putLong("_c", 1L);
                            bundle.putLong("_r", 1L);
                            bundle.putLong("_et", 1L);
                            if (o7Var.f63458p) {
                                bundle.putLong("_dac", 1L);
                            }
                            j(new I("_v", new G(bundle), "auto", j14), o7Var);
                        } else {
                            b0(new i7("_fot", j12, Long.valueOf(j13), "auto"), o7Var);
                            b().h();
                            S2 s22 = (S2) G0.A.r(this.f63097k);
                            if (str == null || str.isEmpty()) {
                                j10 = j12;
                                s22.f62916a.a().s().a("Install Referrer Reporter was called with invalid app package name");
                            } else {
                                C12370p3 c12370p3 = s22.f62916a;
                                c12370p3.b().h();
                                if (s22.a()) {
                                    R2 r22 = new R2(s22, str);
                                    c12370p3.b().h();
                                    j10 = j12;
                                    Intent intent = new Intent("com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE");
                                    intent.setComponent(new ComponentName("com.android.vending", "com.google.android.finsky.externalreferrer.GetInstallReferrerService"));
                                    PackageManager packageManager = c12370p3.d().getPackageManager();
                                    if (packageManager == null) {
                                        c12370p3.a().s().a("Failed to obtain Package Manager to verify binding conditions for Install Referrer");
                                    } else {
                                        List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
                                        if (queryIntentServices == null || queryIntentServices.isEmpty()) {
                                            c12370p3.a().u().a("Play Service for fetching Install Referrer is unavailable on device");
                                        } else {
                                            ServiceInfo serviceInfo = queryIntentServices.get(0).serviceInfo;
                                            if (serviceInfo != null) {
                                                String str2 = serviceInfo.packageName;
                                                if (serviceInfo.name != null && "com.android.vending".equals(str2) && s22.a()) {
                                                    try {
                                                        c12370p3.a().w().b("Install Referrer Service is", S0.b.b().a(c12370p3.d(), new Intent(intent), r22, 1) ? "available" : "not available");
                                                    } catch (RuntimeException e10) {
                                                        s22.f62916a.a().o().b("Exception occurred while binding to Install Referrer Service", e10.getMessage());
                                                    }
                                                } else {
                                                    c12370p3.a().r().a("Play Store version 8.3.73 or higher required for Install Referrer");
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    c12370p3.a().u().a("Install Referrer Reporter is not available");
                                    j10 = j12;
                                }
                            }
                            b().h();
                            O0();
                            Bundle bundle2 = new Bundle();
                            bundle2.putLong("_c", 1L);
                            bundle2.putLong("_r", 1L);
                            bundle2.putLong("_uwa", 0L);
                            bundle2.putLong("_pfo", 0L);
                            bundle2.putLong("_sys", 0L);
                            bundle2.putLong("_sysu", 0L);
                            bundle2.putLong("_et", 1L);
                            if (o7Var.f63458p) {
                                bundle2.putLong("_dac", 1L);
                            }
                            String str3 = (String) G0.A.r(o7Var.f63444b);
                            C12421w F02 = F0();
                            G0.A.l(str3);
                            F02.h();
                            F02.j();
                            long z13 = F02.z(str3, "first_open_count");
                            C12370p3 c12370p32 = this.f63098l;
                            if (c12370p32.d().getPackageManager() == null) {
                                a().o().b("PackageManager is null, first open report might be inaccurate. appId", B2.x(str3));
                            } else {
                                try {
                                    packageInfo = V0.d.a(c12370p32.d()).f(str3, 0);
                                } catch (PackageManager.NameNotFoundException e11) {
                                    a().o().c("Package info is null, first open report might be inaccurate. appId", B2.x(str3), e11);
                                    packageInfo = null;
                                }
                                if (packageInfo != null) {
                                    long j15 = packageInfo.firstInstallTime;
                                    if (j15 != 0) {
                                        if (j15 != packageInfo.lastUpdateTime) {
                                            applicationInfo = null;
                                            if (!B0().H(null, C12281e2.f63155J0)) {
                                                bundle2.putLong("_uwa", 1L);
                                            } else if (z13 == 0) {
                                                bundle2.putLong("_uwa", 1L);
                                                z13 = 0;
                                            }
                                            z12 = false;
                                        } else {
                                            applicationInfo = null;
                                            z12 = true;
                                        }
                                        b0(new i7("_fi", j10, Long.valueOf(true != z12 ? 0L : 1L), "auto"), o7Var);
                                        applicationInfo2 = V0.d.a(this.f63098l.d()).c(str3, 0);
                                        if (applicationInfo2 != null) {
                                            if ((applicationInfo2.flags & 1) != 0) {
                                                j11 = 1;
                                                bundle2.putLong("_sys", 1L);
                                            } else {
                                                j11 = 1;
                                            }
                                            if ((applicationInfo2.flags & 128) != 0) {
                                                bundle2.putLong("_sysu", j11);
                                            }
                                        }
                                    }
                                }
                                applicationInfo = null;
                                applicationInfo2 = V0.d.a(this.f63098l.d()).c(str3, 0);
                                if (applicationInfo2 != null) {
                                }
                            }
                            if (z13 >= 0) {
                                bundle2.putLong("_pfo", z13);
                            }
                            j(new I("_f", new G(bundle2), "auto", j10), o7Var);
                        }
                    } else {
                        long j16 = j12;
                        if (o7Var.f63452j) {
                            j(new I("_cd", new G(new Bundle()), "auto", j16), o7Var);
                        }
                    }
                    F0().u0();
                    F0().v0();
                }
                z10 = true;
                if (D02 != null) {
                    c0("_npa", o7Var);
                }
                if (B0().H(null, C12281e2.f63199d1)) {
                }
                n0(o7Var);
                if (i10 != 0) {
                }
                if (x02 != null) {
                }
                F0().u0();
                F0().v0();
            } catch (Throwable th2) {
                F0().v0();
                throw th2;
            }
        }
    }

    public final long h() {
        long a10 = e().a();
        C12309h6 c12309h6 = this.f63095i;
        c12309h6.j();
        c12309h6.h();
        M2 m22 = c12309h6.f63337j;
        long a11 = m22.a();
        if (a11 == 0) {
            a11 = c12309h6.f62917a.C().q0().nextInt(86400000) + 1;
            m22.b(a11);
        }
        return ((((a10 + a11) / 1000) / 60) / 60) / 24;
    }

    @WorkerThread
    public final void h0(o7 o7Var) {
        b().h();
        O0();
        G0.A.r(o7Var);
        String str = o7Var.f63444b;
        G0.A.l(str);
        int i10 = 0;
        if (B0().H(null, C12281e2.f63137A0)) {
            long a10 = e().a();
            int E10 = B0().E(null, C12281e2.f63216j0);
            B0();
            long n10 = a10 - C12342m.n();
            while (i10 < E10 && L(null, n10)) {
                i10++;
            }
        } else {
            B0();
            long p10 = C12342m.p();
            while (i10 < p10 && L(str, 0L)) {
                i10++;
            }
        }
        if (B0().H(null, C12281e2.f63139B0)) {
            b().h();
            u0();
        }
        if (this.f63096j.j(str, EnumC12223x3.a(o7Var.f63443F))) {
            a().w().b("[sgtm] Going background, trigger client side upload. appId", str);
            s(str, e().a());
        }
    }

    @WorkerThread
    public final void i(I i10, String str) {
        I2 L02 = F0().L0(str);
        if (L02 == null || TextUtils.isEmpty(L02.D0())) {
            a().v().b("No app data available; dropping event", str);
            return;
        }
        Boolean S10 = S(L02);
        if (S10 == null) {
            if (!"_ui".equals(i10.f62679b)) {
                a().r().b("Could not find package. appId", B2.x(str));
            }
        } else if (!S10.booleanValue()) {
            a().o().b("App version does not match; dropping event. appId", B2.x(str));
            return;
        }
        j(i10, new o7(str, L02.r0(), L02.D0(), L02.F0(), L02.H0(), L02.J0(), L02.L0(), (String) null, L02.d(), false, L02.x0(), 0L, 0, L02.P(), false, L02.R(), L02.b(), L02.T(), g(str).l(), "", (String) null, L02.V(), L02.X(), g(str).b(), R0(str).e(), L02.b0(), L02.j0(), L02.l0(), L02.I(), 0L, L02.M()));
    }

    @WorkerThread
    public final void i0(C12310i c12310i) {
        o7 T10 = T((String) G0.A.r(c12310i.f63338b));
        if (T10 != null) {
            j0(c12310i, T10);
        }
    }

    @WorkerThread
    public final void j(I i10, o7 o7Var) {
        String str = o7Var.f63444b;
        G0.A.l(str);
        C2 a10 = C2.a(i10);
        N0().w(a10.f62576d, F0().I(str));
        N0().u(a10, B0().w(str));
        I b10 = a10.b();
        if (!B0().H(null, C12281e2.f63211h1) && "_cmp".equals(b10.f62679b)) {
            G g10 = b10.f62680c;
            if ("referrer API v2".equals(g10.t("_cis"))) {
                String t10 = g10.t("gclid");
                if (!TextUtils.isEmpty(t10)) {
                    b0(new i7("_lgclid", b10.f62682e, t10, "auto"), o7Var);
                }
            }
        }
        k(b10, o7Var);
    }

    @WorkerThread
    public final void j0(C12310i c12310i, o7 o7Var) {
        G0.A.r(c12310i);
        G0.A.l(c12310i.f63338b);
        G0.A.r(c12310i.f63339c);
        G0.A.r(c12310i.f63340d);
        G0.A.l(c12310i.f63340d.f63358c);
        b().h();
        O0();
        if (W(o7Var)) {
            if (!o7Var.f63451i) {
                n0(o7Var);
                return;
            }
            C12310i c12310i2 = new C12310i(c12310i);
            boolean z10 = false;
            c12310i2.f63342f = false;
            F0().t0();
            try {
                C12310i H02 = F0().H0((String) G0.A.r(c12310i2.f63338b), c12310i2.f63340d.f63358c);
                if (H02 != null && !H02.f63339c.equals(c12310i2.f63339c)) {
                    a().r().d("Updating a conditional user property with different origin. name, origin, origin (from DB)", this.f63098l.D().c(c12310i2.f63340d.f63358c), c12310i2.f63339c, H02.f63339c);
                }
                if (H02 != null && H02.f63342f) {
                    c12310i2.f63339c = H02.f63339c;
                    c12310i2.f63341e = H02.f63341e;
                    c12310i2.f63345i = H02.f63345i;
                    c12310i2.f63343g = H02.f63343g;
                    c12310i2.f63346j = H02.f63346j;
                    c12310i2.f63342f = true;
                    i7 i7Var = c12310i2.f63340d;
                    c12310i2.f63340d = new i7(i7Var.f63358c, H02.f63340d.f63359d, i7Var.n(), H02.f63340d.f63362g);
                } else if (TextUtils.isEmpty(c12310i2.f63343g)) {
                    i7 i7Var2 = c12310i2.f63340d;
                    c12310i2.f63340d = new i7(i7Var2.f63358c, c12310i2.f63341e, i7Var2.n(), c12310i2.f63340d.f63362g);
                    c12310i2.f63342f = true;
                    z10 = true;
                }
                if (c12310i2.f63342f) {
                    i7 i7Var3 = c12310i2.f63340d;
                    k7 k7Var = new k7((String) G0.A.r(c12310i2.f63338b), c12310i2.f63339c, i7Var3.f63358c, i7Var3.f63359d, G0.A.r(i7Var3.n()));
                    if (F0().C0(k7Var)) {
                        a().v().d("User property updated immediately", c12310i2.f63338b, this.f63098l.D().c(k7Var.f63380c), k7Var.f63382e);
                    } else {
                        a().o().d("(2)Too many active user properties, ignoring", B2.x(c12310i2.f63338b), this.f63098l.D().c(k7Var.f63380c), k7Var.f63382e);
                    }
                    if (z10 && c12310i2.f63346j != null) {
                        m(new I(c12310i2.f63346j, c12310i2.f63341e), o7Var);
                    }
                }
                if (F0().G0(c12310i2)) {
                    a().v().d("Conditional property added", c12310i2.f63338b, this.f63098l.D().c(c12310i2.f63340d.f63358c), c12310i2.f63340d.n());
                } else {
                    a().o().d("Too many conditional properties, ignoring", B2.x(c12310i2.f63338b), this.f63098l.D().c(c12310i2.f63340d.f63358c), c12310i2.f63340d.n());
                }
                F0().u0();
                F0().v0();
            } catch (Throwable th2) {
                F0().v0();
                throw th2;
            }
        }
    }

    @WorkerThread
    public final void k(I i10, o7 o7Var) {
        I i11;
        List<C12310i> K02;
        List<C12310i> K03;
        List<C12310i> K04;
        String str;
        G0.A.r(o7Var);
        String str2 = o7Var.f63444b;
        G0.A.l(str2);
        b().h();
        O0();
        long j10 = i10.f62682e;
        C2 a10 = C2.a(i10);
        b().h();
        m7.k0((this.f63082F == null || (str = this.f63083G) == null || !str.equals(str2)) ? null : this.f63082F, a10.f62576d, false);
        I b10 = a10.b();
        K0();
        if (h7.p(b10, o7Var)) {
            if (!o7Var.f63451i) {
                n0(o7Var);
                return;
            }
            List list = o7Var.f63461s;
            if (list != null) {
                String str3 = b10.f62679b;
                if (!list.contains(str3)) {
                    a().v().d("Dropping non-safelisted event. appId, event name, origin", str2, b10.f62679b, b10.f62681d);
                    return;
                } else {
                    Bundle n02 = b10.f62680c.n0();
                    n02.putLong("ga_safelisted", 1L);
                    i11 = new I(str3, new G(n02), b10.f62681d, b10.f62682e);
                }
            } else {
                i11 = b10;
            }
            F0().t0();
            try {
                String str4 = i11.f62679b;
                if ("_s".equals(str4) && !F0().C(str2, "_s") && i11.f62680c.n("_sid").longValue() != 0) {
                    if (!F0().C(str2, "_f") && !F0().C(str2, "_v")) {
                        F0().K(str2, Long.valueOf(e().a() - 15000), "_sid", l(str2, i11));
                    }
                    F0().K(str2, null, "_sid", l(str2, i11));
                }
                C12421w F02 = F0();
                G0.A.l(str2);
                F02.h();
                F02.j();
                if (j10 < 0) {
                    F02.f62917a.a().r().c("Invalid time querying timed out conditional properties", B2.x(str2), Long.valueOf(j10));
                    K02 = Collections.emptyList();
                } else {
                    K02 = F02.K0("active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout", new String[]{str2, String.valueOf(j10)});
                }
                for (C12310i c12310i : K02) {
                    if (c12310i != null) {
                        a().w().d("User property timed out", c12310i.f63338b, this.f63098l.D().c(c12310i.f63340d.f63358c), c12310i.f63340d.n());
                        I i12 = c12310i.f63344h;
                        if (i12 != null) {
                            m(new I(i12, j10), o7Var);
                        }
                        F0().I0(str2, c12310i.f63340d.f63358c);
                    }
                }
                C12421w F03 = F0();
                G0.A.l(str2);
                F03.h();
                F03.j();
                if (j10 < 0) {
                    F03.f62917a.a().r().c("Invalid time querying expired conditional properties", B2.x(str2), Long.valueOf(j10));
                    K03 = Collections.emptyList();
                } else {
                    K03 = F03.K0("active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live", new String[]{str2, String.valueOf(j10)});
                }
                ArrayList arrayList = new ArrayList(K03.size());
                for (C12310i c12310i2 : K03) {
                    if (c12310i2 != null) {
                        a().w().d("User property expired", c12310i2.f63338b, this.f63098l.D().c(c12310i2.f63340d.f63358c), c12310i2.f63340d.n());
                        F0().B0(str2, c12310i2.f63340d.f63358c);
                        I i13 = c12310i2.f63348l;
                        if (i13 != null) {
                            arrayList.add(i13);
                        }
                        F0().I0(str2, c12310i2.f63340d.f63358c);
                    }
                }
                Iterator<E> it = arrayList.iterator();
                while (it.hasNext()) {
                    m(new I((I) it.next(), j10), o7Var);
                }
                C12421w F04 = F0();
                G0.A.l(str2);
                G0.A.l(str4);
                F04.h();
                F04.j();
                if (j10 < 0) {
                    C12370p3 c12370p3 = F04.f62917a;
                    c12370p3.a().r().d("Invalid time querying triggered conditional properties", B2.x(str2), c12370p3.D().a(str4), Long.valueOf(j10));
                    K04 = Collections.emptyList();
                } else {
                    K04 = F04.K0("active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout", new String[]{str2, str4, String.valueOf(j10)});
                }
                ArrayList arrayList2 = new ArrayList(K04.size());
                for (C12310i c12310i3 : K04) {
                    if (c12310i3 != null) {
                        i7 i7Var = c12310i3.f63340d;
                        k7 k7Var = new k7((String) G0.A.r(c12310i3.f63338b), c12310i3.f63339c, i7Var.f63358c, j10, G0.A.r(i7Var.n()));
                        if (F0().C0(k7Var)) {
                            a().w().d("User property triggered", c12310i3.f63338b, this.f63098l.D().c(k7Var.f63380c), k7Var.f63382e);
                        } else {
                            a().o().d("Too many active user properties, ignoring", B2.x(c12310i3.f63338b), this.f63098l.D().c(k7Var.f63380c), k7Var.f63382e);
                        }
                        I i14 = c12310i3.f63346j;
                        if (i14 != null) {
                            arrayList2.add(i14);
                        }
                        c12310i3.f63340d = new i7(k7Var);
                        c12310i3.f63342f = true;
                        F0().G0(c12310i3);
                    }
                }
                m(i11, o7Var);
                Iterator<E> it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    m(new I((I) it2.next(), j10), o7Var);
                }
                F0().u0();
                F0().v0();
            } catch (Throwable th2) {
                F0().v0();
                throw th2;
            }
        }
    }

    @WorkerThread
    public final void k0(C12310i c12310i) {
        o7 T10 = T((String) G0.A.r(c12310i.f63338b));
        if (T10 != null) {
            l0(c12310i, T10);
        }
    }

    public final Bundle l(String str, I i10) {
        Bundle bundle = new Bundle();
        bundle.putLong("_sid", i10.f62680c.n("_sid").longValue());
        k7 D02 = F0().D0(str, "_sno");
        if (D02 != null) {
            Object obj = D02.f63382e;
            if (obj instanceof Long) {
                bundle.putLong("_sno", ((Long) obj).longValue());
            }
        }
        return bundle;
    }

    @WorkerThread
    public final void l0(C12310i c12310i, o7 o7Var) {
        G0.A.r(c12310i);
        G0.A.l(c12310i.f63338b);
        G0.A.r(c12310i.f63340d);
        G0.A.l(c12310i.f63340d.f63358c);
        b().h();
        O0();
        if (W(o7Var)) {
            if (!o7Var.f63451i) {
                n0(o7Var);
                return;
            }
            F0().t0();
            try {
                n0(o7Var);
                String str = (String) G0.A.r(c12310i.f63338b);
                C12310i H02 = F0().H0(str, c12310i.f63340d.f63358c);
                if (H02 != null) {
                    a().v().c("Removing conditional user property", c12310i.f63338b, this.f63098l.D().c(c12310i.f63340d.f63358c));
                    F0().I0(str, c12310i.f63340d.f63358c);
                    if (H02.f63342f) {
                        F0().B0(str, c12310i.f63340d.f63358c);
                    }
                    I i10 = c12310i.f63348l;
                    if (i10 != null) {
                        G g10 = i10.f62680c;
                        m((I) G0.A.r(N0().R(str, ((I) G0.A.r(i10)).f62679b, g10 != null ? g10.n0() : null, H02.f63339c, i10.f62682e, true, true)), o7Var);
                    }
                } else {
                    a().r().c("Conditional user property doesn't exist", B2.x(c12310i.f63338b), this.f63098l.D().c(c12310i.f63340d.f63358c));
                }
                F0().u0();
                F0().v0();
            } catch (Throwable th2) {
                F0().v0();
                throw th2;
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(16:370|(2:372|(10:374|375|376|(1:378)|57|(0)(0)|60|(0)(0)|66|67))|379|380|381|382|383|375|376|(0)|57|(0)(0)|60|(0)(0)|66|67) */
    /* JADX WARN: Can't wrap try/catch for region: R(57:336|337|338|114|(0)|117|(0)(0)|124|(0)|127|(0)|130|(0)|133|(0)|136|(0)|139|(0)|142|(1:144)|333|157|(0)|160|(0)(0)|(35:164|166|(1:167)|300|181|(0)|(0)|186|(0)|189|(0)|291|213|(0)|218|(0)(0)|224|(0)|229|(0)|232|(1:233)|247|248|249|250|251|(3:252|(0)(0)|272)|258|259|260|(0)(0)|263|264|265)|301|(0)|186|(0)|189|(0)|291|213|(0)|218|(0)(0)|224|(0)|229|(0)|232|(1:233)|247|248|249|250|251|(3:252|(0)(0)|272)|258|259|260|(0)(0)|263|264|265) */
    /* JADX WARN: Can't wrap try/catch for region: R(66:68|(2:70|(3:72|(1:74)|75))|76|(2:78|(3:80|(1:82)|83))|84|85|(1:87)(1:342)|88|(2:92|(1:94))|95|(2:101|(2:103|104))|107|(6:108|109|110|111|112|113)|114|(1:116)|117|(2:119|(1:123)(1:122))(1:334)|124|(1:126)|127|(1:129)|130|(1:132)|133|(1:135)|136|(1:138)|139|(1:141)|142|(1:333)(6:146|(1:150)|151|(1:153)(1:332)|154|(1:156)(15:303|(1:305)(1:331)|306|(1:308)(1:330)|309|(1:311)(1:329)|312|(1:314)(1:328)|315|(1:317)(1:327)|318|(1:320)(1:326)|321|(1:323)(1:325)|324))|157|(1:159)|160|(1:162)(1:302)|(34:166|(4:169|(3:171|172|(3:174|175|(3:177|178|180)(1:292))(1:294))(1:299)|293|167)|300|181|(1:183)|(1:185)|186|(1:188)|189|(2:193|(4:195|(1:197)|198|(28:206|(1:208)(1:290)|209|(1:211)|212|213|(2:215|(1:217))|218|(3:220|(1:222)|223)(1:289)|224|(1:228)|229|(1:231)|232|(4:235|(2:241|242)|243|233)|247|248|249|250|251|(2:252|(2:254|(1:256)(1:272))(3:273|274|(1:279)(1:278)))|258|259|260|(1:262)(2:267|268)|263|264|265)))|291|213|(0)|218|(0)(0)|224|(2:226|228)|229|(0)|232|(1:233)|247|248|249|250|251|(3:252|(0)(0)|272)|258|259|260|(0)(0)|263|264|265)|301|(0)|186|(0)|189|(3:191|193|(0))|291|213|(0)|218|(0)(0)|224|(0)|229|(0)|232|(1:233)|247|248|249|250|251|(3:252|(0)(0)|272)|258|259|260|(0)(0)|263|264|265) */
    /* JADX WARN: Code restructure failed: missing block: B:257:0x0a77, code lost:
    
        r31 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:269:0x0b28, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:271:0x0b30, code lost:
    
        r2.f62917a.a().o().c("Error storing raw event. appId", com.google.android.gms.measurement.internal.B2.x(r4.f62586a), r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:286:0x0b46, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:288:0x0b63, code lost:
    
        a().o().c("Data loss. Failed to insert raw event metadata. appId", com.google.android.gms.measurement.internal.B2.x(r3.D()), r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:385:0x0298, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:387:0x029a, code lost:
    
        r8.f62917a.a().o().c("Error pruning currencies. appId", com.google.android.gms.measurement.internal.B2.x(r15), r0);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0529 A[Catch: all -> 0x0178, TryCatch #7 {all -> 0x0178, blocks: (B:42:0x0157, B:45:0x0166, B:47:0x016e, B:50:0x017c, B:57:0x0308, B:60:0x033b, B:62:0x037e, B:64:0x0385, B:65:0x039c, B:70:0x03a9, B:72:0x03c1, B:74:0x03c8, B:75:0x03df, B:78:0x0403, B:82:0x0426, B:83:0x043d, B:84:0x0446, B:87:0x0465, B:88:0x047e, B:90:0x0486, B:92:0x0492, B:94:0x0498, B:95:0x049f, B:97:0x04ac, B:99:0x04b4, B:101:0x04bc, B:104:0x04c6, B:107:0x04d2, B:109:0x04df, B:112:0x0504, B:116:0x0529, B:117:0x053e, B:119:0x056a, B:122:0x0581, B:123:0x05bd, B:124:0x05e5, B:126:0x061d, B:127:0x0620, B:129:0x0628, B:130:0x062b, B:132:0x0633, B:133:0x0636, B:135:0x063e, B:136:0x0641, B:138:0x064a, B:139:0x064e, B:141:0x065b, B:142:0x065e, B:144:0x068a, B:146:0x0694, B:150:0x06ab, B:154:0x06b8, B:157:0x072f, B:159:0x0737, B:160:0x073a, B:162:0x075d, B:164:0x0768, B:166:0x0771, B:167:0x078b, B:169:0x0791, B:172:0x07a5, B:175:0x07b1, B:178:0x07be, B:297:0x07d8, B:181:0x07e8, B:185:0x07f2, B:186:0x07f5, B:188:0x0802, B:189:0x0807, B:191:0x0825, B:193:0x0829, B:195:0x0839, B:197:0x0844, B:198:0x084d, B:200:0x0857, B:202:0x0863, B:204:0x086d, B:206:0x0873, B:208:0x0883, B:209:0x0897, B:211:0x089d, B:212:0x08a6, B:213:0x08b7, B:215:0x08f3, B:217:0x08fd, B:218:0x0900, B:220:0x090a, B:222:0x0927, B:223:0x0932, B:224:0x096a, B:226:0x0972, B:228:0x097c, B:229:0x0989, B:231:0x0993, B:232:0x09a0, B:233:0x09a9, B:235:0x09af, B:237:0x09eb, B:239:0x09f5, B:241:0x0a07, B:248:0x0a0d, B:250:0x0a51, B:251:0x0a5c, B:252:0x0a67, B:254:0x0a6d, B:258:0x0ab8, B:260:0x0b03, B:262:0x0b14, B:263:0x0b78, B:268:0x0b2d, B:271:0x0b30, B:274:0x0a7a, B:276:0x0aa4, B:283:0x0b4b, B:284:0x0b62, B:288:0x0b63, B:302:0x0762, B:303:0x06c3, B:306:0x06cf, B:309:0x06dd, B:312:0x06eb, B:315:0x06f9, B:318:0x0707, B:321:0x0713, B:324:0x0720, B:334:0x05d9, B:338:0x0511, B:343:0x031c, B:344:0x0323, B:346:0x0329, B:349:0x0335, B:354:0x0199, B:356:0x01a7, B:358:0x01bc, B:363:0x01dc, B:366:0x0212, B:368:0x0218, B:370:0x0226, B:372:0x0234, B:374:0x0243, B:376:0x02c6, B:378:0x02d0, B:380:0x026d, B:382:0x0286, B:383:0x02ad, B:387:0x029a, B:389:0x01e8, B:391:0x0206), top: B:41:0x0157, inners: #0, #1, #2, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x056a A[Catch: all -> 0x0178, TryCatch #7 {all -> 0x0178, blocks: (B:42:0x0157, B:45:0x0166, B:47:0x016e, B:50:0x017c, B:57:0x0308, B:60:0x033b, B:62:0x037e, B:64:0x0385, B:65:0x039c, B:70:0x03a9, B:72:0x03c1, B:74:0x03c8, B:75:0x03df, B:78:0x0403, B:82:0x0426, B:83:0x043d, B:84:0x0446, B:87:0x0465, B:88:0x047e, B:90:0x0486, B:92:0x0492, B:94:0x0498, B:95:0x049f, B:97:0x04ac, B:99:0x04b4, B:101:0x04bc, B:104:0x04c6, B:107:0x04d2, B:109:0x04df, B:112:0x0504, B:116:0x0529, B:117:0x053e, B:119:0x056a, B:122:0x0581, B:123:0x05bd, B:124:0x05e5, B:126:0x061d, B:127:0x0620, B:129:0x0628, B:130:0x062b, B:132:0x0633, B:133:0x0636, B:135:0x063e, B:136:0x0641, B:138:0x064a, B:139:0x064e, B:141:0x065b, B:142:0x065e, B:144:0x068a, B:146:0x0694, B:150:0x06ab, B:154:0x06b8, B:157:0x072f, B:159:0x0737, B:160:0x073a, B:162:0x075d, B:164:0x0768, B:166:0x0771, B:167:0x078b, B:169:0x0791, B:172:0x07a5, B:175:0x07b1, B:178:0x07be, B:297:0x07d8, B:181:0x07e8, B:185:0x07f2, B:186:0x07f5, B:188:0x0802, B:189:0x0807, B:191:0x0825, B:193:0x0829, B:195:0x0839, B:197:0x0844, B:198:0x084d, B:200:0x0857, B:202:0x0863, B:204:0x086d, B:206:0x0873, B:208:0x0883, B:209:0x0897, B:211:0x089d, B:212:0x08a6, B:213:0x08b7, B:215:0x08f3, B:217:0x08fd, B:218:0x0900, B:220:0x090a, B:222:0x0927, B:223:0x0932, B:224:0x096a, B:226:0x0972, B:228:0x097c, B:229:0x0989, B:231:0x0993, B:232:0x09a0, B:233:0x09a9, B:235:0x09af, B:237:0x09eb, B:239:0x09f5, B:241:0x0a07, B:248:0x0a0d, B:250:0x0a51, B:251:0x0a5c, B:252:0x0a67, B:254:0x0a6d, B:258:0x0ab8, B:260:0x0b03, B:262:0x0b14, B:263:0x0b78, B:268:0x0b2d, B:271:0x0b30, B:274:0x0a7a, B:276:0x0aa4, B:283:0x0b4b, B:284:0x0b62, B:288:0x0b63, B:302:0x0762, B:303:0x06c3, B:306:0x06cf, B:309:0x06dd, B:312:0x06eb, B:315:0x06f9, B:318:0x0707, B:321:0x0713, B:324:0x0720, B:334:0x05d9, B:338:0x0511, B:343:0x031c, B:344:0x0323, B:346:0x0329, B:349:0x0335, B:354:0x0199, B:356:0x01a7, B:358:0x01bc, B:363:0x01dc, B:366:0x0212, B:368:0x0218, B:370:0x0226, B:372:0x0234, B:374:0x0243, B:376:0x02c6, B:378:0x02d0, B:380:0x026d, B:382:0x0286, B:383:0x02ad, B:387:0x029a, B:389:0x01e8, B:391:0x0206), top: B:41:0x0157, inners: #0, #1, #2, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x061d A[Catch: all -> 0x0178, TryCatch #7 {all -> 0x0178, blocks: (B:42:0x0157, B:45:0x0166, B:47:0x016e, B:50:0x017c, B:57:0x0308, B:60:0x033b, B:62:0x037e, B:64:0x0385, B:65:0x039c, B:70:0x03a9, B:72:0x03c1, B:74:0x03c8, B:75:0x03df, B:78:0x0403, B:82:0x0426, B:83:0x043d, B:84:0x0446, B:87:0x0465, B:88:0x047e, B:90:0x0486, B:92:0x0492, B:94:0x0498, B:95:0x049f, B:97:0x04ac, B:99:0x04b4, B:101:0x04bc, B:104:0x04c6, B:107:0x04d2, B:109:0x04df, B:112:0x0504, B:116:0x0529, B:117:0x053e, B:119:0x056a, B:122:0x0581, B:123:0x05bd, B:124:0x05e5, B:126:0x061d, B:127:0x0620, B:129:0x0628, B:130:0x062b, B:132:0x0633, B:133:0x0636, B:135:0x063e, B:136:0x0641, B:138:0x064a, B:139:0x064e, B:141:0x065b, B:142:0x065e, B:144:0x068a, B:146:0x0694, B:150:0x06ab, B:154:0x06b8, B:157:0x072f, B:159:0x0737, B:160:0x073a, B:162:0x075d, B:164:0x0768, B:166:0x0771, B:167:0x078b, B:169:0x0791, B:172:0x07a5, B:175:0x07b1, B:178:0x07be, B:297:0x07d8, B:181:0x07e8, B:185:0x07f2, B:186:0x07f5, B:188:0x0802, B:189:0x0807, B:191:0x0825, B:193:0x0829, B:195:0x0839, B:197:0x0844, B:198:0x084d, B:200:0x0857, B:202:0x0863, B:204:0x086d, B:206:0x0873, B:208:0x0883, B:209:0x0897, B:211:0x089d, B:212:0x08a6, B:213:0x08b7, B:215:0x08f3, B:217:0x08fd, B:218:0x0900, B:220:0x090a, B:222:0x0927, B:223:0x0932, B:224:0x096a, B:226:0x0972, B:228:0x097c, B:229:0x0989, B:231:0x0993, B:232:0x09a0, B:233:0x09a9, B:235:0x09af, B:237:0x09eb, B:239:0x09f5, B:241:0x0a07, B:248:0x0a0d, B:250:0x0a51, B:251:0x0a5c, B:252:0x0a67, B:254:0x0a6d, B:258:0x0ab8, B:260:0x0b03, B:262:0x0b14, B:263:0x0b78, B:268:0x0b2d, B:271:0x0b30, B:274:0x0a7a, B:276:0x0aa4, B:283:0x0b4b, B:284:0x0b62, B:288:0x0b63, B:302:0x0762, B:303:0x06c3, B:306:0x06cf, B:309:0x06dd, B:312:0x06eb, B:315:0x06f9, B:318:0x0707, B:321:0x0713, B:324:0x0720, B:334:0x05d9, B:338:0x0511, B:343:0x031c, B:344:0x0323, B:346:0x0329, B:349:0x0335, B:354:0x0199, B:356:0x01a7, B:358:0x01bc, B:363:0x01dc, B:366:0x0212, B:368:0x0218, B:370:0x0226, B:372:0x0234, B:374:0x0243, B:376:0x02c6, B:378:0x02d0, B:380:0x026d, B:382:0x0286, B:383:0x02ad, B:387:0x029a, B:389:0x01e8, B:391:0x0206), top: B:41:0x0157, inners: #0, #1, #2, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0628 A[Catch: all -> 0x0178, TryCatch #7 {all -> 0x0178, blocks: (B:42:0x0157, B:45:0x0166, B:47:0x016e, B:50:0x017c, B:57:0x0308, B:60:0x033b, B:62:0x037e, B:64:0x0385, B:65:0x039c, B:70:0x03a9, B:72:0x03c1, B:74:0x03c8, B:75:0x03df, B:78:0x0403, B:82:0x0426, B:83:0x043d, B:84:0x0446, B:87:0x0465, B:88:0x047e, B:90:0x0486, B:92:0x0492, B:94:0x0498, B:95:0x049f, B:97:0x04ac, B:99:0x04b4, B:101:0x04bc, B:104:0x04c6, B:107:0x04d2, B:109:0x04df, B:112:0x0504, B:116:0x0529, B:117:0x053e, B:119:0x056a, B:122:0x0581, B:123:0x05bd, B:124:0x05e5, B:126:0x061d, B:127:0x0620, B:129:0x0628, B:130:0x062b, B:132:0x0633, B:133:0x0636, B:135:0x063e, B:136:0x0641, B:138:0x064a, B:139:0x064e, B:141:0x065b, B:142:0x065e, B:144:0x068a, B:146:0x0694, B:150:0x06ab, B:154:0x06b8, B:157:0x072f, B:159:0x0737, B:160:0x073a, B:162:0x075d, B:164:0x0768, B:166:0x0771, B:167:0x078b, B:169:0x0791, B:172:0x07a5, B:175:0x07b1, B:178:0x07be, B:297:0x07d8, B:181:0x07e8, B:185:0x07f2, B:186:0x07f5, B:188:0x0802, B:189:0x0807, B:191:0x0825, B:193:0x0829, B:195:0x0839, B:197:0x0844, B:198:0x084d, B:200:0x0857, B:202:0x0863, B:204:0x086d, B:206:0x0873, B:208:0x0883, B:209:0x0897, B:211:0x089d, B:212:0x08a6, B:213:0x08b7, B:215:0x08f3, B:217:0x08fd, B:218:0x0900, B:220:0x090a, B:222:0x0927, B:223:0x0932, B:224:0x096a, B:226:0x0972, B:228:0x097c, B:229:0x0989, B:231:0x0993, B:232:0x09a0, B:233:0x09a9, B:235:0x09af, B:237:0x09eb, B:239:0x09f5, B:241:0x0a07, B:248:0x0a0d, B:250:0x0a51, B:251:0x0a5c, B:252:0x0a67, B:254:0x0a6d, B:258:0x0ab8, B:260:0x0b03, B:262:0x0b14, B:263:0x0b78, B:268:0x0b2d, B:271:0x0b30, B:274:0x0a7a, B:276:0x0aa4, B:283:0x0b4b, B:284:0x0b62, B:288:0x0b63, B:302:0x0762, B:303:0x06c3, B:306:0x06cf, B:309:0x06dd, B:312:0x06eb, B:315:0x06f9, B:318:0x0707, B:321:0x0713, B:324:0x0720, B:334:0x05d9, B:338:0x0511, B:343:0x031c, B:344:0x0323, B:346:0x0329, B:349:0x0335, B:354:0x0199, B:356:0x01a7, B:358:0x01bc, B:363:0x01dc, B:366:0x0212, B:368:0x0218, B:370:0x0226, B:372:0x0234, B:374:0x0243, B:376:0x02c6, B:378:0x02d0, B:380:0x026d, B:382:0x0286, B:383:0x02ad, B:387:0x029a, B:389:0x01e8, B:391:0x0206), top: B:41:0x0157, inners: #0, #1, #2, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0633 A[Catch: all -> 0x0178, TryCatch #7 {all -> 0x0178, blocks: (B:42:0x0157, B:45:0x0166, B:47:0x016e, B:50:0x017c, B:57:0x0308, B:60:0x033b, B:62:0x037e, B:64:0x0385, B:65:0x039c, B:70:0x03a9, B:72:0x03c1, B:74:0x03c8, B:75:0x03df, B:78:0x0403, B:82:0x0426, B:83:0x043d, B:84:0x0446, B:87:0x0465, B:88:0x047e, B:90:0x0486, B:92:0x0492, B:94:0x0498, B:95:0x049f, B:97:0x04ac, B:99:0x04b4, B:101:0x04bc, B:104:0x04c6, B:107:0x04d2, B:109:0x04df, B:112:0x0504, B:116:0x0529, B:117:0x053e, B:119:0x056a, B:122:0x0581, B:123:0x05bd, B:124:0x05e5, B:126:0x061d, B:127:0x0620, B:129:0x0628, B:130:0x062b, B:132:0x0633, B:133:0x0636, B:135:0x063e, B:136:0x0641, B:138:0x064a, B:139:0x064e, B:141:0x065b, B:142:0x065e, B:144:0x068a, B:146:0x0694, B:150:0x06ab, B:154:0x06b8, B:157:0x072f, B:159:0x0737, B:160:0x073a, B:162:0x075d, B:164:0x0768, B:166:0x0771, B:167:0x078b, B:169:0x0791, B:172:0x07a5, B:175:0x07b1, B:178:0x07be, B:297:0x07d8, B:181:0x07e8, B:185:0x07f2, B:186:0x07f5, B:188:0x0802, B:189:0x0807, B:191:0x0825, B:193:0x0829, B:195:0x0839, B:197:0x0844, B:198:0x084d, B:200:0x0857, B:202:0x0863, B:204:0x086d, B:206:0x0873, B:208:0x0883, B:209:0x0897, B:211:0x089d, B:212:0x08a6, B:213:0x08b7, B:215:0x08f3, B:217:0x08fd, B:218:0x0900, B:220:0x090a, B:222:0x0927, B:223:0x0932, B:224:0x096a, B:226:0x0972, B:228:0x097c, B:229:0x0989, B:231:0x0993, B:232:0x09a0, B:233:0x09a9, B:235:0x09af, B:237:0x09eb, B:239:0x09f5, B:241:0x0a07, B:248:0x0a0d, B:250:0x0a51, B:251:0x0a5c, B:252:0x0a67, B:254:0x0a6d, B:258:0x0ab8, B:260:0x0b03, B:262:0x0b14, B:263:0x0b78, B:268:0x0b2d, B:271:0x0b30, B:274:0x0a7a, B:276:0x0aa4, B:283:0x0b4b, B:284:0x0b62, B:288:0x0b63, B:302:0x0762, B:303:0x06c3, B:306:0x06cf, B:309:0x06dd, B:312:0x06eb, B:315:0x06f9, B:318:0x0707, B:321:0x0713, B:324:0x0720, B:334:0x05d9, B:338:0x0511, B:343:0x031c, B:344:0x0323, B:346:0x0329, B:349:0x0335, B:354:0x0199, B:356:0x01a7, B:358:0x01bc, B:363:0x01dc, B:366:0x0212, B:368:0x0218, B:370:0x0226, B:372:0x0234, B:374:0x0243, B:376:0x02c6, B:378:0x02d0, B:380:0x026d, B:382:0x0286, B:383:0x02ad, B:387:0x029a, B:389:0x01e8, B:391:0x0206), top: B:41:0x0157, inners: #0, #1, #2, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:135:0x063e A[Catch: all -> 0x0178, TryCatch #7 {all -> 0x0178, blocks: (B:42:0x0157, B:45:0x0166, B:47:0x016e, B:50:0x017c, B:57:0x0308, B:60:0x033b, B:62:0x037e, B:64:0x0385, B:65:0x039c, B:70:0x03a9, B:72:0x03c1, B:74:0x03c8, B:75:0x03df, B:78:0x0403, B:82:0x0426, B:83:0x043d, B:84:0x0446, B:87:0x0465, B:88:0x047e, B:90:0x0486, B:92:0x0492, B:94:0x0498, B:95:0x049f, B:97:0x04ac, B:99:0x04b4, B:101:0x04bc, B:104:0x04c6, B:107:0x04d2, B:109:0x04df, B:112:0x0504, B:116:0x0529, B:117:0x053e, B:119:0x056a, B:122:0x0581, B:123:0x05bd, B:124:0x05e5, B:126:0x061d, B:127:0x0620, B:129:0x0628, B:130:0x062b, B:132:0x0633, B:133:0x0636, B:135:0x063e, B:136:0x0641, B:138:0x064a, B:139:0x064e, B:141:0x065b, B:142:0x065e, B:144:0x068a, B:146:0x0694, B:150:0x06ab, B:154:0x06b8, B:157:0x072f, B:159:0x0737, B:160:0x073a, B:162:0x075d, B:164:0x0768, B:166:0x0771, B:167:0x078b, B:169:0x0791, B:172:0x07a5, B:175:0x07b1, B:178:0x07be, B:297:0x07d8, B:181:0x07e8, B:185:0x07f2, B:186:0x07f5, B:188:0x0802, B:189:0x0807, B:191:0x0825, B:193:0x0829, B:195:0x0839, B:197:0x0844, B:198:0x084d, B:200:0x0857, B:202:0x0863, B:204:0x086d, B:206:0x0873, B:208:0x0883, B:209:0x0897, B:211:0x089d, B:212:0x08a6, B:213:0x08b7, B:215:0x08f3, B:217:0x08fd, B:218:0x0900, B:220:0x090a, B:222:0x0927, B:223:0x0932, B:224:0x096a, B:226:0x0972, B:228:0x097c, B:229:0x0989, B:231:0x0993, B:232:0x09a0, B:233:0x09a9, B:235:0x09af, B:237:0x09eb, B:239:0x09f5, B:241:0x0a07, B:248:0x0a0d, B:250:0x0a51, B:251:0x0a5c, B:252:0x0a67, B:254:0x0a6d, B:258:0x0ab8, B:260:0x0b03, B:262:0x0b14, B:263:0x0b78, B:268:0x0b2d, B:271:0x0b30, B:274:0x0a7a, B:276:0x0aa4, B:283:0x0b4b, B:284:0x0b62, B:288:0x0b63, B:302:0x0762, B:303:0x06c3, B:306:0x06cf, B:309:0x06dd, B:312:0x06eb, B:315:0x06f9, B:318:0x0707, B:321:0x0713, B:324:0x0720, B:334:0x05d9, B:338:0x0511, B:343:0x031c, B:344:0x0323, B:346:0x0329, B:349:0x0335, B:354:0x0199, B:356:0x01a7, B:358:0x01bc, B:363:0x01dc, B:366:0x0212, B:368:0x0218, B:370:0x0226, B:372:0x0234, B:374:0x0243, B:376:0x02c6, B:378:0x02d0, B:380:0x026d, B:382:0x0286, B:383:0x02ad, B:387:0x029a, B:389:0x01e8, B:391:0x0206), top: B:41:0x0157, inners: #0, #1, #2, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:138:0x064a A[Catch: all -> 0x0178, TryCatch #7 {all -> 0x0178, blocks: (B:42:0x0157, B:45:0x0166, B:47:0x016e, B:50:0x017c, B:57:0x0308, B:60:0x033b, B:62:0x037e, B:64:0x0385, B:65:0x039c, B:70:0x03a9, B:72:0x03c1, B:74:0x03c8, B:75:0x03df, B:78:0x0403, B:82:0x0426, B:83:0x043d, B:84:0x0446, B:87:0x0465, B:88:0x047e, B:90:0x0486, B:92:0x0492, B:94:0x0498, B:95:0x049f, B:97:0x04ac, B:99:0x04b4, B:101:0x04bc, B:104:0x04c6, B:107:0x04d2, B:109:0x04df, B:112:0x0504, B:116:0x0529, B:117:0x053e, B:119:0x056a, B:122:0x0581, B:123:0x05bd, B:124:0x05e5, B:126:0x061d, B:127:0x0620, B:129:0x0628, B:130:0x062b, B:132:0x0633, B:133:0x0636, B:135:0x063e, B:136:0x0641, B:138:0x064a, B:139:0x064e, B:141:0x065b, B:142:0x065e, B:144:0x068a, B:146:0x0694, B:150:0x06ab, B:154:0x06b8, B:157:0x072f, B:159:0x0737, B:160:0x073a, B:162:0x075d, B:164:0x0768, B:166:0x0771, B:167:0x078b, B:169:0x0791, B:172:0x07a5, B:175:0x07b1, B:178:0x07be, B:297:0x07d8, B:181:0x07e8, B:185:0x07f2, B:186:0x07f5, B:188:0x0802, B:189:0x0807, B:191:0x0825, B:193:0x0829, B:195:0x0839, B:197:0x0844, B:198:0x084d, B:200:0x0857, B:202:0x0863, B:204:0x086d, B:206:0x0873, B:208:0x0883, B:209:0x0897, B:211:0x089d, B:212:0x08a6, B:213:0x08b7, B:215:0x08f3, B:217:0x08fd, B:218:0x0900, B:220:0x090a, B:222:0x0927, B:223:0x0932, B:224:0x096a, B:226:0x0972, B:228:0x097c, B:229:0x0989, B:231:0x0993, B:232:0x09a0, B:233:0x09a9, B:235:0x09af, B:237:0x09eb, B:239:0x09f5, B:241:0x0a07, B:248:0x0a0d, B:250:0x0a51, B:251:0x0a5c, B:252:0x0a67, B:254:0x0a6d, B:258:0x0ab8, B:260:0x0b03, B:262:0x0b14, B:263:0x0b78, B:268:0x0b2d, B:271:0x0b30, B:274:0x0a7a, B:276:0x0aa4, B:283:0x0b4b, B:284:0x0b62, B:288:0x0b63, B:302:0x0762, B:303:0x06c3, B:306:0x06cf, B:309:0x06dd, B:312:0x06eb, B:315:0x06f9, B:318:0x0707, B:321:0x0713, B:324:0x0720, B:334:0x05d9, B:338:0x0511, B:343:0x031c, B:344:0x0323, B:346:0x0329, B:349:0x0335, B:354:0x0199, B:356:0x01a7, B:358:0x01bc, B:363:0x01dc, B:366:0x0212, B:368:0x0218, B:370:0x0226, B:372:0x0234, B:374:0x0243, B:376:0x02c6, B:378:0x02d0, B:380:0x026d, B:382:0x0286, B:383:0x02ad, B:387:0x029a, B:389:0x01e8, B:391:0x0206), top: B:41:0x0157, inners: #0, #1, #2, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x065b A[Catch: all -> 0x0178, TryCatch #7 {all -> 0x0178, blocks: (B:42:0x0157, B:45:0x0166, B:47:0x016e, B:50:0x017c, B:57:0x0308, B:60:0x033b, B:62:0x037e, B:64:0x0385, B:65:0x039c, B:70:0x03a9, B:72:0x03c1, B:74:0x03c8, B:75:0x03df, B:78:0x0403, B:82:0x0426, B:83:0x043d, B:84:0x0446, B:87:0x0465, B:88:0x047e, B:90:0x0486, B:92:0x0492, B:94:0x0498, B:95:0x049f, B:97:0x04ac, B:99:0x04b4, B:101:0x04bc, B:104:0x04c6, B:107:0x04d2, B:109:0x04df, B:112:0x0504, B:116:0x0529, B:117:0x053e, B:119:0x056a, B:122:0x0581, B:123:0x05bd, B:124:0x05e5, B:126:0x061d, B:127:0x0620, B:129:0x0628, B:130:0x062b, B:132:0x0633, B:133:0x0636, B:135:0x063e, B:136:0x0641, B:138:0x064a, B:139:0x064e, B:141:0x065b, B:142:0x065e, B:144:0x068a, B:146:0x0694, B:150:0x06ab, B:154:0x06b8, B:157:0x072f, B:159:0x0737, B:160:0x073a, B:162:0x075d, B:164:0x0768, B:166:0x0771, B:167:0x078b, B:169:0x0791, B:172:0x07a5, B:175:0x07b1, B:178:0x07be, B:297:0x07d8, B:181:0x07e8, B:185:0x07f2, B:186:0x07f5, B:188:0x0802, B:189:0x0807, B:191:0x0825, B:193:0x0829, B:195:0x0839, B:197:0x0844, B:198:0x084d, B:200:0x0857, B:202:0x0863, B:204:0x086d, B:206:0x0873, B:208:0x0883, B:209:0x0897, B:211:0x089d, B:212:0x08a6, B:213:0x08b7, B:215:0x08f3, B:217:0x08fd, B:218:0x0900, B:220:0x090a, B:222:0x0927, B:223:0x0932, B:224:0x096a, B:226:0x0972, B:228:0x097c, B:229:0x0989, B:231:0x0993, B:232:0x09a0, B:233:0x09a9, B:235:0x09af, B:237:0x09eb, B:239:0x09f5, B:241:0x0a07, B:248:0x0a0d, B:250:0x0a51, B:251:0x0a5c, B:252:0x0a67, B:254:0x0a6d, B:258:0x0ab8, B:260:0x0b03, B:262:0x0b14, B:263:0x0b78, B:268:0x0b2d, B:271:0x0b30, B:274:0x0a7a, B:276:0x0aa4, B:283:0x0b4b, B:284:0x0b62, B:288:0x0b63, B:302:0x0762, B:303:0x06c3, B:306:0x06cf, B:309:0x06dd, B:312:0x06eb, B:315:0x06f9, B:318:0x0707, B:321:0x0713, B:324:0x0720, B:334:0x05d9, B:338:0x0511, B:343:0x031c, B:344:0x0323, B:346:0x0329, B:349:0x0335, B:354:0x0199, B:356:0x01a7, B:358:0x01bc, B:363:0x01dc, B:366:0x0212, B:368:0x0218, B:370:0x0226, B:372:0x0234, B:374:0x0243, B:376:0x02c6, B:378:0x02d0, B:380:0x026d, B:382:0x0286, B:383:0x02ad, B:387:0x029a, B:389:0x01e8, B:391:0x0206), top: B:41:0x0157, inners: #0, #1, #2, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0737 A[Catch: all -> 0x0178, TryCatch #7 {all -> 0x0178, blocks: (B:42:0x0157, B:45:0x0166, B:47:0x016e, B:50:0x017c, B:57:0x0308, B:60:0x033b, B:62:0x037e, B:64:0x0385, B:65:0x039c, B:70:0x03a9, B:72:0x03c1, B:74:0x03c8, B:75:0x03df, B:78:0x0403, B:82:0x0426, B:83:0x043d, B:84:0x0446, B:87:0x0465, B:88:0x047e, B:90:0x0486, B:92:0x0492, B:94:0x0498, B:95:0x049f, B:97:0x04ac, B:99:0x04b4, B:101:0x04bc, B:104:0x04c6, B:107:0x04d2, B:109:0x04df, B:112:0x0504, B:116:0x0529, B:117:0x053e, B:119:0x056a, B:122:0x0581, B:123:0x05bd, B:124:0x05e5, B:126:0x061d, B:127:0x0620, B:129:0x0628, B:130:0x062b, B:132:0x0633, B:133:0x0636, B:135:0x063e, B:136:0x0641, B:138:0x064a, B:139:0x064e, B:141:0x065b, B:142:0x065e, B:144:0x068a, B:146:0x0694, B:150:0x06ab, B:154:0x06b8, B:157:0x072f, B:159:0x0737, B:160:0x073a, B:162:0x075d, B:164:0x0768, B:166:0x0771, B:167:0x078b, B:169:0x0791, B:172:0x07a5, B:175:0x07b1, B:178:0x07be, B:297:0x07d8, B:181:0x07e8, B:185:0x07f2, B:186:0x07f5, B:188:0x0802, B:189:0x0807, B:191:0x0825, B:193:0x0829, B:195:0x0839, B:197:0x0844, B:198:0x084d, B:200:0x0857, B:202:0x0863, B:204:0x086d, B:206:0x0873, B:208:0x0883, B:209:0x0897, B:211:0x089d, B:212:0x08a6, B:213:0x08b7, B:215:0x08f3, B:217:0x08fd, B:218:0x0900, B:220:0x090a, B:222:0x0927, B:223:0x0932, B:224:0x096a, B:226:0x0972, B:228:0x097c, B:229:0x0989, B:231:0x0993, B:232:0x09a0, B:233:0x09a9, B:235:0x09af, B:237:0x09eb, B:239:0x09f5, B:241:0x0a07, B:248:0x0a0d, B:250:0x0a51, B:251:0x0a5c, B:252:0x0a67, B:254:0x0a6d, B:258:0x0ab8, B:260:0x0b03, B:262:0x0b14, B:263:0x0b78, B:268:0x0b2d, B:271:0x0b30, B:274:0x0a7a, B:276:0x0aa4, B:283:0x0b4b, B:284:0x0b62, B:288:0x0b63, B:302:0x0762, B:303:0x06c3, B:306:0x06cf, B:309:0x06dd, B:312:0x06eb, B:315:0x06f9, B:318:0x0707, B:321:0x0713, B:324:0x0720, B:334:0x05d9, B:338:0x0511, B:343:0x031c, B:344:0x0323, B:346:0x0329, B:349:0x0335, B:354:0x0199, B:356:0x01a7, B:358:0x01bc, B:363:0x01dc, B:366:0x0212, B:368:0x0218, B:370:0x0226, B:372:0x0234, B:374:0x0243, B:376:0x02c6, B:378:0x02d0, B:380:0x026d, B:382:0x0286, B:383:0x02ad, B:387:0x029a, B:389:0x01e8, B:391:0x0206), top: B:41:0x0157, inners: #0, #1, #2, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:162:0x075d A[Catch: all -> 0x0178, TryCatch #7 {all -> 0x0178, blocks: (B:42:0x0157, B:45:0x0166, B:47:0x016e, B:50:0x017c, B:57:0x0308, B:60:0x033b, B:62:0x037e, B:64:0x0385, B:65:0x039c, B:70:0x03a9, B:72:0x03c1, B:74:0x03c8, B:75:0x03df, B:78:0x0403, B:82:0x0426, B:83:0x043d, B:84:0x0446, B:87:0x0465, B:88:0x047e, B:90:0x0486, B:92:0x0492, B:94:0x0498, B:95:0x049f, B:97:0x04ac, B:99:0x04b4, B:101:0x04bc, B:104:0x04c6, B:107:0x04d2, B:109:0x04df, B:112:0x0504, B:116:0x0529, B:117:0x053e, B:119:0x056a, B:122:0x0581, B:123:0x05bd, B:124:0x05e5, B:126:0x061d, B:127:0x0620, B:129:0x0628, B:130:0x062b, B:132:0x0633, B:133:0x0636, B:135:0x063e, B:136:0x0641, B:138:0x064a, B:139:0x064e, B:141:0x065b, B:142:0x065e, B:144:0x068a, B:146:0x0694, B:150:0x06ab, B:154:0x06b8, B:157:0x072f, B:159:0x0737, B:160:0x073a, B:162:0x075d, B:164:0x0768, B:166:0x0771, B:167:0x078b, B:169:0x0791, B:172:0x07a5, B:175:0x07b1, B:178:0x07be, B:297:0x07d8, B:181:0x07e8, B:185:0x07f2, B:186:0x07f5, B:188:0x0802, B:189:0x0807, B:191:0x0825, B:193:0x0829, B:195:0x0839, B:197:0x0844, B:198:0x084d, B:200:0x0857, B:202:0x0863, B:204:0x086d, B:206:0x0873, B:208:0x0883, B:209:0x0897, B:211:0x089d, B:212:0x08a6, B:213:0x08b7, B:215:0x08f3, B:217:0x08fd, B:218:0x0900, B:220:0x090a, B:222:0x0927, B:223:0x0932, B:224:0x096a, B:226:0x0972, B:228:0x097c, B:229:0x0989, B:231:0x0993, B:232:0x09a0, B:233:0x09a9, B:235:0x09af, B:237:0x09eb, B:239:0x09f5, B:241:0x0a07, B:248:0x0a0d, B:250:0x0a51, B:251:0x0a5c, B:252:0x0a67, B:254:0x0a6d, B:258:0x0ab8, B:260:0x0b03, B:262:0x0b14, B:263:0x0b78, B:268:0x0b2d, B:271:0x0b30, B:274:0x0a7a, B:276:0x0aa4, B:283:0x0b4b, B:284:0x0b62, B:288:0x0b63, B:302:0x0762, B:303:0x06c3, B:306:0x06cf, B:309:0x06dd, B:312:0x06eb, B:315:0x06f9, B:318:0x0707, B:321:0x0713, B:324:0x0720, B:334:0x05d9, B:338:0x0511, B:343:0x031c, B:344:0x0323, B:346:0x0329, B:349:0x0335, B:354:0x0199, B:356:0x01a7, B:358:0x01bc, B:363:0x01dc, B:366:0x0212, B:368:0x0218, B:370:0x0226, B:372:0x0234, B:374:0x0243, B:376:0x02c6, B:378:0x02d0, B:380:0x026d, B:382:0x0286, B:383:0x02ad, B:387:0x029a, B:389:0x01e8, B:391:0x0206), top: B:41:0x0157, inners: #0, #1, #2, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0791 A[Catch: all -> 0x0178, TRY_LEAVE, TryCatch #7 {all -> 0x0178, blocks: (B:42:0x0157, B:45:0x0166, B:47:0x016e, B:50:0x017c, B:57:0x0308, B:60:0x033b, B:62:0x037e, B:64:0x0385, B:65:0x039c, B:70:0x03a9, B:72:0x03c1, B:74:0x03c8, B:75:0x03df, B:78:0x0403, B:82:0x0426, B:83:0x043d, B:84:0x0446, B:87:0x0465, B:88:0x047e, B:90:0x0486, B:92:0x0492, B:94:0x0498, B:95:0x049f, B:97:0x04ac, B:99:0x04b4, B:101:0x04bc, B:104:0x04c6, B:107:0x04d2, B:109:0x04df, B:112:0x0504, B:116:0x0529, B:117:0x053e, B:119:0x056a, B:122:0x0581, B:123:0x05bd, B:124:0x05e5, B:126:0x061d, B:127:0x0620, B:129:0x0628, B:130:0x062b, B:132:0x0633, B:133:0x0636, B:135:0x063e, B:136:0x0641, B:138:0x064a, B:139:0x064e, B:141:0x065b, B:142:0x065e, B:144:0x068a, B:146:0x0694, B:150:0x06ab, B:154:0x06b8, B:157:0x072f, B:159:0x0737, B:160:0x073a, B:162:0x075d, B:164:0x0768, B:166:0x0771, B:167:0x078b, B:169:0x0791, B:172:0x07a5, B:175:0x07b1, B:178:0x07be, B:297:0x07d8, B:181:0x07e8, B:185:0x07f2, B:186:0x07f5, B:188:0x0802, B:189:0x0807, B:191:0x0825, B:193:0x0829, B:195:0x0839, B:197:0x0844, B:198:0x084d, B:200:0x0857, B:202:0x0863, B:204:0x086d, B:206:0x0873, B:208:0x0883, B:209:0x0897, B:211:0x089d, B:212:0x08a6, B:213:0x08b7, B:215:0x08f3, B:217:0x08fd, B:218:0x0900, B:220:0x090a, B:222:0x0927, B:223:0x0932, B:224:0x096a, B:226:0x0972, B:228:0x097c, B:229:0x0989, B:231:0x0993, B:232:0x09a0, B:233:0x09a9, B:235:0x09af, B:237:0x09eb, B:239:0x09f5, B:241:0x0a07, B:248:0x0a0d, B:250:0x0a51, B:251:0x0a5c, B:252:0x0a67, B:254:0x0a6d, B:258:0x0ab8, B:260:0x0b03, B:262:0x0b14, B:263:0x0b78, B:268:0x0b2d, B:271:0x0b30, B:274:0x0a7a, B:276:0x0aa4, B:283:0x0b4b, B:284:0x0b62, B:288:0x0b63, B:302:0x0762, B:303:0x06c3, B:306:0x06cf, B:309:0x06dd, B:312:0x06eb, B:315:0x06f9, B:318:0x0707, B:321:0x0713, B:324:0x0720, B:334:0x05d9, B:338:0x0511, B:343:0x031c, B:344:0x0323, B:346:0x0329, B:349:0x0335, B:354:0x0199, B:356:0x01a7, B:358:0x01bc, B:363:0x01dc, B:366:0x0212, B:368:0x0218, B:370:0x0226, B:372:0x0234, B:374:0x0243, B:376:0x02c6, B:378:0x02d0, B:380:0x026d, B:382:0x0286, B:383:0x02ad, B:387:0x029a, B:389:0x01e8, B:391:0x0206), top: B:41:0x0157, inners: #0, #1, #2, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:183:0x07ee  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x07f2 A[Catch: all -> 0x0178, TryCatch #7 {all -> 0x0178, blocks: (B:42:0x0157, B:45:0x0166, B:47:0x016e, B:50:0x017c, B:57:0x0308, B:60:0x033b, B:62:0x037e, B:64:0x0385, B:65:0x039c, B:70:0x03a9, B:72:0x03c1, B:74:0x03c8, B:75:0x03df, B:78:0x0403, B:82:0x0426, B:83:0x043d, B:84:0x0446, B:87:0x0465, B:88:0x047e, B:90:0x0486, B:92:0x0492, B:94:0x0498, B:95:0x049f, B:97:0x04ac, B:99:0x04b4, B:101:0x04bc, B:104:0x04c6, B:107:0x04d2, B:109:0x04df, B:112:0x0504, B:116:0x0529, B:117:0x053e, B:119:0x056a, B:122:0x0581, B:123:0x05bd, B:124:0x05e5, B:126:0x061d, B:127:0x0620, B:129:0x0628, B:130:0x062b, B:132:0x0633, B:133:0x0636, B:135:0x063e, B:136:0x0641, B:138:0x064a, B:139:0x064e, B:141:0x065b, B:142:0x065e, B:144:0x068a, B:146:0x0694, B:150:0x06ab, B:154:0x06b8, B:157:0x072f, B:159:0x0737, B:160:0x073a, B:162:0x075d, B:164:0x0768, B:166:0x0771, B:167:0x078b, B:169:0x0791, B:172:0x07a5, B:175:0x07b1, B:178:0x07be, B:297:0x07d8, B:181:0x07e8, B:185:0x07f2, B:186:0x07f5, B:188:0x0802, B:189:0x0807, B:191:0x0825, B:193:0x0829, B:195:0x0839, B:197:0x0844, B:198:0x084d, B:200:0x0857, B:202:0x0863, B:204:0x086d, B:206:0x0873, B:208:0x0883, B:209:0x0897, B:211:0x089d, B:212:0x08a6, B:213:0x08b7, B:215:0x08f3, B:217:0x08fd, B:218:0x0900, B:220:0x090a, B:222:0x0927, B:223:0x0932, B:224:0x096a, B:226:0x0972, B:228:0x097c, B:229:0x0989, B:231:0x0993, B:232:0x09a0, B:233:0x09a9, B:235:0x09af, B:237:0x09eb, B:239:0x09f5, B:241:0x0a07, B:248:0x0a0d, B:250:0x0a51, B:251:0x0a5c, B:252:0x0a67, B:254:0x0a6d, B:258:0x0ab8, B:260:0x0b03, B:262:0x0b14, B:263:0x0b78, B:268:0x0b2d, B:271:0x0b30, B:274:0x0a7a, B:276:0x0aa4, B:283:0x0b4b, B:284:0x0b62, B:288:0x0b63, B:302:0x0762, B:303:0x06c3, B:306:0x06cf, B:309:0x06dd, B:312:0x06eb, B:315:0x06f9, B:318:0x0707, B:321:0x0713, B:324:0x0720, B:334:0x05d9, B:338:0x0511, B:343:0x031c, B:344:0x0323, B:346:0x0329, B:349:0x0335, B:354:0x0199, B:356:0x01a7, B:358:0x01bc, B:363:0x01dc, B:366:0x0212, B:368:0x0218, B:370:0x0226, B:372:0x0234, B:374:0x0243, B:376:0x02c6, B:378:0x02d0, B:380:0x026d, B:382:0x0286, B:383:0x02ad, B:387:0x029a, B:389:0x01e8, B:391:0x0206), top: B:41:0x0157, inners: #0, #1, #2, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0802 A[Catch: all -> 0x0178, TryCatch #7 {all -> 0x0178, blocks: (B:42:0x0157, B:45:0x0166, B:47:0x016e, B:50:0x017c, B:57:0x0308, B:60:0x033b, B:62:0x037e, B:64:0x0385, B:65:0x039c, B:70:0x03a9, B:72:0x03c1, B:74:0x03c8, B:75:0x03df, B:78:0x0403, B:82:0x0426, B:83:0x043d, B:84:0x0446, B:87:0x0465, B:88:0x047e, B:90:0x0486, B:92:0x0492, B:94:0x0498, B:95:0x049f, B:97:0x04ac, B:99:0x04b4, B:101:0x04bc, B:104:0x04c6, B:107:0x04d2, B:109:0x04df, B:112:0x0504, B:116:0x0529, B:117:0x053e, B:119:0x056a, B:122:0x0581, B:123:0x05bd, B:124:0x05e5, B:126:0x061d, B:127:0x0620, B:129:0x0628, B:130:0x062b, B:132:0x0633, B:133:0x0636, B:135:0x063e, B:136:0x0641, B:138:0x064a, B:139:0x064e, B:141:0x065b, B:142:0x065e, B:144:0x068a, B:146:0x0694, B:150:0x06ab, B:154:0x06b8, B:157:0x072f, B:159:0x0737, B:160:0x073a, B:162:0x075d, B:164:0x0768, B:166:0x0771, B:167:0x078b, B:169:0x0791, B:172:0x07a5, B:175:0x07b1, B:178:0x07be, B:297:0x07d8, B:181:0x07e8, B:185:0x07f2, B:186:0x07f5, B:188:0x0802, B:189:0x0807, B:191:0x0825, B:193:0x0829, B:195:0x0839, B:197:0x0844, B:198:0x084d, B:200:0x0857, B:202:0x0863, B:204:0x086d, B:206:0x0873, B:208:0x0883, B:209:0x0897, B:211:0x089d, B:212:0x08a6, B:213:0x08b7, B:215:0x08f3, B:217:0x08fd, B:218:0x0900, B:220:0x090a, B:222:0x0927, B:223:0x0932, B:224:0x096a, B:226:0x0972, B:228:0x097c, B:229:0x0989, B:231:0x0993, B:232:0x09a0, B:233:0x09a9, B:235:0x09af, B:237:0x09eb, B:239:0x09f5, B:241:0x0a07, B:248:0x0a0d, B:250:0x0a51, B:251:0x0a5c, B:252:0x0a67, B:254:0x0a6d, B:258:0x0ab8, B:260:0x0b03, B:262:0x0b14, B:263:0x0b78, B:268:0x0b2d, B:271:0x0b30, B:274:0x0a7a, B:276:0x0aa4, B:283:0x0b4b, B:284:0x0b62, B:288:0x0b63, B:302:0x0762, B:303:0x06c3, B:306:0x06cf, B:309:0x06dd, B:312:0x06eb, B:315:0x06f9, B:318:0x0707, B:321:0x0713, B:324:0x0720, B:334:0x05d9, B:338:0x0511, B:343:0x031c, B:344:0x0323, B:346:0x0329, B:349:0x0335, B:354:0x0199, B:356:0x01a7, B:358:0x01bc, B:363:0x01dc, B:366:0x0212, B:368:0x0218, B:370:0x0226, B:372:0x0234, B:374:0x0243, B:376:0x02c6, B:378:0x02d0, B:380:0x026d, B:382:0x0286, B:383:0x02ad, B:387:0x029a, B:389:0x01e8, B:391:0x0206), top: B:41:0x0157, inners: #0, #1, #2, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0825 A[Catch: all -> 0x0178, TryCatch #7 {all -> 0x0178, blocks: (B:42:0x0157, B:45:0x0166, B:47:0x016e, B:50:0x017c, B:57:0x0308, B:60:0x033b, B:62:0x037e, B:64:0x0385, B:65:0x039c, B:70:0x03a9, B:72:0x03c1, B:74:0x03c8, B:75:0x03df, B:78:0x0403, B:82:0x0426, B:83:0x043d, B:84:0x0446, B:87:0x0465, B:88:0x047e, B:90:0x0486, B:92:0x0492, B:94:0x0498, B:95:0x049f, B:97:0x04ac, B:99:0x04b4, B:101:0x04bc, B:104:0x04c6, B:107:0x04d2, B:109:0x04df, B:112:0x0504, B:116:0x0529, B:117:0x053e, B:119:0x056a, B:122:0x0581, B:123:0x05bd, B:124:0x05e5, B:126:0x061d, B:127:0x0620, B:129:0x0628, B:130:0x062b, B:132:0x0633, B:133:0x0636, B:135:0x063e, B:136:0x0641, B:138:0x064a, B:139:0x064e, B:141:0x065b, B:142:0x065e, B:144:0x068a, B:146:0x0694, B:150:0x06ab, B:154:0x06b8, B:157:0x072f, B:159:0x0737, B:160:0x073a, B:162:0x075d, B:164:0x0768, B:166:0x0771, B:167:0x078b, B:169:0x0791, B:172:0x07a5, B:175:0x07b1, B:178:0x07be, B:297:0x07d8, B:181:0x07e8, B:185:0x07f2, B:186:0x07f5, B:188:0x0802, B:189:0x0807, B:191:0x0825, B:193:0x0829, B:195:0x0839, B:197:0x0844, B:198:0x084d, B:200:0x0857, B:202:0x0863, B:204:0x086d, B:206:0x0873, B:208:0x0883, B:209:0x0897, B:211:0x089d, B:212:0x08a6, B:213:0x08b7, B:215:0x08f3, B:217:0x08fd, B:218:0x0900, B:220:0x090a, B:222:0x0927, B:223:0x0932, B:224:0x096a, B:226:0x0972, B:228:0x097c, B:229:0x0989, B:231:0x0993, B:232:0x09a0, B:233:0x09a9, B:235:0x09af, B:237:0x09eb, B:239:0x09f5, B:241:0x0a07, B:248:0x0a0d, B:250:0x0a51, B:251:0x0a5c, B:252:0x0a67, B:254:0x0a6d, B:258:0x0ab8, B:260:0x0b03, B:262:0x0b14, B:263:0x0b78, B:268:0x0b2d, B:271:0x0b30, B:274:0x0a7a, B:276:0x0aa4, B:283:0x0b4b, B:284:0x0b62, B:288:0x0b63, B:302:0x0762, B:303:0x06c3, B:306:0x06cf, B:309:0x06dd, B:312:0x06eb, B:315:0x06f9, B:318:0x0707, B:321:0x0713, B:324:0x0720, B:334:0x05d9, B:338:0x0511, B:343:0x031c, B:344:0x0323, B:346:0x0329, B:349:0x0335, B:354:0x0199, B:356:0x01a7, B:358:0x01bc, B:363:0x01dc, B:366:0x0212, B:368:0x0218, B:370:0x0226, B:372:0x0234, B:374:0x0243, B:376:0x02c6, B:378:0x02d0, B:380:0x026d, B:382:0x0286, B:383:0x02ad, B:387:0x029a, B:389:0x01e8, B:391:0x0206), top: B:41:0x0157, inners: #0, #1, #2, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0839 A[Catch: all -> 0x0178, TryCatch #7 {all -> 0x0178, blocks: (B:42:0x0157, B:45:0x0166, B:47:0x016e, B:50:0x017c, B:57:0x0308, B:60:0x033b, B:62:0x037e, B:64:0x0385, B:65:0x039c, B:70:0x03a9, B:72:0x03c1, B:74:0x03c8, B:75:0x03df, B:78:0x0403, B:82:0x0426, B:83:0x043d, B:84:0x0446, B:87:0x0465, B:88:0x047e, B:90:0x0486, B:92:0x0492, B:94:0x0498, B:95:0x049f, B:97:0x04ac, B:99:0x04b4, B:101:0x04bc, B:104:0x04c6, B:107:0x04d2, B:109:0x04df, B:112:0x0504, B:116:0x0529, B:117:0x053e, B:119:0x056a, B:122:0x0581, B:123:0x05bd, B:124:0x05e5, B:126:0x061d, B:127:0x0620, B:129:0x0628, B:130:0x062b, B:132:0x0633, B:133:0x0636, B:135:0x063e, B:136:0x0641, B:138:0x064a, B:139:0x064e, B:141:0x065b, B:142:0x065e, B:144:0x068a, B:146:0x0694, B:150:0x06ab, B:154:0x06b8, B:157:0x072f, B:159:0x0737, B:160:0x073a, B:162:0x075d, B:164:0x0768, B:166:0x0771, B:167:0x078b, B:169:0x0791, B:172:0x07a5, B:175:0x07b1, B:178:0x07be, B:297:0x07d8, B:181:0x07e8, B:185:0x07f2, B:186:0x07f5, B:188:0x0802, B:189:0x0807, B:191:0x0825, B:193:0x0829, B:195:0x0839, B:197:0x0844, B:198:0x084d, B:200:0x0857, B:202:0x0863, B:204:0x086d, B:206:0x0873, B:208:0x0883, B:209:0x0897, B:211:0x089d, B:212:0x08a6, B:213:0x08b7, B:215:0x08f3, B:217:0x08fd, B:218:0x0900, B:220:0x090a, B:222:0x0927, B:223:0x0932, B:224:0x096a, B:226:0x0972, B:228:0x097c, B:229:0x0989, B:231:0x0993, B:232:0x09a0, B:233:0x09a9, B:235:0x09af, B:237:0x09eb, B:239:0x09f5, B:241:0x0a07, B:248:0x0a0d, B:250:0x0a51, B:251:0x0a5c, B:252:0x0a67, B:254:0x0a6d, B:258:0x0ab8, B:260:0x0b03, B:262:0x0b14, B:263:0x0b78, B:268:0x0b2d, B:271:0x0b30, B:274:0x0a7a, B:276:0x0aa4, B:283:0x0b4b, B:284:0x0b62, B:288:0x0b63, B:302:0x0762, B:303:0x06c3, B:306:0x06cf, B:309:0x06dd, B:312:0x06eb, B:315:0x06f9, B:318:0x0707, B:321:0x0713, B:324:0x0720, B:334:0x05d9, B:338:0x0511, B:343:0x031c, B:344:0x0323, B:346:0x0329, B:349:0x0335, B:354:0x0199, B:356:0x01a7, B:358:0x01bc, B:363:0x01dc, B:366:0x0212, B:368:0x0218, B:370:0x0226, B:372:0x0234, B:374:0x0243, B:376:0x02c6, B:378:0x02d0, B:380:0x026d, B:382:0x0286, B:383:0x02ad, B:387:0x029a, B:389:0x01e8, B:391:0x0206), top: B:41:0x0157, inners: #0, #1, #2, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:215:0x08f3 A[Catch: all -> 0x0178, TryCatch #7 {all -> 0x0178, blocks: (B:42:0x0157, B:45:0x0166, B:47:0x016e, B:50:0x017c, B:57:0x0308, B:60:0x033b, B:62:0x037e, B:64:0x0385, B:65:0x039c, B:70:0x03a9, B:72:0x03c1, B:74:0x03c8, B:75:0x03df, B:78:0x0403, B:82:0x0426, B:83:0x043d, B:84:0x0446, B:87:0x0465, B:88:0x047e, B:90:0x0486, B:92:0x0492, B:94:0x0498, B:95:0x049f, B:97:0x04ac, B:99:0x04b4, B:101:0x04bc, B:104:0x04c6, B:107:0x04d2, B:109:0x04df, B:112:0x0504, B:116:0x0529, B:117:0x053e, B:119:0x056a, B:122:0x0581, B:123:0x05bd, B:124:0x05e5, B:126:0x061d, B:127:0x0620, B:129:0x0628, B:130:0x062b, B:132:0x0633, B:133:0x0636, B:135:0x063e, B:136:0x0641, B:138:0x064a, B:139:0x064e, B:141:0x065b, B:142:0x065e, B:144:0x068a, B:146:0x0694, B:150:0x06ab, B:154:0x06b8, B:157:0x072f, B:159:0x0737, B:160:0x073a, B:162:0x075d, B:164:0x0768, B:166:0x0771, B:167:0x078b, B:169:0x0791, B:172:0x07a5, B:175:0x07b1, B:178:0x07be, B:297:0x07d8, B:181:0x07e8, B:185:0x07f2, B:186:0x07f5, B:188:0x0802, B:189:0x0807, B:191:0x0825, B:193:0x0829, B:195:0x0839, B:197:0x0844, B:198:0x084d, B:200:0x0857, B:202:0x0863, B:204:0x086d, B:206:0x0873, B:208:0x0883, B:209:0x0897, B:211:0x089d, B:212:0x08a6, B:213:0x08b7, B:215:0x08f3, B:217:0x08fd, B:218:0x0900, B:220:0x090a, B:222:0x0927, B:223:0x0932, B:224:0x096a, B:226:0x0972, B:228:0x097c, B:229:0x0989, B:231:0x0993, B:232:0x09a0, B:233:0x09a9, B:235:0x09af, B:237:0x09eb, B:239:0x09f5, B:241:0x0a07, B:248:0x0a0d, B:250:0x0a51, B:251:0x0a5c, B:252:0x0a67, B:254:0x0a6d, B:258:0x0ab8, B:260:0x0b03, B:262:0x0b14, B:263:0x0b78, B:268:0x0b2d, B:271:0x0b30, B:274:0x0a7a, B:276:0x0aa4, B:283:0x0b4b, B:284:0x0b62, B:288:0x0b63, B:302:0x0762, B:303:0x06c3, B:306:0x06cf, B:309:0x06dd, B:312:0x06eb, B:315:0x06f9, B:318:0x0707, B:321:0x0713, B:324:0x0720, B:334:0x05d9, B:338:0x0511, B:343:0x031c, B:344:0x0323, B:346:0x0329, B:349:0x0335, B:354:0x0199, B:356:0x01a7, B:358:0x01bc, B:363:0x01dc, B:366:0x0212, B:368:0x0218, B:370:0x0226, B:372:0x0234, B:374:0x0243, B:376:0x02c6, B:378:0x02d0, B:380:0x026d, B:382:0x0286, B:383:0x02ad, B:387:0x029a, B:389:0x01e8, B:391:0x0206), top: B:41:0x0157, inners: #0, #1, #2, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:220:0x090a A[Catch: all -> 0x0178, TryCatch #7 {all -> 0x0178, blocks: (B:42:0x0157, B:45:0x0166, B:47:0x016e, B:50:0x017c, B:57:0x0308, B:60:0x033b, B:62:0x037e, B:64:0x0385, B:65:0x039c, B:70:0x03a9, B:72:0x03c1, B:74:0x03c8, B:75:0x03df, B:78:0x0403, B:82:0x0426, B:83:0x043d, B:84:0x0446, B:87:0x0465, B:88:0x047e, B:90:0x0486, B:92:0x0492, B:94:0x0498, B:95:0x049f, B:97:0x04ac, B:99:0x04b4, B:101:0x04bc, B:104:0x04c6, B:107:0x04d2, B:109:0x04df, B:112:0x0504, B:116:0x0529, B:117:0x053e, B:119:0x056a, B:122:0x0581, B:123:0x05bd, B:124:0x05e5, B:126:0x061d, B:127:0x0620, B:129:0x0628, B:130:0x062b, B:132:0x0633, B:133:0x0636, B:135:0x063e, B:136:0x0641, B:138:0x064a, B:139:0x064e, B:141:0x065b, B:142:0x065e, B:144:0x068a, B:146:0x0694, B:150:0x06ab, B:154:0x06b8, B:157:0x072f, B:159:0x0737, B:160:0x073a, B:162:0x075d, B:164:0x0768, B:166:0x0771, B:167:0x078b, B:169:0x0791, B:172:0x07a5, B:175:0x07b1, B:178:0x07be, B:297:0x07d8, B:181:0x07e8, B:185:0x07f2, B:186:0x07f5, B:188:0x0802, B:189:0x0807, B:191:0x0825, B:193:0x0829, B:195:0x0839, B:197:0x0844, B:198:0x084d, B:200:0x0857, B:202:0x0863, B:204:0x086d, B:206:0x0873, B:208:0x0883, B:209:0x0897, B:211:0x089d, B:212:0x08a6, B:213:0x08b7, B:215:0x08f3, B:217:0x08fd, B:218:0x0900, B:220:0x090a, B:222:0x0927, B:223:0x0932, B:224:0x096a, B:226:0x0972, B:228:0x097c, B:229:0x0989, B:231:0x0993, B:232:0x09a0, B:233:0x09a9, B:235:0x09af, B:237:0x09eb, B:239:0x09f5, B:241:0x0a07, B:248:0x0a0d, B:250:0x0a51, B:251:0x0a5c, B:252:0x0a67, B:254:0x0a6d, B:258:0x0ab8, B:260:0x0b03, B:262:0x0b14, B:263:0x0b78, B:268:0x0b2d, B:271:0x0b30, B:274:0x0a7a, B:276:0x0aa4, B:283:0x0b4b, B:284:0x0b62, B:288:0x0b63, B:302:0x0762, B:303:0x06c3, B:306:0x06cf, B:309:0x06dd, B:312:0x06eb, B:315:0x06f9, B:318:0x0707, B:321:0x0713, B:324:0x0720, B:334:0x05d9, B:338:0x0511, B:343:0x031c, B:344:0x0323, B:346:0x0329, B:349:0x0335, B:354:0x0199, B:356:0x01a7, B:358:0x01bc, B:363:0x01dc, B:366:0x0212, B:368:0x0218, B:370:0x0226, B:372:0x0234, B:374:0x0243, B:376:0x02c6, B:378:0x02d0, B:380:0x026d, B:382:0x0286, B:383:0x02ad, B:387:0x029a, B:389:0x01e8, B:391:0x0206), top: B:41:0x0157, inners: #0, #1, #2, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:226:0x0972 A[Catch: all -> 0x0178, TryCatch #7 {all -> 0x0178, blocks: (B:42:0x0157, B:45:0x0166, B:47:0x016e, B:50:0x017c, B:57:0x0308, B:60:0x033b, B:62:0x037e, B:64:0x0385, B:65:0x039c, B:70:0x03a9, B:72:0x03c1, B:74:0x03c8, B:75:0x03df, B:78:0x0403, B:82:0x0426, B:83:0x043d, B:84:0x0446, B:87:0x0465, B:88:0x047e, B:90:0x0486, B:92:0x0492, B:94:0x0498, B:95:0x049f, B:97:0x04ac, B:99:0x04b4, B:101:0x04bc, B:104:0x04c6, B:107:0x04d2, B:109:0x04df, B:112:0x0504, B:116:0x0529, B:117:0x053e, B:119:0x056a, B:122:0x0581, B:123:0x05bd, B:124:0x05e5, B:126:0x061d, B:127:0x0620, B:129:0x0628, B:130:0x062b, B:132:0x0633, B:133:0x0636, B:135:0x063e, B:136:0x0641, B:138:0x064a, B:139:0x064e, B:141:0x065b, B:142:0x065e, B:144:0x068a, B:146:0x0694, B:150:0x06ab, B:154:0x06b8, B:157:0x072f, B:159:0x0737, B:160:0x073a, B:162:0x075d, B:164:0x0768, B:166:0x0771, B:167:0x078b, B:169:0x0791, B:172:0x07a5, B:175:0x07b1, B:178:0x07be, B:297:0x07d8, B:181:0x07e8, B:185:0x07f2, B:186:0x07f5, B:188:0x0802, B:189:0x0807, B:191:0x0825, B:193:0x0829, B:195:0x0839, B:197:0x0844, B:198:0x084d, B:200:0x0857, B:202:0x0863, B:204:0x086d, B:206:0x0873, B:208:0x0883, B:209:0x0897, B:211:0x089d, B:212:0x08a6, B:213:0x08b7, B:215:0x08f3, B:217:0x08fd, B:218:0x0900, B:220:0x090a, B:222:0x0927, B:223:0x0932, B:224:0x096a, B:226:0x0972, B:228:0x097c, B:229:0x0989, B:231:0x0993, B:232:0x09a0, B:233:0x09a9, B:235:0x09af, B:237:0x09eb, B:239:0x09f5, B:241:0x0a07, B:248:0x0a0d, B:250:0x0a51, B:251:0x0a5c, B:252:0x0a67, B:254:0x0a6d, B:258:0x0ab8, B:260:0x0b03, B:262:0x0b14, B:263:0x0b78, B:268:0x0b2d, B:271:0x0b30, B:274:0x0a7a, B:276:0x0aa4, B:283:0x0b4b, B:284:0x0b62, B:288:0x0b63, B:302:0x0762, B:303:0x06c3, B:306:0x06cf, B:309:0x06dd, B:312:0x06eb, B:315:0x06f9, B:318:0x0707, B:321:0x0713, B:324:0x0720, B:334:0x05d9, B:338:0x0511, B:343:0x031c, B:344:0x0323, B:346:0x0329, B:349:0x0335, B:354:0x0199, B:356:0x01a7, B:358:0x01bc, B:363:0x01dc, B:366:0x0212, B:368:0x0218, B:370:0x0226, B:372:0x0234, B:374:0x0243, B:376:0x02c6, B:378:0x02d0, B:380:0x026d, B:382:0x0286, B:383:0x02ad, B:387:0x029a, B:389:0x01e8, B:391:0x0206), top: B:41:0x0157, inners: #0, #1, #2, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:231:0x0993 A[Catch: all -> 0x0178, TryCatch #7 {all -> 0x0178, blocks: (B:42:0x0157, B:45:0x0166, B:47:0x016e, B:50:0x017c, B:57:0x0308, B:60:0x033b, B:62:0x037e, B:64:0x0385, B:65:0x039c, B:70:0x03a9, B:72:0x03c1, B:74:0x03c8, B:75:0x03df, B:78:0x0403, B:82:0x0426, B:83:0x043d, B:84:0x0446, B:87:0x0465, B:88:0x047e, B:90:0x0486, B:92:0x0492, B:94:0x0498, B:95:0x049f, B:97:0x04ac, B:99:0x04b4, B:101:0x04bc, B:104:0x04c6, B:107:0x04d2, B:109:0x04df, B:112:0x0504, B:116:0x0529, B:117:0x053e, B:119:0x056a, B:122:0x0581, B:123:0x05bd, B:124:0x05e5, B:126:0x061d, B:127:0x0620, B:129:0x0628, B:130:0x062b, B:132:0x0633, B:133:0x0636, B:135:0x063e, B:136:0x0641, B:138:0x064a, B:139:0x064e, B:141:0x065b, B:142:0x065e, B:144:0x068a, B:146:0x0694, B:150:0x06ab, B:154:0x06b8, B:157:0x072f, B:159:0x0737, B:160:0x073a, B:162:0x075d, B:164:0x0768, B:166:0x0771, B:167:0x078b, B:169:0x0791, B:172:0x07a5, B:175:0x07b1, B:178:0x07be, B:297:0x07d8, B:181:0x07e8, B:185:0x07f2, B:186:0x07f5, B:188:0x0802, B:189:0x0807, B:191:0x0825, B:193:0x0829, B:195:0x0839, B:197:0x0844, B:198:0x084d, B:200:0x0857, B:202:0x0863, B:204:0x086d, B:206:0x0873, B:208:0x0883, B:209:0x0897, B:211:0x089d, B:212:0x08a6, B:213:0x08b7, B:215:0x08f3, B:217:0x08fd, B:218:0x0900, B:220:0x090a, B:222:0x0927, B:223:0x0932, B:224:0x096a, B:226:0x0972, B:228:0x097c, B:229:0x0989, B:231:0x0993, B:232:0x09a0, B:233:0x09a9, B:235:0x09af, B:237:0x09eb, B:239:0x09f5, B:241:0x0a07, B:248:0x0a0d, B:250:0x0a51, B:251:0x0a5c, B:252:0x0a67, B:254:0x0a6d, B:258:0x0ab8, B:260:0x0b03, B:262:0x0b14, B:263:0x0b78, B:268:0x0b2d, B:271:0x0b30, B:274:0x0a7a, B:276:0x0aa4, B:283:0x0b4b, B:284:0x0b62, B:288:0x0b63, B:302:0x0762, B:303:0x06c3, B:306:0x06cf, B:309:0x06dd, B:312:0x06eb, B:315:0x06f9, B:318:0x0707, B:321:0x0713, B:324:0x0720, B:334:0x05d9, B:338:0x0511, B:343:0x031c, B:344:0x0323, B:346:0x0329, B:349:0x0335, B:354:0x0199, B:356:0x01a7, B:358:0x01bc, B:363:0x01dc, B:366:0x0212, B:368:0x0218, B:370:0x0226, B:372:0x0234, B:374:0x0243, B:376:0x02c6, B:378:0x02d0, B:380:0x026d, B:382:0x0286, B:383:0x02ad, B:387:0x029a, B:389:0x01e8, B:391:0x0206), top: B:41:0x0157, inners: #0, #1, #2, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:235:0x09af A[Catch: all -> 0x0178, TryCatch #7 {all -> 0x0178, blocks: (B:42:0x0157, B:45:0x0166, B:47:0x016e, B:50:0x017c, B:57:0x0308, B:60:0x033b, B:62:0x037e, B:64:0x0385, B:65:0x039c, B:70:0x03a9, B:72:0x03c1, B:74:0x03c8, B:75:0x03df, B:78:0x0403, B:82:0x0426, B:83:0x043d, B:84:0x0446, B:87:0x0465, B:88:0x047e, B:90:0x0486, B:92:0x0492, B:94:0x0498, B:95:0x049f, B:97:0x04ac, B:99:0x04b4, B:101:0x04bc, B:104:0x04c6, B:107:0x04d2, B:109:0x04df, B:112:0x0504, B:116:0x0529, B:117:0x053e, B:119:0x056a, B:122:0x0581, B:123:0x05bd, B:124:0x05e5, B:126:0x061d, B:127:0x0620, B:129:0x0628, B:130:0x062b, B:132:0x0633, B:133:0x0636, B:135:0x063e, B:136:0x0641, B:138:0x064a, B:139:0x064e, B:141:0x065b, B:142:0x065e, B:144:0x068a, B:146:0x0694, B:150:0x06ab, B:154:0x06b8, B:157:0x072f, B:159:0x0737, B:160:0x073a, B:162:0x075d, B:164:0x0768, B:166:0x0771, B:167:0x078b, B:169:0x0791, B:172:0x07a5, B:175:0x07b1, B:178:0x07be, B:297:0x07d8, B:181:0x07e8, B:185:0x07f2, B:186:0x07f5, B:188:0x0802, B:189:0x0807, B:191:0x0825, B:193:0x0829, B:195:0x0839, B:197:0x0844, B:198:0x084d, B:200:0x0857, B:202:0x0863, B:204:0x086d, B:206:0x0873, B:208:0x0883, B:209:0x0897, B:211:0x089d, B:212:0x08a6, B:213:0x08b7, B:215:0x08f3, B:217:0x08fd, B:218:0x0900, B:220:0x090a, B:222:0x0927, B:223:0x0932, B:224:0x096a, B:226:0x0972, B:228:0x097c, B:229:0x0989, B:231:0x0993, B:232:0x09a0, B:233:0x09a9, B:235:0x09af, B:237:0x09eb, B:239:0x09f5, B:241:0x0a07, B:248:0x0a0d, B:250:0x0a51, B:251:0x0a5c, B:252:0x0a67, B:254:0x0a6d, B:258:0x0ab8, B:260:0x0b03, B:262:0x0b14, B:263:0x0b78, B:268:0x0b2d, B:271:0x0b30, B:274:0x0a7a, B:276:0x0aa4, B:283:0x0b4b, B:284:0x0b62, B:288:0x0b63, B:302:0x0762, B:303:0x06c3, B:306:0x06cf, B:309:0x06dd, B:312:0x06eb, B:315:0x06f9, B:318:0x0707, B:321:0x0713, B:324:0x0720, B:334:0x05d9, B:338:0x0511, B:343:0x031c, B:344:0x0323, B:346:0x0329, B:349:0x0335, B:354:0x0199, B:356:0x01a7, B:358:0x01bc, B:363:0x01dc, B:366:0x0212, B:368:0x0218, B:370:0x0226, B:372:0x0234, B:374:0x0243, B:376:0x02c6, B:378:0x02d0, B:380:0x026d, B:382:0x0286, B:383:0x02ad, B:387:0x029a, B:389:0x01e8, B:391:0x0206), top: B:41:0x0157, inners: #0, #1, #2, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:254:0x0a6d A[Catch: all -> 0x0178, TryCatch #7 {all -> 0x0178, blocks: (B:42:0x0157, B:45:0x0166, B:47:0x016e, B:50:0x017c, B:57:0x0308, B:60:0x033b, B:62:0x037e, B:64:0x0385, B:65:0x039c, B:70:0x03a9, B:72:0x03c1, B:74:0x03c8, B:75:0x03df, B:78:0x0403, B:82:0x0426, B:83:0x043d, B:84:0x0446, B:87:0x0465, B:88:0x047e, B:90:0x0486, B:92:0x0492, B:94:0x0498, B:95:0x049f, B:97:0x04ac, B:99:0x04b4, B:101:0x04bc, B:104:0x04c6, B:107:0x04d2, B:109:0x04df, B:112:0x0504, B:116:0x0529, B:117:0x053e, B:119:0x056a, B:122:0x0581, B:123:0x05bd, B:124:0x05e5, B:126:0x061d, B:127:0x0620, B:129:0x0628, B:130:0x062b, B:132:0x0633, B:133:0x0636, B:135:0x063e, B:136:0x0641, B:138:0x064a, B:139:0x064e, B:141:0x065b, B:142:0x065e, B:144:0x068a, B:146:0x0694, B:150:0x06ab, B:154:0x06b8, B:157:0x072f, B:159:0x0737, B:160:0x073a, B:162:0x075d, B:164:0x0768, B:166:0x0771, B:167:0x078b, B:169:0x0791, B:172:0x07a5, B:175:0x07b1, B:178:0x07be, B:297:0x07d8, B:181:0x07e8, B:185:0x07f2, B:186:0x07f5, B:188:0x0802, B:189:0x0807, B:191:0x0825, B:193:0x0829, B:195:0x0839, B:197:0x0844, B:198:0x084d, B:200:0x0857, B:202:0x0863, B:204:0x086d, B:206:0x0873, B:208:0x0883, B:209:0x0897, B:211:0x089d, B:212:0x08a6, B:213:0x08b7, B:215:0x08f3, B:217:0x08fd, B:218:0x0900, B:220:0x090a, B:222:0x0927, B:223:0x0932, B:224:0x096a, B:226:0x0972, B:228:0x097c, B:229:0x0989, B:231:0x0993, B:232:0x09a0, B:233:0x09a9, B:235:0x09af, B:237:0x09eb, B:239:0x09f5, B:241:0x0a07, B:248:0x0a0d, B:250:0x0a51, B:251:0x0a5c, B:252:0x0a67, B:254:0x0a6d, B:258:0x0ab8, B:260:0x0b03, B:262:0x0b14, B:263:0x0b78, B:268:0x0b2d, B:271:0x0b30, B:274:0x0a7a, B:276:0x0aa4, B:283:0x0b4b, B:284:0x0b62, B:288:0x0b63, B:302:0x0762, B:303:0x06c3, B:306:0x06cf, B:309:0x06dd, B:312:0x06eb, B:315:0x06f9, B:318:0x0707, B:321:0x0713, B:324:0x0720, B:334:0x05d9, B:338:0x0511, B:343:0x031c, B:344:0x0323, B:346:0x0329, B:349:0x0335, B:354:0x0199, B:356:0x01a7, B:358:0x01bc, B:363:0x01dc, B:366:0x0212, B:368:0x0218, B:370:0x0226, B:372:0x0234, B:374:0x0243, B:376:0x02c6, B:378:0x02d0, B:380:0x026d, B:382:0x0286, B:383:0x02ad, B:387:0x029a, B:389:0x01e8, B:391:0x0206), top: B:41:0x0157, inners: #0, #1, #2, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:262:0x0b14 A[Catch: all -> 0x0178, SQLiteException -> 0x0b28, TRY_LEAVE, TryCatch #1 {SQLiteException -> 0x0b28, blocks: (B:260:0x0b03, B:262:0x0b14), top: B:259:0x0b03, outer: #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:267:0x0b2b  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x0a7a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:289:0x0969  */
    /* JADX WARN: Removed duplicated region for block: B:302:0x0762 A[Catch: all -> 0x0178, TryCatch #7 {all -> 0x0178, blocks: (B:42:0x0157, B:45:0x0166, B:47:0x016e, B:50:0x017c, B:57:0x0308, B:60:0x033b, B:62:0x037e, B:64:0x0385, B:65:0x039c, B:70:0x03a9, B:72:0x03c1, B:74:0x03c8, B:75:0x03df, B:78:0x0403, B:82:0x0426, B:83:0x043d, B:84:0x0446, B:87:0x0465, B:88:0x047e, B:90:0x0486, B:92:0x0492, B:94:0x0498, B:95:0x049f, B:97:0x04ac, B:99:0x04b4, B:101:0x04bc, B:104:0x04c6, B:107:0x04d2, B:109:0x04df, B:112:0x0504, B:116:0x0529, B:117:0x053e, B:119:0x056a, B:122:0x0581, B:123:0x05bd, B:124:0x05e5, B:126:0x061d, B:127:0x0620, B:129:0x0628, B:130:0x062b, B:132:0x0633, B:133:0x0636, B:135:0x063e, B:136:0x0641, B:138:0x064a, B:139:0x064e, B:141:0x065b, B:142:0x065e, B:144:0x068a, B:146:0x0694, B:150:0x06ab, B:154:0x06b8, B:157:0x072f, B:159:0x0737, B:160:0x073a, B:162:0x075d, B:164:0x0768, B:166:0x0771, B:167:0x078b, B:169:0x0791, B:172:0x07a5, B:175:0x07b1, B:178:0x07be, B:297:0x07d8, B:181:0x07e8, B:185:0x07f2, B:186:0x07f5, B:188:0x0802, B:189:0x0807, B:191:0x0825, B:193:0x0829, B:195:0x0839, B:197:0x0844, B:198:0x084d, B:200:0x0857, B:202:0x0863, B:204:0x086d, B:206:0x0873, B:208:0x0883, B:209:0x0897, B:211:0x089d, B:212:0x08a6, B:213:0x08b7, B:215:0x08f3, B:217:0x08fd, B:218:0x0900, B:220:0x090a, B:222:0x0927, B:223:0x0932, B:224:0x096a, B:226:0x0972, B:228:0x097c, B:229:0x0989, B:231:0x0993, B:232:0x09a0, B:233:0x09a9, B:235:0x09af, B:237:0x09eb, B:239:0x09f5, B:241:0x0a07, B:248:0x0a0d, B:250:0x0a51, B:251:0x0a5c, B:252:0x0a67, B:254:0x0a6d, B:258:0x0ab8, B:260:0x0b03, B:262:0x0b14, B:263:0x0b78, B:268:0x0b2d, B:271:0x0b30, B:274:0x0a7a, B:276:0x0aa4, B:283:0x0b4b, B:284:0x0b62, B:288:0x0b63, B:302:0x0762, B:303:0x06c3, B:306:0x06cf, B:309:0x06dd, B:312:0x06eb, B:315:0x06f9, B:318:0x0707, B:321:0x0713, B:324:0x0720, B:334:0x05d9, B:338:0x0511, B:343:0x031c, B:344:0x0323, B:346:0x0329, B:349:0x0335, B:354:0x0199, B:356:0x01a7, B:358:0x01bc, B:363:0x01dc, B:366:0x0212, B:368:0x0218, B:370:0x0226, B:372:0x0234, B:374:0x0243, B:376:0x02c6, B:378:0x02d0, B:380:0x026d, B:382:0x0286, B:383:0x02ad, B:387:0x029a, B:389:0x01e8, B:391:0x0206), top: B:41:0x0157, inners: #0, #1, #2, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:334:0x05d9 A[Catch: all -> 0x0178, TryCatch #7 {all -> 0x0178, blocks: (B:42:0x0157, B:45:0x0166, B:47:0x016e, B:50:0x017c, B:57:0x0308, B:60:0x033b, B:62:0x037e, B:64:0x0385, B:65:0x039c, B:70:0x03a9, B:72:0x03c1, B:74:0x03c8, B:75:0x03df, B:78:0x0403, B:82:0x0426, B:83:0x043d, B:84:0x0446, B:87:0x0465, B:88:0x047e, B:90:0x0486, B:92:0x0492, B:94:0x0498, B:95:0x049f, B:97:0x04ac, B:99:0x04b4, B:101:0x04bc, B:104:0x04c6, B:107:0x04d2, B:109:0x04df, B:112:0x0504, B:116:0x0529, B:117:0x053e, B:119:0x056a, B:122:0x0581, B:123:0x05bd, B:124:0x05e5, B:126:0x061d, B:127:0x0620, B:129:0x0628, B:130:0x062b, B:132:0x0633, B:133:0x0636, B:135:0x063e, B:136:0x0641, B:138:0x064a, B:139:0x064e, B:141:0x065b, B:142:0x065e, B:144:0x068a, B:146:0x0694, B:150:0x06ab, B:154:0x06b8, B:157:0x072f, B:159:0x0737, B:160:0x073a, B:162:0x075d, B:164:0x0768, B:166:0x0771, B:167:0x078b, B:169:0x0791, B:172:0x07a5, B:175:0x07b1, B:178:0x07be, B:297:0x07d8, B:181:0x07e8, B:185:0x07f2, B:186:0x07f5, B:188:0x0802, B:189:0x0807, B:191:0x0825, B:193:0x0829, B:195:0x0839, B:197:0x0844, B:198:0x084d, B:200:0x0857, B:202:0x0863, B:204:0x086d, B:206:0x0873, B:208:0x0883, B:209:0x0897, B:211:0x089d, B:212:0x08a6, B:213:0x08b7, B:215:0x08f3, B:217:0x08fd, B:218:0x0900, B:220:0x090a, B:222:0x0927, B:223:0x0932, B:224:0x096a, B:226:0x0972, B:228:0x097c, B:229:0x0989, B:231:0x0993, B:232:0x09a0, B:233:0x09a9, B:235:0x09af, B:237:0x09eb, B:239:0x09f5, B:241:0x0a07, B:248:0x0a0d, B:250:0x0a51, B:251:0x0a5c, B:252:0x0a67, B:254:0x0a6d, B:258:0x0ab8, B:260:0x0b03, B:262:0x0b14, B:263:0x0b78, B:268:0x0b2d, B:271:0x0b30, B:274:0x0a7a, B:276:0x0aa4, B:283:0x0b4b, B:284:0x0b62, B:288:0x0b63, B:302:0x0762, B:303:0x06c3, B:306:0x06cf, B:309:0x06dd, B:312:0x06eb, B:315:0x06f9, B:318:0x0707, B:321:0x0713, B:324:0x0720, B:334:0x05d9, B:338:0x0511, B:343:0x031c, B:344:0x0323, B:346:0x0329, B:349:0x0335, B:354:0x0199, B:356:0x01a7, B:358:0x01bc, B:363:0x01dc, B:366:0x0212, B:368:0x0218, B:370:0x0226, B:372:0x0234, B:374:0x0243, B:376:0x02c6, B:378:0x02d0, B:380:0x026d, B:382:0x0286, B:383:0x02ad, B:387:0x029a, B:389:0x01e8, B:391:0x0206), top: B:41:0x0157, inners: #0, #1, #2, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:343:0x031c A[Catch: all -> 0x0178, TryCatch #7 {all -> 0x0178, blocks: (B:42:0x0157, B:45:0x0166, B:47:0x016e, B:50:0x017c, B:57:0x0308, B:60:0x033b, B:62:0x037e, B:64:0x0385, B:65:0x039c, B:70:0x03a9, B:72:0x03c1, B:74:0x03c8, B:75:0x03df, B:78:0x0403, B:82:0x0426, B:83:0x043d, B:84:0x0446, B:87:0x0465, B:88:0x047e, B:90:0x0486, B:92:0x0492, B:94:0x0498, B:95:0x049f, B:97:0x04ac, B:99:0x04b4, B:101:0x04bc, B:104:0x04c6, B:107:0x04d2, B:109:0x04df, B:112:0x0504, B:116:0x0529, B:117:0x053e, B:119:0x056a, B:122:0x0581, B:123:0x05bd, B:124:0x05e5, B:126:0x061d, B:127:0x0620, B:129:0x0628, B:130:0x062b, B:132:0x0633, B:133:0x0636, B:135:0x063e, B:136:0x0641, B:138:0x064a, B:139:0x064e, B:141:0x065b, B:142:0x065e, B:144:0x068a, B:146:0x0694, B:150:0x06ab, B:154:0x06b8, B:157:0x072f, B:159:0x0737, B:160:0x073a, B:162:0x075d, B:164:0x0768, B:166:0x0771, B:167:0x078b, B:169:0x0791, B:172:0x07a5, B:175:0x07b1, B:178:0x07be, B:297:0x07d8, B:181:0x07e8, B:185:0x07f2, B:186:0x07f5, B:188:0x0802, B:189:0x0807, B:191:0x0825, B:193:0x0829, B:195:0x0839, B:197:0x0844, B:198:0x084d, B:200:0x0857, B:202:0x0863, B:204:0x086d, B:206:0x0873, B:208:0x0883, B:209:0x0897, B:211:0x089d, B:212:0x08a6, B:213:0x08b7, B:215:0x08f3, B:217:0x08fd, B:218:0x0900, B:220:0x090a, B:222:0x0927, B:223:0x0932, B:224:0x096a, B:226:0x0972, B:228:0x097c, B:229:0x0989, B:231:0x0993, B:232:0x09a0, B:233:0x09a9, B:235:0x09af, B:237:0x09eb, B:239:0x09f5, B:241:0x0a07, B:248:0x0a0d, B:250:0x0a51, B:251:0x0a5c, B:252:0x0a67, B:254:0x0a6d, B:258:0x0ab8, B:260:0x0b03, B:262:0x0b14, B:263:0x0b78, B:268:0x0b2d, B:271:0x0b30, B:274:0x0a7a, B:276:0x0aa4, B:283:0x0b4b, B:284:0x0b62, B:288:0x0b63, B:302:0x0762, B:303:0x06c3, B:306:0x06cf, B:309:0x06dd, B:312:0x06eb, B:315:0x06f9, B:318:0x0707, B:321:0x0713, B:324:0x0720, B:334:0x05d9, B:338:0x0511, B:343:0x031c, B:344:0x0323, B:346:0x0329, B:349:0x0335, B:354:0x0199, B:356:0x01a7, B:358:0x01bc, B:363:0x01dc, B:366:0x0212, B:368:0x0218, B:370:0x0226, B:372:0x0234, B:374:0x0243, B:376:0x02c6, B:378:0x02d0, B:380:0x026d, B:382:0x0286, B:383:0x02ad, B:387:0x029a, B:389:0x01e8, B:391:0x0206), top: B:41:0x0157, inners: #0, #1, #2, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:378:0x02d0 A[Catch: all -> 0x0178, TryCatch #7 {all -> 0x0178, blocks: (B:42:0x0157, B:45:0x0166, B:47:0x016e, B:50:0x017c, B:57:0x0308, B:60:0x033b, B:62:0x037e, B:64:0x0385, B:65:0x039c, B:70:0x03a9, B:72:0x03c1, B:74:0x03c8, B:75:0x03df, B:78:0x0403, B:82:0x0426, B:83:0x043d, B:84:0x0446, B:87:0x0465, B:88:0x047e, B:90:0x0486, B:92:0x0492, B:94:0x0498, B:95:0x049f, B:97:0x04ac, B:99:0x04b4, B:101:0x04bc, B:104:0x04c6, B:107:0x04d2, B:109:0x04df, B:112:0x0504, B:116:0x0529, B:117:0x053e, B:119:0x056a, B:122:0x0581, B:123:0x05bd, B:124:0x05e5, B:126:0x061d, B:127:0x0620, B:129:0x0628, B:130:0x062b, B:132:0x0633, B:133:0x0636, B:135:0x063e, B:136:0x0641, B:138:0x064a, B:139:0x064e, B:141:0x065b, B:142:0x065e, B:144:0x068a, B:146:0x0694, B:150:0x06ab, B:154:0x06b8, B:157:0x072f, B:159:0x0737, B:160:0x073a, B:162:0x075d, B:164:0x0768, B:166:0x0771, B:167:0x078b, B:169:0x0791, B:172:0x07a5, B:175:0x07b1, B:178:0x07be, B:297:0x07d8, B:181:0x07e8, B:185:0x07f2, B:186:0x07f5, B:188:0x0802, B:189:0x0807, B:191:0x0825, B:193:0x0829, B:195:0x0839, B:197:0x0844, B:198:0x084d, B:200:0x0857, B:202:0x0863, B:204:0x086d, B:206:0x0873, B:208:0x0883, B:209:0x0897, B:211:0x089d, B:212:0x08a6, B:213:0x08b7, B:215:0x08f3, B:217:0x08fd, B:218:0x0900, B:220:0x090a, B:222:0x0927, B:223:0x0932, B:224:0x096a, B:226:0x0972, B:228:0x097c, B:229:0x0989, B:231:0x0993, B:232:0x09a0, B:233:0x09a9, B:235:0x09af, B:237:0x09eb, B:239:0x09f5, B:241:0x0a07, B:248:0x0a0d, B:250:0x0a51, B:251:0x0a5c, B:252:0x0a67, B:254:0x0a6d, B:258:0x0ab8, B:260:0x0b03, B:262:0x0b14, B:263:0x0b78, B:268:0x0b2d, B:271:0x0b30, B:274:0x0a7a, B:276:0x0aa4, B:283:0x0b4b, B:284:0x0b62, B:288:0x0b63, B:302:0x0762, B:303:0x06c3, B:306:0x06cf, B:309:0x06dd, B:312:0x06eb, B:315:0x06f9, B:318:0x0707, B:321:0x0713, B:324:0x0720, B:334:0x05d9, B:338:0x0511, B:343:0x031c, B:344:0x0323, B:346:0x0329, B:349:0x0335, B:354:0x0199, B:356:0x01a7, B:358:0x01bc, B:363:0x01dc, B:366:0x0212, B:368:0x0218, B:370:0x0226, B:372:0x0234, B:374:0x0243, B:376:0x02c6, B:378:0x02d0, B:380:0x026d, B:382:0x0286, B:383:0x02ad, B:387:0x029a, B:389:0x01e8, B:391:0x0206), top: B:41:0x0157, inners: #0, #1, #2, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0319  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x037e A[Catch: all -> 0x0178, TryCatch #7 {all -> 0x0178, blocks: (B:42:0x0157, B:45:0x0166, B:47:0x016e, B:50:0x017c, B:57:0x0308, B:60:0x033b, B:62:0x037e, B:64:0x0385, B:65:0x039c, B:70:0x03a9, B:72:0x03c1, B:74:0x03c8, B:75:0x03df, B:78:0x0403, B:82:0x0426, B:83:0x043d, B:84:0x0446, B:87:0x0465, B:88:0x047e, B:90:0x0486, B:92:0x0492, B:94:0x0498, B:95:0x049f, B:97:0x04ac, B:99:0x04b4, B:101:0x04bc, B:104:0x04c6, B:107:0x04d2, B:109:0x04df, B:112:0x0504, B:116:0x0529, B:117:0x053e, B:119:0x056a, B:122:0x0581, B:123:0x05bd, B:124:0x05e5, B:126:0x061d, B:127:0x0620, B:129:0x0628, B:130:0x062b, B:132:0x0633, B:133:0x0636, B:135:0x063e, B:136:0x0641, B:138:0x064a, B:139:0x064e, B:141:0x065b, B:142:0x065e, B:144:0x068a, B:146:0x0694, B:150:0x06ab, B:154:0x06b8, B:157:0x072f, B:159:0x0737, B:160:0x073a, B:162:0x075d, B:164:0x0768, B:166:0x0771, B:167:0x078b, B:169:0x0791, B:172:0x07a5, B:175:0x07b1, B:178:0x07be, B:297:0x07d8, B:181:0x07e8, B:185:0x07f2, B:186:0x07f5, B:188:0x0802, B:189:0x0807, B:191:0x0825, B:193:0x0829, B:195:0x0839, B:197:0x0844, B:198:0x084d, B:200:0x0857, B:202:0x0863, B:204:0x086d, B:206:0x0873, B:208:0x0883, B:209:0x0897, B:211:0x089d, B:212:0x08a6, B:213:0x08b7, B:215:0x08f3, B:217:0x08fd, B:218:0x0900, B:220:0x090a, B:222:0x0927, B:223:0x0932, B:224:0x096a, B:226:0x0972, B:228:0x097c, B:229:0x0989, B:231:0x0993, B:232:0x09a0, B:233:0x09a9, B:235:0x09af, B:237:0x09eb, B:239:0x09f5, B:241:0x0a07, B:248:0x0a0d, B:250:0x0a51, B:251:0x0a5c, B:252:0x0a67, B:254:0x0a6d, B:258:0x0ab8, B:260:0x0b03, B:262:0x0b14, B:263:0x0b78, B:268:0x0b2d, B:271:0x0b30, B:274:0x0a7a, B:276:0x0aa4, B:283:0x0b4b, B:284:0x0b62, B:288:0x0b63, B:302:0x0762, B:303:0x06c3, B:306:0x06cf, B:309:0x06dd, B:312:0x06eb, B:315:0x06f9, B:318:0x0707, B:321:0x0713, B:324:0x0720, B:334:0x05d9, B:338:0x0511, B:343:0x031c, B:344:0x0323, B:346:0x0329, B:349:0x0335, B:354:0x0199, B:356:0x01a7, B:358:0x01bc, B:363:0x01dc, B:366:0x0212, B:368:0x0218, B:370:0x0226, B:372:0x0234, B:374:0x0243, B:376:0x02c6, B:378:0x02d0, B:380:0x026d, B:382:0x0286, B:383:0x02ad, B:387:0x029a, B:389:0x01e8, B:391:0x0206), top: B:41:0x0157, inners: #0, #1, #2, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x03a5  */
    @WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m(I i10, o7 o7Var) {
        String str;
        String str2;
        long longValue;
        String str3;
        String str4;
        I i11;
        String str5;
        k7 k7Var;
        k7 k7Var2;
        G g10;
        long j10;
        long p10;
        String str6;
        long j11;
        D d10;
        String str7;
        E x02;
        E a10;
        String str8;
        String str9;
        String str10;
        String str11;
        long j12;
        String str12;
        long j13;
        Map emptyMap;
        ArrayList arrayList;
        String str13;
        Z3 s10;
        Y3 y32;
        Z3 z32;
        Y3 y33;
        String str14;
        C12370p3 c12370p3;
        I2 L02;
        int i12;
        List E02;
        int i13;
        C12421w F02;
        C12134n3 c12134n3;
        C12421w F03;
        F f10;
        int i14;
        ContentValues contentValues;
        Pair m10;
        I2 L03;
        k7 D02;
        G0.A.r(o7Var);
        String str15 = o7Var.f63444b;
        G0.A.l(str15);
        long nanoTime = System.nanoTime();
        b().h();
        O0();
        K0();
        if (h7.p(i10, o7Var)) {
            if (!o7Var.f63451i) {
                n0(o7Var);
                return;
            }
            C12266c3 D03 = D0();
            String str16 = i10.f62679b;
            if (D03.D(str15, str16)) {
                a().r().c("Dropping blocked event. appId", B2.x(str15), this.f63098l.D().a(str16));
                if (!D0().H(str15) && !D0().I(str15)) {
                    if ("_err".equals(str16)) {
                        return;
                    }
                    N0().B(this.f63086J, str15, 11, "_ev", str16, 0);
                    return;
                }
                I2 L04 = F0().L0(str15);
                if (L04 != null) {
                    long abs = Math.abs(e().a() - Math.max(L04.j(), L04.h()));
                    B0();
                    if (abs > ((Long) C12281e2.f63164O.b(null)).longValue()) {
                        a().v().a("Fetching config for blocked app");
                        A(L04);
                        return;
                    }
                    return;
                }
                return;
            }
            C2 a11 = C2.a(i10);
            N0().u(a11, B0().w(str15));
            int F10 = B0().F(str15, C12281e2.f63210h0, 10, 35);
            Bundle bundle = a11.f62576d;
            for (String str17 : new TreeSet(bundle.keySet())) {
                if (FirebaseAnalytics.d.f67706j0.equals(str17)) {
                    N0().v(bundle.getParcelableArray(str17), F10);
                }
            }
            I b10 = a11.b();
            if (Log.isLoggable(a().z(), 2)) {
                a().w().b("Logging event", this.f63098l.D().d(b10));
            }
            F0().t0();
            try {
                n0(o7Var);
                String str18 = b10.f62679b;
                boolean z10 = "ecommerce_purchase".equals(str18) || FirebaseAnalytics.c.f67629D.equals(str18) || FirebaseAnalytics.c.f67630E.equals(str18);
                if (!"_iap".equals(str18)) {
                    if (!z10) {
                        str3 = "value";
                        str = "app_id";
                        str2 = "_fx";
                        str4 = "raw_events";
                        i11 = b10;
                        str5 = "_err";
                        String str19 = i11.f62679b;
                        boolean r02 = m7.r0(str19);
                        boolean equals = str5.equals(str19);
                        N0();
                        g10 = i11.f62680c;
                        if (g10 != null) {
                            j10 = 0;
                        } else {
                            F f11 = new F(g10);
                            j10 = 0;
                            while (f11.hasNext()) {
                                if (g10.b(f11.next()) instanceof Parcelable[]) {
                                    j10 += ((Parcelable[]) r11).length;
                                }
                            }
                        }
                        I i15 = i11;
                        C12389s O02 = F0().O0(h(), str15, j10 + 1, true, r02, false, equals, false, false, false);
                        long j14 = O02.f63563b;
                        B0();
                        p10 = j14 - C12342m.p();
                        if (p10 <= 0) {
                            if (p10 % 1000 == 1) {
                                a().o().c("Data loss. Too many events logged. appId, count", B2.x(str15), Long.valueOf(O02.f63563b));
                            }
                            F0().u0();
                        } else {
                            if (r02) {
                                long j15 = O02.f63562a;
                                B0();
                                long intValue = j15 - ((Integer) C12281e2.f63225n.b(null)).intValue();
                                if (intValue > 0) {
                                    if (intValue % 1000 == 1) {
                                        a().o().c("Data loss. Too many public events logged. appId, count", B2.x(str15), Long.valueOf(O02.f63562a));
                                    }
                                    N0().B(this.f63086J, str15, 16, "_ev", i15.f62679b, 0);
                                    F0().u0();
                                }
                            }
                            if (equals) {
                                long max = O02.f63565d - Math.max(0, Math.min(1000000, B0().E(o7Var.f63444b, C12281e2.f63223m)));
                                if (max > 0) {
                                    if (max == 1) {
                                        a().o().c("Too many error events logged. appId, count", B2.x(str15), Long.valueOf(O02.f63565d));
                                    }
                                    F0().u0();
                                }
                            }
                            Bundle n02 = g10.n0();
                            m7 N02 = N0();
                            String str20 = i15.f62681d;
                            N02.A(n02, "_o", str20);
                            if (N0().P(str15, o7Var.f63440C)) {
                                N0().A(n02, "_dbg", 1L);
                                N0().A(n02, "_r", 1L);
                            }
                            if ("_s".equals(str19) && (D02 = F0().D0(o7Var.f63444b, "_sno")) != null) {
                                Object obj = D02.f63382e;
                                if (obj instanceof Long) {
                                    N0().A(n02, "_sno", obj);
                                }
                            }
                            if (B0().H(null, C12281e2.f63185Y0) && Objects.equals(str20, "am") && Objects.equals(str19, "_ai")) {
                                String str21 = str3;
                                Object obj2 = n02.get(str21);
                                if (obj2 instanceof String) {
                                    try {
                                        double parseDouble = Double.parseDouble((String) obj2);
                                        n02.remove(str21);
                                        n02.putDouble(str21, parseDouble);
                                    } catch (NumberFormatException unused) {
                                    }
                                }
                            }
                            C12421w F04 = F0();
                            G0.A.l(str15);
                            F04.h();
                            F04.j();
                            try {
                                str6 = str4;
                                try {
                                    j11 = F04.w0().delete(str6, "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)", new String[]{str15, String.valueOf(Math.max(0, Math.min(1000000, F04.f62917a.w().E(str15, C12281e2.f63231q))))});
                                } catch (SQLiteException e10) {
                                    e = e10;
                                    F04.f62917a.a().o().c("Error deleting over the limit events. appId", B2.x(str15), e);
                                    j11 = 0;
                                    if (j11 > 0) {
                                    }
                                    C12370p3 c12370p32 = this.f63098l;
                                    str7 = str6;
                                    d10 = new D(c12370p32, i15.f62681d, str15, i15.f62679b, i15.f62682e, 0L, n02);
                                    C12421w F05 = F0();
                                    String str22 = d10.f62587b;
                                    x02 = F05.x0(str15, str22);
                                    if (x02 == null) {
                                    }
                                    F0().y0(a10);
                                    b().h();
                                    O0();
                                    G0.A.r(d10);
                                    G0.A.r(o7Var);
                                    String str23 = d10.f62586a;
                                    G0.A.l(str23);
                                    str8 = o7Var.f63444b;
                                    G0.A.a(str23.equals(str8));
                                    C12125m3 j02 = C12134n3.j0();
                                    boolean z11 = true;
                                    j02.T(1);
                                    j02.v("android");
                                    if (!TextUtils.isEmpty(str8)) {
                                    }
                                    str9 = o7Var.f63447e;
                                    if (!TextUtils.isEmpty(str9)) {
                                    }
                                    str10 = o7Var.f63446d;
                                    if (!TextUtils.isEmpty(str10)) {
                                    }
                                    str11 = o7Var.f63464v;
                                    if (!TextUtils.isEmpty(str11)) {
                                    }
                                    j12 = o7Var.f63453k;
                                    if (j12 != -2147483648L) {
                                    }
                                    j02.G(o7Var.f63448f);
                                    str12 = o7Var.f63445c;
                                    if (!TextUtils.isEmpty(str12)) {
                                    }
                                    Z3 s11 = g((String) G0.A.r(str8)).s(Z3.f(o7Var.f63462t, 100));
                                    j02.G0(s11.k());
                                    C12227x7.a();
                                    if (!B0().H(str8, C12281e2.f63169Q0)) {
                                    }
                                    j13 = o7Var.f63449g;
                                    if (j13 != 0) {
                                    }
                                    j02.E0(o7Var.f63460r);
                                    h7 K02 = K0();
                                    C12018a4 c10 = C12018a4.c(K02.f62657b.f63098l.d().getContentResolver(), C12117l4.a("com.google.android.gms.measurement"), new Runnable() {
                                        @Override
                                        public final void run() {
                                            AbstractC12215w4.c();
                                        }
                                    });
                                    if (c10 != null) {
                                    }
                                    if (emptyMap != null) {
                                        arrayList = new ArrayList();
                                        int intValue2 = ((Integer) C12281e2.f63207g0.b(null)).intValue();
                                        while (r6.hasNext()) {
                                        }
                                        if (arrayList.isEmpty()) {
                                        }
                                        if (arrayList != null) {
                                        }
                                        if (B0().H(null, C12281e2.f63196c1)) {
                                        }
                                        str13 = o7Var.f63444b;
                                        s10 = g((String) G0.A.r(str13)).s(Z3.f(o7Var.f63462t, 100));
                                        y32 = Y3.AD_STORAGE;
                                        if (s10.o(y32)) {
                                        }
                                        z32 = s10;
                                        y33 = y32;
                                        str14 = "_r";
                                        c12370p3 = this.f63098l;
                                        c12370p3.K().l();
                                        j02.y(Build.MODEL);
                                        c12370p3.K().l();
                                        j02.x(Build.VERSION.RELEASE);
                                        j02.B((int) c12370p3.K().o());
                                        j02.A(c12370p3.K().p());
                                        j02.L0(o7Var.f63466x);
                                        if (c12370p3.g()) {
                                        }
                                        L02 = F0().L0(str13);
                                        if (L02 == null) {
                                        }
                                        if (z32.o(Y3.ANALYTICS_STORAGE)) {
                                        }
                                        if (!TextUtils.isEmpty(L02.x0())) {
                                        }
                                        E02 = F0().E0(str13);
                                        while (i13 < E02.size()) {
                                        }
                                        F02 = F0();
                                        c12134n3 = (C12134n3) j02.q();
                                        F02.h();
                                        F02.j();
                                        G0.A.r(c12134n3);
                                        G0.A.l(c12134n3.E());
                                        byte[] g11 = c12134n3.g();
                                        long T10 = F02.f62657b.K0().T(g11);
                                        ContentValues contentValues2 = new ContentValues();
                                        String str24 = str;
                                        contentValues2.put(str24, c12134n3.E());
                                        contentValues2.put("metadata_fingerprint", Long.valueOf(T10));
                                        contentValues2.put("metadata", g11);
                                        F02.w0().insertWithOnConflict("raw_events_metadata", null, contentValues2, 4);
                                        F03 = F0();
                                        f10 = new F(d10.f62591f);
                                        while (true) {
                                            if (f10.hasNext()) {
                                            }
                                        }
                                        F03.h();
                                        F03.j();
                                        G0.A.r(d10);
                                        String str25 = d10.f62586a;
                                        G0.A.l(str25);
                                        byte[] g12 = F03.f62657b.K0().J(d10).g();
                                        contentValues = new ContentValues();
                                        contentValues.put(str24, str25);
                                        contentValues.put("name", d10.f62587b);
                                        contentValues.put("timestamp", Long.valueOf(d10.f62589d));
                                        contentValues.put("metadata_fingerprint", Long.valueOf(T10));
                                        contentValues.put("data", g12);
                                        contentValues.put("realtime", Integer.valueOf(i14));
                                        if (F03.w0().insert(str7, null, contentValues) == -1) {
                                        }
                                        F0().u0();
                                        F0().v0();
                                        Q();
                                        a().w().b("Background event processing time, ms", Long.valueOf(((System.nanoTime() - nanoTime) + 500000) / C13143u0.f85788e));
                                        return;
                                    }
                                    arrayList = null;
                                    if (arrayList != null) {
                                    }
                                    if (B0().H(null, C12281e2.f63196c1)) {
                                    }
                                    str13 = o7Var.f63444b;
                                    s10 = g((String) G0.A.r(str13)).s(Z3.f(o7Var.f63462t, 100));
                                    y32 = Y3.AD_STORAGE;
                                    if (s10.o(y32)) {
                                    }
                                    z32 = s10;
                                    y33 = y32;
                                    str14 = "_r";
                                    c12370p3 = this.f63098l;
                                    c12370p3.K().l();
                                    j02.y(Build.MODEL);
                                    c12370p3.K().l();
                                    j02.x(Build.VERSION.RELEASE);
                                    j02.B((int) c12370p3.K().o());
                                    j02.A(c12370p3.K().p());
                                    j02.L0(o7Var.f63466x);
                                    if (c12370p3.g()) {
                                    }
                                    L02 = F0().L0(str13);
                                    if (L02 == null) {
                                    }
                                    if (z32.o(Y3.ANALYTICS_STORAGE)) {
                                    }
                                    if (!TextUtils.isEmpty(L02.x0())) {
                                    }
                                    E02 = F0().E0(str13);
                                    while (i13 < E02.size()) {
                                    }
                                    F02 = F0();
                                    c12134n3 = (C12134n3) j02.q();
                                    F02.h();
                                    F02.j();
                                    G0.A.r(c12134n3);
                                    G0.A.l(c12134n3.E());
                                    byte[] g112 = c12134n3.g();
                                    long T102 = F02.f62657b.K0().T(g112);
                                    ContentValues contentValues22 = new ContentValues();
                                    String str242 = str;
                                    contentValues22.put(str242, c12134n3.E());
                                    contentValues22.put("metadata_fingerprint", Long.valueOf(T102));
                                    contentValues22.put("metadata", g112);
                                    F02.w0().insertWithOnConflict("raw_events_metadata", null, contentValues22, 4);
                                    F03 = F0();
                                    f10 = new F(d10.f62591f);
                                    while (true) {
                                        if (f10.hasNext()) {
                                        }
                                    }
                                    F03.h();
                                    F03.j();
                                    G0.A.r(d10);
                                    String str252 = d10.f62586a;
                                    G0.A.l(str252);
                                    byte[] g122 = F03.f62657b.K0().J(d10).g();
                                    contentValues = new ContentValues();
                                    contentValues.put(str242, str252);
                                    contentValues.put("name", d10.f62587b);
                                    contentValues.put("timestamp", Long.valueOf(d10.f62589d));
                                    contentValues.put("metadata_fingerprint", Long.valueOf(T102));
                                    contentValues.put("data", g122);
                                    contentValues.put("realtime", Integer.valueOf(i14));
                                    if (F03.w0().insert(str7, null, contentValues) == -1) {
                                    }
                                    F0().u0();
                                    F0().v0();
                                    Q();
                                    a().w().b("Background event processing time, ms", Long.valueOf(((System.nanoTime() - nanoTime) + 500000) / C13143u0.f85788e));
                                    return;
                                }
                            } catch (SQLiteException e11) {
                                e = e11;
                                str6 = str4;
                            }
                            if (j11 > 0) {
                                a().r().c("Data lost. Too many events stored on disk, deleted. appId", B2.x(str15), Long.valueOf(j11));
                            }
                            C12370p3 c12370p322 = this.f63098l;
                            str7 = str6;
                            d10 = new D(c12370p322, i15.f62681d, str15, i15.f62679b, i15.f62682e, 0L, n02);
                            C12421w F052 = F0();
                            String str222 = d10.f62587b;
                            x02 = F052.x0(str15, str222);
                            if (x02 == null) {
                                d10 = d10.a(c12370p322, x02.f62605f);
                                a10 = x02.a(d10.f62589d);
                            } else if (F0().G(str15) < B0().z(str15) || !r02) {
                                a10 = new E(str15, str222, 0L, 0L, 0L, d10.f62589d, 0L, null, null, null, null);
                            } else {
                                a().o().d("Too many event names used, ignoring event. appId, name, supported count", B2.x(str15), c12370p322.D().a(str222), Integer.valueOf(B0().z(str15)));
                                N0().B(this.f63086J, str15, 8, null, null, 0);
                            }
                            F0().y0(a10);
                            b().h();
                            O0();
                            G0.A.r(d10);
                            G0.A.r(o7Var);
                            String str232 = d10.f62586a;
                            G0.A.l(str232);
                            str8 = o7Var.f63444b;
                            G0.A.a(str232.equals(str8));
                            C12125m3 j022 = C12134n3.j0();
                            boolean z112 = true;
                            j022.T(1);
                            j022.v("android");
                            if (!TextUtils.isEmpty(str8)) {
                                j022.E(str8);
                            }
                            str9 = o7Var.f63447e;
                            if (!TextUtils.isEmpty(str9)) {
                                j022.C(str9);
                            }
                            str10 = o7Var.f63446d;
                            if (!TextUtils.isEmpty(str10)) {
                                j022.F(str10);
                            }
                            str11 = o7Var.f63464v;
                            if (!TextUtils.isEmpty(str11)) {
                                j022.H0(str11);
                            }
                            j12 = o7Var.f63453k;
                            if (j12 != -2147483648L) {
                                j022.w0((int) j12);
                            }
                            j022.G(o7Var.f63448f);
                            str12 = o7Var.f63445c;
                            if (!TextUtils.isEmpty(str12)) {
                                j022.q0(str12);
                            }
                            Z3 s112 = g((String) G0.A.r(str8)).s(Z3.f(o7Var.f63462t, 100));
                            j022.G0(s112.k());
                            C12227x7.a();
                            if (!B0().H(str8, C12281e2.f63169Q0) && N0().L(str8)) {
                                j022.d0(o7Var.f63438A);
                                long j16 = o7Var.f63439B;
                                if (!s112.o(Y3.AD_STORAGE) && j16 != 0) {
                                    j16 = (j16 & (-2)) | 32;
                                }
                                j022.M0(j16 == 1);
                                if (j16 != 0) {
                                    com.google.android.gms.internal.measurement.M2 L10 = com.google.android.gms.internal.measurement.N2.L();
                                    if ((j16 & 1) == 0) {
                                        z112 = false;
                                    }
                                    L10.t(z112);
                                    L10.u((j16 & 2) != 0);
                                    L10.v((j16 & 4) != 0);
                                    L10.w((j16 & 8) != 0);
                                    L10.x((j16 & 16) != 0);
                                    L10.y((j16 & 32) != 0);
                                    L10.z((64 & j16) != 0);
                                    j022.e0((com.google.android.gms.internal.measurement.N2) L10.q());
                                }
                            }
                            j13 = o7Var.f63449g;
                            if (j13 != 0) {
                                j022.R(j13);
                            }
                            j022.E0(o7Var.f63460r);
                            h7 K022 = K0();
                            C12018a4 c102 = C12018a4.c(K022.f62657b.f63098l.d().getContentResolver(), C12117l4.a("com.google.android.gms.measurement"), new Runnable() {
                                @Override
                                public final void run() {
                                    AbstractC12215w4.c();
                                }
                            });
                            emptyMap = c102 != null ? Collections.emptyMap() : c102.d();
                            try {
                                if (emptyMap != null && !emptyMap.isEmpty()) {
                                    arrayList = new ArrayList();
                                    int intValue22 = ((Integer) C12281e2.f63207g0.b(null)).intValue();
                                    for (Map.Entry entry : emptyMap.entrySet()) {
                                        if (((String) entry.getKey()).startsWith("measurement.id.")) {
                                            try {
                                                int parseInt = Integer.parseInt((String) entry.getValue());
                                                if (parseInt != 0) {
                                                    arrayList.add(Integer.valueOf(parseInt));
                                                    if (arrayList.size() >= intValue22) {
                                                        K022.f62917a.a().r().b("Too many experiment IDs. Number of IDs", Integer.valueOf(arrayList.size()));
                                                        break;
                                                    }
                                                    continue;
                                                } else {
                                                    continue;
                                                }
                                            } catch (NumberFormatException e12) {
                                                K022.f62917a.a().r().b("Experiment ID NumberFormatException", e12);
                                            }
                                        }
                                    }
                                    if (arrayList.isEmpty()) {
                                    }
                                    if (arrayList != null) {
                                        j022.D0(arrayList);
                                    }
                                    if (B0().H(null, C12281e2.f63196c1)) {
                                        j022.l0("");
                                    }
                                    str13 = o7Var.f63444b;
                                    s10 = g((String) G0.A.r(str13)).s(Z3.f(o7Var.f63462t, 100));
                                    y32 = Y3.AD_STORAGE;
                                    if (s10.o(y32) && o7Var.f63457o) {
                                        m10 = this.f63095i.m(str13, s10);
                                        if (!TextUtils.isEmpty((CharSequence) m10.first)) {
                                            j022.J((String) m10.first);
                                            S s12 = m10.second;
                                            if (s12 != 0) {
                                                j022.M(((Boolean) s12).booleanValue());
                                            }
                                            String str26 = str2;
                                            if (!d10.f62587b.equals(str26) && !((String) m10.first).equals("00000000-0000-0000-0000-000000000000") && (L03 = F0().L0(str13)) != null && L03.d0()) {
                                                w(str13, false, null, null);
                                                Bundle bundle2 = new Bundle();
                                                Long f02 = L03.f0();
                                                if (f02 != null) {
                                                    long longValue2 = f02.longValue();
                                                    z32 = s10;
                                                    y33 = y32;
                                                    bundle2.putLong("_pfo", Math.max(0L, longValue2));
                                                } else {
                                                    z32 = s10;
                                                    y33 = y32;
                                                }
                                                Long h02 = L03.h0();
                                                if (h02 != null) {
                                                    bundle2.putLong("_uwa", h02.longValue());
                                                }
                                                str14 = "_r";
                                                bundle2.putLong(str14, 1L);
                                                this.f63086J.a(str13, str26, bundle2);
                                                c12370p3 = this.f63098l;
                                                c12370p3.K().l();
                                                j022.y(Build.MODEL);
                                                c12370p3.K().l();
                                                j022.x(Build.VERSION.RELEASE);
                                                j022.B((int) c12370p3.K().o());
                                                j022.A(c12370p3.K().p());
                                                j022.L0(o7Var.f63466x);
                                                if (c12370p3.g()) {
                                                    j022.D();
                                                    if (!TextUtils.isEmpty(null)) {
                                                        j022.z0(null);
                                                    }
                                                }
                                                L02 = F0().L0(str13);
                                                if (L02 == null) {
                                                    L02 = new I2(c12370p3, str13);
                                                    L02.q0(p(z32));
                                                    L02.y0(o7Var.f63454l);
                                                    L02.s0(o7Var.f63445c);
                                                    if (z32.o(y33)) {
                                                        L02.w0(this.f63095i.o(str13, o7Var.f63457o));
                                                    }
                                                    L02.f(0L);
                                                    L02.A0(0L);
                                                    L02.C0(0L);
                                                    L02.E0(o7Var.f63446d);
                                                    L02.G0(o7Var.f63453k);
                                                    L02.I0(o7Var.f63447e);
                                                    L02.K0(o7Var.f63448f);
                                                    L02.a(o7Var.f63449g);
                                                    L02.e(o7Var.f63451i);
                                                    L02.c(o7Var.f63460r);
                                                    i12 = 0;
                                                    F0().M0(L02, false, false);
                                                } else {
                                                    i12 = 0;
                                                }
                                                if (z32.o(Y3.ANALYTICS_STORAGE) && !TextUtils.isEmpty(L02.p0())) {
                                                    j022.P((String) G0.A.r(L02.p0()));
                                                }
                                                if (!TextUtils.isEmpty(L02.x0())) {
                                                    j022.u0((String) G0.A.r(L02.x0()));
                                                }
                                                E02 = F0().E0(str13);
                                                for (i13 = i12; i13 < E02.size(); i13++) {
                                                    com.google.android.gms.internal.measurement.D3 P10 = com.google.android.gms.internal.measurement.E3.P();
                                                    P10.u(((k7) E02.get(i13)).f63380c);
                                                    P10.t(((k7) E02.get(i13)).f63381d);
                                                    K0().G(P10, ((k7) E02.get(i13)).f63382e);
                                                    j022.b1(P10);
                                                    if ("_sid".equals(((k7) E02.get(i13)).f63380c) && L02.Z() != 0 && K0().U(o7Var.f63464v) != L02.Z()) {
                                                        j022.I0();
                                                    }
                                                }
                                                F02 = F0();
                                                c12134n3 = (C12134n3) j022.q();
                                                F02.h();
                                                F02.j();
                                                G0.A.r(c12134n3);
                                                G0.A.l(c12134n3.E());
                                                byte[] g1122 = c12134n3.g();
                                                long T1022 = F02.f62657b.K0().T(g1122);
                                                ContentValues contentValues222 = new ContentValues();
                                                String str2422 = str;
                                                contentValues222.put(str2422, c12134n3.E());
                                                contentValues222.put("metadata_fingerprint", Long.valueOf(T1022));
                                                contentValues222.put("metadata", g1122);
                                                F02.w0().insertWithOnConflict("raw_events_metadata", null, contentValues222, 4);
                                                F03 = F0();
                                                f10 = new F(d10.f62591f);
                                                while (true) {
                                                    if (f10.hasNext()) {
                                                        if (str14.equals(f10.next())) {
                                                            break;
                                                        }
                                                    } else {
                                                        C12266c3 D04 = D0();
                                                        String str27 = d10.f62586a;
                                                        boolean E10 = D04.E(str27, d10.f62587b);
                                                        C12389s N03 = F0().N0(h(), str27, false, false, false, false, false, false, false);
                                                        if (!E10 || N03.f63566e >= B0().E(str27, C12281e2.f63229p)) {
                                                            i14 = 0;
                                                        }
                                                    }
                                                }
                                                F03.h();
                                                F03.j();
                                                G0.A.r(d10);
                                                String str2522 = d10.f62586a;
                                                G0.A.l(str2522);
                                                byte[] g1222 = F03.f62657b.K0().J(d10).g();
                                                contentValues = new ContentValues();
                                                contentValues.put(str2422, str2522);
                                                contentValues.put("name", d10.f62587b);
                                                contentValues.put("timestamp", Long.valueOf(d10.f62589d));
                                                contentValues.put("metadata_fingerprint", Long.valueOf(T1022));
                                                contentValues.put("data", g1222);
                                                contentValues.put("realtime", Integer.valueOf(i14));
                                                if (F03.w0().insert(str7, null, contentValues) == -1) {
                                                    F03.f62917a.a().o().b("Failed to insert raw event (got -1). appId", B2.x(str2522));
                                                } else {
                                                    this.f63101o = 0L;
                                                }
                                                F0().u0();
                                                F0().v0();
                                                Q();
                                                a().w().b("Background event processing time, ms", Long.valueOf(((System.nanoTime() - nanoTime) + 500000) / C13143u0.f85788e));
                                                return;
                                            }
                                        }
                                    }
                                    z32 = s10;
                                    y33 = y32;
                                    str14 = "_r";
                                    c12370p3 = this.f63098l;
                                    c12370p3.K().l();
                                    j022.y(Build.MODEL);
                                    c12370p3.K().l();
                                    j022.x(Build.VERSION.RELEASE);
                                    j022.B((int) c12370p3.K().o());
                                    j022.A(c12370p3.K().p());
                                    j022.L0(o7Var.f63466x);
                                    if (c12370p3.g()) {
                                    }
                                    L02 = F0().L0(str13);
                                    if (L02 == null) {
                                    }
                                    if (z32.o(Y3.ANALYTICS_STORAGE)) {
                                        j022.P((String) G0.A.r(L02.p0()));
                                    }
                                    if (!TextUtils.isEmpty(L02.x0())) {
                                    }
                                    E02 = F0().E0(str13);
                                    while (i13 < E02.size()) {
                                    }
                                    F02 = F0();
                                    c12134n3 = (C12134n3) j022.q();
                                    F02.h();
                                    F02.j();
                                    G0.A.r(c12134n3);
                                    G0.A.l(c12134n3.E());
                                    byte[] g11222 = c12134n3.g();
                                    long T10222 = F02.f62657b.K0().T(g11222);
                                    ContentValues contentValues2222 = new ContentValues();
                                    String str24222 = str;
                                    contentValues2222.put(str24222, c12134n3.E());
                                    contentValues2222.put("metadata_fingerprint", Long.valueOf(T10222));
                                    contentValues2222.put("metadata", g11222);
                                    F02.w0().insertWithOnConflict("raw_events_metadata", null, contentValues2222, 4);
                                    F03 = F0();
                                    f10 = new F(d10.f62591f);
                                    while (true) {
                                        if (f10.hasNext()) {
                                        }
                                    }
                                    F03.h();
                                    F03.j();
                                    G0.A.r(d10);
                                    String str25222 = d10.f62586a;
                                    G0.A.l(str25222);
                                    byte[] g12222 = F03.f62657b.K0().J(d10).g();
                                    contentValues = new ContentValues();
                                    contentValues.put(str24222, str25222);
                                    contentValues.put("name", d10.f62587b);
                                    contentValues.put("timestamp", Long.valueOf(d10.f62589d));
                                    contentValues.put("metadata_fingerprint", Long.valueOf(T10222));
                                    contentValues.put("data", g12222);
                                    contentValues.put("realtime", Integer.valueOf(i14));
                                    if (F03.w0().insert(str7, null, contentValues) == -1) {
                                    }
                                    F0().u0();
                                    F0().v0();
                                    Q();
                                    a().w().b("Background event processing time, ms", Long.valueOf(((System.nanoTime() - nanoTime) + 500000) / C13143u0.f85788e));
                                    return;
                                }
                                F02.w0().insertWithOnConflict("raw_events_metadata", null, contentValues2222, 4);
                                F03 = F0();
                                f10 = new F(d10.f62591f);
                                while (true) {
                                    if (f10.hasNext()) {
                                    }
                                }
                                F03.h();
                                F03.j();
                                G0.A.r(d10);
                                String str252222 = d10.f62586a;
                                G0.A.l(str252222);
                                byte[] g122222 = F03.f62657b.K0().J(d10).g();
                                contentValues = new ContentValues();
                                contentValues.put(str24222, str252222);
                                contentValues.put("name", d10.f62587b);
                                contentValues.put("timestamp", Long.valueOf(d10.f62589d));
                                contentValues.put("metadata_fingerprint", Long.valueOf(T10222));
                                contentValues.put("data", g122222);
                                contentValues.put("realtime", Integer.valueOf(i14));
                                if (F03.w0().insert(str7, null, contentValues) == -1) {
                                }
                                F0().u0();
                                F0().v0();
                                Q();
                                a().w().b("Background event processing time, ms", Long.valueOf(((System.nanoTime() - nanoTime) + 500000) / C13143u0.f85788e));
                                return;
                            } catch (SQLiteException e13) {
                                F02.f62917a.a().o().c("Error storing raw event metadata. appId", B2.x(c12134n3.E()), e13);
                                throw e13;
                            }
                            arrayList = null;
                            if (arrayList != null) {
                            }
                            if (B0().H(null, C12281e2.f63196c1)) {
                            }
                            str13 = o7Var.f63444b;
                            s10 = g((String) G0.A.r(str13)).s(Z3.f(o7Var.f63462t, 100));
                            y32 = Y3.AD_STORAGE;
                            if (s10.o(y32)) {
                                m10 = this.f63095i.m(str13, s10);
                                if (!TextUtils.isEmpty((CharSequence) m10.first)) {
                                }
                            }
                            z32 = s10;
                            y33 = y32;
                            str14 = "_r";
                            c12370p3 = this.f63098l;
                            c12370p3.K().l();
                            j022.y(Build.MODEL);
                            c12370p3.K().l();
                            j022.x(Build.VERSION.RELEASE);
                            j022.B((int) c12370p3.K().o());
                            j022.A(c12370p3.K().p());
                            j022.L0(o7Var.f63466x);
                            if (c12370p3.g()) {
                            }
                            L02 = F0().L0(str13);
                            if (L02 == null) {
                            }
                            if (z32.o(Y3.ANALYTICS_STORAGE)) {
                            }
                            if (!TextUtils.isEmpty(L02.x0())) {
                            }
                            E02 = F0().E0(str13);
                            while (i13 < E02.size()) {
                            }
                            F02 = F0();
                            c12134n3 = (C12134n3) j022.q();
                            F02.h();
                            F02.j();
                            G0.A.r(c12134n3);
                            G0.A.l(c12134n3.E());
                            byte[] g112222 = c12134n3.g();
                            long T102222 = F02.f62657b.K0().T(g112222);
                            ContentValues contentValues22222 = new ContentValues();
                            String str242222 = str;
                            contentValues22222.put(str242222, c12134n3.E());
                            contentValues22222.put("metadata_fingerprint", Long.valueOf(T102222));
                            contentValues22222.put("metadata", g112222);
                        }
                        F0().v0();
                    }
                    z10 = true;
                }
                G g13 = b10.f62680c;
                String t10 = g13.t(FirebaseAnalytics.d.f67703i);
                if (z10) {
                    double doubleValue = g13.p("value").doubleValue() * 1000000.0d;
                    if (doubleValue == 0.0d) {
                        str = "app_id";
                        str2 = "_fx";
                        doubleValue = g13.n("value").longValue() * 1000000.0d;
                    } else {
                        str = "app_id";
                        str2 = "_fx";
                    }
                    if (doubleValue > 9.223372036854776E18d || doubleValue < -9.223372036854776E18d) {
                        a().r().c("Data lost. Currency value is too big. appId", B2.x(str15), Double.valueOf(doubleValue));
                        F0().u0();
                        F0().v0();
                    } else {
                        longValue = Math.round(doubleValue);
                        if (FirebaseAnalytics.c.f67630E.equals(str18)) {
                            longValue = -longValue;
                        }
                    }
                } else {
                    str = "app_id";
                    str2 = "_fx";
                    longValue = g13.n("value").longValue();
                }
                if (!TextUtils.isEmpty(t10)) {
                    String upperCase = t10.toUpperCase(Locale.US);
                    if (upperCase.matches("[A-Z]{3}")) {
                        String concat = "_ltv_".concat(upperCase);
                        k7 D05 = F0().D0(str15, concat);
                        if (D05 != null) {
                            Object obj3 = D05.f63382e;
                            if (obj3 instanceof Long) {
                                str4 = "raw_events";
                                i11 = b10;
                                str3 = "value";
                                str5 = "_err";
                                k7Var = new k7(str15, b10.f62681d, concat, e().a(), Long.valueOf(((Long) obj3).longValue() + longValue));
                                k7Var2 = k7Var;
                                if (!F0().C0(k7Var2)) {
                                    a().o().d("Too many unique user properties are set. Ignoring user property. appId", B2.x(str15), this.f63098l.D().c(k7Var2.f63380c), k7Var2.f63382e);
                                    N0().B(this.f63086J, str15, 9, null, null, 0);
                                }
                                String str192 = i11.f62679b;
                                boolean r022 = m7.r0(str192);
                                boolean equals2 = str5.equals(str192);
                                N0();
                                g10 = i11.f62680c;
                                if (g10 != null) {
                                }
                                I i152 = i11;
                                C12389s O022 = F0().O0(h(), str15, j10 + 1, true, r022, false, equals2, false, false, false);
                                long j142 = O022.f63563b;
                                B0();
                                p10 = j142 - C12342m.p();
                                if (p10 <= 0) {
                                }
                                F0().v0();
                            }
                        }
                        str3 = "value";
                        str4 = "raw_events";
                        i11 = b10;
                        str5 = "_err";
                        C12421w F06 = F0();
                        int E11 = B0().E(str15, C12281e2.f63176U) - 1;
                        G0.A.l(str15);
                        F06.h();
                        F06.j();
                        F06.w0().execSQL("delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like '!_ltv!_%' escape '!'order by set_timestamp desc limit ?,10);", new String[]{str15, str15, String.valueOf(E11)});
                        k7Var = new k7(str15, i11.f62681d, concat, e().a(), Long.valueOf(longValue));
                        k7Var2 = k7Var;
                        if (!F0().C0(k7Var2)) {
                        }
                        String str1922 = i11.f62679b;
                        boolean r0222 = m7.r0(str1922);
                        boolean equals22 = str5.equals(str1922);
                        N0();
                        g10 = i11.f62680c;
                        if (g10 != null) {
                        }
                        I i1522 = i11;
                        C12389s O0222 = F0().O0(h(), str15, j10 + 1, true, r0222, false, equals22, false, false, false);
                        long j1422 = O0222.f63563b;
                        B0();
                        p10 = j1422 - C12342m.p();
                        if (p10 <= 0) {
                        }
                        F0().v0();
                    }
                }
                str3 = "value";
                str4 = "raw_events";
                i11 = b10;
                str5 = "_err";
                String str19222 = i11.f62679b;
                boolean r02222 = m7.r0(str19222);
                boolean equals222 = str5.equals(str19222);
                N0();
                g10 = i11.f62680c;
                if (g10 != null) {
                }
                I i15222 = i11;
                C12389s O02222 = F0().O0(h(), str15, j10 + 1, true, r02222, false, equals222, false, false, false);
                long j14222 = O02222.f63563b;
                B0();
                p10 = j14222 - C12342m.p();
                if (p10 <= 0) {
                }
                F0().v0();
            } catch (Throwable th2) {
                F0().v0();
                throw th2;
            }
        }
    }

    @WorkerThread
    public final void m0(o7 o7Var, long j10) {
        I2 L02 = F0().L0((String) G0.A.r(o7Var.f63444b));
        if (L02 != null && N0().p(o7Var.f63445c, L02.r0())) {
            a().r().b("New GMP App Id passed in. Removing cached database data. appId", B2.x(L02.o0()));
            C12421w F02 = F0();
            String o02 = L02.o0();
            F02.j();
            F02.h();
            G0.A.l(o02);
            try {
                SQLiteDatabase w02 = F02.w0();
                String[] strArr = {o02};
                int delete = w02.delete("events", "app_id=?", strArr) + w02.delete("user_attributes", "app_id=?", strArr) + w02.delete("conditional_properties", "app_id=?", strArr) + w02.delete("apps", "app_id=?", strArr) + w02.delete("raw_events", "app_id=?", strArr) + w02.delete("raw_events_metadata", "app_id=?", strArr) + w02.delete("event_filters", "app_id=?", strArr) + w02.delete("property_filters", "app_id=?", strArr) + w02.delete("audience_filter_values", "app_id=?", strArr) + w02.delete("consent_settings", "app_id=?", strArr) + w02.delete("default_event_params", "app_id=?", strArr) + w02.delete("trigger_uris", "app_id=?", strArr);
                com.google.android.gms.internal.measurement.V6.a();
                C12370p3 c12370p3 = F02.f62917a;
                if (c12370p3.w().H(null, C12281e2.f63217j1)) {
                    delete += w02.delete("no_data_mode_events", "app_id=?", strArr);
                }
                if (delete > 0) {
                    c12370p3.a().w().c("Deleted application data. app, records", o02, Integer.valueOf(delete));
                }
            } catch (SQLiteException e10) {
                F02.f62917a.a().o().c("Error deleting application data. appId, error", B2.x(o02), e10);
            }
            L02 = null;
        }
        if (L02 != null) {
            boolean z10 = (L02.F0() == -2147483648L || L02.F0() == o7Var.f63453k) ? false : true;
            String D02 = L02.D0();
            if (z10 || ((L02.F0() != -2147483648L || D02 == null || D02.equals(o7Var.f63446d)) ? false : true)) {
                Bundle bundle = new Bundle();
                bundle.putString("_pv", D02);
                I i10 = new I("_au", new G(bundle), "auto", j10);
                if (B0().H(null, C12281e2.f63202e1)) {
                    j(i10, o7Var);
                } else {
                    k(i10, o7Var);
                }
            }
        }
    }

    @WorkerThread
    public final void n(I2 i22, C12125m3 c12125m3) {
        com.google.android.gms.internal.measurement.E3 e32;
        b().h();
        O0();
        C12358o d10 = C12358o.d(c12125m3.U());
        String o02 = i22.o0();
        b().h();
        O0();
        Z3 g10 = g(o02);
        W3 w32 = W3.UNINITIALIZED;
        int ordinal = g10.p().ordinal();
        if (ordinal == 1) {
            d10.c(Y3.AD_STORAGE, EnumC12350n.REMOTE_ENFORCED_DEFAULT);
        } else if (ordinal == 2 || ordinal == 3) {
            d10.b(Y3.AD_STORAGE, g10.b());
        } else {
            d10.c(Y3.AD_STORAGE, EnumC12350n.FAILSAFE);
        }
        int ordinal2 = g10.q().ordinal();
        if (ordinal2 == 1) {
            d10.c(Y3.ANALYTICS_STORAGE, EnumC12350n.REMOTE_ENFORCED_DEFAULT);
        } else if (ordinal2 == 2 || ordinal2 == 3) {
            d10.b(Y3.ANALYTICS_STORAGE, g10.b());
        } else {
            d10.c(Y3.ANALYTICS_STORAGE, EnumC12350n.FAILSAFE);
        }
        String o03 = i22.o0();
        b().h();
        O0();
        A T02 = T0(o03, R0(o03), g(o03), d10);
        c12125m3.X(((Boolean) G0.A.r(T02.j())).booleanValue());
        if (!TextUtils.isEmpty(T02.k())) {
            c12125m3.Z(T02.k());
        }
        b().h();
        O0();
        Iterator it = c12125m3.W0().iterator();
        while (true) {
            if (it.hasNext()) {
                e32 = (com.google.android.gms.internal.measurement.E3) it.next();
                if ("_npa".equals(e32.G())) {
                    break;
                }
            } else {
                e32 = null;
                break;
            }
        }
        if (e32 != null) {
            Y3 y32 = Y3.AD_PERSONALIZATION;
            if (d10.a(y32) == EnumC12350n.UNSET) {
                k7 D02 = F0().D0(i22.o0(), "_npa");
                if (D02 != null) {
                    String str = D02.f63379b;
                    if ("tcf".equals(str)) {
                        d10.c(y32, EnumC12350n.TCF);
                    } else if ("app".equals(str)) {
                        d10.c(y32, EnumC12350n.API);
                    } else {
                        d10.c(y32, EnumC12350n.MANIFEST);
                    }
                } else {
                    Boolean R10 = i22.R();
                    if (R10 == null || ((R10.booleanValue() && e32.K() != 1) || !(R10.booleanValue() || e32.K() == 0))) {
                        d10.c(y32, EnumC12350n.API);
                    } else {
                        d10.c(y32, EnumC12350n.MANIFEST);
                    }
                }
            }
        } else {
            int H10 = H(i22.o0(), d10);
            com.google.android.gms.internal.measurement.D3 P10 = com.google.android.gms.internal.measurement.E3.P();
            P10.u("_npa");
            P10.t(e().a());
            P10.x(H10);
            c12125m3.a1((com.google.android.gms.internal.measurement.E3) P10.q());
            a().w().c("Setting user property", "non_personalized_ads(_npa)", Integer.valueOf(H10));
        }
        c12125m3.V(d10.toString());
        boolean S10 = this.f63087a.S(i22.o0());
        List N02 = c12125m3.N0();
        int i10 = 0;
        for (int i11 = 0; i11 < N02.size(); i11++) {
            if ("_tcf".equals(((C12026b3) N02.get(i11)).H())) {
                C12017a3 c12017a3 = (C12017a3) ((C12026b3) N02.get(i11)).q();
                List t10 = c12017a3.t();
                int i12 = 0;
                while (true) {
                    if (i12 >= t10.size()) {
                        break;
                    }
                    if ("_tcfd".equals(((C12062f3) t10.get(i12)).F())) {
                        String H11 = ((C12062f3) t10.get(i12)).H();
                        if (S10 && H11.length() > 4) {
                            char[] charArray = H11.toCharArray();
                            int i13 = 1;
                            while (true) {
                                if (i13 >= 64) {
                                    break;
                                }
                                if (charArray[4] == "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_".charAt(i13)) {
                                    i10 = i13;
                                    break;
                                }
                                i13++;
                            }
                            charArray[4] = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_".charAt(i10 | 1);
                            H11 = String.valueOf(charArray);
                        }
                        C12053e3 Q10 = C12062f3.Q();
                        Q10.u("_tcfd");
                        Q10.w(H11);
                        c12017a3.x(i12, Q10);
                    } else {
                        i12++;
                    }
                }
                c12125m3.R0(i11, c12017a3);
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x01df, code lost:
    
        if (r11 != false) goto L77;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x01c5  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01e2  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x019a  */
    @WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final I2 n0(o7 o7Var) {
        boolean z10;
        String str;
        long j10;
        String str2;
        String str3;
        String str4;
        b().h();
        O0();
        G0.A.r(o7Var);
        String str5 = o7Var.f63444b;
        G0.A.l(str5);
        String str6 = o7Var.f63463u;
        byte[] bArr = null;
        if (!str6.isEmpty()) {
            this.f63080D.put(str5, new Z6(this, str6, bArr));
        }
        I2 L02 = F0().L0(str5);
        Z3 s10 = g(str5).s(Z3.f(o7Var.f63462t, 100));
        Y3 y32 = Y3.AD_STORAGE;
        String o10 = s10.o(y32) ? this.f63095i.o(str5, o7Var.f63457o) : "";
        boolean z11 = true;
        if (L02 == null) {
            I2 i22 = new I2(this.f63098l, str5);
            if (s10.o(Y3.ANALYTICS_STORAGE)) {
                i22.q0(p(s10));
            }
            if (s10.o(y32)) {
                i22.w0(o10);
            }
            L02 = i22;
        } else if (s10.o(y32) && o10 != null && !o10.equals(L02.v0())) {
            boolean isEmpty = TextUtils.isEmpty(L02.v0());
            L02.w0(o10);
            if (o7Var.f63457o && !"00000000-0000-0000-0000-000000000000".equals(this.f63095i.m(str5, s10).first) && !isEmpty) {
                if (s10.o(Y3.ANALYTICS_STORAGE)) {
                    L02.q0(p(s10));
                    z10 = false;
                } else {
                    z10 = true;
                }
                if (F0().D0(str5, "_id") != null && F0().D0(str5, "_lair") == null) {
                    F0().C0(new k7(str5, "auto", "_lair", e().a(), 1L));
                }
                L02.s0(o7Var.f63445c);
                str = o7Var.f63454l;
                if (!TextUtils.isEmpty(str)) {
                    L02.y0(str);
                }
                j10 = o7Var.f63448f;
                if (j10 != 0) {
                    L02.K0(j10);
                }
                str2 = o7Var.f63446d;
                if (!TextUtils.isEmpty(str2)) {
                    L02.E0(str2);
                }
                L02.G0(o7Var.f63453k);
                str3 = o7Var.f63447e;
                if (str3 != null) {
                    L02.I0(str3);
                }
                L02.a(o7Var.f63449g);
                L02.e(o7Var.f63451i);
                str4 = o7Var.f63450h;
                if (!TextUtils.isEmpty(str4)) {
                    L02.O(str4);
                }
                L02.Q(o7Var.f63457o);
                L02.S(o7Var.f63459q);
                L02.c(o7Var.f63460r);
                L02.u0(o7Var.f63464v);
                com.google.android.gms.internal.measurement.Y6.a();
                if (B0().H(null, C12281e2.f63161M0)) {
                    com.google.android.gms.internal.measurement.Y6.a();
                    if (B0().H(null, C12281e2.f63159L0)) {
                        L02.U(null);
                    }
                } else {
                    L02.U(o7Var.f63461s);
                }
                L02.W(o7Var.f63465w);
                L02.m0(o7Var.f63440C);
                C12227x7.a();
                if (B0().H(null, C12281e2.f63169Q0)) {
                    L02.c0(o7Var.f63438A);
                }
                L02.Y(o7Var.f63466x);
                L02.H(o7Var.f63441D);
                L02.L(o7Var.f63443F);
                if (!L02.A()) {
                    z11 = z10;
                }
                F0().M0(L02, z11, false);
                return L02;
            }
            if (TextUtils.isEmpty(L02.p0()) && s10.o(Y3.ANALYTICS_STORAGE)) {
                L02.q0(p(s10));
            }
        } else if (TextUtils.isEmpty(L02.p0()) && s10.o(Y3.ANALYTICS_STORAGE)) {
            L02.q0(p(s10));
        }
        z10 = false;
        L02.s0(o7Var.f63445c);
        str = o7Var.f63454l;
        if (!TextUtils.isEmpty(str)) {
        }
        j10 = o7Var.f63448f;
        if (j10 != 0) {
        }
        str2 = o7Var.f63446d;
        if (!TextUtils.isEmpty(str2)) {
        }
        L02.G0(o7Var.f63453k);
        str3 = o7Var.f63447e;
        if (str3 != null) {
        }
        L02.a(o7Var.f63449g);
        L02.e(o7Var.f63451i);
        str4 = o7Var.f63450h;
        if (!TextUtils.isEmpty(str4)) {
        }
        L02.Q(o7Var.f63457o);
        L02.S(o7Var.f63459q);
        L02.c(o7Var.f63460r);
        L02.u0(o7Var.f63464v);
        com.google.android.gms.internal.measurement.Y6.a();
        if (B0().H(null, C12281e2.f63161M0)) {
        }
        L02.W(o7Var.f63465w);
        L02.m0(o7Var.f63440C);
        C12227x7.a();
        if (B0().H(null, C12281e2.f63169Q0)) {
        }
        L02.Y(o7Var.f63466x);
        L02.H(o7Var.f63441D);
        L02.L(o7Var.f63443F);
        if (!L02.A()) {
        }
        F0().M0(L02, z11, false);
        return L02;
    }

    @WorkerThread
    public final void o(I2 i22, C12125m3 c12125m3) {
        b().h();
        O0();
        com.google.android.gms.internal.measurement.F2 e02 = com.google.android.gms.internal.measurement.J2.e0();
        byte[] K10 = i22.K();
        if (K10 != null) {
            try {
                e02 = (com.google.android.gms.internal.measurement.F2) h7.W(e02, K10);
            } catch (zzmq unused) {
                a().r().b("Failed to parse locally stored ad campaign info. appId", B2.x(i22.o0()));
            }
        }
        for (C12026b3 c12026b3 : c12125m3.N0()) {
            if (c12026b3.H().equals("_cmp")) {
                String str = (String) h7.v(c12026b3, "gclid", "");
                String str2 = (String) h7.v(c12026b3, "gbraid", "");
                String str3 = (String) h7.v(c12026b3, "gad_source", "");
                String[] split = ((String) C12281e2.f63214i1.b(null)).split(DocLint.SEPARATOR);
                K0();
                if (!h7.s(c12026b3, split).isEmpty()) {
                    long longValue = ((Long) h7.v(c12026b3, "click_timestamp", 0L)).longValue();
                    if (longValue <= 0) {
                        longValue = c12026b3.J();
                    }
                    if ("referrer API v2".equals(h7.u(c12026b3, "_cis"))) {
                        if (longValue > e02.H()) {
                            if (str.isEmpty()) {
                                e02.C();
                            } else {
                                e02.B(str);
                            }
                            if (str2.isEmpty()) {
                                e02.E();
                            } else {
                                e02.D(str2);
                            }
                            if (str3.isEmpty()) {
                                e02.G();
                            } else {
                                e02.F(str3);
                            }
                            e02.I(longValue);
                            e02.L();
                            e02.M(I(c12026b3));
                        }
                    } else if (longValue > e02.z()) {
                        if (str.isEmpty()) {
                            e02.u();
                        } else {
                            e02.t(str);
                        }
                        if (str2.isEmpty()) {
                            e02.w();
                        } else {
                            e02.v(str2);
                        }
                        if (str3.isEmpty()) {
                            e02.y();
                        } else {
                            e02.x(str3);
                        }
                        e02.A(longValue);
                        e02.J();
                        e02.K(I(c12026b3));
                    }
                }
            }
        }
        if (!((com.google.android.gms.internal.measurement.J2) e02.q()).equals(com.google.android.gms.internal.measurement.J2.f0())) {
            c12125m3.i0((com.google.android.gms.internal.measurement.J2) e02.q());
        }
        i22.J(((com.google.android.gms.internal.measurement.J2) e02.q()).g());
        if (i22.A()) {
            F0().M0(i22, false, false);
        }
        if (B0().H(null, C12281e2.f63211h1)) {
            F0().B0(i22.o0(), "_lgclid");
        }
    }

    public final String o0(o7 o7Var) {
        try {
            return (String) b().r(new U6(this, o7Var)).get(JobInfo.DEFAULT_INITIAL_BACKOFF_MILLIS, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e10) {
            a().o().c("Failed to get app instance id. appId", B2.x(o7Var.f63444b), e10);
            return null;
        }
    }

    @WorkerThread
    public final String p(Z3 z32) {
        if (!z32.o(Y3.ANALYTICS_STORAGE)) {
            return null;
        }
        byte[] bArr = new byte[16];
        N0().q0().nextBytes(bArr);
        return String.format(Locale.US, "%032x", new BigInteger(1, bArr));
    }

    @WorkerThread
    public final List p0(o7 o7Var, Bundle bundle) {
        b().h();
        C12227x7.a();
        C12342m B02 = B0();
        String str = o7Var.f63444b;
        if (!B02.H(str, C12281e2.f63169Q0) || str == null) {
            return new ArrayList();
        }
        if (bundle != null) {
            int[] intArray = bundle.getIntArray("uriSources");
            long[] longArray = bundle.getLongArray("uriTimestamps");
            if (intArray != null) {
                if (longArray == null || longArray.length != intArray.length) {
                    a().o().a("Uri sources and timestamps do not match");
                } else {
                    for (int i10 = 0; i10 < intArray.length; i10++) {
                        C12421w F02 = F0();
                        int i11 = intArray[i10];
                        long j10 = longArray[i10];
                        G0.A.l(str);
                        F02.h();
                        F02.j();
                        try {
                            int delete = F02.w0().delete("trigger_uris", "app_id=? and source=? and timestamp_millis<=?", new String[]{str, String.valueOf(i11), String.valueOf(j10)});
                            C12448z2 w10 = F02.f62917a.a().w();
                            StringBuilder sb2 = new StringBuilder(String.valueOf(delete).length() + 46);
                            sb2.append("Pruned ");
                            sb2.append(delete);
                            sb2.append(" trigger URIs. appId, source, timestamp");
                            w10.d(sb2.toString(), str, Integer.valueOf(i11), Long.valueOf(j10));
                        } catch (SQLiteException e10) {
                            F02.f62917a.a().o().c("Error pruning trigger URIs. appId", B2.x(str), e10);
                        }
                    }
                }
            }
        }
        C12421w F03 = F0();
        String str2 = o7Var.f63444b;
        G0.A.l(str2);
        F03.h();
        F03.j();
        List arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            try {
                cursor = F03.w0().query("trigger_uris", new String[]{"trigger_uri", "timestamp_millis", "source"}, "app_id=?", new String[]{str2}, null, null, "rowid", null);
                if (cursor.moveToFirst()) {
                    do {
                        String string = cursor.getString(0);
                        if (string == null) {
                            string = "";
                        }
                        arrayList.add(new C6(string, cursor.getLong(1), cursor.getInt(2)));
                    } while (cursor.moveToNext());
                }
            } catch (SQLiteException e11) {
                F03.f62917a.a().o().c("Error querying trigger uris. appId", B2.x(str2), e11);
                arrayList = Collections.emptyList();
            }
            if (cursor != null) {
                cursor.close();
            }
            return arrayList;
        } catch (Throwable th2) {
            if (cursor != null) {
                cursor.close();
            }
            throw th2;
        }
    }

    @VisibleForTesting
    public final void q(List list) {
        G0.A.a(!list.isEmpty());
        if (this.f63111y != null) {
            a().o().a("Set uploading progress before finishing the previous upload");
        } else {
            this.f63111y = new ArrayList(list);
        }
    }

    @WorkerThread
    public final void q0(String str, C12294g c12294g) {
        b().h();
        O0();
        C12421w F02 = F0();
        long j10 = c12294g.f63298b;
        f7 n10 = F02.n(j10);
        if (n10 == null) {
            a().r().c("[sgtm] Queued batch doesn't exist. appId, rowId", str, Long.valueOf(j10));
            return;
        }
        String e10 = n10.e();
        if (c12294g.f63299c != EnumC12324j5.SUCCESS.N1()) {
            if (c12294g.f63299c == EnumC12324j5.BACKOFF.N1()) {
                Map map = this.f63081E;
                a7 a7Var = (a7) map.get(e10);
                if (a7Var == null) {
                    a7Var = new a7(this);
                    map.put(e10, a7Var);
                } else {
                    a7Var.a();
                }
                a().w().d("[sgtm] Putting sGTM server in backoff mode. appId, destination, nextRetryInSeconds", str, e10, Long.valueOf((a7Var.c() - e().a()) / 1000));
            }
            C12421w F03 = F0();
            Long valueOf = Long.valueOf(c12294g.f63298b);
            F03.w(valueOf);
            a().w().c("[sgtm] increased batch retry count after failed client upload. appId, rowId", str, valueOf);
            return;
        }
        Map map2 = this.f63081E;
        if (map2.containsKey(e10)) {
            map2.remove(e10);
        }
        C12421w F04 = F0();
        Long valueOf2 = Long.valueOf(j10);
        F04.q(valueOf2);
        a().w().c("[sgtm] queued batch deleted after successful client upload. appId, rowId", str, valueOf2);
        long j11 = c12294g.f63300d;
        if (j11 > 0) {
            C12421w F05 = F0();
            F05.h();
            F05.j();
            Long valueOf3 = Long.valueOf(j11);
            G0.A.r(valueOf3);
            ContentValues contentValues = new ContentValues();
            contentValues.put("upload_type", Integer.valueOf(EnumC12332k5.GOOGLE_SIGNAL.N1()));
            C12370p3 c12370p3 = F05.f62917a;
            contentValues.put(C14345a.C1879a.f97713m, Long.valueOf(c12370p3.e().a()));
            try {
                if (F05.w0().update("upload_queue", contentValues, "rowid=? AND app_id=? AND upload_type=?", new String[]{String.valueOf(j11), str, String.valueOf(EnumC12332k5.GOOGLE_SIGNAL_PENDING.N1())}) != 1) {
                    c12370p3.a().r().c("Google Signal pending batch not updated. appId, rowId", str, valueOf3);
                }
                a().w().c("[sgtm] queued Google Signal batch updated. appId, signalRowId", str, Long.valueOf(c12294g.f63300d));
                u(str);
            } catch (SQLiteException e11) {
                F05.f62917a.a().o().d("Failed to update google Signal pending batch. appid, rowId", str, Long.valueOf(j11), e11);
                throw e11;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x0124, code lost:
    
        if (r7 == null) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0194, code lost:
    
        if (r1 == 0) goto L71;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [com.google.android.gms.measurement.internal.c7] */
    /* JADX WARN: Type inference failed for: r1v12, types: [long] */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v22, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v25, types: [android.database.Cursor] */
    @WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void r() {
        C12421w F02;
        long n10;
        SQLiteException e10;
        I2 L02;
        b().h();
        O0();
        this.f63108v = true;
        try {
            C12370p3 c12370p3 = this.f63098l;
            c12370p3.c();
            Boolean x10 = c12370p3.J().x();
            if (x10 == null) {
                a().r().a("Upload data called on the client side before use of service was decided");
            } else if (x10.booleanValue()) {
                a().o().a("Upload called in the client side when service should be used");
            } else if (this.f63101o > 0) {
                Q();
            } else {
                b().h();
                if (this.f63111y != null) {
                    a().w().a("Uploading requested multiple times");
                } else if (E0().m()) {
                    ?? a10 = e().a();
                    AutoCloseable autoCloseable = null;
                    r7 = null;
                    Cursor cursor = null;
                    r7 = null;
                    r7 = null;
                    String str = null;
                    int E10 = B0().E(null, C12281e2.f63216j0);
                    B0();
                    long n11 = a10 - C12342m.n();
                    for (int i10 = 0; i10 < E10 && L(null, n11); i10++) {
                    }
                    C12227x7.a();
                    b().h();
                    u0();
                    long a11 = this.f63095i.f63335h.a();
                    if (a11 != 0) {
                        a().v().b("Uploading events. Elapsed time since last upload attempt (ms)", Long.valueOf(Math.abs(a10 - a11)));
                    }
                    String r10 = F0().r();
                    long j10 = -1;
                    if (TextUtils.isEmpty(r10)) {
                        try {
                            this.f63077A = -1L;
                            F02 = F0();
                            B0();
                            n10 = a10 - C12342m.n();
                            F02.h();
                            F02.j();
                        } catch (Throwable th2) {
                            th = th2;
                            autoCloseable = a10;
                        }
                        try {
                            a10 = F02.w0().rawQuery("select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;", new String[]{String.valueOf(n10)});
                            try {
                                if (a10.moveToFirst()) {
                                    str = a10.getString(0);
                                } else {
                                    F02.f62917a.a().w().a("No expired configs for apps with pending events");
                                }
                            } catch (SQLiteException e11) {
                                e10 = e11;
                                F02.f62917a.a().o().b("Error selecting expired configs", e10);
                            }
                        } catch (SQLiteException e12) {
                            e10 = e12;
                            a10 = 0;
                        } catch (Throwable th3) {
                            th = th3;
                            throw th;
                        }
                        a10.close();
                        if (!TextUtils.isEmpty(str) && (L02 = F0().L0(str)) != null) {
                            A(L02);
                        }
                    } else {
                        if (this.f63077A == -1) {
                            C12421w F03 = F0();
                            try {
                                try {
                                    cursor = F03.w0().rawQuery("select rowid from raw_events order by rowid desc limit 1;", null);
                                    if (cursor.moveToFirst()) {
                                        j10 = cursor.getLong(0);
                                    }
                                } finally {
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                }
                            } catch (SQLiteException e13) {
                                F03.f62917a.a().o().b("Error querying raw events", e13);
                            }
                            cursor.close();
                            this.f63077A = j10;
                        }
                        s(r10, a10);
                    }
                } else {
                    a().w().a("Network not connected, ignoring upload request");
                    Q();
                }
            }
            this.f63108v = false;
            R();
        } catch (Throwable th4) {
            this.f63108v = false;
            R();
            throw th4;
        }
    }

    public final void r0(boolean z10) {
        Q();
    }

    /* JADX WARN: Code restructure failed: missing block: B:420:0x01f7, code lost:
    
        if (r10 == null) goto L16;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0536  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x05a6  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x05db  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x06fd  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x072a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:227:0x0742  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x0756  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x098a  */
    /* JADX WARN: Removed duplicated region for block: B:292:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:308:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:314:0x0464  */
    /* JADX WARN: Removed duplicated region for block: B:329:0x051d  */
    /* JADX WARN: Removed duplicated region for block: B:337:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:425:0x09d8  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0317 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0277 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0472  */
    /* JADX WARN: Type inference failed for: r10v19 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3, types: [boolean] */
    @VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void s(String str, long j10) {
        AutoCloseable autoCloseable;
        Cursor cursor;
        List emptyList;
        List<Pair> list;
        String str2;
        Z3 g10;
        Y3 y32;
        C12089i3 L10;
        int size;
        int i10;
        boolean z10;
        long j11;
        Object obj;
        String str3;
        O6 o62;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        List list2;
        String str4;
        String str5;
        Ag.h hVar;
        List emptyList2;
        ArrayList arrayList;
        C12421w F02;
        ContentValues contentValues;
        byte[] byteArray;
        long j12;
        long j13;
        int E10 = B0().E(str, C12281e2.f63209h);
        int i11 = 0;
        int max = Math.max(0, B0().E(str, C12281e2.f63212i));
        C12421w F03 = F0();
        F03.h();
        F03.j();
        int i12 = 1;
        G0.A.a(E10 > 0);
        ?? r10 = max > 0 ? 1 : 0;
        G0.A.a(r10);
        G0.A.l(str);
        try {
            try {
                cursor = F03.w0().query("queue", new String[]{"rowid", "data", "retry_count"}, "app_id=?", new String[]{str}, null, null, "rowid", String.valueOf(E10));
                try {
                } catch (SQLiteException e10) {
                    e = e10;
                    F03.f62917a.a().o().c("Error querying bundles. appId", B2.x(str), e);
                    emptyList = Collections.emptyList();
                }
            } catch (Throwable th2) {
                th = th2;
                autoCloseable = r10;
                if (autoCloseable != null) {
                    autoCloseable.close();
                }
                throw th;
            }
        } catch (SQLiteException e11) {
            e = e11;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            autoCloseable = null;
            if (autoCloseable != null) {
            }
            throw th;
        }
        if (cursor.moveToFirst()) {
            list = new ArrayList();
            int i13 = 0;
            while (true) {
                long j14 = cursor.getLong(i11);
                try {
                    byte[] blob = cursor.getBlob(i12);
                    h7 K02 = F03.f62657b.K0();
                    try {
                        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(blob);
                        GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int read = gZIPInputStream.read(bArr);
                            if (read <= 0) {
                                break;
                            } else {
                                byteArrayOutputStream.write(bArr, 0, read);
                            }
                        }
                        gZIPInputStream.close();
                        byteArrayInputStream.close();
                        byteArray = byteArrayOutputStream.toByteArray();
                    } catch (IOException e12) {
                        K02.f62917a.a().o().b("Failed to ungzip content", e12);
                        throw e12;
                        break;
                    }
                } catch (IOException e13) {
                    F03.f62917a.a().o().c("Failed to unzip queued bundle. appId", B2.x(str), e13);
                }
                if (!list.isEmpty() && byteArray.length + i13 > max) {
                    break;
                }
                try {
                    C12125m3 c12125m3 = (C12125m3) h7.W(C12134n3.j0(), byteArray);
                    if (!list.isEmpty()) {
                        C12134n3 c12134n3 = (C12134n3) ((Pair) list.get(0)).first;
                        C12134n3 c12134n32 = (C12134n3) c12125m3.q();
                        if (!c12134n3.K0().equals(c12134n32.K0()) || !c12134n3.R0().equals(c12134n32.R0()) || c12134n3.T0() != c12134n32.T0() || !c12134n3.V0().equals(c12134n32.V0())) {
                            break;
                        }
                        Iterator it = c12134n3.m2().iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                j12 = -1;
                                break;
                            }
                            com.google.android.gms.internal.measurement.E3 e32 = (com.google.android.gms.internal.measurement.E3) it.next();
                            if ("_npa".equals(e32.G())) {
                                j12 = e32.K();
                                break;
                            }
                        }
                        Iterator it2 = c12134n32.m2().iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                j13 = -1;
                                break;
                            }
                            com.google.android.gms.internal.measurement.E3 e33 = (com.google.android.gms.internal.measurement.E3) it2.next();
                            if ("_npa".equals(e33.G())) {
                                j13 = e33.K();
                                break;
                            }
                        }
                        if (j12 != j13) {
                            break;
                        }
                    }
                    if (!cursor.isNull(2)) {
                        c12125m3.B0(cursor.getInt(2));
                    }
                    i13 += byteArray.length;
                    list.add(Pair.create((C12134n3) c12125m3.q(), Long.valueOf(j14)));
                } catch (IOException e14) {
                    F03.f62917a.a().o().c("Failed to merge queued bundle. appId", B2.x(str), e14);
                }
                if (!cursor.moveToNext() || i13 > max) {
                    break;
                }
                i11 = 0;
                i12 = 1;
            }
            cursor.close();
            if (!list.isEmpty()) {
            }
        } else {
            emptyList = Collections.emptyList();
            cursor.close();
            list = emptyList;
            if (!list.isEmpty()) {
                return;
            }
            com.google.android.gms.internal.measurement.V6.a();
            C12342m B02 = B0();
            C12273d2 c12273d2 = C12281e2.f63217j1;
            String str6 = "_f";
            if (B02.H(null, c12273d2)) {
                com.google.android.gms.internal.measurement.V6.a();
                if (B0().H(null, c12273d2)) {
                    if (g(str).o(Y3.ANALYTICS_STORAGE) || !D0().n(str)) {
                        ArrayList arrayList2 = new ArrayList(list.size());
                        C12421w F04 = F0();
                        G0.A.l(str);
                        F04.h();
                        F04.j();
                        ArrayList arrayList3 = new ArrayList();
                        try {
                            try {
                                try {
                                    SQLiteDatabase w02 = F04.w0();
                                    long a10 = F04.f62917a.e().a();
                                    Cursor cursor2 = w02.query("no_data_mode_events", new String[]{"data"}, "app_id=? AND timestamp_millis <= CAST(? AS INTEGER)", new String[]{str, String.valueOf(a10)}, null, null, "rowid", null);
                                    try {
                                        if (cursor2.moveToFirst()) {
                                            while (true) {
                                                try {
                                                    arrayList3.add((C12026b3) ((C12017a3) h7.W(C12026b3.O(), cursor2.getBlob(0))).q());
                                                    str2 = str6;
                                                    arrayList = arrayList3;
                                                } catch (zzmq e15) {
                                                    arrayList = arrayList3;
                                                    str2 = str6;
                                                    try {
                                                        F04.f62917a.a().t().c("Failed to parse stored NO_DATA mode event, appId", B2.x(str), e15);
                                                    } catch (SQLiteException e16) {
                                                        e = e16;
                                                        F04.f62917a.a().o().c("Error flushing NO_DATA mode events. appId", B2.x(str), e);
                                                        emptyList2 = Collections.emptyList();
                                                        if (cursor2 != null) {
                                                        }
                                                        boolean z15 = true;
                                                        while (r0.hasNext()) {
                                                        }
                                                        list = arrayList2;
                                                        if (list.isEmpty()) {
                                                        }
                                                        g10 = g(str);
                                                        y32 = Y3.AD_STORAGE;
                                                        if (g10.o(y32)) {
                                                        }
                                                        L10 = C12116l3.L();
                                                        size = list.size();
                                                        List arrayList4 = new ArrayList(list.size());
                                                        if (B0().k(str)) {
                                                        }
                                                        boolean o10 = g(str).o(y32);
                                                        boolean o11 = g(str).o(Y3.ANALYTICS_STORAGE);
                                                        G7.a();
                                                        boolean H10 = B0().H(str, C12281e2.f63163N0);
                                                        P6 p62 = this.f63096j;
                                                        O6 i14 = p62.i(str);
                                                        i10 = 0;
                                                        while (i10 < size) {
                                                        }
                                                        if (L10.u() == 0) {
                                                        }
                                                    }
                                                }
                                                if (!cursor2.moveToNext()) {
                                                    break;
                                                }
                                                arrayList3 = arrayList;
                                                str6 = str2;
                                            }
                                            cursor2.close();
                                            try {
                                                int delete = w02.delete("no_data_mode_events", "app_id=? AND timestamp_millis <= CAST(? AS INTEGER)", new String[]{str, String.valueOf(a10)});
                                                C12448z2 w10 = F04.f62917a.a().w();
                                                StringBuilder sb2 = new StringBuilder(String.valueOf(delete).length() + 34);
                                                sb2.append("Pruned ");
                                                sb2.append(delete);
                                                sb2.append(" NO_DATA mode events. appId");
                                                w10.b(sb2.toString(), str);
                                            } catch (SQLiteException e17) {
                                                e = e17;
                                                cursor2 = null;
                                                F04.f62917a.a().o().c("Error flushing NO_DATA mode events. appId", B2.x(str), e);
                                                emptyList2 = Collections.emptyList();
                                                if (cursor2 != null) {
                                                    cursor2.close();
                                                }
                                                boolean z152 = true;
                                                while (r0.hasNext()) {
                                                }
                                                list = arrayList2;
                                                if (list.isEmpty()) {
                                                }
                                                g10 = g(str);
                                                y32 = Y3.AD_STORAGE;
                                                if (g10.o(y32)) {
                                                }
                                                L10 = C12116l3.L();
                                                size = list.size();
                                                List arrayList42 = new ArrayList(list.size());
                                                if (B0().k(str)) {
                                                }
                                                boolean o102 = g(str).o(y32);
                                                boolean o112 = g(str).o(Y3.ANALYTICS_STORAGE);
                                                G7.a();
                                                boolean H102 = B0().H(str, C12281e2.f63163N0);
                                                P6 p622 = this.f63096j;
                                                O6 i142 = p622.i(str);
                                                i10 = 0;
                                                while (i10 < size) {
                                                }
                                                if (L10.u() == 0) {
                                                }
                                            }
                                        } else {
                                            str2 = "_f";
                                            arrayList = arrayList3;
                                            cursor2.close();
                                        }
                                        emptyList2 = arrayList;
                                    } catch (SQLiteException e18) {
                                        e = e18;
                                        str2 = str6;
                                    }
                                } catch (Throwable th4) {
                                    th = th4;
                                    hVar = "data";
                                    if (hVar != 0) {
                                        hVar.close();
                                    }
                                    throw th;
                                }
                            } catch (Throwable th5) {
                                th = th5;
                                hVar = 0;
                                if (hVar != 0) {
                                }
                                throw th;
                            }
                        } catch (SQLiteException e19) {
                            e = e19;
                            str2 = "_f";
                        }
                        boolean z1522 = true;
                        for (Pair pair : list) {
                            C12125m3 c12125m32 = (C12125m3) ((C12134n3) pair.first).q();
                            if (z1522 && !emptyList2.isEmpty()) {
                                List N02 = c12125m32.N0();
                                c12125m32.U0();
                                c12125m32.T0(emptyList2);
                                c12125m32.T0(N02);
                                z1522 = false;
                            }
                            com.google.android.gms.internal.measurement.Q2 F10 = com.google.android.gms.internal.measurement.X2.F();
                            C12133n2 R10 = D0().R(str);
                            ArrayList arrayList5 = new ArrayList();
                            if (R10 != null) {
                                for (C12025b2 c12025b2 : R10.E()) {
                                    com.google.android.gms.internal.measurement.T2 E11 = com.google.android.gms.internal.measurement.U2.E();
                                    int F11 = c12025b2.F();
                                    W3 w32 = W3.UNINITIALIZED;
                                    int i15 = F11 - 1;
                                    int i16 = 3;
                                    E11.t(i15 != 1 ? i15 != 2 ? i15 != 3 ? i15 != 4 ? 1 : 5 : 4 : 3 : 2);
                                    int H11 = c12025b2.H() - 1;
                                    if (H11 == 1) {
                                        i16 = 2;
                                    } else if (H11 != 2) {
                                        i16 = 1;
                                    }
                                    E11.u(i16);
                                    arrayList5.add((com.google.android.gms.internal.measurement.U2) E11.q());
                                }
                            }
                            F10.t(arrayList5);
                            c12125m32.m0(F10);
                            arrayList2.add(Pair.create((C12134n3) c12125m32.q(), (Long) pair.second));
                        }
                        list = arrayList2;
                        if (list.isEmpty()) {
                            return;
                        }
                    } else {
                        List asList = Arrays.asList(((String) C12281e2.f63220k1.b(null)).split(DocLint.SEPARATOR));
                        for (Pair pair2 : list) {
                            try {
                                F0().t(((Long) pair2.second).longValue());
                                for (C12026b3 c12026b3 : ((C12134n3) pair2.first).g2()) {
                                    if (asList.contains(c12026b3.H())) {
                                        try {
                                            if (!c12026b3.H().equals("_f")) {
                                                if (c12026b3.H().equals("_v")) {
                                                }
                                                F02 = F0();
                                                F02.h();
                                                F02.j();
                                                G0.A.r(c12026b3);
                                                G0.A.l(str);
                                                C12370p3 c12370p3 = F02.f62917a;
                                                c12370p3.a().w().b("Caching events in NO_DATA mode", c12026b3);
                                                contentValues = new ContentValues();
                                                contentValues.put("app_id", str);
                                                contentValues.put("name", c12026b3.H());
                                                contentValues.put("data", c12026b3.g());
                                                contentValues.put("timestamp_millis", Long.valueOf(c12026b3.J()));
                                                if (F02.w0().insert("no_data_mode_events", null, contentValues) != -1) {
                                                    try {
                                                        c12370p3.a().o().b("Failed to insert NO_DATA mode event (got -1). appId", B2.x(str));
                                                    } catch (SQLiteException e20) {
                                                        e = e20;
                                                        try {
                                                            F02.f62917a.a().o().c("Error storing NO_DATA mode event. appId", B2.x(str), e);
                                                        } catch (SQLiteException unused) {
                                                            a().t().b("Failed handling NO_DATA mode bundles. appId", str);
                                                        }
                                                    }
                                                }
                                            }
                                            if (F02.w0().insert("no_data_mode_events", null, contentValues) != -1) {
                                            }
                                        } catch (SQLiteException e21) {
                                            e = e21;
                                        }
                                        C12017a3 c12017a3 = (C12017a3) c12026b3.q();
                                        K0();
                                        h7.o(c12017a3, "_dac", 1L);
                                        c12026b3 = (C12026b3) c12017a3.q();
                                        F02 = F0();
                                        F02.h();
                                        F02.j();
                                        G0.A.r(c12026b3);
                                        G0.A.l(str);
                                        C12370p3 c12370p32 = F02.f62917a;
                                        c12370p32.a().w().b("Caching events in NO_DATA mode", c12026b3);
                                        contentValues = new ContentValues();
                                        contentValues.put("app_id", str);
                                        contentValues.put("name", c12026b3.H());
                                        contentValues.put("data", c12026b3.g());
                                        contentValues.put("timestamp_millis", Long.valueOf(c12026b3.J()));
                                    }
                                }
                            } catch (SQLiteException unused2) {
                            }
                        }
                        list = Collections.emptyList();
                    }
                }
                str2 = "_f";
                if (list.isEmpty()) {
                }
            } else {
                str2 = "_f";
            }
            g10 = g(str);
            y32 = Y3.AD_STORAGE;
            if (g10.o(y32)) {
                Iterator it3 = list.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        str5 = null;
                        break;
                    }
                    C12134n3 c12134n33 = (C12134n3) ((Pair) it3.next()).first;
                    if (!c12134n33.K().isEmpty()) {
                        str5 = c12134n33.K();
                        break;
                    }
                }
                if (str5 != null) {
                    int i17 = 0;
                    while (true) {
                        if (i17 >= list.size()) {
                            break;
                        }
                        C12134n3 c12134n34 = (C12134n3) ((Pair) list.get(i17)).first;
                        if (!c12134n34.K().isEmpty() && !c12134n34.K().equals(str5)) {
                            list = list.subList(0, i17);
                            break;
                        }
                        i17++;
                    }
                }
            }
            L10 = C12116l3.L();
            size = list.size();
            List arrayList422 = new ArrayList(list.size());
            boolean z16 = !B0().k(str) && g(str).o(y32);
            boolean o1022 = g(str).o(y32);
            boolean o1122 = g(str).o(Y3.ANALYTICS_STORAGE);
            G7.a();
            boolean H1022 = B0().H(str, C12281e2.f63163N0);
            P6 p6222 = this.f63096j;
            O6 i1422 = p6222.i(str);
            i10 = 0;
            while (i10 < size) {
                C12125m3 c12125m33 = (C12125m3) ((C12134n3) ((Pair) list.get(i10)).first).q();
                arrayList422.add((Long) ((Pair) list.get(i10)).second);
                B0().A();
                c12125m33.H(130000L);
                c12125m33.e1(j10);
                int i18 = size;
                this.f63098l.c();
                c12125m33.r0(false);
                if (!z16) {
                    c12125m33.A0();
                }
                if (!o1022) {
                    c12125m33.K();
                    c12125m33.N();
                }
                if (!o1122) {
                    c12125m33.Q();
                }
                x(str, c12125m33);
                if (!H1022) {
                    c12125m33.I0();
                }
                if (!o1122) {
                    c12125m33.t0();
                }
                String I10 = c12125m33.I();
                if (TextUtils.isEmpty(I10)) {
                    z11 = o1022;
                } else {
                    z11 = o1022;
                    if (!I10.equals("00000000-0000-0000-0000-000000000000")) {
                        z12 = z16;
                        z13 = o1122;
                        z14 = H1022;
                        list2 = list;
                        str4 = str2;
                        if (c12125m33.O0() != 0) {
                            if (B0().H(str, C12281e2.f63143D0)) {
                                c12125m33.F0(K0().T(((C12134n3) c12125m33.q()).g()));
                            }
                            com.google.android.gms.internal.measurement.C3 d10 = i1422.d();
                            if (d10 != null) {
                                c12125m33.j0(d10);
                            }
                            L10.x(c12125m33);
                        }
                        i10++;
                        str2 = str4;
                        size = i18;
                        o1022 = z11;
                        z16 = z12;
                        o1122 = z13;
                        list = list2;
                        H1022 = z14;
                    }
                }
                ArrayList arrayList6 = new ArrayList(c12125m33.N0());
                Iterator<E> it4 = arrayList6.iterator();
                z12 = z16;
                z13 = o1122;
                Long l10 = null;
                Long l11 = null;
                boolean z17 = false;
                boolean z18 = false;
                while (it4.hasNext()) {
                    boolean z19 = H1022;
                    C12026b3 c12026b32 = (C12026b3) it4.next();
                    List list3 = list;
                    if ("_fx".equals(c12026b32.H())) {
                        it4.remove();
                        list = list3;
                        H1022 = z19;
                        z17 = true;
                        z18 = true;
                    } else {
                        String str7 = str2;
                        if (str7.equals(c12026b32.H())) {
                            K0();
                            C12062f3 r11 = h7.r(c12026b32, "_pfo");
                            if (r11 != null) {
                                l10 = Long.valueOf(r11.J());
                            }
                            K0();
                            C12062f3 r12 = h7.r(c12026b32, "_uwa");
                            if (r12 != null) {
                                l11 = Long.valueOf(r12.J());
                            }
                            str2 = str7;
                            list = list3;
                            H1022 = z19;
                            z18 = true;
                        } else {
                            str2 = str7;
                            list = list3;
                            H1022 = z19;
                        }
                    }
                }
                z14 = H1022;
                list2 = list;
                str4 = str2;
                if (z17) {
                    c12125m33.U0();
                    c12125m33.T0(arrayList6);
                }
                if (z18) {
                    w(c12125m33.D(), true, l10, l11);
                }
                if (c12125m33.O0() != 0) {
                }
                i10++;
                str2 = str4;
                size = i18;
                o1022 = z11;
                z16 = z12;
                o1122 = z13;
                list = list2;
                H1022 = z14;
            }
            if (L10.u() == 0) {
                q(arrayList422);
                z(false, 204, null, null, str, Collections.emptyList());
                return;
            }
            C12116l3 c12116l3 = (C12116l3) L10.q();
            List arrayList7 = new ArrayList();
            boolean z20 = i1422.c() == EnumC12332k5.SGTM_CLIENT;
            if (i1422.c() == EnumC12332k5.SGTM) {
                z10 = z20;
            } else {
                if (!z20) {
                    j11 = j10;
                    obj = null;
                    if (E0().m()) {
                        return;
                    }
                    Object K10 = Log.isLoggable(a().z(), 2) ? K0().K(c12116l3) : obj;
                    K0();
                    byte[] g11 = c12116l3.g();
                    q(arrayList422);
                    this.f63095i.f63336i.b(j11);
                    a().w().d("Uploading data. app, uncompressed size, data", str, Integer.valueOf(g11.length), K10);
                    this.f63107u = true;
                    E0().n(str, i1422, c12116l3, new R6(this, str, arrayList7));
                    return;
                }
                z10 = true;
            }
            Iterator it5 = ((C12116l3) L10.q()).E().iterator();
            while (true) {
                if (it5.hasNext()) {
                    if (((C12134n3) it5.next()).c0()) {
                        str3 = UUID.randomUUID().toString();
                        break;
                    }
                } else {
                    str3 = null;
                    break;
                }
            }
            C12116l3 c12116l32 = (C12116l3) L10.q();
            b().h();
            O0();
            C12089i3 M10 = C12116l3.M(c12116l32);
            if (!TextUtils.isEmpty(str3)) {
                M10.B(str3);
            }
            String x10 = D0().x(str);
            if (!TextUtils.isEmpty(x10)) {
                M10.C(x10);
            }
            ArrayList arrayList8 = new ArrayList();
            Iterator it6 = c12116l32.E().iterator();
            while (it6.hasNext()) {
                C12125m3 k02 = C12134n3.k0((C12134n3) it6.next());
                k02.A0();
                arrayList8.add((C12134n3) k02.q());
            }
            M10.z();
            M10.y(arrayList8);
            a().w().b("[sgtm] Processed MeasurementBatch for sGTM with sgtmJoinId: ", TextUtils.isEmpty(str3) ? "null" : M10.A());
            C12116l3 c12116l33 = (C12116l3) M10.q();
            if (TextUtils.isEmpty(str3)) {
                obj = null;
            } else {
                C12116l3 c12116l34 = (C12116l3) L10.q();
                b().h();
                O0();
                C12089i3 L11 = C12116l3.L();
                a().w().b("[sgtm] Processing Google Signal, sgtmJoinId:", str3);
                L11.B(str3);
                for (C12134n3 c12134n35 : c12116l34.E()) {
                    C12125m3 j02 = C12134n3.j0();
                    j02.z0(c12134n35.d0());
                    j02.f0(c12134n35.a1());
                    L11.x(j02);
                }
                C12116l3 c12116l35 = (C12116l3) L11.q();
                String x11 = p6222.f62657b.D0().x(str);
                if (TextUtils.isEmpty(x11)) {
                    obj = null;
                    o62 = new O6((String) C12281e2.f63235s.b(null), Collections.emptyMap(), z10 ? EnumC12332k5.GOOGLE_SIGNAL_PENDING : EnumC12332k5.GOOGLE_SIGNAL, null);
                } else {
                    Uri parse = Uri.parse((String) C12281e2.f63235s.b(null));
                    Uri.Builder buildUpon = parse.buildUpon();
                    String authority = parse.getAuthority();
                    StringBuilder sb3 = new StringBuilder(String.valueOf(x11).length() + 1 + String.valueOf(authority).length());
                    sb3.append(x11);
                    sb3.append(".");
                    sb3.append(authority);
                    buildUpon.authority(sb3.toString());
                    obj = null;
                    o62 = new O6(buildUpon.build().toString(), Collections.emptyMap(), z10 ? EnumC12332k5.GOOGLE_SIGNAL_PENDING : EnumC12332k5.GOOGLE_SIGNAL, null);
                }
                arrayList7.add(Pair.create(c12116l35, o62));
            }
            if (z10) {
                C12089i3 c12089i3 = (C12089i3) c12116l33.q();
                for (int i19 = 0; i19 < c12116l33.F(); i19++) {
                    C12125m3 c12125m34 = (C12125m3) c12116l33.G(i19).q();
                    c12125m34.f1();
                    c12125m34.k0(j10);
                    c12089i3.w(i19, c12125m34);
                }
                arrayList7.add(Pair.create((C12116l3) c12089i3.q(), i1422));
                q(arrayList422);
                z(false, 204, null, null, str, arrayList7);
                if (t(str, i1422.a())) {
                    a().w().b("[sgtm] Sending sgtm batches available notification to app", str);
                    Intent intent = new Intent();
                    intent.setAction("com.google.android.gms.measurement.BATCHES_AVAILABLE");
                    intent.setPackage(str);
                    V(this.f63098l.d(), intent);
                    return;
                }
                return;
            }
            j11 = j10;
            c12116l3 = c12116l33;
            if (E0().m()) {
            }
        }
    }

    @WorkerThread
    public final void s0(String str, C12348m5 c12348m5) {
        b().h();
        String str2 = this.f63083G;
        if (str2 == null || str2.equals(str) || c12348m5 != null) {
            this.f63083G = str;
            this.f63082F = c12348m5;
        }
    }

    @VisibleForTesting
    @WorkerThread
    public final boolean t(String str, String str2) {
        I2 L02 = F0().L0(str);
        if (L02 != null && N0().P(str, L02.l0())) {
            this.f63081E.remove(str2);
            return true;
        }
        a7 a7Var = (a7) this.f63081E.get(str2);
        if (a7Var == null) {
            return true;
        }
        return a7Var.b();
    }

    public final void t0(d7 d7Var) {
        b().h();
        this.f63097k = new S2(this);
        C12421w c12421w = new C12421w(this);
        c12421w.k();
        this.f63089c = c12421w;
        B0().t((InterfaceC12334l) G0.A.r(this.f63087a));
        C12309h6 c12309h6 = new C12309h6(this);
        c12309h6.k();
        this.f63095i = c12309h6;
        C12278e c12278e = new C12278e(this);
        c12278e.k();
        this.f63092f = c12278e;
        C12308h5 c12308h5 = new C12308h5(this);
        c12308h5.k();
        this.f63094h = c12308h5;
        F6 f62 = new F6(this);
        f62.k();
        this.f63091e = f62;
        this.f63090d = new J2(this);
        if (this.f63104r != this.f63105s) {
            a().o().c("Not all upload components initialized", Integer.valueOf(this.f63104r), Integer.valueOf(this.f63105s));
        }
        this.f63099m.set(true);
        a().w().a("UploadController is now fully initialized");
    }

    @WorkerThread
    public final void u(String str) {
        C12116l3 d10;
        b().h();
        O0();
        this.f63108v = true;
        try {
            C12370p3 c12370p3 = this.f63098l;
            c12370p3.c();
            Boolean x10 = c12370p3.J().x();
            if (x10 == null) {
                a().r().a("Upload data called on the client side before use of service was decided");
            } else if (x10.booleanValue()) {
                a().o().a("Upload called in the client side when service should be used");
            } else if (this.f63101o > 0) {
                Q();
            } else if (!E0().m()) {
                a().w().a("Network not connected, ignoring upload request");
                Q();
            } else if (F0().p(str)) {
                C12421w F02 = F0();
                G0.A.l(str);
                F02.h();
                F02.j();
                List o10 = F02.o(str, J6.b(EnumC12332k5.GOOGLE_SIGNAL), 1);
                f7 f7Var = o10.isEmpty() ? null : (f7) o10.get(0);
                if (f7Var != null && (d10 = f7Var.d()) != null) {
                    a().w().d("[sgtm] Uploading data from upload queue. appId, type, url", str, f7Var.f(), f7Var.e());
                    byte[] g10 = d10.g();
                    if (Log.isLoggable(a().z(), 2)) {
                        a().w().d("[sgtm] Uploading data from upload queue. appId, uncompressed size, data", str, Integer.valueOf(g10.length), K0().K(d10));
                    }
                    O6 a10 = f7Var.a();
                    this.f63107u = true;
                    E0().n(str, a10, d10, new S6(this, str, f7Var));
                }
            } else {
                a().w().b("[sgtm] Upload queue has no batches for appId", str);
            }
            this.f63108v = false;
            R();
        } catch (Throwable th2) {
            this.f63108v = false;
            R();
            throw th2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x007f  */
    /* JADX WARN: Type inference failed for: r7v8, types: [java.lang.String] */
    @VisibleForTesting
    @WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void v(@NonNull String str, int i10, Throwable th2, byte[] bArr, f7 f7Var) {
        b().h();
        O0();
        if (bArr == null) {
            try {
                bArr = new byte[0];
            } catch (Throwable th3) {
                this.f63107u = false;
                R();
                throw th3;
            }
        }
        if (i10 != 200) {
            if (i10 == 204) {
                i10 = 204;
            }
            String str2 = new String(bArr, StandardCharsets.UTF_8);
            ?? substring = str2.substring(0, Math.min(32, str2.length()));
            C12448z2 t10 = a().t();
            Integer valueOf = Integer.valueOf(i10);
            if (th2 == null) {
                th2 = substring;
            }
            t10.d("Network upload failed. Will retry later. appId, status, error", str, valueOf, th2);
            F0().w(Long.valueOf(f7Var.c()));
            Q();
            this.f63107u = false;
            R();
        }
        if (th2 == null) {
            F0().q(Long.valueOf(f7Var.c()));
            a().w().c("Successfully uploaded batch from upload queue. appId, status", str, Integer.valueOf(i10));
            if (E0().m() && F0().p(str)) {
                u(str);
            } else {
                Q();
            }
            this.f63107u = false;
            R();
        }
        String str22 = new String(bArr, StandardCharsets.UTF_8);
        ?? substring2 = str22.substring(0, Math.min(32, str22.length()));
        C12448z2 t102 = a().t();
        Integer valueOf2 = Integer.valueOf(i10);
        if (th2 == null) {
        }
        t102.d("Network upload failed. Will retry later. appId, status, error", str, valueOf2, th2);
        F0().w(Long.valueOf(f7Var.c()));
        Q();
        this.f63107u = false;
        R();
    }

    @WorkerThread
    public final void w(String str, boolean z10, Long l10, Long l11) {
        I2 L02 = F0().L0(str);
        if (L02 != null) {
            L02.e0(z10);
            L02.g0(l10);
            L02.i0(l11);
            if (L02.A()) {
                F0().M0(L02, false, false);
            }
        }
    }

    public final C12370p3 w0() {
        return this.f63098l;
    }

    public final void x(String str, C12125m3 c12125m3) {
        int X10;
        int indexOf;
        Set F10 = D0().F(str);
        if (F10 != null) {
            c12125m3.J0(F10);
        }
        if (D0().J(str)) {
            c12125m3.z();
        }
        if (D0().K(str)) {
            String w10 = c12125m3.w();
            if (!TextUtils.isEmpty(w10) && (indexOf = w10.indexOf(".")) != -1) {
                c12125m3.x(w10.substring(0, indexOf));
            }
        }
        if (D0().L(str) && (X10 = h7.X(c12125m3, "_id")) != -1) {
            c12125m3.d1(X10);
        }
        if (D0().M(str)) {
            c12125m3.A0();
        }
        if (D0().N(str)) {
            c12125m3.Q();
            if (g(str).o(Y3.ANALYTICS_STORAGE)) {
                Map map = this.f63080D;
                Z6 z62 = (Z6) map.get(str);
                if (z62 == null || z62.f62996b + B0().D(str, C12281e2.f63222l0) < e().c()) {
                    z62 = new Z6(this, (byte[]) null);
                    map.put(str, z62);
                }
                c12125m3.K0(z62.f62995a);
            }
        }
        if (D0().O(str)) {
            c12125m3.I0();
        }
    }

    public final Deque x0() {
        return this.f63103q;
    }

    @VisibleForTesting
    public final void y(String str, C12053e3 c12053e3, Bundle bundle, String str2) {
        List d10 = C3038h.d("_o", "_sn", "_sc", "_si");
        long y10 = (m7.N(c12053e3.t()) || m7.N(str)) ? B0().y(str2, true) : B0().x(str2, true);
        long codePointCount = c12053e3.v().codePointCount(0, c12053e3.v().length());
        m7 N02 = N0();
        String t10 = c12053e3.t();
        B0();
        String q10 = N02.q(t10, 40, true);
        if (codePointCount <= y10 || d10.contains(c12053e3.t())) {
            return;
        }
        if ("_ev".equals(c12053e3.t())) {
            bundle.putString("_ev", N0().q(c12053e3.v(), B0().y(str2, true), true));
            return;
        }
        a().t().c("Param value is too long; discarded. Name, value length", q10, Long.valueOf(codePointCount));
        if (bundle.getLong("_err") == 0) {
            bundle.putLong("_err", 4L);
            if (bundle.getString("_ev") == null) {
                bundle.putString("_ev", q10);
                bundle.putLong("_el", codePointCount);
            }
        }
        bundle.remove(c12053e3.t());
    }

    public final void y0(long j10) {
        this.f63085I = j10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0034, code lost:
    
        if (r23 != null) goto L16;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @VisibleForTesting
    @WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void z(boolean z10, int i10, Throwable th2, byte[] bArr, String str, List list) {
        byte[] bArr2;
        int i11 = i10;
        b().h();
        O0();
        if (bArr == null) {
            try {
                bArr2 = new byte[0];
            } catch (Throwable th3) {
                this.f63107u = false;
                R();
                throw th3;
            }
        } else {
            bArr2 = bArr;
        }
        List<Long> list2 = (List) G0.A.r(this.f63111y);
        this.f63111y = null;
        try {
            if (z10) {
                if (i11 != 200) {
                    if (i11 == 204) {
                        i11 = 204;
                    }
                    String str2 = new String(bArr2, StandardCharsets.UTF_8);
                    a().t().d("Network upload failed. Will retry later. code, error", Integer.valueOf(i11), th2, str2.substring(0, Math.min(32, str2.length())));
                    this.f63095i.f63336i.b(e().a());
                    if (i11 == 503 || i11 == 429) {
                        this.f63095i.f63334g.b(e().a());
                    }
                    F0().v(list2);
                    Q();
                    this.f63107u = false;
                    R();
                    return;
                }
            }
            HashMap hashMap = new HashMap();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                C12116l3 c12116l3 = (C12116l3) pair.first;
                O6 o62 = (O6) pair.second;
                if (o62.c() != EnumC12332k5.SGTM_CLIENT) {
                    long m10 = F0().m(str, c12116l3, o62.a(), o62.b(), o62.c(), null);
                    if (o62.c() == EnumC12332k5.GOOGLE_SIGNAL_PENDING && m10 != -1 && !c12116l3.I().isEmpty()) {
                        hashMap.put(c12116l3.I(), Long.valueOf(m10));
                    }
                }
            }
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                Pair pair2 = (Pair) it2.next();
                C12116l3 c12116l32 = (C12116l3) pair2.first;
                O6 o63 = (O6) pair2.second;
                if (o63.c() == EnumC12332k5.SGTM_CLIENT) {
                    F0().m(str, c12116l32, o63.a(), o63.b(), o63.c(), (Long) hashMap.get(c12116l32.I()));
                }
            }
            List o10 = F0().o(str, J6.b(EnumC12332k5.SGTM_CLIENT), 1);
            if (!o10.isEmpty()) {
                long g10 = ((f7) o10.get(0)).g();
                if (e().a() > ((Long) C12281e2.f63146F.b(null)).longValue() + g10) {
                    a().r().c("[sgtm] client batches are queued too long. appId, creationTime", str, Long.valueOf(g10));
                }
            }
            for (Long l10 : list2) {
                try {
                    F0().t(l10.longValue());
                } catch (SQLiteException e10) {
                    List list3 = this.f63112z;
                    if (list3 == null || !list3.contains(l10)) {
                        throw e10;
                    }
                }
            }
            F0().u0();
            F0().v0();
            this.f63112z = null;
            if (E0().m() && F0().p(str)) {
                u(str);
            } else if (E0().m() && O()) {
                r();
            } else {
                this.f63077A = -1L;
                Q();
            }
            this.f63101o = 0L;
            this.f63107u = false;
            R();
            return;
        } catch (Throwable th4) {
            F0().v0();
            throw th4;
        }
        C12448z2 w10 = a().w();
        Integer valueOf = Integer.valueOf(i11);
        w10.c("Network upload successful with code, uploadAttempted", valueOf, Boolean.valueOf(z10));
        if (z10) {
            try {
                this.f63095i.f63335h.b(e().a());
            } catch (SQLiteException e11) {
                a().o().b("Database error while trying to delete uploaded bundles", e11);
                this.f63101o = e().c();
                a().w().b("Disable upload, time", Long.valueOf(this.f63101o));
            }
        }
        this.f63095i.f63336i.b(0L);
        Q();
        if (z10) {
            a().w().c("Successful upload. Got network response. code, size", valueOf, Integer.valueOf(bArr2.length));
        } else {
            a().w().a("Purged empty bundles");
        }
        F0().t0();
    }
}
