package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C5920Sm0;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;
import com.android.tools.r8.shaking.AbstractC11198f3;
import com.android.tools.r8.shaking.L3;
import com.android.tools.r8.shaking.M3;
import com.android.tools.r8.shaking.R3;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Collectors;

public class K3 extends L3 {

    public static class a extends L3.a<K3, a> {
        @Override
        public final AbstractC11198f3.a c() {
            return this;
        }

        @Override
        public K3 a() {
            Origin origin = this.f57291a;
            Position b10 = b();
            String str = this.f57294d;
            AbstractC7552hC a10 = this.f57295e.a();
            S2 s22 = this.f57296f;
            S2 s23 = this.f57297g;
            boolean z10 = this.f57298h;
            EnumC11299l3 enumC11299l3 = this.f57299i;
            AbstractC11147c3 abstractC11147c3 = this.f57300j;
            AbstractC7552hC a11 = this.f57301k.a();
            AbstractC11250i4 abstractC11250i4 = this.f57302l;
            boolean z11 = this.f57303m;
            List list = this.f57304n;
            O3 o32 = this.f56696p;
            M3.a aVar = this.f56697q;
            return new K3(origin, b10, str, a10, s22, s23, z10, enumC11299l3, abstractC11147c3, a11, abstractC11250i4, z11, list, o32, new M3(aVar.f56731a, aVar.f56732b, aVar.f56733c, aVar.f56734d, aVar.f56735e, aVar.f56736f, aVar.f56737g, aVar.f56738h, aVar.f56739i));
        }
    }

    public K3(Origin origin, Position position, String str, List list, S2 s22, S2 s23, boolean z10, EnumC11299l3 enumC11299l3, AbstractC11147c3 abstractC11147c3, List list2, AbstractC11250i4 abstractC11250i4, boolean z11, List list3, O3 o32, M3 m32) {
        super(origin, position, str, list, s22, s23, z10, enumC11299l3, abstractC11147c3, list2, abstractC11250i4, z11, list3, o32, m32);
    }

    public static a E() {
        return new a();
    }

    public K3 a(final C4724u1 c4724u1) {
        return new K3(i(), this.f57278b, j(), AbstractC11250i4.a(b(), c4724u1), a(), h(), this.f57283g, d(), c() == null ? null : c().a(c4724u1), AbstractC11250i4.a(this.f57286j, c4724u1), e() == null ? null : e().a(c4724u1), f(), g() == null ? null : (List) g().stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                R3 a10;
                a10 = ((R3) obj).a(C4724u1.this);
                return a10;
            }
        }).collect(Collectors.toList()), D(), C());
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj instanceof K3) {
            return super.equals((K3) obj);
        }
        return false;
    }

    @Override
    public final K3 q() {
        return this;
    }

    public static void a(StringBuilder sb2, String str, Object obj) {
        if (obj == null) {
            return;
        }
        String obj2 = obj.toString();
        if (obj2.isEmpty()) {
            return;
        }
        if (str != null) {
            sb2.append(str);
        }
        sb2.append(obj2);
        sb2.append(" ");
    }

    public static K3 a(Consumer<M3.a> consumer) {
        a E10 = E();
        E10.f57291a = new J3(Origin.root());
        E10.a(EnumC11299l3.f57506c);
        boolean z10 = AbstractC11250i4.f57412a;
        E10.a(AbstractC11147c3.a(C11266j4.f57449c));
        R3.a aVar = new R3.a();
        aVar.a(U3.f57021d);
        E10.a(new C5920Sm0(aVar.a()));
        E10.a(O3.f56853b);
        consumer.accept(E10.f56697q);
        K3 a10 = E10.a();
        a10.f57913o = true;
        return a10;
    }
}
