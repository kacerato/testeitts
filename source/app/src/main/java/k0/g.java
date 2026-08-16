package k0;

import com.google.ai.edge.litertlm.LiteRtLmJni;
import com.google.ai.edge.litertlm.SamplerConfig;
import com.google.gson.JsonArray;
import java.util.Iterator;
import java.util.List;
import k0.AbstractC13908a;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Engine.kt\ncom/google/ai/edge/litertlm/Engine\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,204:1\n1#2:205\n*E\n"})
public final class g implements AutoCloseable {

    @NotNull
    public static final a f94423e = new a(null);

    @NotNull
    public final h f94424b;

    @NotNull
    public final Object f94425c;

    @Nullable
    public volatile Long f94426d;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        public final void a(@NotNull m level) {
            M.p(level, "level");
            LiteRtLmJni.f59865a.nativeSetMinLogSeverity(level.c());
        }

        public a() {
        }
    }

    public g(@NotNull h engineConfig) {
        M.p(engineConfig, "engineConfig");
        this.f94424b = engineConfig;
        this.f94425c = new Object();
    }

    public static com.google.ai.edge.litertlm.c e(g gVar, f fVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            fVar = new f(null, null, null, null, false, null, null, 127, null);
        }
        return gVar.d(fVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static com.google.ai.edge.litertlm.e g(g gVar, u uVar, int i10, Object obj) {
        int i11 = 1;
        if ((i10 & 1) != 0) {
            uVar = new u(null, i11, 0 == true ? 1 : 0);
        }
        return gVar.f(uVar);
    }

    public final void c() {
        if (!k()) {
            throw new IllegalStateException("Engine is not initialized.");
        }
    }

    @Override
    public void close() {
        synchronized (this.f94425c) {
            c();
            LiteRtLmJni liteRtLmJni = LiteRtLmJni.f59865a;
            Long l10 = this.f94426d;
            M.m(l10);
            liteRtLmJni.nativeDeleteEngine(l10.longValue());
            this.f94426d = null;
            P0 p02 = P0.f98194a;
        }
    }

    @NotNull
    public final com.google.ai.edge.litertlm.c d(@NotNull f conversationConfig) {
        JsonArray jsonArray;
        com.google.ai.edge.litertlm.c cVar;
        M.p(conversationConfig, "conversationConfig");
        synchronized (this.f94425c) {
            try {
                c();
                C13907A c13907a = new C13907A(conversationConfig.p());
                JsonArray jsonArray2 = new JsonArray();
                com.google.ai.edge.litertlm.b o10 = conversationConfig.o();
                if (o10 != null) {
                    jsonArray2.add(new com.google.ai.edge.litertlm.d(t.SYSTEM, o10, null, null, 12, null).e());
                }
                Iterator<com.google.ai.edge.litertlm.d> it = conversationConfig.m().iterator();
                while (it.hasNext()) {
                    jsonArray2.add(it.next().e());
                }
                List<C13911d> k10 = conversationConfig.k();
                if (k10 != null) {
                    jsonArray = new JsonArray();
                    Iterator<C13911d> it2 = k10.iterator();
                    while (it2.hasNext()) {
                        jsonArray.add(it2.next().i());
                    }
                } else {
                    jsonArray = null;
                }
                LiteRtLmJni liteRtLmJni = LiteRtLmJni.f59865a;
                Long l10 = this.f94426d;
                M.m(l10);
                long longValue = l10.longValue();
                SamplerConfig n10 = conversationConfig.n();
                String jsonElement = jsonArray2.toString();
                M.o(jsonElement, "toString(...)");
                String jsonElement2 = c13907a.c().toString();
                M.o(jsonElement2, "toString(...)");
                String jsonElement3 = jsonArray != null ? jsonArray.toString() : null;
                String jsonElement4 = l.b(conversationConfig.l()).toString();
                M.o(jsonElement4, "toString(...)");
                j jVar = j.f94434a;
                cVar = new com.google.ai.edge.litertlm.c(liteRtLmJni.nativeCreateConversation(longValue, n10, jsonElement, jsonElement2, jsonElement3, jsonElement4, jVar.c(), jVar.e(), jVar.f()), c13907a, conversationConfig.j());
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return cVar;
    }

    @NotNull
    public final com.google.ai.edge.litertlm.e f(@NotNull u sessionConfig) {
        com.google.ai.edge.litertlm.e eVar;
        M.p(sessionConfig, "sessionConfig");
        synchronized (this.f94425c) {
            c();
            LiteRtLmJni liteRtLmJni = LiteRtLmJni.f59865a;
            Long l10 = this.f94426d;
            M.m(l10);
            eVar = new com.google.ai.edge.litertlm.e(liteRtLmJni.nativeCreateSession(l10.longValue(), sessionConfig.d()));
        }
        return eVar;
    }

    @NotNull
    public final h h() {
        return this.f94424b;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0084 A[Catch: all -> 0x0019, TryCatch #0 {all -> 0x0019, blocks: (B:4:0x0005, B:6:0x000b, B:8:0x0016, B:11:0x0020, B:13:0x0026, B:17:0x0033, B:19:0x003d, B:21:0x0043, B:23:0x0049, B:27:0x0056, B:29:0x0070, B:33:0x007c, B:35:0x0084, B:39:0x0090, B:41:0x0098, B:42:0x009f, B:44:0x00a7, B:45:0x00ab, B:48:0x00b6, B:50:0x00cb, B:52:0x00d1, B:56:0x00dd, B:58:0x00e7, B:60:0x00ed, B:64:0x00fa, B:66:0x0104, B:68:0x0109, B:72:0x0116, B:90:0x0124, B:91:0x012b), top: B:3:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0098 A[Catch: all -> 0x0019, TryCatch #0 {all -> 0x0019, blocks: (B:4:0x0005, B:6:0x000b, B:8:0x0016, B:11:0x0020, B:13:0x0026, B:17:0x0033, B:19:0x003d, B:21:0x0043, B:23:0x0049, B:27:0x0056, B:29:0x0070, B:33:0x007c, B:35:0x0084, B:39:0x0090, B:41:0x0098, B:42:0x009f, B:44:0x00a7, B:45:0x00ab, B:48:0x00b6, B:50:0x00cb, B:52:0x00d1, B:56:0x00dd, B:58:0x00e7, B:60:0x00ed, B:64:0x00fa, B:66:0x0104, B:68:0x0109, B:72:0x0116, B:90:0x0124, B:91:0x012b), top: B:3:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a7 A[Catch: all -> 0x0019, TryCatch #0 {all -> 0x0019, blocks: (B:4:0x0005, B:6:0x000b, B:8:0x0016, B:11:0x0020, B:13:0x0026, B:17:0x0033, B:19:0x003d, B:21:0x0043, B:23:0x0049, B:27:0x0056, B:29:0x0070, B:33:0x007c, B:35:0x0084, B:39:0x0090, B:41:0x0098, B:42:0x009f, B:44:0x00a7, B:45:0x00ab, B:48:0x00b6, B:50:0x00cb, B:52:0x00d1, B:56:0x00dd, B:58:0x00e7, B:60:0x00ed, B:64:0x00fa, B:66:0x0104, B:68:0x0109, B:72:0x0116, B:90:0x0124, B:91:0x012b), top: B:3:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00cb A[Catch: all -> 0x0019, TryCatch #0 {all -> 0x0019, blocks: (B:4:0x0005, B:6:0x000b, B:8:0x0016, B:11:0x0020, B:13:0x0026, B:17:0x0033, B:19:0x003d, B:21:0x0043, B:23:0x0049, B:27:0x0056, B:29:0x0070, B:33:0x007c, B:35:0x0084, B:39:0x0090, B:41:0x0098, B:42:0x009f, B:44:0x00a7, B:45:0x00ab, B:48:0x00b6, B:50:0x00cb, B:52:0x00d1, B:56:0x00dd, B:58:0x00e7, B:60:0x00ed, B:64:0x00fa, B:66:0x0104, B:68:0x0109, B:72:0x0116, B:90:0x0124, B:91:0x012b), top: B:3:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00d1 A[Catch: all -> 0x0019, TryCatch #0 {all -> 0x0019, blocks: (B:4:0x0005, B:6:0x000b, B:8:0x0016, B:11:0x0020, B:13:0x0026, B:17:0x0033, B:19:0x003d, B:21:0x0043, B:23:0x0049, B:27:0x0056, B:29:0x0070, B:33:0x007c, B:35:0x0084, B:39:0x0090, B:41:0x0098, B:42:0x009f, B:44:0x00a7, B:45:0x00ab, B:48:0x00b6, B:50:0x00cb, B:52:0x00d1, B:56:0x00dd, B:58:0x00e7, B:60:0x00ed, B:64:0x00fa, B:66:0x0104, B:68:0x0109, B:72:0x0116, B:90:0x0124, B:91:0x012b), top: B:3:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00e7 A[Catch: all -> 0x0019, TryCatch #0 {all -> 0x0019, blocks: (B:4:0x0005, B:6:0x000b, B:8:0x0016, B:11:0x0020, B:13:0x0026, B:17:0x0033, B:19:0x003d, B:21:0x0043, B:23:0x0049, B:27:0x0056, B:29:0x0070, B:33:0x007c, B:35:0x0084, B:39:0x0090, B:41:0x0098, B:42:0x009f, B:44:0x00a7, B:45:0x00ab, B:48:0x00b6, B:50:0x00cb, B:52:0x00d1, B:56:0x00dd, B:58:0x00e7, B:60:0x00ed, B:64:0x00fa, B:66:0x0104, B:68:0x0109, B:72:0x0116, B:90:0x0124, B:91:0x012b), top: B:3:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00ed A[Catch: all -> 0x0019, TryCatch #0 {all -> 0x0019, blocks: (B:4:0x0005, B:6:0x000b, B:8:0x0016, B:11:0x0020, B:13:0x0026, B:17:0x0033, B:19:0x003d, B:21:0x0043, B:23:0x0049, B:27:0x0056, B:29:0x0070, B:33:0x007c, B:35:0x0084, B:39:0x0090, B:41:0x0098, B:42:0x009f, B:44:0x00a7, B:45:0x00ab, B:48:0x00b6, B:50:0x00cb, B:52:0x00d1, B:56:0x00dd, B:58:0x00e7, B:60:0x00ed, B:64:0x00fa, B:66:0x0104, B:68:0x0109, B:72:0x0116, B:90:0x0124, B:91:0x012b), top: B:3:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0104 A[Catch: all -> 0x0019, TryCatch #0 {all -> 0x0019, blocks: (B:4:0x0005, B:6:0x000b, B:8:0x0016, B:11:0x0020, B:13:0x0026, B:17:0x0033, B:19:0x003d, B:21:0x0043, B:23:0x0049, B:27:0x0056, B:29:0x0070, B:33:0x007c, B:35:0x0084, B:39:0x0090, B:41:0x0098, B:42:0x009f, B:44:0x00a7, B:45:0x00ab, B:48:0x00b6, B:50:0x00cb, B:52:0x00d1, B:56:0x00dd, B:58:0x00e7, B:60:0x00ed, B:64:0x00fa, B:66:0x0104, B:68:0x0109, B:72:0x0116, B:90:0x0124, B:91:0x012b), top: B:3:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0109 A[Catch: all -> 0x0019, TryCatch #0 {all -> 0x0019, blocks: (B:4:0x0005, B:6:0x000b, B:8:0x0016, B:11:0x0020, B:13:0x0026, B:17:0x0033, B:19:0x003d, B:21:0x0043, B:23:0x0049, B:27:0x0056, B:29:0x0070, B:33:0x007c, B:35:0x0084, B:39:0x0090, B:41:0x0098, B:42:0x009f, B:44:0x00a7, B:45:0x00ab, B:48:0x00b6, B:50:0x00cb, B:52:0x00d1, B:56:0x00dd, B:58:0x00e7, B:60:0x00ed, B:64:0x00fa, B:66:0x0104, B:68:0x0109, B:72:0x0116, B:90:0x0124, B:91:0x012b), top: B:3:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x009e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void j() {
        int i10;
        int i11;
        String str;
        AbstractC13908a j10;
        String str2;
        String l10;
        AbstractC13908a.c cVar;
        String str3;
        AbstractC13908a.c cVar2;
        String str4;
        AbstractC13908a.c cVar3;
        String str5;
        Integer e10;
        Integer e11;
        synchronized (this.f94425c) {
            try {
                if (k()) {
                    throw new IllegalStateException("Engine is already initialized.");
                }
                AbstractC13908a k10 = this.f94424b.k();
                AbstractC13908a.C1829a c1829a = k10 instanceof AbstractC13908a.C1829a ? (AbstractC13908a.C1829a) k10 : null;
                if (c1829a == null || (e11 = c1829a.e()) == null) {
                    i10 = -1;
                } else {
                    int intValue = e11.intValue();
                    if (intValue <= 0) {
                        intValue = -1;
                    }
                    i10 = intValue;
                }
                AbstractC13908a j11 = this.f94424b.j();
                AbstractC13908a.C1829a c1829a2 = j11 instanceof AbstractC13908a.C1829a ? (AbstractC13908a.C1829a) j11 : null;
                if (c1829a2 == null || (e10 = c1829a2.e()) == null) {
                    i11 = -1;
                } else {
                    int intValue2 = e10.intValue();
                    if (intValue2 <= 0) {
                        intValue2 = -1;
                    }
                    i11 = intValue2;
                }
                LiteRtLmJni liteRtLmJni = LiteRtLmJni.f59865a;
                String o10 = this.f94424b.o();
                String a10 = this.f94424b.k().a();
                AbstractC13908a p10 = this.f94424b.p();
                if (p10 != null) {
                    str = p10.a();
                    if (str == null) {
                    }
                    String str6 = str;
                    j10 = this.f94424b.j();
                    if (j10 != null) {
                        str2 = j10.a();
                        if (str2 != null) {
                        }
                        String str7 = str2;
                        Integer n10 = this.f94424b.n();
                        int intValue3 = n10 != null ? n10.intValue() : -1;
                        Integer m10 = this.f94424b.m();
                        int intValue4 = m10 != null ? m10.intValue() : -1;
                        l10 = this.f94424b.l();
                        if (l10 == null) {
                            l10 = "";
                        }
                        String str8 = l10;
                        j jVar = j.f94434a;
                        boolean b10 = jVar.b();
                        Boolean d10 = jVar.d();
                        AbstractC13908a k11 = this.f94424b.k();
                        cVar = k11 instanceof AbstractC13908a.c ? (AbstractC13908a.c) k11 : null;
                        if (cVar != null) {
                            str3 = cVar.e();
                            if (str3 != null) {
                            }
                            String str9 = str3;
                            AbstractC13908a p11 = this.f94424b.p();
                            cVar2 = !(p11 instanceof AbstractC13908a.c) ? (AbstractC13908a.c) p11 : null;
                            if (cVar2 != null) {
                                str4 = cVar2.e();
                                if (str4 != null) {
                                }
                                String str10 = str4;
                                AbstractC13908a j12 = this.f94424b.j();
                                cVar3 = j12 instanceof AbstractC13908a.c ? (AbstractC13908a.c) j12 : null;
                                if (cVar3 != null) {
                                    str5 = cVar3.e();
                                    if (str5 != null) {
                                    }
                                    this.f94426d = Long.valueOf(liteRtLmJni.nativeCreateEngine(o10, a10, str6, str7, intValue3, intValue4, str8, b10, d10, str9, str10, str5, i10, i11));
                                    P0 p02 = P0.f98194a;
                                }
                                str5 = "";
                                this.f94426d = Long.valueOf(liteRtLmJni.nativeCreateEngine(o10, a10, str6, str7, intValue3, intValue4, str8, b10, d10, str9, str10, str5, i10, i11));
                                P0 p022 = P0.f98194a;
                            }
                            str4 = "";
                            String str102 = str4;
                            AbstractC13908a j122 = this.f94424b.j();
                            if (j122 instanceof AbstractC13908a.c) {
                            }
                            if (cVar3 != null) {
                            }
                            str5 = "";
                            this.f94426d = Long.valueOf(liteRtLmJni.nativeCreateEngine(o10, a10, str6, str7, intValue3, intValue4, str8, b10, d10, str9, str102, str5, i10, i11));
                            P0 p0222 = P0.f98194a;
                        }
                        str3 = "";
                        String str92 = str3;
                        AbstractC13908a p112 = this.f94424b.p();
                        if (!(p112 instanceof AbstractC13908a.c)) {
                        }
                        if (cVar2 != null) {
                        }
                        str4 = "";
                        String str1022 = str4;
                        AbstractC13908a j1222 = this.f94424b.j();
                        if (j1222 instanceof AbstractC13908a.c) {
                        }
                        if (cVar3 != null) {
                        }
                        str5 = "";
                        this.f94426d = Long.valueOf(liteRtLmJni.nativeCreateEngine(o10, a10, str6, str7, intValue3, intValue4, str8, b10, d10, str92, str1022, str5, i10, i11));
                        P0 p02222 = P0.f98194a;
                    }
                    str2 = "";
                    String str72 = str2;
                    Integer n102 = this.f94424b.n();
                    if (n102 != null) {
                    }
                    Integer m102 = this.f94424b.m();
                    int intValue42 = m102 != null ? m102.intValue() : -1;
                    l10 = this.f94424b.l();
                    if (l10 == null) {
                    }
                    String str82 = l10;
                    j jVar2 = j.f94434a;
                    boolean b102 = jVar2.b();
                    Boolean d102 = jVar2.d();
                    AbstractC13908a k112 = this.f94424b.k();
                    if (k112 instanceof AbstractC13908a.c) {
                    }
                    if (cVar != null) {
                    }
                    str3 = "";
                    String str922 = str3;
                    AbstractC13908a p1122 = this.f94424b.p();
                    if (!(p1122 instanceof AbstractC13908a.c)) {
                    }
                    if (cVar2 != null) {
                    }
                    str4 = "";
                    String str10222 = str4;
                    AbstractC13908a j12222 = this.f94424b.j();
                    if (j12222 instanceof AbstractC13908a.c) {
                    }
                    if (cVar3 != null) {
                    }
                    str5 = "";
                    this.f94426d = Long.valueOf(liteRtLmJni.nativeCreateEngine(o10, a10, str6, str72, intValue3, intValue42, str82, b102, d102, str922, str10222, str5, i10, i11));
                    P0 p022222 = P0.f98194a;
                }
                str = "";
                String str62 = str;
                j10 = this.f94424b.j();
                if (j10 != null) {
                }
                str2 = "";
                String str722 = str2;
                Integer n1022 = this.f94424b.n();
                if (n1022 != null) {
                }
                Integer m1022 = this.f94424b.m();
                int intValue422 = m1022 != null ? m1022.intValue() : -1;
                l10 = this.f94424b.l();
                if (l10 == null) {
                }
                String str822 = l10;
                j jVar22 = j.f94434a;
                boolean b1022 = jVar22.b();
                Boolean d1022 = jVar22.d();
                AbstractC13908a k1122 = this.f94424b.k();
                if (k1122 instanceof AbstractC13908a.c) {
                }
                if (cVar != null) {
                }
                str3 = "";
                String str9222 = str3;
                AbstractC13908a p11222 = this.f94424b.p();
                if (!(p11222 instanceof AbstractC13908a.c)) {
                }
                if (cVar2 != null) {
                }
                str4 = "";
                String str102222 = str4;
                AbstractC13908a j122222 = this.f94424b.j();
                if (j122222 instanceof AbstractC13908a.c) {
                }
                if (cVar3 != null) {
                }
                str5 = "";
                this.f94426d = Long.valueOf(liteRtLmJni.nativeCreateEngine(o10, a10, str62, str722, intValue3, intValue422, str822, b1022, d1022, str9222, str102222, str5, i10, i11));
                P0 p0222222 = P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean k() {
        return this.f94426d != null;
    }
}
