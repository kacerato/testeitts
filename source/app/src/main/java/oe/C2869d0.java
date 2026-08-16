package Oe;

public final class C2869d0<T> extends Be.B<T> {

    public final T[] f19439b;

    public static final class a<T> extends Je.c<T> {

        public final Be.I<? super T> f19440b;

        public final T[] f19441c;

        public int f19442d;

        public boolean f19443e;

        public volatile boolean f19444f;

        public a(Be.I<? super T> i10, T[] tArr) {
            this.f19440b = i10;
            this.f19441c = tArr;
        }

        public void c() {
            T[] tArr = this.f19441c;
            int length = tArr.length;
            for (int i10 = 0; i10 < length && !d(); i10++) {
                T t10 = tArr[i10];
                if (t10 == null) {
                    this.f19440b.onError(new NullPointerException("The element at index " + i10 + " is null"));
                    return;
                }
                this.f19440b.h(t10);
            }
            if (d()) {
                return;
            }
            this.f19440b.a();
        }

        @Override
        public void clear() {
            this.f19442d = this.f19441c.length;
        }

        @Override
        public boolean d() {
            return this.f19444f;
        }

        @Override
        public void dispose() {
            this.f19444f = true;
        }

        @Override
        public boolean isEmpty() {
            return this.f19442d == this.f19441c.length;
        }

        @Override
        public int m(int i10) {
            if ((i10 & 1) == 0) {
                return 0;
            }
            this.f19443e = true;
            return 1;
        }

        @Override
        @Ce.g
        public T poll() {
            int i10 = this.f19442d;
            T[] tArr = this.f19441c;
            if (i10 == tArr.length) {
                return null;
            }
            this.f19442d = i10 + 1;
            return (T) He.b.g(tArr[i10], "The array element is null");
        }
    }

    public C2869d0(T[] tArr) {
        this.f19439b = tArr;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        a aVar = new a(i10, this.f19439b);
        i10.e(aVar);
        if (aVar.f19443e) {
            return;
        }
        aVar.c();
    }
}
