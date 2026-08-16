package vc;

import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;

public class C15829e extends k {

    public int f121452c;

    public int f121453d;

    public C15829e(int countX, int countY) {
        this(countX, countY, false);
    }

    public void A(int x10, int y10, float value) {
        super.p(u(x10, y10), value);
    }

    public void B(int x10, int y10, float value) {
        super.p(v(x10, y10), value);
    }

    public final int u(int x10, int y10) {
        int i10;
        if (x10 < 0 || y10 < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (x10 >= this.f121452c || y10 >= (i10 = this.f121453d)) {
            throw new IndexOutOfBoundsException();
        }
        return (x10 * i10) + y10;
    }

    public final int v(int x10, int y10) {
        return (x10 * this.f121453d) + y10;
    }

    public float w(int x10, int y10) {
        return super.f(u(x10, y10));
    }

    public int x() {
        return this.f121452c;
    }

    public int y() {
        return this.f121453d;
    }

    public float z(int x10, int y10) {
        return super.f(v(x10, y10));
    }

    public C15829e(int countX, int countY, boolean fill) {
        super(countY * countX);
        this.f121452c = countX;
        this.f121453d = countY;
        if (fill) {
            for (int i10 = 0; i10 < super.a(); i10++) {
                super.k(0.0f);
            }
        }
    }

    public C15829e(NativeFloatBuffer buffer, int countX, int countY) {
        super(buffer);
        if (buffer == null) {
            throw new NullPointerException("buffer can't be null");
        }
        if (countX > 0 && countY > 0) {
            if (buffer.capacity() >= countX * countY) {
                this.f121452c = countX;
                this.f121453d = countY;
                return;
            }
            throw new IllegalArgumentException("buffer capacity is smaller than countX * countY");
        }
        throw new IllegalArgumentException("countX and countY must be > 0");
    }
}
