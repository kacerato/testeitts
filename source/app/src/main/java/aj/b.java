package aj;

import jk.i;

public class b {

    public final i f32253a;

    public final i f32254b;

    public final int f32255c;

    public final int f32256d;

    public b(int i10, i iVar, i iVar2, int i11) {
        if (!iVar.i().n(iVar2.i())) {
            throw new IllegalArgumentException("points need to be on the same curve");
        }
        this.f32255c = i10;
        this.f32253a = iVar;
        this.f32254b = iVar2;
        this.f32256d = i11;
    }

    public static int g(int i10) {
        int i11 = 0;
        while (true) {
            i10 >>= 1;
            if (i10 == 0) {
                return i11;
            }
            i11++;
        }
    }

    public int a() {
        return this.f32256d;
    }

    public int b() {
        return ((this.f32253a.i().w() - (g(this.f32256d) + 13)) / 8) * 8;
    }

    public i c() {
        return this.f32253a;
    }

    public i d() {
        return this.f32254b;
    }

    public int e() {
        return this.f32255c;
    }

    public int f() {
        return this.f32253a.i().w();
    }
}
