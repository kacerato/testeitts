package vc;

public class C15831g extends k {

    public int f121456c;

    public int f121457d;

    public int f121458e;

    public C15831g(int countX, int countY, int countZ) {
        this(countX, countY, countZ, false);
    }

    public final int u(int x10, int y10, int z10) {
        int i10;
        int i11;
        if (x10 < 0 || y10 < 0 || z10 < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (x10 >= this.f121456c || y10 >= (i10 = this.f121457d) || z10 >= (i11 = this.f121458e)) {
            throw new IndexOutOfBoundsException();
        }
        return (x10 * i10 * i11) + (y10 * i11) + z10;
    }

    public float v(int x10, int y10, int z10) {
        return super.f(u(x10, y10, z10));
    }

    public int w() {
        return this.f121456c;
    }

    public int x() {
        return this.f121457d;
    }

    public int y() {
        return this.f121458e;
    }

    public void z(int x10, int y10, int z10, float value) {
        super.p(u(x10, y10, z10), value);
    }

    public C15831g(int countX, int countY, int countZ, boolean fill) {
        super(countZ * countY * countX);
        this.f121456c = countX;
        this.f121457d = countY;
        this.f121458e = countZ;
        if (fill) {
            for (int i10 = 0; i10 < super.a(); i10++) {
                super.k(0.0f);
            }
        }
    }
}
