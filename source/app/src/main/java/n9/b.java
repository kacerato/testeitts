package n9;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.Wind.WindEffect;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import ec.e;
import java.util.concurrent.atomic.AtomicBoolean;
import nc.h;
import ub.p;
import yb.C16165b;

public final class b {

    public FilamentMaterial f97883a;

    public p f97885c;

    public Vertex f97886d;

    public float f97887e;

    public volatile WindEffect f97890h;

    public float f97893k;

    public boolean f97884b = true;

    public final Vector3 f97888f = new Vector3();

    public final AtomicBoolean f97889g = new AtomicBoolean(true);

    public float f97891i = 0.5f;

    public float f97892j = 0.5f;

    public float f97894l = 1.0f;

    public final void a() {
        FilamentMaterial filamentMaterial = this.f97883a;
        if (filamentMaterial == null) {
            return;
        }
        filamentMaterial.w("captureHalfWidth", this.f97891i);
        this.f97883a.w("captureHalfHeight", this.f97892j);
        this.f97883a.w("capturePivotYOffset", this.f97893k);
        this.f97883a.w("captureSourceScale", this.f97894l);
    }

    public final void b() {
        float f10;
        GameObject gameObject;
        if (this.f97883a == null || !this.f97889g.getAndSet(false)) {
            return;
        }
        WindEffect windEffect = this.f97890h;
        if (windEffect == null || (gameObject = windEffect.f79250n) == null) {
            this.f97888f.set(0.0f);
            f10 = 0.0f;
        } else {
            gameObject.transform.a0(this.f97888f);
            f10 = windEffect.getIntensity();
        }
        this.f97883a.C(h.f97938f, this.f97888f);
        this.f97883a.w(h.f97939g, f10);
        this.f97883a.w(h.f97940h, 1.0f);
        this.f97883a.w("windEffect", this.f97887e);
    }

    public p c() {
        return this.f97885c;
    }

    public FilamentMaterial d() {
        return this.f97883a;
    }

    public Vertex e() {
        return this.f97886d;
    }

    public float f() {
        return this.f97887e;
    }

    public boolean g() {
        Vertex vertex;
        return (this.f97883a == null || (vertex = this.f97886d) == null || !vertex.x1() || this.f97886d.f1() == null || this.f97886d.l0() == null) ? false : true;
    }

    public boolean h() {
        return p.L(this.f97885c);
    }

    public boolean i(p impostorTexture, float nextWindEffect, boolean receiveLighting) {
        Vertex vertex;
        return (this.f97883a != null && this.f97884b == receiveLighting && (vertex = this.f97886d) != null && vertex.x1() && this.f97885c == impostorTexture && Float.compare(this.f97887e, Nc.b.G(nextWindEffect)) == 0 && !this.f97889g.get()) ? false : true;
    }

    public void j(WindEffect windEffect) {
        this.f97890h = windEffect;
        this.f97889g.set(true);
    }

    public boolean k() {
        return this.f97889g.get();
    }

    public void l() {
        this.f97885c = null;
        this.f97883a = null;
        this.f97884b = true;
        this.f97886d = null;
        this.f97887e = 0.0f;
        this.f97890h = null;
        this.f97889g.set(true);
    }

    public void m(float halfWidth, float halfHeight, float pivotYOffset, float sourceScale) {
        float M10 = Nc.b.M(0.05f, halfWidth);
        float M11 = Nc.b.M(0.05f, halfHeight);
        float M12 = Nc.b.M(1.0E-4f, sourceScale);
        if (Float.compare(this.f97891i, M10) == 0 && Float.compare(this.f97892j, M11) == 0 && Float.compare(this.f97893k, pivotYOffset) == 0 && Float.compare(this.f97894l, M12) == 0) {
            return;
        }
        this.f97891i = M10;
        this.f97892j = M11;
        this.f97893k = pivotYOffset;
        this.f97894l = M12;
        a();
    }

    public void n(float windEffect) {
        float G10 = Nc.b.G(windEffect);
        if (Float.compare(this.f97887e, G10) == 0) {
            return;
        }
        this.f97887e = G10;
        this.f97889g.set(true);
    }

    public void o(p impostorTexture, boolean receiveLighting) {
        if (this.f97883a == null || this.f97884b != receiveLighting) {
            e c10 = c.c(receiveLighting);
            if (c10 == null) {
                return;
            }
            this.f97883a = c10.h();
            this.f97884b = receiveLighting;
            this.f97885c = null;
            this.f97890h = WindEffect.getFirst();
            this.f97889g.set(true);
            a();
        }
        if (p.L(impostorTexture)) {
            if (this.f97885c != impostorTexture) {
                this.f97885c = impostorTexture;
                impostorTexture.f(this.f97883a, "albedo");
            }
        } else if (this.f97885c != null) {
            this.f97885c = null;
            if (p.L(C16165b.f130163i)) {
                C16165b.f130163i.f(this.f97883a, "albedo");
            }
        }
        b();
        if (this.f97886d == null) {
            this.f97886d = Vertex.C1(Vertex.v.SQUARE90);
        }
        Vertex vertex = this.f97886d;
        if (vertex == null || vertex.x1() || this.f97886d.u1()) {
            return;
        }
        this.f97886d.apply();
    }
}
