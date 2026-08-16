package o6;

import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import gb.C13317e;
import t3.C15377a;

public class b {

    public final long f98557a;

    public final i f98558b;

    public final i f98559c;

    public final i f98560d;

    public b(long frameID) {
        i iVar = new i("Types", 0);
        this.f98558b = iVar;
        i iVar2 = new i("repeat", 0);
        this.f98559c = iVar2;
        i iVar3 = new i("parallel", 0);
        this.f98560d = iVar3;
        this.f98557a = frameID;
        iVar.o(false);
        iVar2.o(false);
        iVar3.o(false);
    }

    public void a() {
        GameObject gameObject;
        int A10 = R8.f.A();
        for (int i10 = 0; i10 < A10; i10++) {
            Component z10 = R8.f.z(i10);
            if (z10 != null && (gameObject = z10.f79250n) != null && C13317e.J(gameObject) && (!C15377a.f109719g.booleanValue() || !z10.f79250n.Y0())) {
                this.f98558b.a(z10, 1);
            }
        }
    }

    public long b() {
        return this.f98557a;
    }

    public double c() {
        return this.f98560d.h();
    }

    public i d() {
        return this.f98560d;
    }

    public double e() {
        return this.f98559c.h();
    }

    public i f() {
        return this.f98559c;
    }

    public int g() {
        return this.f98558b.g();
    }

    public double h() {
        return e() + c();
    }

    public int i() {
        return this.f98558b.k();
    }

    public i j() {
        return this.f98558b;
    }

    public void k(Component component, long elapsedNanos) {
        this.f98560d.b(component, elapsedNanos);
    }

    public void l(Component component, long elapsedNanos) {
        this.f98559c.b(component, elapsedNanos);
    }

    public void m() {
        this.f98558b.l();
        this.f98559c.l();
        this.f98560d.l();
    }
}
