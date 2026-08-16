package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import java.util.Set;
import java.util.function.BiConsumer;

public class CA implements InterfaceC6762cW {

    public static final boolean f39146b = true;

    public final InterfaceC8701o6 f39147a;

    public CA(InterfaceC8701o6 interfaceC8701o6) {
        this.f39147a = interfaceC8701o6;
    }

    public void a(BiConsumer<Set<com.android.tools.r8.graph.M2>, com.android.tools.r8.graph.M2> biConsumer) {
        this.f39147a.a(biConsumer);
    }

    public Set<com.android.tools.r8.graph.M2> b() {
        return this.f39147a.mo743values();
    }

    @Override
    public boolean c(com.android.tools.r8.graph.M2 m22) {
        return this.f39147a.containsKey(m22);
    }

    public Set<com.android.tools.r8.graph.M2> d(com.android.tools.r8.graph.M2 m22) {
        return this.f39147a.d(m22);
    }

    @Override
    public com.android.tools.r8.graph.M2 a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        return (com.android.tools.r8.graph.M2) this.f39147a.getOrDefault(m22, m23);
    }

    public Set<com.android.tools.r8.graph.M2> a() {
        return this.f39147a.keySet();
    }

    @Override
    public boolean a(com.android.tools.r8.graph.M2 m22) {
        return this.f39147a.containsValue(m22);
    }

    @Override
    public final void a(C4798y c4798y) {
        for (com.android.tools.r8.graph.M2 m22 : this.f39147a.keySet()) {
            if (!f39146b && !((C11245i) c4798y.f()).j(m22)) {
                throw new AssertionError((Object) ("Expected horizontally merged lambda class `" + m22.j0() + "` to be absent"));
            }
        }
    }
}
