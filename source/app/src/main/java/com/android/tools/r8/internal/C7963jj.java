package com.android.tools.r8.internal;

public final class C7963jj {

    public final DG f49315a = new DG();

    public C8464mj f49316b = C8464mj.f50398e;

    public int f49317c = 0;

    public int f49318d = 0;

    public int f49319e = 0;

    public int f49320f = 0;

    public final void a() {
        int i10 = this.f49317c;
        C8464mj c8464mj = this.f49316b;
        int i11 = c8464mj.f50399a;
        if (i10 < i11) {
            this.f49315a.a(i11, c8464mj);
            this.f49317c = this.f49316b.f50399a;
        }
        int i12 = this.f49317c;
        if (i12 < this.f49318d) {
            if (i12 > 0 && !((C8464mj) this.f49315a.get(i12)).f50400b) {
                this.f49315a.remove(this.f49317c);
            }
            int i13 = this.f49318d;
            this.f49315a.a(i13, new C8464mj(i13, false, this.f49320f, this.f49319e));
            this.f49317c = this.f49318d;
        }
        this.f49316b = C8464mj.f50398e;
        this.f49318d = 0;
        this.f49319e = 0;
        this.f49320f = 0;
    }
}
