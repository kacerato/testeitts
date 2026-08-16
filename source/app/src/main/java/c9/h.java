package c9;

import com.google.android.filament.Box;
import com.google.android.filament.Material;
import com.google.android.filament.MaterialInstance;
import com.google.android.filament.RenderableManager;
import com.google.android.filament.TextureSampler;
import com.google.android.filament.TransformManager;
import com.google.android.filament.filamat.MaterialBuilder;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentRenderable;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentScene;
import ec.e;

public class h {

    public static final int f34466l = 1;

    public static final String f34467m = "void materialVertex(inout MaterialVertexInputs v) {\n    // no-op\n}\n";

    public static final String f34468n = "void material(inout MaterialInputs m) {\n    prepareMaterial(m);\n    m.baseColor = float4(0.0);\n}\n";

    public static final String f34469o = "void materialVertex(inout MaterialVertexInputs v) {\n    // no-op (outline via Transform scale)\n}\n";

    public static final String f34470p = "void material(inout MaterialInputs m) {\n    prepareMaterial(m);\n    m.baseColor = materialParams.outlineColor;\n}\n";

    public float f34471a;

    public Vertex f34472b;

    public ColorINT f34473c;

    public FilamentMaterial f34474d;

    public Rb.c f34475e;

    public FilamentRenderable f34476f;

    public FilamentScene f34477g;

    public FilamentMaterial f34478h;

    public Rb.c f34479i;

    public FilamentRenderable f34480j;

    public final float[] f34481k;

    public h() {
        this.f34471a = 0.01f;
        this.f34473c = new ColorINT();
        this.f34481k = new float[16];
    }

    public final void a() {
        if (this.f34478h == null) {
            return;
        }
        this.f34478h.E("outlineColor", this.f34473c.w() / 255.0f, this.f34473c.u() / 255.0f, this.f34473c.s() / 255.0f, 1.0f);
    }

    public final void b() {
        p6.g L12 = p6.d.E1() ? p6.d.L1("build outline materials") : null;
        try {
            this.f34474d = e();
            this.f34478h = c();
            r(this.f34474d.l(), 1);
            q(this.f34478h.l(), 1);
            this.f34474d.l().D(false);
            this.f34478h.l().D(false);
            this.f34478h.l().z(Material.d.FRONT);
        } finally {
            p6.d.J1(L12);
        }
    }

    public final FilamentMaterial c() {
        Sb.b bVar = (Sb.b) new Sb.b().v("OutlinePass_" + Tc.b.L()).x(MaterialBuilder.h.MOBILE).E(MaterialBuilder.n.UNLIT).w(MaterialBuilder.f.PERFORMANCE);
        bVar.c(MaterialBuilder.a.OPAQUE);
        bVar.i(MaterialBuilder.c.NONE);
        bVar.m(false);
        bVar.k(false);
        bVar.P(MaterialBuilder.r.FLOAT4, "outlineColor");
        e.a q10 = new e.a("OutlinePass").x(bVar).s(f34469o).q(f34470p);
        q10.c();
        q10.j();
        ec.e e10 = q10.e();
        q10.b();
        return e10.h();
    }

    public final void d(float[] base, float[] out) {
        System.arraycopy(base, 0, out, 0, 16);
        float f10 = f();
        if (f10 == 1.0f) {
            return;
        }
        out[0] = out[0] * f10;
        out[1] = out[1] * f10;
        out[2] = out[2] * f10;
        out[4] = out[4] * f10;
        out[5] = out[5] * f10;
        out[6] = out[6] * f10;
        out[8] = out[8] * f10;
        out[9] = out[9] * f10;
        out[10] = out[10] * f10;
    }

    public final FilamentMaterial e() {
        Sb.b bVar = (Sb.b) new Sb.b().v("StencilPass_" + Tc.b.L()).x(MaterialBuilder.h.MOBILE).E(MaterialBuilder.n.UNLIT).w(MaterialBuilder.f.PERFORMANCE);
        bVar.c(MaterialBuilder.a.OPAQUE);
        bVar.i(MaterialBuilder.c.NONE);
        bVar.m(false);
        bVar.k(false);
        e.a q10 = new e.a("StencilPass").x(bVar).s(f34467m).q(f34468n);
        q10.c();
        q10.j();
        ec.e e10 = q10.e();
        q10.b();
        return e10.h();
    }

    public final float f() {
        try {
            float[] b10 = this.f34472b.k0().b();
            float f10 = b10[0];
            float f11 = b10[1];
            if (f11 > f10) {
                f10 = f11;
            }
            float f12 = b10[2];
            if (f12 > f10) {
                f10 = f12;
            }
            if (f10 <= 1.0E-6f) {
                return 1.0f;
            }
            return (this.f34471a / f10) + 1.0f;
        } catch (Throwable unused) {
            return 1.0f;
        }
    }

