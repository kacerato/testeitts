package J;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.Queue;

public class m<A, B> {

    public static final int f10120b = 250;

    public final Y.h<b<A>, B> f10121a;

    public class a extends Y.h<b<A>, B> {
        public a(long j10) {
            super(j10);
        }

        @Override
        public void m(@NonNull b<A> bVar, @Nullable B b10) {
            bVar.c();
        }
    }

    @VisibleForTesting
    public static final class b<A> {

        public static final Queue<b<?>> f10123d = Y.m.f(0);

        public int f10124a;

        public int f10125b;

        public A f10126c;

        public static <A> b<A> a(A a10, int i10, int i11) {
            b<A> bVar;
            Queue<b<?>> queue = f10123d;
            synchronized (queue) {
                bVar = (b) queue.poll();
            }
            if (bVar == null) {
                bVar = new b<>();
            }
            bVar.b(a10, i10, i11);
            return bVar;
        }

        public final void b(A a10, int i10, int i11) {
            this.f10126c = a10;
            this.f10125b = i10;
            this.f10124a = i11;
        }

        public void c() {
            Queue<b<?>> queue = f10123d;
            synchronized (queue) {
                queue.offer(this);
            }
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f10125b == bVar.f10125b && this.f10124a == bVar.f10124a && this.f10126c.equals(bVar.f10126c);
        }

        public int hashCode() {
            return (((this.f10124a * 31) + this.f10125b) * 31) + this.f10126c.hashCode();
        }
    }

    public m() {
        this(250L);
    }

    public void a() {
        this.f10121a.b();
    }

    @Nullable
    public B b(A a10, int i10, int i11) {
        b<A> a11 = b.a(a10, i10, i11);
        B j10 = this.f10121a.j(a11);
        a11.c();
        return j10;
    }

    public void c(A a10, int i10, int i11, B b10) {
        this.f10121a.n(b.a(a10, i10, i11), b10);
    }

    public m(long j10) {
        this.f10121a = new a(j10);
    }
}
