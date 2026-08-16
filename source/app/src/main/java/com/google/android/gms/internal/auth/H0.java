package com.google.android.gms.internal.auth;

import android.content.Context;
import android.net.Uri;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.Nullable;

public abstract class H0 {

    @Nullable
    public static volatile F0 f61603g = null;

    public static volatile boolean f61604h = false;

    public static final int f61608l = 0;

    public final D0 f61609a;

    public final String f61610b;

    public final Object f61611c;

    public volatile int f61612d = -1;

    public volatile Object f61613e;

    public static final Object f61602f = new Object();

    public static final AtomicReference f61605i = new AtomicReference();

    public static final J0 f61606j = new J0(new Object() {
    });

    public static final AtomicInteger f61607k = new AtomicInteger();

    public H0(D0 d02, String str, Object obj, boolean z10, G0 g02) {
        if (d02.f61596a == null) {
            throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
        }
        this.f61609a = d02;
        this.f61610b = str;
        this.f61611c = obj;
    }

    public static void c() {
        f61607k.incrementAndGet();
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0045, code lost:
    
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x004a, code lost:
    
        throw r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void d(final Context context) {
        if (f61603g != null || context == null) {
            return;
        }
        Object obj = f61602f;
        synchronized (obj) {
            try {
                if (f61603g == null) {
                    synchronized (obj) {
                        F0 f02 = f61603g;
                        Context applicationContext = context.getApplicationContext();
                        if (applicationContext != null) {
                            context = applicationContext;
                        }
                        if (f02 != null) {
                            if (f02.a() != context) {
                            }
                        }
                        C11951k0.d();
                        I0.c();
                        C11982s0.e();
                        f61603g = new C11939h0(context, T0.a(new O0() {
                            @Override
                            public final Object N1() {
                                Context context2 = Context.this;
                                int i10 = H0.f61608l;
                                return C11986t0.a(context2);
                            }
                        }));
                        f61607k.incrementAndGet();
                    }
                }
            } finally {
            }
        }
    }

    public abstract Object a(Object obj);

    /* JADX WARN: Removed duplicated region for block: B:14:0x0043 A[Catch: all -> 0x003b, TryCatch #0 {all -> 0x003b, blocks: (B:5:0x000b, B:7:0x000f, B:9:0x0018, B:11:0x0028, B:14:0x0043, B:16:0x0049, B:18:0x0053, B:20:0x0074, B:22:0x007c, B:24:0x0084, B:26:0x008a, B:29:0x009c, B:31:0x00a2, B:32:0x009a, B:34:0x00a8, B:36:0x00ac, B:39:0x00b4, B:40:0x00b7, B:41:0x00bb, B:44:0x0068, B:45:0x00c0, B:46:0x00c5, B:49:0x00c6), top: B:4:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c0 A[Catch: all -> 0x003b, TryCatch #0 {all -> 0x003b, blocks: (B:5:0x000b, B:7:0x000f, B:9:0x0018, B:11:0x0028, B:14:0x0043, B:16:0x0049, B:18:0x0053, B:20:0x0074, B:22:0x007c, B:24:0x0084, B:26:0x008a, B:29:0x009c, B:31:0x00a2, B:32:0x009a, B:34:0x00a8, B:36:0x00ac, B:39:0x00b4, B:40:0x00b7, B:41:0x00bb, B:44:0x0068, B:45:0x00c0, B:46:0x00c5, B:49:0x00c6), top: B:4:0x000b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object b() {
        String str;
        Object a10;
        int i10 = f61607k.get();
        if (this.f61612d < i10) {
            synchronized (this) {
                try {
                    if (this.f61612d < i10) {
                        F0 f02 = f61603g;
                        M0 c10 = M0.c();
                        Object obj = null;
                        if (f02 != null) {
                            c10 = (M0) f02.b().N1();
                            if (c10.b()) {
                                C11959m0 c11959m0 = (C11959m0) c10.a();
                                D0 d02 = this.f61609a;
                                str = c11959m0.a(d02.f61596a, null, d02.f61598c, this.f61610b);
                                if (f02 != null) {
                                    throw new IllegalStateException("Must call PhenotypeFlag.init() first");
                                }
                                Uri uri = this.f61609a.f61596a;
                                InterfaceC11971p0 b10 = uri != null ? C11990u0.a(f02.a(), uri) ? C11951k0.b(f02.a().getContentResolver(), this.f61609a.f61596a, new Runnable() {
                                    @Override
                                    public final void run() {
                                        H0.c();
                                    }
                                }) : null : I0.b(f02.a(), null, new Runnable() {
                                    @Override
                                    public final void run() {
                                        H0.c();
                                    }
                                });
                                Object a11 = (b10 == null || (a10 = b10.a(this.f61610b)) == null) ? null : a(a10);
                                if (a11 == null) {
                                    if (!this.f61609a.f61599d) {
                                        String a12 = C11982s0.b(f02.a()).a(this.f61609a.f61599d ? null : this.f61610b);
                                        if (a12 != null) {
                                            obj = a(a12);
                                        }
                                    }
                                    a11 = obj == null ? this.f61611c : obj;
                                }
                                if (c10.b()) {
                                    a11 = str == null ? this.f61611c : a(str);
                                }
                                this.f61613e = a11;
                                this.f61612d = i10;
                            }
                        }
                        str = null;
                        if (f02 != null) {
                        }
                    }
                } finally {
                }
            }
        }
        return this.f61613e;
    }
}
