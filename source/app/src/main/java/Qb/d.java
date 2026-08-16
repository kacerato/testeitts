package Qb;

import androidx.annotation.NonNull;
import com.google.android.filament.ColorGrading;
import com.google.android.filament.Engine;
import com.google.android.filament.ToneMapper;
import com.google.android.filament.View;

public final class d {

    public final View f22054a;

    public ColorGrading f22055b;

    public d(@NonNull View view) {
        if (view == null) {
            throw new IllegalArgumentException("view == null");
        }
        this.f22054a = view;
        view.p0(true);
    }

    public static float a(float v10) {
        float f10 = 0.0f;
        if (v10 >= 0.0f) {
            f10 = 1.0f;
            if (v10 <= 1.0f) {
                return v10;
            }
        }
        return f10;
    }

    public d b(@NonNull Engine engine) {
        g(engine, new ToneMapper.c());
        f();
        s();
        d();
        p(View.q.VSM);
        u();
        q();
        i();
        return this;
    }

    public void c() {
    }

    public d d() {
        View.b d10 = this.f22054a.d();
        d10.f60218k = true;
        d10.f60210c = 3.0f;
        d10.f60209b = 0.8f;
        d10.f60211d = 0.02f;
        d10.f60215h = View.n.ULTRA;
        d10.f60212e = 720.0f;
        d10.f60217j = View.n.HIGH;
        d10.f60220m = (float) Math.toRadians(5.0d);
        d10.f60219l = true;
        d10.f60230w = true;
        this.f22054a.V(d10);
        return this;
    }

    public d e() {
        this.f22054a.W(View.c.FXAA);
        return this;
    }

    public d f() {
        View.e g10 = this.f22054a.g();
        g10.f60241h = true;
        g10.f60240g = true;
        g10.f60242i = 2.0f;
        g10.f60236c = 0.5f;
        g10.f60239f = View.e.a.ADD;
        g10.f60244k = true;
        g10.f60245l = false;
        g10.f60246m = 0.005f;
        g10.f60247n = 2;
        g10.f60248o = 0.6f;
        g10.f60249p = 7.0f;
        g10.f60251r = 0.08f;
        g10.f60250q = 0.04f;
        g10.f60234a = null;
        g10.f60235b = 0.1f;
        this.f22054a.Y(g10);
        return this;
    }

    public d g(@NonNull Engine engine, ToneMapper toneMapper) {
        if (engine == null) {
            throw new IllegalArgumentException("engine == null");
        }
        ColorGrading a10 = new ColorGrading.a().r(toneMapper).a(engine);
        this.f22055b = a10;
        this.f22054a.b0(a10);
        return this;
    }

    public d h() {
        View.f j10 = this.f22054a.j();
        j10.f60256d = true;
        j10.f60257e = View.f.a.MEDIAN;
        j10.f60253a = 50.0f;
        j10.f60255c = 0.3f;
        this.f22054a.c0(j10);
        return this;
    }

    public d i() {
        this.f22054a.d0(View.g.TEMPORAL);
        return this;
    }

    public d j() {
        View.h l10 = this.f22054a.l();
        l10.f60267d = true;
        this.f22054a.f0(l10);
        return this;
    }

    public d k() {
        View.j q10 = this.f22054a.q();
        q10.f60282a = true;
        this.f22054a.k0(q10);
        return this;
    }

    public d l() {
        View.k t10 = this.f22054a.t();
        t10.f60283a = true;
        this.f22054a.n0(t10);
        return this;
    }

    public d m() {
        View.o w10 = this.f22054a.w();
        w10.f60289a = View.n.ULTRA;
        this.f22054a.q0(w10);
        return this;
    }

    public d n() {
        View.p A10 = this.f22054a.A();
        A10.f60294e = true;
        A10.f60291b = 0.01f;
        A10.f60292c = 3.0f;
        A10.f60290a = 0.2f;
        A10.f60293d = 0.25f;
        this.f22054a.u0(A10);
        return this;
    }

    public d o() {
        this.f22054a.v0(true);
        return this;
    }

    public d p(View.q type) {
        this.f22054a.w0(type);
        return this;
    }

    public d q() {
        this.f22054a.y0(this.f22054a.B());
        return this;
    }

    public d r() {
        View.u D10 = this.f22054a.D();
        D10.f60302e = true;
        this.f22054a.B0(D10);
        return this;
    }

    public d s() {
        View.w G10 = this.f22054a.G();
        G10.f60318e = true;
        this.f22054a.F0(G10);
        return this;
    }

    public d t() {
        View.i o10 = this.f22054a.o();
        o10.f60281l = true;
        o10.f60270a = 20.0f;
        o10.f60276g = 0.005f;
        o10.f60273d = 5.0f;
        o10.f60274e = 0.0f;
        this.f22054a.g0(o10);
        return this;
    }

    public d u() {
        this.f22054a.H0(this.f22054a.J());
        return this;
    }
}