    public final void g() {
        p6.g L12 = p6.d.E1() ? p6.d.L1("build outline renderable") : null;
        try {
            this.f34479i = new Rb.c();
            Box k02 = this.f34472b.k0();
            float[] b10 = k02.b();
            float[] a10 = k02.a();
            float f10 = b10[0];
            float f11 = this.f34471a;
            this.f34480j = new FilamentRenderable(new RenderableManager.a(1).d(false).y(false), this.f34478h, this.f34479i, this.f34472b.f1(), this.f34472b.l0(), RenderableManager.b.TRIANGLES, new Box(a10, new float[]{f10 + f11, b10[1] + f11, b10[2] + f11}));
            j().j(this.f34479i);
        } finally {
            p6.d.J1(L12);
        }
    }

    public final void h() {
        p6.g L12 = p6.d.E1() ? p6.d.L1("build stencil renderable") : null;
        try {
            this.f34475e = new Rb.c();
            this.f34476f = new FilamentRenderable(new RenderableManager.a(1).d(false).y(false), this.f34474d, this.f34475e, this.f34472b.f1(), this.f34472b.l0(), RenderableManager.b.TRIANGLES, this.f34472b.k0());
            j().j(this.f34475e);
        } finally {
            p6.d.J1(L12);
        }
    }

    public FilamentScene i() {
        return this.f34477g;
    }

    public final FilamentScene j() {
        return this.f34477g;
    }

    public void k() {
        s(this.f34475e);
        s(this.f34479i);
        FilamentRenderable filamentRenderable = this.f34476f;
        if (filamentRenderable != null) {
            filamentRenderable.destroyImmediate();
        }
        FilamentRenderable filamentRenderable2 = this.f34480j;
        if (filamentRenderable2 != null) {
            filamentRenderable2.destroyImmediate();
        }
        this.f34476f = null;
        this.f34480j = null;
        this.f34474d = null;
        this.f34478h = null;
        this.f34475e = null;
        this.f34479i = null;
    }

    public void l(FilamentScene attachedScene) {
        this.f34477g = attachedScene;
    }

    public void m(ColorINT color) {
        this.f34473c = color;
    }

    public void n(float outlineWidth) {
        this.f34471a = outlineWidth;
    }

    public final void o(Rb.c entity, float[] renderMatrix) {
        int i10;
        if (entity != null && renderMatrix != null) {
            try {
                TransformManager i11 = Qb.a.i();
                if (i11 == null) {
                    return;
                }
                int id2 = entity.getId();
                try {
                    i10 = i11.h(id2);
                } catch (Throwable unused) {
                    i10 = 0;
                }
                if (i10 == 0) {
                    try {
                        i11.b(id2);
                    } catch (Throwable unused2) {
                    }
                    try {
                        i10 = i11.h(id2);
                    } catch (Throwable unused3) {
                    }
                }
                if (i10 == 0) {
                } else {
                    i11.u(i10, renderMatrix);
                }
            } catch (Throwable unused4) {
            }
        }
    }

    public void p(Vertex vertex) {
        this.f34472b = vertex;
    }

    public final void q(MaterialInstance mi2, int ref) {
        mi2.o0(false);
        mi2.m0(ref);
        mi2.k0(255);
        mi2.c0(TextureSampler.a.ALWAYS);
        MaterialInstance.e eVar = MaterialInstance.e.KEEP;
        mi2.i0(eVar);
        mi2.e0(eVar);
        mi2.g0(eVar);
        mi2.B(true);
        mi2.v(true);
    }

    public final void r(MaterialInstance mi2, int ref) {
        mi2.v(false);
        mi2.o0(true);
        mi2.m0(ref);
        mi2.p0(255);
        mi2.c0(TextureSampler.a.ALWAYS);
        MaterialInstance.e eVar = MaterialInstance.e.KEEP;
        mi2.i0(eVar);
        mi2.e0(eVar);
        mi2.g0(MaterialInstance.e.REPLACE);
        mi2.B(true);
    }

    public final void s(Rb.c fe2) {
        if (fe2 == null) {
            return;
        }
        try {
            j().s(fe2);
        } catch (Throwable unused) {
        }
    }

    public void t(float[] renderMatrix) {
        boolean z10;
        Vertex vertex = this.f34472b;
        if (vertex == null || !vertex.x1()) {
            return;
        }
        if (this.f34474d == null || this.f34478h == null) {
            b();
        }
        boolean z11 = true;
        if (this.f34475e == null) {
            h();
            z10 = true;
        } else {
            z10 = false;
        }
        if (this.f34479i == null) {
            g();
        } else {
            z11 = z10;
        }
        a();
        if (z11) {
            u(renderMatrix);
        }
    }

    public void u(float[] renderMatrix) {
        if (renderMatrix == null || renderMatrix.length < 16) {
            return;
        }
        o(this.f34475e, renderMatrix);
        d(renderMatrix, this.f34481k);
        o(this.f34479i, this.f34481k);
    }

    public h(Vertex vertex) {
        this.f34471a = 0.01f;
        this.f34473c = new ColorINT();
        this.f34481k = new float[16];
        this.f34472b = vertex;
    }

    public h(Vertex vertex, ColorINT color) {
        this.f34471a = 0.01f;
        new ColorINT();
        this.f34481k = new float[16];
        this.f34472b = vertex;
        this.f34473c = color;
    }
}
