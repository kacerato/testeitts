package com.android.tools.r8.graph.proto;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC5746Pm0;
import java.util.Objects;

public class g extends com.android.tools.r8.graph.proto.b {

    public static final boolean f37615d = true;

    public final AbstractC5746Pm0 f37616b;

    public final M2 f37617c;

    public static abstract class b<B extends b<B>> {

        public AbstractC5746Pm0 f37618a;

        public M2 f37619b;
    }

    public g(AbstractC5746Pm0 abstractC5746Pm0, M2 m22) {
        if (!f37615d && m22 == null) {
            throw new AssertionError();
        }
        this.f37616b = abstractC5746Pm0;
        this.f37617c = m22;
    }

    public static a d() {
        return new a();
    }

    @Override
    public final g a() {
        return this;
    }

    @Override
    public g a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2) {
        M2 c10 = abstractC5308Hz.c(abstractC5308Hz2, this.f37617c);
        AbstractC5746Pm0 b10 = f() ? this.f37616b.b(c4798y, c10, abstractC5308Hz, abstractC5308Hz2) : null;
        return (b10 == this.f37616b && c10 == this.f37617c) ? this : new g(b10, c10);
    }

    @Override
    public final boolean c() {
        return true;
    }

    public M2 e() {
        return this.f37617c;
    }

    public boolean equals(Object obj) {
        if (obj != null && getClass() == obj.getClass()) {
            g gVar = (g) obj;
            if (this.f37617c == gVar.f37617c && Objects.equals(this.f37616b, gVar.f37616b)) {
                return true;
            }
        }
        return false;
    }

    public boolean f() {
        return this.f37616b != null;
    }

    public int hashCode() {
        return Objects.hash(this.f37616b, this.f37617c);
    }

    public static class a extends b<a> {
        public b a(AbstractC5746Pm0 abstractC5746Pm0) {
            this.f37618a = abstractC5746Pm0;
            return b();
        }

        public final b b() {
            return this;
        }

        public b a(M2 m22) {
            this.f37619b = m22;
            return b();
        }

        public g a() {
            return new g(this.f37618a, this.f37619b);
        }
    }

    @Override
    public final com.android.tools.r8.graph.proto.b a(com.android.tools.r8.graph.proto.b bVar) {
        if (f37615d) {
            return this;
        }
        throw new AssertionError((Object) "Once the argument is removed one cannot modify it any further.");
    }
}
