package Pm;

public class d extends Wm.f {

    public final Wm.d[] f21754a;

    public int f21755b = -1;

    public int f21756c = -1;

    public boolean f21757d = false;

    public d(Wm.d... dVarArr) {
        this.f21754a = dVarArr;
    }

    @Override
    public Wm.f a(int i10) {
        this.f21756c = i10;
        return this;
    }

    @Override
    public Wm.f b(int i10) {
        this.f21755b = i10;
        return this;
    }

    @Override
    public Wm.f e() {
        this.f21757d = true;
        return this;
    }

    public Wm.d[] f() {
        return this.f21754a;
    }

    public int g() {
        return this.f21756c;
    }

    public int h() {
        return this.f21755b;
    }

    public boolean i() {
        return this.f21757d;
    }
}
