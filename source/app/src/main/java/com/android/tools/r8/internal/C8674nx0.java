package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import java.util.Set;

public class C8674nx0 implements InterfaceC6762cW {

    public static final boolean f51119d = true;

    public final InterfaceC8701o6 f51120a;

    public final InterfaceC8367m6 f51121b;

    public final InterfaceC8367m6 f51122c;

    public C8674nx0(InterfaceC8701o6 interfaceC8701o6, InterfaceC8367m6 interfaceC8367m6, InterfaceC8367m6 interfaceC8367m62) {
        this.f51120a = interfaceC8701o6;
        this.f51121b = interfaceC8367m6;
        this.f51122c = interfaceC8367m62;
    }

    @Override
    public final com.android.tools.r8.graph.M2 a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        return (com.android.tools.r8.graph.M2) this.f51120a.getOrDefault(m22, m23);
    }

    public boolean b() {
        return this.f51120a.isEmpty();
    }

    @Override
    public final boolean c(com.android.tools.r8.graph.M2 m22) {
        return d(m22);
    }

    public boolean d(com.android.tools.r8.graph.M2 m22) {
        return this.f51120a.containsKey(m22);
    }

    public Set<com.android.tools.r8.graph.M2> a() {
        return this.f51120a.keySet();
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.M2 m22) {
        return !this.f51120a.d(m22).isEmpty();
    }

    @Override
    public final void a(C4798y c4798y) {
        for (com.android.tools.r8.graph.M2 m22 : this.f51120a.keySet()) {
            if (!f51119d && !((C11245i) c4798y.f()).j(m22)) {
                throw new AssertionError((Object) ("Expected vertically merged class `" + m22.j0() + "` to be absent"));
            }
        }
    }
}
