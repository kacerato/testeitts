package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4804y5;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import w2.C15883c;

public final class C7922jT extends AbstractC7757iT {

    public static final boolean f49242i = true;

    public final WS f49243c;

    public final StringBuilder f49244d;

    public final int f49245e;

    public final int f49246f;

    public int f49247g;

    public InterfaceC6923dT f49248h;

    public C7922jT(WS ws) {
        super(ws);
        this.f49244d = new StringBuilder();
        int i10 = 0;
        this.f49247g = 0;
        this.f49243c = ws;
        this.f49245e = Math.max(e(-ws.f45407i).length(), e(ws.f45409k - 1).length());
        C7089eT it = ws.iterator();
        while (it.hasNext()) {
            i10 = Math.max(i10, C8089kT.f(it.next().a()).length());
        }
        this.f49246f = i10;
    }

    public final void a(int i10, String str) {
        if (this.f49247g > 0) {
            this.f49244d.append("\n");
        }
        C10656zq0.a(this.f49244d, e(this.f49247g - this.f48952a.f45407i), this.f49245e);
        this.f49244d.append(':');
        C10656zq0.a(this.f49244d, Integer.toString(i10), this.f49245e);
        this.f49244d.append(": ");
        C10656zq0.b(this.f49244d, str, this.f49246f);
        this.f49244d.append(C15883c.f126249O);
    }

    @Override
    public final void b() {
        i().append("null");
    }

    @Override
    public final void c(int i10) {
        i().append(i10);
    }

    @Override
    public final void d() {
    }

    @Override
    public final void e() {
    }

    @Override
    public final void f() {
    }

    @Override
    public final void g() {
        throw new C6501av0("Printing of instruction missing: " + C8089kT.f(this.f49248h.a()));
    }

    @Override
    public final void h() {
    }

    public final StringBuilder i() {
        StringBuilder sb2 = this.f49244d;
        sb2.append(f(this.f49247g));
        sb2.append(" <- ");
        return sb2;
    }

