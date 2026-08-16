package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.net.Uri;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.Nullable;

public abstract class AbstractC12215w4 {

    public static final Object f62461g = new Object();

    @Nullable
    public static volatile AbstractC12170r4 f62462h = null;

    public static volatile boolean f62463i = false;

    public static final AtomicInteger f62464j;

    public static final int f62465k = 0;

    public final C12162q4 f62466a;

    public final String f62467b;

    public Object f62468c;

    public volatile int f62469d = -1;

    public volatile Object f62470e;

    public volatile boolean f62471f;

    static {
        new AtomicReference();
        w2.H.F(new Object() {
        }, "BuildInfo must be non-null");
        f62464j = new AtomicInteger();
    }

    public AbstractC12215w4(C12162q4 c12162q4, String str, Object obj, boolean z10, byte[] bArr) {
        if (c12162q4.f62404a == null) {
            throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
        }
        this.f62466a = c12162q4;
        this.f62467b = str;
        this.f62468c = obj;
        this.f62471f = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0047, code lost:
    
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x004c, code lost:
    
        throw r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void b(final Context context) {
        if (f62462h != null || context == null) {
            return;
        }
        Object obj = f62461g;
        synchronized (obj) {
            try {
                if (f62462h == null) {
                    synchronized (obj) {
                        AbstractC12170r4 abstractC12170r4 = f62462h;
                        Context applicationContext = context.getApplicationContext();
                        if (applicationContext != null) {
                            context = applicationContext;
                        }
                        if (abstractC12170r4 != null) {
                            if (abstractC12170r4.a() != context) {
                            }
                        }
                        if (abstractC12170r4 != null) {
                            C12018a4.f();
                            C12233y4.d();
                            C12081h4.e();
                        }
                        f62462h = new X3(context, w2.S.b(new w2.Q() {
                            @Override
                            public final Object get() {
                                int i10 = AbstractC12215w4.f62465k;
                                return C12090i4.a(Context.this);
                            }
                        }));
                        f62464j.incrementAndGet();
                    }
                }
            } finally {
            }
        }
    }

    public static void c() {
        f62464j.incrementAndGet();
    }

    @Nullable
    public abstract Object a(Object obj);

    /* JADX WARN: Removed duplicated region for block: B:15:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005b A[Catch: all -> 0x0047, TryCatch #0 {all -> 0x0047, blocks: (B:5:0x000b, B:7:0x000f, B:9:0x0018, B:11:0x001e, B:13:0x0034, B:16:0x0050, B:18:0x005b, B:20:0x0065, B:22:0x0088, B:24:0x0090, B:27:0x00b7, B:30:0x00bf, B:31:0x00c2, B:32:0x00c6, B:33:0x0099, B:35:0x009d, B:37:0x00ad, B:39:0x00b3, B:43:0x0076, B:46:0x00ca), top: B:4:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0099 A[Catch: all -> 0x0047, TryCatch #0 {all -> 0x0047, blocks: (B:5:0x000b, B:7:0x000f, B:9:0x0018, B:11:0x001e, B:13:0x0034, B:16:0x0050, B:18:0x005b, B:20:0x0065, B:22:0x0088, B:24:0x0090, B:27:0x00b7, B:30:0x00bf, B:31:0x00c2, B:32:0x00c6, B:33:0x0099, B:35:0x009d, B:37:0x00ad, B:39:0x00b3, B:43:0x0076, B:46:0x00ca), top: B:4:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0076 A[Catch: all -> 0x0047, TryCatch #0 {all -> 0x0047, blocks: (B:5:0x000b, B:7:0x000f, B:9:0x0018, B:11:0x001e, B:13:0x0034, B:16:0x0050, B:18:0x005b, B:20:0x0065, B:22:0x0088, B:24:0x0090, B:27:0x00b7, B:30:0x00bf, B:31:0x00c2, B:32:0x00c6, B:33:0x0099, B:35:0x009d, B:37:0x00ad, B:39:0x00b3, B:43:0x0076, B:46:0x00ca), top: B:4:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object d() {
        String str;
        Object a10;
        String a11;
        Object a12;
        int i10 = f62464j.get();
        if (this.f62469d < i10) {
            synchronized (this) {
                try {
                    if (this.f62469d < i10) {
                        AbstractC12170r4 abstractC12170r4 = f62462h;
                        w2.C a13 = w2.C.a();
                        Object obj = null;
                        if (abstractC12170r4 != null && abstractC12170r4.b() != null) {
                            a13 = (w2.C) ((w2.Q) w2.H.E(abstractC12170r4.b())).get();
                            if (a13.e()) {
                                C12036c4 c12036c4 = (C12036c4) a13.d();
                                C12162q4 c12162q4 = this.f62466a;
                                str = c12036c4.a(c12162q4.f62404a, null, c12162q4.f62406c, this.f62467b);
                                w2.H.h0(abstractC12170r4 == null, "Must call PhenotypeFlagInitializer.maybeInit() first");
                                C12162q4 c12162q42 = this.f62466a;
                                Uri uri = c12162q42.f62404a;
                                InterfaceC12054e4 c10 = uri == null ? C12099j4.a(abstractC12170r4.a(), uri) ? C12018a4.c(abstractC12170r4.a().getContentResolver(), uri, new Runnable() {
                                    @Override
                                    public final void run() {
                                        AbstractC12215w4.c();
                                    }
                                }) : null : C12233y4.c(abstractC12170r4.a(), (String) w2.H.E(null), new Runnable() {
                                    @Override
                                    public final void run() {
                                        AbstractC12215w4.c();
                                    }
                                });
                                a10 = (c10 != null || (a12 = c10.a(this.f62467b)) == null) ? null : a(a12);
                                if (a10 == null) {
                                    if (!c12162q42.f62407d && (a11 = C12081h4.c(abstractC12170r4.a()).a(this.f62467b)) != null) {
                                        obj = a(a11);
                                    }
                                    a10 = obj == null ? this.f62468c : obj;
                                }
                                if (a13.e()) {
                                    a10 = str == null ? this.f62468c : a(str);
                                }
                                this.f62470e = a10;
                                this.f62469d = i10;
                            }
                        }
                        str = null;
                        w2.H.h0(abstractC12170r4 == null, "Must call PhenotypeFlagInitializer.maybeInit() first");
                        C12162q4 c12162q422 = this.f62466a;
                        Uri uri2 = c12162q422.f62404a;
                        if (uri2 == null) {
                        }
                        if (c10 != null) {
                        }
                        if (a10 == null) {
                        }
                        if (a13.e()) {
                        }
                        this.f62470e = a10;
                        this.f62469d = i10;
                    }
                } finally {
                }
            }
        }
        return this.f62470e;
    }
}
