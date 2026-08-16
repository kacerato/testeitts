package com.android.tools.r8.androidapi;

import com.android.tools.r8.internal.AbstractC9530t40;
import com.android.tools.r8.internal.C2;
import com.android.tools.r8.internal.InterfaceC7166ev;
import java.util.Objects;

public interface f extends InterfaceC7166ev<f> {

    public static final int f35602a = 0;

    public static class a implements f {

        public static final a f35603c = new a(C2.MAIN);

        public static final a f35604d = new a(C2.EXTENSION);

        public static final boolean f35605e = true;

        public final C2 f35606b;

        public a(C2 c22) {
            this.f35606b = c22;
        }

        @Override
        public final a F() {
            return this;
        }

        public C2 a() {
            return this.f35606b;
        }

        @Override
        public final AbstractC9530t40 b(C2 c22) {
            return AbstractC9530t40.a(this.f35606b.e(c22));
        }

        @Override
        public final AbstractC9530t40 e(f fVar) {
            if (fVar.q()) {
                return AbstractC9530t40.a(this.f35606b.e(fVar.F().a()));
            }
            if (f35605e || fVar.U()) {
                return AbstractC9530t40.f52519c;
            }
            throw new AssertionError((Object) "Cannot compute relationship for not set");
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && this.f35606b == ((a) obj).f35606b;
        }

        public final int hashCode() {
            return Objects.hash(this.f35606b);
        }

        @Override
        public final boolean q() {
            return true;
        }

        public final String toString() {
            return this.f35606b.toString();
        }

        @Override
        public final AbstractC9530t40 a(C2 c22) {
            return AbstractC9530t40.a(this.f35606b.c(c22));
        }
    }

    static {
        boolean z10 = e.f35601a;
    }

    default a F() {
        return null;
    }

    default boolean U() {
        return false;
    }

    default f a(f fVar) {
        return d(fVar) ? this : fVar;
    }

    AbstractC9530t40 a(C2 c22);

    AbstractC9530t40 b(C2 c22);

    default boolean b(f fVar) {
        boolean z10 = e.f35601a;
        if (!z10 && (x() || fVar.x())) {
            throw new AssertionError((Object) "Cannot compute relationship for not set");
        }
        if (fVar.U()) {
            return false;
        }
        if (U()) {
            return true;
        }
        if (z10 || (q() && fVar.q())) {
            return F().a().c(fVar.F().a());
        }
        throw new AssertionError();
    }

    @Override
    default boolean isEqualTo(f fVar) {
        return equals(fVar);
    }

    default boolean d(f fVar) {
        if (e.f35601a || !(x() || fVar.x())) {
            return fVar.equals(this) || b(fVar);
        }
        throw new AssertionError((Object) "Cannot compute relationship for not set");
    }

    AbstractC9530t40 e(f fVar);

    default boolean q() {
        return false;
    }

    default boolean x() {
        return false;
    }
}
