package com.android.tools.r8.graph;

import com.android.dx.rop.code.AccessFlags;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C7051eC;
import com.android.tools.r8.internal.InterfaceC5580Mq0;
import dalvik.bytecode.Opcodes;
import java.util.function.BooleanSupplier;

public class L4 extends AbstractC4458g<L4> {

    public static final boolean f36564f = true;

    public L4(int i10) {
        super(i10, i10);
    }

    public static L4 a(int i10, boolean z10) {
        return new L4((i10 & Opcodes.OP_SPUT_OBJECT_JUMBO) | (z10 ? 65536 : 0));
    }

    public static L4 e(int i10) {
        L4 l42 = new L4(i10 & AccessFlags.METHOD_FLAGS);
        if (AbstractC4458g.d(l42.f37197c, 131072)) {
            l42.a(32);
            l42.b(131072);
        }
        return l42;
    }

    public final boolean D() {
        return n() || h() || AbstractC4458g.d(this.f37197c, 65536);
    }

    @Override
    public final InterfaceC5580Mq0 E() {
        return this;
    }

    public int G() {
        return this.f37197c & (-65537);
    }

    public boolean H() {
        return AbstractC4458g.d(this.f37197c, 1024);
    }

    public boolean I() {
        return AbstractC4458g.d(this.f37197c, 64);
    }

    public boolean J() {
        return AbstractC4458g.d(this.f37197c, 256);
    }

    public boolean K() {
        return AbstractC4458g.d(this.f37197c, 2048);
    }

    public boolean L() {
        return AbstractC4458g.d(this.f37197c, 32);
    }

    public final boolean M() {
        return AbstractC4458g.d(this.f37197c, 128);
    }

    public L4 N() {
        a(64);
        return this;
    }

    public void O() {
        a(256);
    }

    public final L4 P() {
        b(1024);
        return this;
    }

    @Override
    public final AbstractC7552hC b() {
        return new C7051eC().b((Iterable) AbstractC4458g.f37194d).a("synchronized").a("bridge").a("varargs").a("native").a("abstract").a("strictfp").a();
    }

    @Override
    public final AbstractC7552hC c() {
        return new C7051eC().b((Iterable) super.c()).a(new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return L4.this.L();
            }
        }).a(new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return L4.this.I();
            }
        }).a(new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return L4.this.M();
            }
        }).a(new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return L4.this.J();
            }
        }).a(new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return L4.this.H();
            }
        }).a(new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return L4.this.K();
            }
        }).a();
    }

    @Override
    public final AbstractC4458g E() {
        return this;
    }

    public L4(int i10, int i11) {
        super(i10, i11);
    }

    public static L4 b(int i10, boolean z10) {
        if (f36564f || (i10 & Opcodes.OP_SPUT_OBJECT_JUMBO) == i10) {
            return a(i10, z10);
        }
        throw new AssertionError();
    }
}
