package com.android.tools.r8.shaking;

import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;
import com.android.tools.r8.shaking.AbstractC11198f3;
import com.android.tools.r8.shaking.M3;
import java.util.List;
import java.util.function.Consumer;

public class L3 extends AbstractC11468v3 {

    public final O3 f56694r;

    public final M3 f56695s;

    public L3(Origin origin, Position position, String str, List list, S2 s22, S2 s23, boolean z10, EnumC11299l3 enumC11299l3, AbstractC11147c3 abstractC11147c3, List list2, AbstractC11250i4 abstractC11250i4, boolean z11, List list3, O3 o32, M3 m32) {
        super(origin, position, str, list, s22, s23, z10, enumC11299l3, abstractC11147c3, list2, abstractC11250i4, z11, list3);
        this.f56694r = o32;
        this.f56695s = m32;
    }

    @Override
    public String A() {
        return this.f56694r.toString();
    }

    public M3 C() {
        return this.f56695s;
    }

    public O3 D() {
        return this.f56694r;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof L3)) {
            return false;
        }
        L3 l32 = (L3) obj;
        if (this.f56694r == l32.f56694r && this.f56695s.equals(l32.f56695s)) {
            return super.equals(l32);
        }
        return false;
    }

    @Override
    public int hashCode() {
        return ((this.f56695s.hashCode() + (this.f56694r.hashCode() * 3)) * 3) + super.hashCode();
    }

    @Override
    public final String z() {
        return this.f56695s.toString();
    }

    public static abstract class a<C extends L3, B extends a<C, B>> extends AbstractC11198f3.a<C, B> {

        public O3 f56696p;

        public final M3.a f56697q = M3.a();

        public B a(O3 o32) {
            this.f56696p = o32;
            return (B) c();
        }

        public final a a(Consumer consumer) {
            consumer.accept(this.f56697q);
            return (a) c();
        }
    }
}
