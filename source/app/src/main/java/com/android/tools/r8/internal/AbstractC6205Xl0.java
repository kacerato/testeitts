package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.function.Supplier;

public abstract class AbstractC6205Xl0 {

    public static final boolean f45815a = true;

    public abstract AbstractC6205Xl0 a(C4798y c4798y, com.android.tools.r8.graph.proto.c cVar, C6807cm0 c6807cm0);

    public C6474am0 a() {
        return null;
    }

    public abstract boolean a(VJ vj2);

    public C6641bm0 b() {
        return null;
    }

    public boolean c() {
        return this instanceof C8188l2;
    }

    public boolean d() {
        return false;
    }

    public boolean e() {
        return this instanceof C6474am0;
    }

    public boolean f() {
        return this instanceof C6641bm0;
    }

    public boolean g() {
        return this instanceof C8602nZ;
    }

    public final C6974dm0 a(Supplier supplier) {
        if (this instanceof C8602nZ) {
            return C6974dm0.f47511c;
        }
        C6974dm0 c6974dm0 = (C6974dm0) supplier.get();
        return new C6974dm0(c6974dm0.f47512a.a(this), c6974dm0.f47513b);
    }

    public final AbstractC6205Xl0 a(AbstractC6205Xl0 abstractC6205Xl0) {
        if (this instanceof C8188l2) {
            return abstractC6205Xl0;
        }
        abstractC6205Xl0.getClass();
        if (abstractC6205Xl0 instanceof C8188l2) {
            return this;
        }
        if (!(this instanceof C8602nZ) && !(abstractC6205Xl0 instanceof C8602nZ)) {
            if (this instanceof C6474am0) {
                return ((C6474am0) this).b(abstractC6205Xl0);
            }
            if (abstractC6205Xl0 instanceof C6474am0) {
                return abstractC6205Xl0.a().b(this);
            }
            boolean z10 = f45815a;
            if (!z10 && !d() && !(this instanceof C6641bm0)) {
                throw new AssertionError();
            }
            if (!z10 && !abstractC6205Xl0.d() && !(abstractC6205Xl0 instanceof C6641bm0)) {
                throw new AssertionError();
            }
            AbstractC7552hC a10 = AbstractC7552hC.a(this, abstractC6205Xl0);
            if (a10.size() <= 3) {
                return new C6474am0(a10);
            }
            return C8602nZ.f50980b;
        }
        return C8602nZ.f50980b;
    }
}
