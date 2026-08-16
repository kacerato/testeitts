package com.android.tools.r8.kotlin;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.internal.AbstractC8552nC;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.shaking.InterfaceC11195f0;
import java.util.function.Consumer;

public class C10853s0 implements InterfaceC11195f0 {

    public static final boolean f55457d = true;

    public final com.android.tools.r8.graph.M2 f55458a;

    public final String f55459b;

    public final boolean f55460c;

    public C10853s0(String str, com.android.tools.r8.graph.M2 m22, boolean z10) {
        this.f55459b = str;
        this.f55458a = m22;
        this.f55460c = z10;
        if (!f55457d && m22 == null) {
            throw new AssertionError();
        }
    }

    public static C10853s0 a(String str, C4724u1 c4724u1, String str2) {
        String k10;
        AbstractC8552nC abstractC8552nC = C4932Bl.f39005a;
        if (C4932Bl.E(str.replace('/', '.'))) {
            boolean contains = str.contains(".");
            if (contains) {
                k10 = C4932Bl.l(str);
            } else {
                k10 = C4932Bl.k(str);
            }
            return a(k10, c4724u1, str2, contains);
        }
        return new C10853s0(str);
    }

    public final boolean b(Consumer consumer, C4798y c4798y, String str) {
        com.android.tools.r8.graph.M2 m22 = this.f55458a;
        if (m22 == null) {
            consumer.accept(this.f55459b);
            return false;
        }
        com.android.tools.r8.graph.M2 a10 = a(c4798y, m22);
        if (a10 != null) {
            consumer.accept(c4798y.s().c(a10).toString());
            return !this.f55458a.V0().equals(r5);
        }
        String V02 = this.f55458a.V0();
        if (AbstractC10751b.f55254a.contains(V02)) {
            consumer.accept(V02);
            return false;
        }
        consumer.accept(str);
        return true;
    }

    public String toString() {
        com.android.tools.r8.graph.M2 m22 = this.f55458a;
        return m22 != null ? m22.f36592f.toString() : this.f55459b;
    }

    public C10853s0(String str) {
        this.f55458a = null;
        this.f55460c = false;
        this.f55459b = str;
        if (!f55457d && str == null) {
            throw new AssertionError();
        }
    }

    public static C10853s0 a(String str, C4724u1 c4724u1, String str2, boolean z10) {
        if (C4932Bl.z(str)) {
            return new C10853s0(str2, c4724u1.d(str), z10);
        }
        return new C10853s0(str2);
    }

    public final boolean a(final Consumer consumer, C4798y c4798y, final String str) {
        if (this.f55458a == null) {
            consumer.accept(this.f55459b);
            return false;
        }
        return b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10853s0.this.a(str, consumer, (String) obj);
            }
        }, c4798y, str);
    }

    public final void a(String str, Consumer consumer, String str2) {
        String f10;
        if (str2 != null && !str2.equals(str)) {
            if (this.f55460c) {
                f10 = C4932Bl.c(str2);
            } else {
                f10 = C4932Bl.f(str2);
            }
            consumer.accept(f10);
            return;
        }
        consumer.accept(str2);
    }

    public static com.android.tools.r8.graph.M2 a(C4798y c4798y, com.android.tools.r8.graph.M2 m22) {
        if (m22.E0()) {
            com.android.tools.r8.graph.M2 a10 = a(c4798y, m22.a(c4798y.b()));
            if (a10 != null) {
                return m22.a(c4798y.b(), a10);
            }
            return null;
        }
        if (!m22.I0()) {
            return m22;
        }
        com.android.tools.r8.graph.M2 d10 = c4798y.v().d(c4798y.f38418k, m22);
        if (!c4798y.f().i() || c4798y.M().f().i(d10)) {
            return d10;
        }
        return null;
    }

    @Override
    public final void a(InterfaceC4403d1 interfaceC4403d1) {
        com.android.tools.r8.graph.M2 m22 = this.f55458a;
        if (m22 == null || !m22.I0()) {
            return;
        }
        interfaceC4403d1.a(this.f55458a);
    }
}