    public final String j() {
        WS ws;
        int i10 = 0;
        while (true) {
            ws = this.f49243c;
            if (i10 >= ws.f45407i) {
                break;
            }
            a(0, "ARG");
            i();
            this.f49247g++;
            i10++;
        }
        ws.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7922jT.this.a((InterfaceC6923dT) obj);
            }
        });
        if (this.f49243c.f45410l != null) {
            this.f49244d.append("try-catch-handlers:\n");
            this.f49243c.f45410l.f45060b.forEach(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    C7922jT.this.a((Integer) obj, (N8) obj2);
                }
            });
        }
        return this.f49244d.toString();
    }

    public static String e(int i10) {
        if (i10 < 0) {
            return "--";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(i10);
        return sb2.toString();
    }

    public static String f(int i10) {
        return "v" + i10;
    }

    public static String h(Object obj) {
        return "v" + obj.toString();
    }

    @Override
    public final void b(int i10) {
        i().append(i10);
    }

    @Override
    public final void c(com.android.tools.r8.graph.M2 m22) {
        i();
        this.f49244d.append((Object) m22);
    }

    @Override
    public final void d(int i10) {
        this.f49244d.append(e(i10));
    }

    @Override
    public final void b(long j10) {
        i().append(j10);
    }

    @Override
    public final void d(Object obj) {
        a(Arrays.asList(obj));
    }

    @Override
    public final void e(Object obj) {
        a(Arrays.asList(obj));
    }

    @Override
    public final void f(Object obj) {
        a(Arrays.asList(obj));
    }

    @Override
    public final void g(Object obj) {
        a(Arrays.asList(obj));
    }

    @Override
    public final void b(T10 t10, Object obj) {
        i();
        a(Arrays.asList(obj));
    }

    @Override
    public final void c(com.android.tools.r8.graph.M2 m22, Object obj) {
        a(m22, obj, true);
    }

    @Override
    public final void c(Object obj) {
        a(Arrays.asList(obj));
    }

    @Override
    public final void b(com.android.tools.r8.graph.M2 m22) {
        i().append((Object) m22);
    }

    @Override
    public final void b(Object obj) {
        i().append(h(obj));
    }

    @Override
    public final void b(com.android.tools.r8.graph.M2 m22, ArrayList arrayList) {
        i();
        a((List) arrayList);
        this.f49244d.append((Object) m22);
    }

    @Override
    public final void b(com.android.tools.r8.graph.A2 a22, ArrayList arrayList) {
        if (!a22.z0().S0()) {
            i();
        }
        a((List) arrayList);
        this.f49244d.append((Object) a22);
    }

    @Override
    public final int a() {
        return this.f49247g;
    }

    @Override
    public final void b(C4554l1 c4554l1, Object obj) {
        StringBuilder sb2 = this.f49244d;
        sb2.append((Object) c4554l1);
        sb2.append(C15883c.f126249O);
        a(Arrays.asList(obj));
    }

    public final void a(List list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            StringBuilder sb2 = this.f49244d;
            sb2.append(h(list.get(i10)));
            sb2.append(C15883c.f126249O);
        }
    }

    public final void a(Integer num, N8 n82) {
        StringBuilder sb2 = this.f49244d;
        sb2.append((Object) num);
        sb2.append(":\n");
        n82.getClass();
        int i10 = 0;
        while (i10 < n82.size()) {
            com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) n82.f42510b.get(i10);
            Object obj = n82.f42511c.get(i10);
            i10++;
            M8 m82 = new M8(m22, obj);
            StringBuilder sb3 = this.f49244d;
            sb3.append((Object) m82.f42185a);
            sb3.append(" -> ");
            sb3.append(m82.f42186b);
            sb3.append('\n');
        }
    }

    @Override
    public final void b(com.android.tools.r8.graph.M2 m22, Object obj) {
        i();
        StringBuilder sb2 = this.f49244d;
        sb2.append((Object) m22);
        sb2.append(C15883c.f126249O);
        a(Arrays.asList(obj));
    }

    @Override
    public final void a(InterfaceC6923dT interfaceC6923dT) {
        this.f49248h = interfaceC6923dT;
        if (!f49242i && interfaceC6923dT.f() != this.f49247g - this.f48952a.f45407i) {
            throw new AssertionError();
        }
        int m10 = interfaceC6923dT.m();
        a(m10 == 0 ? 1 : m10 + 2, C8089kT.f(interfaceC6923dT.a()));
        super.a(interfaceC6923dT);
        this.f49247g++;
    }

    @Override
    public final void a(int i10) {
        i().append(Float.intBitsToFloat(i10));
    }

    @Override
    public final void a(long j10) {
        i().append(Double.longBitsToDouble(j10));
    }

    @Override
    public final void a(com.android.tools.r8.graph.L2 l22) {
        StringBuilder i10 = i();
        i10.append("str(");
        i10.append((Object) l22);
        i10.append(")");
    }

    @Override
    public final void a(com.android.tools.r8.graph.J2 j22, ZY zy) {
        StringBuilder i10 = i();
        i10.append("item(");
        i10.append((Object) j22);
        i10.append(")");
    }

    @Override
    public final void a(com.android.tools.r8.graph.M2 m22, boolean z10) {
        StringBuilder i10 = i();
        i10.append("class(");
        i10.append((Object) m22);
        i10.append(")");
    }

    @Override
    public final void a(com.android.tools.r8.graph.C2 c22) {
        StringBuilder i10 = i();
        i10.append("methodHandle(");
        i10.append((Object) c22);
        i10.append(")");
    }

    @Override
    public final void a(com.android.tools.r8.graph.I2 i22) {
        StringBuilder i10 = i();
        i10.append("methodType(");
        i10.append((Object) i22);
        i10.append(")");
    }

    @Override
    public final void a(Object obj, Object obj2) {
        i();
        a(Arrays.asList(obj, obj2));
    }

    @Override
    public final void a(T10 t10, Object obj) {
        i();
        a(Arrays.asList(obj));
    }

    @Override
    public final void a(int i10, Object obj) {
        i();
        a(Arrays.asList(obj));
    }

    @Override
    public final void a(NB nb2, int i10, Object obj) {
        a(Arrays.asList(obj));
        this.f49244d.append(e(i10));
    }

    @Override
    public final void a(NB nb2, int i10, Object obj, Object obj2) {
        a(Arrays.asList(obj, obj2));
        this.f49244d.append(e(i10));
    }

    @Override
    public final void a(Object obj, LS ls) {
        a(Arrays.asList(obj));
    }

    @Override
    public final void a(Object obj, OS os) {
        a(Arrays.asList(obj));
    }

    @Override
    public final void a(com.android.tools.r8.graph.M2 m22, ArrayList arrayList) {
        i();
        a((List) arrayList);
        this.f49244d.append((Object) m22);
    }

    @Override
    public final void a(int i10, long j10, short[] sArr, Object obj) {
        a(Arrays.asList(obj));
        StringBuilder sb2 = this.f49244d;
        sb2.append("w:");
        sb2.append(i10);
        sb2.append(",s:");
        sb2.append(j10);
    }

    @Override
    public final void a(com.android.tools.r8.graph.D0 d02, ArrayList arrayList) {
        a((List) arrayList);
        this.f49244d.append((Object) d02);
    }

    @Override
    public final void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.I2 i22, ArrayList arrayList) {
        a((List) arrayList);
        StringBuilder sb2 = this.f49244d;
        sb2.append((Object) a22);
        sb2.append(C15883c.f126249O);
        sb2.append((Object) i22);
    }

    @Override
    public final void a(C4554l1 c4554l1) {
        i();
        StringBuilder sb2 = this.f49244d;
        sb2.append((Object) c4554l1);
        sb2.append(C15883c.f126249O);
    }

    @Override
    public final void a(C4554l1 c4554l1, Object obj) {
        i();
        StringBuilder sb2 = this.f49244d;
        sb2.append((Object) c4554l1);
        sb2.append(C15883c.f126249O);
        a(Arrays.asList(obj));
    }

    @Override
    public final void a(C4554l1 c4554l1, Object obj, Object obj2) {
        StringBuilder sb2 = this.f49244d;
        sb2.append((Object) c4554l1);
        sb2.append(C15883c.f126249O);
        a(Arrays.asList(obj, obj2));
    }

    @Override
    public final void a(Object obj) {
        i().append(h(obj));
    }

    @Override
    public final void a(com.android.tools.r8.graph.M2 m22, Object obj, boolean z10) {
        i();
        a(Arrays.asList(obj));
        this.f49244d.append((Object) m22);
    }

    @Override
    public final void a(com.android.tools.r8.graph.M2 m22, Object obj) {
        i();
        a(Arrays.asList(obj));
        this.f49244d.append((Object) m22);
    }

    @Override
    public final void a(YV yv, Object obj, Object obj2) {
        i();
        a(Arrays.asList(obj, obj2));
        this.f49244d.append((Object) yv);
    }

    @Override
    public final void a(YV yv, Object obj, Object obj2, Object obj3) {
        a(Arrays.asList(obj, obj2, obj3));
        this.f49244d.append((Object) yv);
    }

    @Override
    public final void a(ArrayList arrayList) {
        i();
        a((List) arrayList);
    }

    @Override
    public final void a(int i10, Object obj, Object obj2) {
        i();
        a(Arrays.asList(obj, obj2));
    }

    @Override
    public final void a(int i10, com.android.tools.r8.graph.M2 m22) {
        StringBuilder i11 = i();
        i11.append("type(");
        i11.append((Object) m22);
        i11.append(") ordinal(");
        i11.append(i10);
        i11.append(")");
    }

    @Override
    public final void a(com.android.tools.r8.graph.M2 m22) {
        this.f49244d.append((Object) m22);
    }

    @Override
    public final void a(C4554l1[] c4554l1Arr, ArrayList arrayList) {
        a((List) arrayList);
    }

    @Override
    public final void a(C4804y5 c4804y5, Object obj) {
        i().append((Object) c4804y5);
        a(Arrays.asList(obj));
    }
}
