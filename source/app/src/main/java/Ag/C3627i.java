package ag;

import Xf.InterfaceC3312m;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.jetbrains.annotations.NotNull;

public final class C3627i implements InterfaceC3312m<Vf.l> {

    @NotNull
    public final CharSequence f32095a;

    public final int f32096b;

    public final int f32097c;

    @NotNull
    public final Mf.p<CharSequence, Integer, nf.Z<Integer, Integer>> f32098d;

    public static final class a implements Iterator<Vf.l>, Nf.a {

        public int f32099b = -1;

        public int f32100c;

        public int f32101d;

        public Vf.l f32102e;

        public int f32103f;

        public a() {
            int K10 = Vf.u.K(C3627i.this.f32096b, 0, C3627i.this.f32095a.length());
            this.f32100c = K10;
            this.f32101d = K10;
        }

        /* JADX WARN: Code restructure failed: missing block: B:9:0x0021, code lost:
        
            if (r0 < r6.f32104g.f32097c) goto L9;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private final void a() {
            if (this.f32101d < 0) {
                this.f32099b = 0;
                this.f32102e = null;
                return;
            }
            if (C3627i.this.f32097c > 0) {
                int i10 = this.f32103f + 1;
                this.f32103f = i10;
            }
            if (this.f32101d <= C3627i.this.f32095a.length()) {
                nf.Z z10 = (nf.Z) C3627i.this.f32098d.invoke(C3627i.this.f32095a, Integer.valueOf(this.f32101d));
                if (z10 == null) {
                    this.f32102e = new Vf.l(this.f32100c, P.C3(C3627i.this.f32095a));
                    this.f32101d = -1;
                } else {
                    int intValue = ((Number) z10.a()).intValue();
                    int intValue2 = ((Number) z10.b()).intValue();
                    this.f32102e = Vf.u.Y1(this.f32100c, intValue);
                    int i11 = intValue + intValue2;
                    this.f32100c = i11;
                    this.f32101d = i11 + (intValue2 == 0 ? 1 : 0);
                }
                this.f32099b = 1;
            }
            this.f32102e = new Vf.l(this.f32100c, P.C3(C3627i.this.f32095a));
            this.f32101d = -1;
            this.f32099b = 1;
        }

        public final int b() {
            return this.f32103f;
        }

        public final int d() {
            return this.f32100c;
        }

        public final Vf.l e() {
            return this.f32102e;
        }

        public final int f() {
            return this.f32101d;
        }

        public final int g() {
            return this.f32099b;
        }

        @Override
        public boolean hasNext() {
            if (this.f32099b == -1) {
                a();
            }
            return this.f32099b == 1;
        }

        @Override
        public Vf.l next() {
            if (this.f32099b == -1) {
                a();
            }
            if (this.f32099b == 0) {
                throw new NoSuchElementException();
            }
            Vf.l lVar = this.f32102e;
            kotlin.jvm.internal.M.n(lVar, "null cannot be cast to non-null type kotlin.ranges.IntRange");
            this.f32102e = null;
            this.f32099b = -1;
            return lVar;
        }

        public final void k(int i10) {
            this.f32103f = i10;
        }

        public final void l(int i10) {
            this.f32100c = i10;
        }

        public final void m(Vf.l lVar) {
            this.f32102e = lVar;
        }

        public final void n(int i10) {
            this.f32101d = i10;
        }

        public final void o(int i10) {
            this.f32099b = i10;
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C3627i(@NotNull CharSequence input, int i10, int i11, @NotNull Mf.p<? super CharSequence, ? super Integer, nf.Z<Integer, Integer>> getNextMatch) {
        kotlin.jvm.internal.M.p(input, "input");
        kotlin.jvm.internal.M.p(getNextMatch, "getNextMatch");
        this.f32095a = input;
        this.f32096b = i10;
        this.f32097c = i11;
        this.f32098d = getNextMatch;
    }

    @Override
    @NotNull
    public Iterator<Vf.l> iterator() {
        return new a();
    }
}
