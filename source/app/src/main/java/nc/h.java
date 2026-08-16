package nc;

import com.google.android.filament.filamat.MaterialBuilder;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Wind.WindEffect;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import da.C12888b;
import java.util.List;
import vb.C15823b;
import yb.C16165b;

public class h extends AbstractC14376a {

    public static final String f97938f = "gsp_windDirection";

    public static final String f97939g = "gsp_windIntensity";

    public static final String f97940h = "gsp_windVerticality";

    public static final String f97941i = "gsp_materialID";

    public static final String f97942j = "gsp_decals";

    public float f97943b = 1.0f;

    public float f97944c = 1.0f;

    public int f97945d;

    public float f97946e;

    public static List<ec.f> o() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT3;
        MaterialBuilder.g gVar = MaterialBuilder.g.LOW;
        steppedArrayList.add(new ec.f(rVar, gVar, f97938f));
        MaterialBuilder.r rVar2 = MaterialBuilder.r.FLOAT;
        steppedArrayList.add(new ec.f(rVar2, gVar, f97939g));
        steppedArrayList.add(new ec.f(rVar2, gVar, f97940h));
        steppedArrayList.add(new ec.f(MaterialBuilder.r.INT, gVar, f97941i));
        return steppedArrayList;
    }

    public static List<ec.g> p() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(new ec.g(MaterialBuilder.m.SAMPLER_2D_ARRAY, MaterialBuilder.l.FLOAT, MaterialBuilder.g.HIGH, f97942j));
        return steppedArrayList;
    }

    public final void A(final int id2) {
        if (c() == null) {
            return;
        }
        if (K8.a.r()) {
            c().H(f97941i, id2);
        } else {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    h.this.r(id2);
                }
            });
        }
    }

    public final void B() {
        z(WindEffect.getFirst());
        E(this.f97943b);
        A(this.f97945d);
        y();
    }

    public final void C(final Vector3 dir) {
        if (c() == null) {
            return;
        }
        if (K8.a.r()) {
            c().C(f97938f, dir);
        } else {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    h.this.s(dir);
                }
            });
        }
    }

    public final void D(float i10) {
        if (c() == null) {
            return;
        }
        this.f97946e = i10;
        final float f10 = i10 * this.f97944c;
        if (K8.a.r()) {
            c().w(f97939g, f10);
        } else {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    h.this.t(f10);
                }
            });
        }
    }

    public final void E(float verticality) {
        if (c() == null) {
            return;
        }
        final float max = Math.max(0.0f, Math.min(1.0f, verticality));
        if (K8.a.r()) {
            c().w(f97940h, max);
        } else {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    h.this.u(max);
                }
            });
        }
    }

    @Override
    public void b(C12888b event) {
        super.b(event);
        if (event instanceof I9.a) {
            z(((I9.a) event).a());
        } else if (event instanceof Pb.b) {
            y();
        }
    }

    @Override
    public void d(FilamentMaterial filamentMaterial) {
        super.d(filamentMaterial);
        B();
    }

    @Override
    public h a() {
        h hVar = new h();
        hVar.f97944c = this.f97944c;
        hVar.f97943b = this.f97943b;
        hVar.f97945d = this.f97945d;
        hVar.f97946e = this.f97946e;
        return hVar;
    }

    public float l() {
        return this.f97944c;
    }

    public float m() {
        return this.f97943b;
    }

    public int n() {
        return this.f97945d;
    }

    public final void q() {
        if (c() == null) {
            return;
        }
        C15823b c10 = Pb.a.c();
        if (c10 == null || !c10.u()) {
            C16165b.f130164j.a(c(), f97942j);
        } else {
            c10.a(c(), f97942j);
        }
    }

    public final void r(int i10) {
        if (c() == null) {
            return;
        }
        c().H(f97941i, i10);
    }

    public final void s(Vector3 vector3) {
        if (c() == null) {
            return;
        }
        c().C(f97938f, vector3);
    }

    public final void t(float f10) {
        if (c() == null) {
            return;
        }
        c().w(f97939g, f10);
    }

    public final void u(float f10) {
        if (c() == null) {
            return;
        }
        c().w(f97940h, f10);
    }

    public void v(float localWindIntensity) {
        boolean z10 = this.f97944c != localWindIntensity;
        this.f97944c = localWindIntensity;
        if (z10) {
            D(this.f97946e);
        }
    }

    public void w(float localWindVerticality) {
        float max = Math.max(0.0f, Math.min(1.0f, localWindVerticality));
        boolean z10 = this.f97943b != max;
        this.f97943b = max;
        if (z10) {
            E(max);
        }
    }

    public void x(int materialID) {
        int max = Math.max(-32768, Math.min(32767, materialID));
        boolean z10 = this.f97945d != max;
        this.f97945d = max;
        if (z10) {
            A(max);
        }
    }

    public final void y() {
        if (c() == null) {
            return;
        }
        if (!K8.a.r()) {
            K8.a.I(new Runnable() {
                @Override
                public final void run() {
                    h.this.q();
                }
            });
            return;
        }
        C15823b c10 = Pb.a.c();
        if (c10 == null || !c10.u()) {
            C16165b.f130164j.a(c(), f97942j);
        } else {
            c10.a(c(), f97942j);
        }
    }

    public final void z(WindEffect windEffect) {
        float f10;
        Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
        try {
            if (windEffect != null) {
                windEffect.f79250n.transform.a0(vector3);
                f10 = windEffect.getIntensity();
            } else {
                f10 = 0.0f;
                vector3.set(0.0f);
            }
            C(vector3);
            D(f10);
            JP.release(vector3);
        } catch (Throwable th2) {
            JP.release(vector3);
            throw th2;
        }
    }
}
