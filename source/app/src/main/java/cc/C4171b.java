package cc;

import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import ec.h;
import ec.i;
import java.util.List;

public class C4171b {

    public final List<ec.f> f34721a;

    public final h f34722b;

    public final i f34723c;

    public FilamentMaterial f34724d;

    public i f34725e;

    public ec.e f34726f;

    public C4171b(h shaderVarianceHandler, List<ec.f> params, i defaultVariance) {
        this.f34722b = shaderVarianceHandler;
        this.f34721a = params;
        this.f34723c = defaultVariance;
    }

    public static C4171b b(C4171b renderPass) {
        if (renderPass == null) {
            return null;
        }
        return new C4171b(renderPass.f34722b, renderPass.f34721a, renderPass.f34723c);
    }

    public boolean a(String matName) {
        if (this.f34726f == null) {
            n(this.f34723c, matName);
        }
        if (this.f34722b.s()) {
            return n(this.f34725e, matName);
        }
        return false;
    }

    public long c() {
        h hVar = this.f34722b;
        if (hVar == null) {
            return 0L;
        }
        return hVar.l();
    }

    public i d() {
        return this.f34723c;
    }

    public FilamentMaterial e() {
        return this.f34724d;
    }

    public ec.e f() {
        return this.f34726f;
    }

    public i g() {
        return this.f34725e;
    }

    public String h() {
        h hVar = this.f34722b;
        if (hVar == null) {
            return null;
        }
        return hVar.m();
    }

    public boolean i(i variance) {
        h hVar = this.f34722b;
        if (hVar == null) {
            return false;
        }
        return hVar.v(variance);
    }

    public boolean j() {
        h hVar = this.f34722b;
        return hVar != null && hVar.y();
    }

    public void k(i variance) {
        h hVar = this.f34722b;
        if (hVar == null) {
            return;
        }
        hVar.C(variance);
    }

    public boolean l(i variance) {
        h hVar = this.f34722b;
        if (hVar == null) {
            return false;
        }
        return hVar.C(variance);
    }

    public void m(String name, boolean value) {
        this.f34722b.H(name, value);
    }

    public boolean n(i variance, String matName) {
        this.f34725e = variance;
        ec.e r10 = this.f34722b.r(variance, matName);
        this.f34726f = r10;
        if (r10 != null) {
            this.f34724d = r10.h();
            return true;
        }
        this.f34724d = null;
        if (this.f34722b.m() != null && !this.f34722b.m().isEmpty()) {
            return false;
        }
        this.f34722b.I("Failed to create material shader");
        return false;
    }
}
