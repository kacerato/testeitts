package Me;

import Be.AbstractC2368s;

public final class C2839z<T> extends AbstractC2368s<T> {

    public final Be.Q<T> f15229b;

    public final Fe.r<? super T> f15230c;

    public static final class a<T> implements Be.N<T>, De.c {

        public final Be.v<? super T> f15231b;

        public final Fe.r<? super T> f15232c;

        public De.c f15233d;

        public a(Be.v<? super T> vVar, Fe.r<? super T> rVar) {
            this.f15231b = vVar;
            this.f15232c = rVar;
        }

        @Override
        public void b(T t10) {
            try {
                if (this.f15232c.test(t10)) {
                    this.f15231b.b(t10);
                } else {
                    this.f15231b.a();
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f15231b.onError(th2);
            }
        }

        @Override
        public boolean d() {
            return this.f15233d.d();
        }

        @Override
        public void dispose() {
            De.c cVar = this.f15233d;
            this.f15233d = Ge.d.DISPOSED;
            cVar.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f15233d, cVar)) {
                this.f15233d = cVar;
                this.f15231b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f15231b.onError(th2);
        }
    }

    public C2839z(Be.Q<T> q10, Fe.r<? super T> rVar) {
        this.f15229b = q10;
        this.f15230c = rVar;
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        this.f15229b.a(new a(vVar, this.f15230c));
    }
}
