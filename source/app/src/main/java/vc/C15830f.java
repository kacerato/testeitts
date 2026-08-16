package vc;

public class C15830f extends l {

    public int f121454c;

    public int f121455d;

    public C15830f(int countX, int countY) {
        this(countX, countY, false);
    }

    public final int t(int x10, int y10) {
        int i10;
        if (x10 < 0 || y10 < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (x10 >= this.f121454c || y10 >= (i10 = this.f121455d)) {
            throw new IndexOutOfBoundsException();
        }
        return (x10 * i10) + y10;
    }

    public int u(int x10, int y10) {
        return super.e(t(x10, y10));
    }

    public int v() {
        return this.f121454c;
    }

    public int w() {
        return this.f121455d;
    }

    public void x(int x10, int y10, int value) {
        super.o(t(x10, y10), value);
    }

    public C15830f(int countX, int countY, boolean fill) {
        super(countY * countX);
        this.f121454c = countX;
        this.f121455d = countY;
        if (fill) {
            for (int i10 = 0; i10 < super.a(); i10++) {
                super.j(0);
            }
        }
    }
}
