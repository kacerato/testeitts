package com.android.tools.r8.graph.proto;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC5746Pm0;
import java.util.Objects;
import java.util.function.Consumer;

public class k extends b {

    public static final boolean f37625f = true;

    public final M2 f37626b;

    public final M2 f37627c;

    public final M2 f37628d;

    public final AbstractC5746Pm0 f37629e;

    public static class a {

        public M2 f37630a;

        public M2 f37631b;

        public M2 f37632c;

        public AbstractC5746Pm0 f37633d;

        public final a a(boolean z10, Consumer consumer) {
            if (z10) {
                consumer.accept(this);
            }
            return this;
        }

        public a b(M2 m22) {
            this.f37631b = m22;
            return this;
        }

        public a a(M2 m22) {
            this.f37632c = m22;
            return this;
        }

        public k a() {
            return new k(this.f37631b, this.f37632c, this.f37630a, this.f37633d);
        }
    }

    public k(M2 m22, M2 m23, M2 m24, AbstractC5746Pm0 abstractC5746Pm0) {
        this.f37626b = m24;
        this.f37627c = m22;
        this.f37628d = m23;
        this.f37629e = abstractC5746Pm0;
    }

    public static a d() {
        return new a();
    }

    @Override
    public final k b() {
        return this;
    }

    public M2 e() {
        return this.f37628d;
    }

    public final boolean equals(Object obj) {
        if (obj != null && getClass() == obj.getClass()) {
            k kVar = (k) obj;
            if (this.f37627c == kVar.f37627c && this.f37628d == kVar.f37628d && Objects.equals(this.f37629e, kVar.f37629e)) {
                return true;
            }
        }
        return false;
    }

    public M2 f() {
        return this.f37627c;
    }

    public final int hashCode() {
        return Objects.hash(this.f37627c, this.f37628d, this.f37629e);
    }

    @Override
    public final b a(b bVar) {
        if (bVar.c()) {
            return bVar;
        }
        if (!f37625f && !(bVar instanceof k)) {
            throw new AssertionError();
        }
        return a(bVar.b());
    }

    @Override
    public final k a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2) {
        M2 m22 = this.f37626b;
        M2 c10 = m22 != null ? abstractC5308Hz.c(abstractC5308Hz2, m22) : null;
        M2 c11 = abstractC5308Hz.c(abstractC5308Hz2, this.f37628d);
        AbstractC5746Pm0 abstractC5746Pm0 = this.f37629e;
        AbstractC5746Pm0 b10 = abstractC5746Pm0 != null ? abstractC5746Pm0.b(c4798y, c11, abstractC5308Hz, abstractC5308Hz2) : null;
        return (c10 == this.f37626b && c11 == this.f37628d && b10 == this.f37629e) ? this : new k(this.f37627c, c11, c10, b10);
    }

    public final k a(k kVar) {
        boolean z10 = f37625f;
        if (!z10 && e().S0()) {
            throw new AssertionError();
        }
        if (z10 || e() == kVar.f()) {
            return new k(f(), kVar.e(), this.f37626b, kVar.f37629e);
        }
        throw new AssertionError();
    }
}
