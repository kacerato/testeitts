package Wd;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

public abstract class H implements Externalizable {

    public static final long f27449i = -1792948471915530295L;

    public static final float f27450j = 0.5f;

    public static final int f27451k = 10;

    public transient int f27452b;

    public transient int f27453c;

    public float f27454d;

    public int f27455e;

    public int f27456f;

    public float f27457g;

    public transient boolean f27458h;

    public H() {
        this(10, 0.5f);
    }

    public int Xe() {
        return Ye() << 1;
    }

    public abstract int Ye();

    public void Ze() {
        gf(Vd.c.a(Math.max(this.f27452b + 1, Vd.b.a(size() / this.f27454d) + 1)));
        af(Ye());
        if (this.f27457g != 0.0f) {
            bf(size());
        }
    }

    public void af(int i10) {
        this.f27455e = Math.min(i10 - 1, (int) (i10 * this.f27454d));
        this.f27453c = i10 - this.f27452b;
    }

    public void bf(int i10) {
        float f10 = this.f27457g;
        if (f10 != 0.0f) {
            this.f27456f = (int) ((i10 * f10) + 0.5f);
        }
    }

    public void cf(int i10) {
        if (i10 > this.f27455e - size()) {
            gf(Vd.c.a(Math.max(size() + 1, Vd.b.a((i10 + size()) / this.f27454d) + 1)));
            af(Ye());
        }
    }

    public void clear() {
        this.f27452b = 0;
        this.f27453c = Ye();
    }

    public float df() {
        return this.f27457g;
    }

    public final void ef(boolean z10) {
        if (z10) {
            this.f27453c--;
        }
        int i10 = this.f27452b + 1;
        this.f27452b = i10;
        int i11 = this.f27455e;
        if (i10 > i11 || this.f27453c == 0) {
            gf(i10 > i11 ? Vd.c.a(Ye() << 1) : Ye());
            af(Ye());
        }
    }

    public void ff(boolean z10) {
        this.f27458h = false;
        if (!z10 || this.f27456f > 0 || this.f27457g == 0.0f) {
            return;
        }
        Ze();
    }

    public abstract void gf(int i10);

    public void hf(int i10) {
        this.f27452b--;
        if (this.f27457g != 0.0f) {
            int i11 = this.f27456f - 1;
            this.f27456f = i11;
            if (this.f27458h || i11 > 0) {
                return;
            }
            Ze();
        }
    }

    public void m77if(float f10) {
        if (f10 >= 0.0f) {
            this.f27457g = f10;
            return;
        }
        throw new IllegalArgumentException("Factor must be >= 0: " + f10);
    }

    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    public int jf(int i10) {
        int a10 = Vd.c.a(i10);
        af(a10);
        bf(i10);
        return a10;
    }

    public void kf() {
        this.f27458h = true;
    }

    public final void lf() {
        Ze();
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        float f10 = this.f27454d;
        this.f27454d = objectInput.readFloat();
        this.f27457g = objectInput.readFloat();
        if (f10 != this.f27454d) {
            jf((int) Math.ceil(10.0f / r3));
        }
    }

    public int size() {
        return this.f27452b;
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeFloat(this.f27454d);
        objectOutput.writeFloat(this.f27457g);
    }

    public H(int i10) {
        this(i10, 0.5f);
    }

    public H(int i10, float f10) {
        this.f27458h = false;
        this.f27454d = f10;
        this.f27457g = f10;
        jf(Vd.b.a(i10 / f10));
    }
}
