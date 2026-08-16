package vc;

import JAVARuntime.OH3LevelIntArray;

public class h extends l {

    public int f121459c;

    public int f121460d;

    public int f121461e;

    public OH3LevelIntArray f121462f;

    public h(int countX, int countY, int countZ) {
        this(countX, countY, countZ, true);
    }

    @Override
    public OH3LevelIntArray s() {
        OH3LevelIntArray oH3LevelIntArray = this.f121462f;
        if (oH3LevelIntArray != null) {
            return oH3LevelIntArray;
        }
        OH3LevelIntArray oH3LevelIntArray2 = new OH3LevelIntArray(this);
        this.f121462f = oH3LevelIntArray2;
        return oH3LevelIntArray2;
    }

    public final int t(int x10, int y10, int z10) {
        int i10;
        int i11;
        if (x10 < 0 || y10 < 0 || z10 < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (x10 >= this.f121459c || y10 >= (i10 = this.f121460d) || z10 >= (i11 = this.f121461e)) {
            throw new IndexOutOfBoundsException();
        }
        return (x10 * i10 * i11) + (y10 * i11) + z10;
    }

    public int u(int x10, int y10, int z10) {
        return super.e(t(x10, y10, z10));
    }

    public int v() {
        return this.f121459c;
    }

    public int w() {
        return this.f121460d;
    }

    public int x() {
        return this.f121461e;
    }

    public void y(int x10, int y10, int z10, int value) {
        super.o(t(x10, y10, z10), value);
    }

    public void z(OH3LevelIntArray run) {
        this.f121462f = run;
    }

    public h(int countX, int countY, int countZ, boolean fill) {
        super(countZ * countY * countX);
        this.f121459c = countX;
        this.f121460d = countY;
        this.f121461e = countZ;
        if (fill) {
            super.d(0);
        }
    }
}
