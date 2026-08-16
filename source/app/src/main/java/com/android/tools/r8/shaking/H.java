package com.android.tools.r8.shaking;

import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.graph.C4363b;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4594n3;
import com.android.tools.r8.graph.C4613o3;
import com.android.tools.r8.graph.C4666r0;

public final class H implements com.android.tools.r8.dex.M {

    public final com.android.tools.r8.graph.D5 f56516a;

    public final S1 f56517b;

    public final N f56518c;

    public H(N n10, C4666r0 c4666r0, com.android.tools.r8.graph.D5 d52) {
        this.f56518c = n10;
        this.f56516a = d52;
        this.f56517b = new S1(c4666r0, d52);
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.C2 c22) {
        return false;
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.D0 d02) {
        return false;
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.H2 h22) {
        return false;
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.I2 i22) {
        return false;
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.L2 l22) {
        return false;
    }

    @Override
    public final boolean a(C4554l1 c4554l1) {
        com.android.tools.r8.graph.F5 c10;
        C4613o3 a10;
        N n10 = this.f56518c;
        com.android.tools.r8.graph.D5 d52 = this.f56516a;
        n10.getClass();
        n10.b(c4554l1.s0(), (com.android.tools.r8.graph.E5) d52);
        n10.b(c4554l1.getType(), (com.android.tools.r8.graph.E5) d52);
        N n11 = this.f56518c;
        com.android.tools.r8.graph.D5 d53 = this.f56516a;
        n11.getClass();
        com.android.tools.r8.graph.H2 b10 = n11.b(c4554l1.s0(), d53);
        if (b10 == null || (c10 = b10.c(c4554l1)) == null || c10.getReference() != c4554l1) {
            return false;
        }
        if (c10.d().w0()) {
            if (this.f56518c.f56810n.f37507a.containsKey(c4554l1)) {
                a10 = (C4613o3) this.f56518c.f56810n.f37507a.get(c4554l1);
            } else {
                C4594n3 c4594n3 = this.f56518c.f56810n;
                C4363b c4363b = C4363b.f37064a;
                a10 = c4594n3.a(c4554l1, new C4613o3(c4554l1, 0, c4363b, c4363b));
            }
            a10.f37537b |= 1;
            this.f56518c.a(c10, this.f56516a, this.f56517b);
            if ((this.f56518c.f56802j.f50697l instanceof ClassFileConsumer) && c10.getHolder().o1()) {
                this.f56518c.c(c10.getHolder(), this.f56517b);
                this.f56518c.e(C11144c0.f57206a, c10, (C11365p1) C11382q1.f57709o.c().g());
            }
        } else {
            this.f56518c.f56776S.a(c10, this.f56516a, this.f56517b);
        }
        return false;
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.A2 a22) {
        this.f56518c.a(a22, this.f56516a);
        N n10 = this.f56518c;
        com.android.tools.r8.graph.D5 d52 = this.f56516a;
        n10.getClass();
        com.android.tools.r8.graph.H2 b10 = n10.b(a22.s0(), d52);
        if (b10 == null) {
            return false;
        }
        C4516j1 a10 = b10.f36252l.f36638b.a(a22);
        if (a10 != null) {
            if (a10.getReference() == a22) {
                this.f56518c.b(this.f56517b, new com.android.tools.r8.graph.H5(b10, a10));
            }
        } else {
            C4516j1 c10 = b10.c(a22);
            if (c10 != null && c10.getReference() == a22) {
                this.f56518c.a(this.f56517b, new com.android.tools.r8.graph.H5(b10, c10));
            }
        }
        return false;
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.M2 m22) {
        this.f56518c.a(m22, this.f56516a, this.f56517b);
        return false;
    }
}
