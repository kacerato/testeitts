package Rl;

import Wl.A;
import Wl.x;
import Wl.y;

public class q extends m {

    public String f22948d;

    public int f22949e;

    public int f22950f;

    public Wl.h f22951g;

    public y f22952h;

    public Wl.e f22953i;

    public x f22954j;

    public x f22955k;

    public Wl.e f22956l;

    public y[] f22957m;

    public q(int i10, int i11, Wl.h hVar, y yVar, x xVar, x xVar2, Wl.e eVar) {
        super(true, null);
        this.f22950f = i11;
        this.f22949e = i10;
        this.f22951g = hVar;
        this.f22952h = yVar;
        this.f22953i = eVar;
        this.f22954j = xVar;
        this.f22955k = xVar2;
        this.f22956l = Wl.s.b(hVar, yVar);
        this.f22957m = new A(hVar, yVar).c();
    }

    public Wl.h e() {
        return this.f22951g;
    }

    public y f() {
        return this.f22952h;
    }

    public Wl.e g() {
        return this.f22956l;
    }

    public int h() {
        return this.f22950f;
    }

    public int i() {
        return this.f22949e;
    }

    public x j() {
        return this.f22954j;
    }

    public x k() {
        return this.f22955k;
    }

    public y[] l() {
        return this.f22957m;
    }

    public Wl.e m() {
        return this.f22953i;
    }

    public q(int i10, int i11, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6, byte[][] bArr7) {
        super(true, null);
        this.f22949e = i10;
        this.f22950f = i11;
        Wl.h hVar = new Wl.h(bArr);
        this.f22951g = hVar;
        this.f22952h = new y(hVar, bArr2);
        this.f22953i = new Wl.e(bArr3);
        this.f22954j = new x(bArr4);
        this.f22955k = new x(bArr5);
        this.f22956l = new Wl.e(bArr6);
        this.f22957m = new y[bArr7.length];
        for (int i12 = 0; i12 < bArr7.length; i12++) {
            this.f22957m[i12] = new y(this.f22951g, bArr7[i12]);
        }
    }
}
