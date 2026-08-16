package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import java.util.Objects;

public final class M00 extends AbstractC9533t50 {

    public static final boolean f42119g = true;

    public final QC f42120a;

    public final QC f42121b;

    public final EC f42122c;

    public final boolean f42123d;

    public final boolean f42124e;

    public final boolean f42125f;

    public M00(QC qc2, QC qc3, EC ec2, boolean z10, boolean z11, boolean z12) {
        if (!f42119g && qc2.isEmpty() && qc3.isEmpty() && ec2.isEmpty() && !z10 && !z11 && !z12) {
            throw new AssertionError();
        }
        this.f42120a = qc2;
        this.f42121b = qc3;
        this.f42122c = ec2;
        this.f42123d = z10;
        this.f42124e = z11;
        this.f42125f = z12;
    }

    @Override
    public final AbstractC9533t50 a(com.android.tools.r8.graph.M2 m22) {
        throw new C5417Jv0();
    }

    @Override
    public final M00 b() {
        return this;
    }

    @Override
    public final AbstractC9533t50 c() {
        throw new C5417Jv0();
    }

    @Override
    public final boolean d() {
        return this.f42124e;
    }

    @Override
    public final AbstractC9533t50 e() {
        throw new C5417Jv0();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == M00.class) {
            M00 m00 = (M00) obj;
            if (this.f42123d == m00.f42123d && this.f42124e == m00.f42124e && this.f42125f == m00.f42125f && this.f42120a.equals(m00.f42120a) && this.f42121b.equals(m00.f42121b)) {
                EC ec2 = this.f42122c;
                EC ec3 = m00.f42122c;
                ec2.getClass();
                if (QY.a(ec2, ec3)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public final AbstractC9533t50 f() {
        throw new C5417Jv0();
    }

    @Override
    public final AbstractC9533t50 g() {
        throw new C5417Jv0();
    }

    public final int hashCode() {
        int hashCode = this.f42122c.hashCode() + ((this.f42121b.hashCode() + ((this.f42120a.hashCode() + 31) * 31)) * 31);
        if (f42119g || hashCode == Objects.hash(this.f42120a, this.f42121b, this.f42122c)) {
            return (((((hashCode << 1) | C8704o7.a(this.f42123d)) << 1) | C8704o7.a(this.f42124e)) << 1) | C8704o7.a(this.f42125f);
        }
        throw new AssertionError();
    }

    @Override
    public final AbstractC9533t50 a(C4554l1 c4554l1) {
        throw new C5417Jv0();
    }

    @Override
    public final AbstractC9533t50 a(WJ wj2) {
        throw new C5417Jv0();
    }
}
