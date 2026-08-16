package com.android.tools.r8.graph;

import com.android.dx.rop.code.AccessFlags;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C7051eC;
import com.android.tools.r8.internal.InterfaceC5580Mq0;
import java.util.function.BooleanSupplier;

public class C4537k3 extends AbstractC4458g<C4537k3> {

    public static final boolean f37423f = true;

    public C4537k3(int i10) {
        super(i10, i10);
    }

    public static C4537k3 e(int i10) {
        return new C4537k3(i10 & AccessFlags.FIELD_FLAGS);
    }

    public static C4537k3 g(int i10) {
        if (f37423f || (i10 & AccessFlags.FIELD_FLAGS) == i10) {
            return new C4537k3(i10 & AccessFlags.FIELD_FLAGS);
        }
        throw new AssertionError();
    }

    public int D() {
        return this.f37197c;
    }

    @Override
    public final InterfaceC5580Mq0 E() {
        return this;
    }

    public final boolean G() {
        return AbstractC4458g.d(this.f37197c, 16384);
    }

    public final boolean H() {
        return AbstractC4458g.d(this.f37197c, 128);
    }

    public final boolean I() {
        return AbstractC4458g.d(this.f37197c, 64);
    }

    @Override
    public final AbstractC7552hC b() {
        return new C7051eC().b((Iterable) AbstractC4458g.f37194d).a("volatile").a("transient").a("enum").a();
    }

    @Override
    public final AbstractC7552hC c() {
        return new C7051eC().b((Iterable) super.c()).a(new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return C4537k3.this.I();
            }
        }).a(new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return C4537k3.this.H();
            }
        }).a(new BooleanSupplier() {
            @Override
            public final boolean getAsBoolean() {
                return C4537k3.this.G();
            }
        }).a();
    }

    @Override
    public final AbstractC4458g E() {
        return this;
    }

    public C4537k3(int i10, int i11) {
        super(i10, i11);
    }
}
