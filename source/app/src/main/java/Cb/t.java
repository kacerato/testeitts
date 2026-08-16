package cb;

import java.util.Comparator;

public class t {

    public static t f34687c;

    public v f34688a;

    public f f34689b;

    public static t a() {
        if (f34687c == null) {
            f34687c = new t();
        }
        return f34687c;
    }

    public <T extends Comparable> void b(b<T> a10) {
        if (this.f34689b == null) {
            this.f34689b = new f();
        }
        this.f34689b.c(a10.f34501b, 0, a10.f34502c);
    }

    public <T> void c(b<T> a10, Comparator<? super T> c10) {
        if (this.f34688a == null) {
            this.f34688a = new v();
        }
        this.f34688a.c(a10.f34501b, c10, 0, a10.f34502c);
    }

    public void d(Object[] a10) {
        if (this.f34689b == null) {
            this.f34689b = new f();
        }
        this.f34689b.c(a10, 0, a10.length);
    }

    public void e(Object[] a10, int fromIndex, int toIndex) {
        if (this.f34689b == null) {
            this.f34689b = new f();
        }
        this.f34689b.c(a10, fromIndex, toIndex);
    }

    public <T> void f(T[] a10, Comparator<? super T> c10) {
        if (this.f34688a == null) {
            this.f34688a = new v();
        }
        this.f34688a.c(a10, c10, 0, a10.length);
    }

    public <T> void g(T[] a10, Comparator<? super T> c10, int fromIndex, int toIndex) {
        if (this.f34688a == null) {
            this.f34688a = new v();
        }
        this.f34688a.c(a10, c10, fromIndex, toIndex);
    }
}
