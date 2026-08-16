package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import java.util.Collection;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;

public final class C8236lJ extends AbstractC9533t50 {

    public static final boolean f49929g = true;

    public final QC f49930a;

    public final QC f49931b;

    public final QC f49932c;

    public final boolean f49933d;

    public final boolean f49934e;

    public final boolean f49935f;

    public C8236lJ(QC qc2, QC qc3, QC qc4, boolean z10, boolean z11, boolean z12) {
        if (!f49929g && qc2.isEmpty() && qc3.isEmpty() && qc4.isEmpty() && !z10 && !z11 && !z12) {
            throw new AssertionError();
        }
        this.f49930a = qc2;
        this.f49931b = qc3;
        this.f49932c = qc4;
        this.f49933d = z10;
        this.f49934e = z11;
        this.f49935f = z12;
    }

    @Override
    public final C8236lJ a() {
        return this;
    }

    @Override
    public final AbstractC9533t50 c() {
        int i10 = EC.f39794e;
        final BC bc2 = new BC();
        this.f49932c.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8236lJ.a(BC.this, (WJ) obj);
            }
        });
        QC qc2 = this.f49930a;
        QC qc3 = this.f49931b;
        C8588nS c8588nS = bc2.f38854a;
        if (c8588nS == null) {
            C8588nS c8588nS2 = new C8588nS(c8588nS != null ? c8588nS.w().size() : 11);
            AbstractC9907vK.a(c8588nS, c8588nS2);
            c8588nS = c8588nS2;
        }
        Set entrySet = c8588nS.entrySet();
        return new M00(qc2, qc3, entrySet.isEmpty() ? C6953df0.f47448l : C6953df0.a((Collection) entrySet), this.f49933d, this.f49934e, this.f49935f);
    }

    @Override
    public final boolean d() {
        return this.f49934e;
    }

    @Override
    public final AbstractC9533t50 e() {
        return this.f49933d ? this : new C8236lJ(this.f49930a, this.f49931b, this.f49932c, true, this.f49934e, this.f49935f);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == C8236lJ.class) {
            C8236lJ c8236lJ = (C8236lJ) obj;
            if (this.f49933d == c8236lJ.f49933d && this.f49934e == c8236lJ.f49934e && this.f49935f == c8236lJ.f49935f && this.f49930a.equals(c8236lJ.f49930a) && this.f49931b.equals(c8236lJ.f49931b) && this.f49932c.equals(c8236lJ.f49932c)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final AbstractC9533t50 f() {
        return this.f49934e ? this : new C8236lJ(this.f49930a, this.f49931b, this.f49932c, this.f49933d, true, this.f49935f);
    }

    @Override
    public final AbstractC9533t50 g() {
        return this.f49935f ? this : new C8236lJ(this.f49930a, this.f49931b, this.f49932c, this.f49933d, this.f49934e, true);
    }

    public final int hashCode() {
        int hashCode = this.f49932c.hashCode() + ((this.f49931b.hashCode() + ((this.f49930a.hashCode() + 31) * 31)) * 31);
        if (f49929g || hashCode == Objects.hash(this.f49930a, this.f49931b, this.f49932c)) {
            return (((((hashCode << 1) | C8704o7.a(this.f49933d)) << 1) | C8704o7.a(this.f49934e)) << 1) | C8704o7.a(this.f49935f);
        }
        throw new AssertionError();
    }

    @Override
    public final AbstractC9533t50 a(com.android.tools.r8.graph.M2 m22) {
        int i10 = QC.f43505c;
        IC ic2 = new IC();
        ic2.a((Iterable) this.f49930a);
        ic2.a(m22);
        return new C8236lJ(ic2.a(), this.f49931b, this.f49932c, this.f49933d, this.f49934e, this.f49935f);
    }

    @Override
    public final AbstractC9533t50 a(C4554l1 c4554l1) {
        int i10 = QC.f43505c;
        IC ic2 = new IC();
        ic2.a((Iterable) this.f49931b);
        ic2.a(c4554l1);
        return new C8236lJ(this.f49930a, ic2.a(), this.f49932c, this.f49933d, this.f49934e, this.f49935f);
    }

    @Override
    public final AbstractC9533t50 a(WJ wj2) {
        int i10 = QC.f43505c;
        IC ic2 = new IC();
        ic2.a((Iterable) this.f49932c);
        ic2.a(wj2);
        return new C8236lJ(this.f49930a, this.f49931b, ic2.a(), this.f49933d, this.f49934e, this.f49935f);
    }

    public static void a(BC bc2, WJ wj2) {
        com.android.tools.r8.graph.A2 B22 = wj2.B2();
        C8588nS c8588nS = bc2.f38854a;
        B22.getClass();
        c8588nS.a(B22, 1);
    }
}
