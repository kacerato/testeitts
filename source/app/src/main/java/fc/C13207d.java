package fc;

import android.opengl.Matrix;
import android.util.Log;
import com.google.android.filament.Box;
import com.google.android.filament.Engine;
import com.google.android.filament.IndexBuffer;
import com.google.android.filament.Material;
import com.google.android.filament.RenderableManager;
import com.google.android.filament.Renderer;
import com.google.android.filament.TransformManager;
import com.google.android.filament.VertexBuffer;
import com.google.android.filament.View;
import com.google.android.filament.filamat.MaterialBuilder;
import com.google.android.filament.w;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentCamera;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterialTemplate;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentRenderable;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentScene;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentVertexBuffer;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Comparator;
import java.util.List;
import java.util.function.ToIntFunction;
import ub.p;

public class C13207d {

    public static final Comparator<C13205b> f86166q = Comparator.comparingInt(new ToIntFunction() {
        @Override
        public final int applyAsInt(Object obj) {
            return ((C13205b) obj).c();
        }
    });

    public static final String f86167r = "quadrenderer:true-false-false-" + ((Object) MaterialBuilder.c.NONE) + "-" + ((Object) MaterialBuilder.a.TRANSPARENT);

    public FilamentVertexBuffer f86169b;

    public Rb.d f86170c;

    public FilamentMaterialTemplate f86171d;

    public FilamentView f86172e;

    public FilamentScene f86173f;

    public w f86176i;

    public FilamentCamera f86178k;

    public Tb.a f86183p;

    public final List<C13205b> f86168a = new SteppedArrayList(100);

    public final double[] f86174g = {0.0d, 0.0d, 0.0d, 0.0d};

    public final List<a> f86175h = new SteppedArrayList();

    public final float[] f86177j = new float[16];

    public int f86179l = -1;

    public int f86180m = -1;

    public int f86181n = 0;

    public int f86182o = 0;

    public static class a {

        public Rb.c f86184a;

        public FilamentRenderable f86185b;

        public FilamentMaterial f86186c;

        public boolean f86187d;

        public boolean f86188e;

        public int f86189f;

        public int f86190g;

        public int f86191h;

        public int f86192i;

        public int f86193j;

        public int f86194k;

        public boolean f86195l;

        public int f86196m;

        public boolean f86197n;

        public int f86198o;

        public boolean f86199p;

        public p f86200q;

        public a(Rb.c entity, FilamentRenderable renderable, FilamentMaterial material) {
            this.f86184a = entity;
            this.f86185b = renderable;
            this.f86186c = material;
        }
    }

    public static void b() {
        c(false);
    }

    public static void c(boolean forceRebuild) {
        ByteBuffer g10;
        int hashCode = f86167r.hashCode();
        if (ec.b.c(hashCode)) {
            return;
        }
        if (forceRebuild && ec.b.h(hashCode) && (g10 = ec.b.g(hashCode)) != null) {
            ec.b.l(hashCode, g10);
            return;
        }
        Sb.b bVar = (Sb.b) new Sb.b().v("QuadRenderer-" + Tc.b.L()).V(MaterialBuilder.u.OBJECT).x(MaterialBuilder.h.MOBILE).E(MaterialBuilder.n.UNLIT).C(MaterialBuilder.t.UV0).m(true).l(false).k(false).i(MaterialBuilder.c.NONE).c(MaterialBuilder.a.TRANSPARENT);
        bVar.U(255);
        bVar.P(MaterialBuilder.r.FLOAT4, "baseColor");
        bVar.D(MaterialBuilder.m.SAMPLER_2D, MaterialBuilder.l.FLOAT, MaterialBuilder.g.HIGH, "albedo");
        bVar.r("void material(inout MaterialInputs material) {\n  prepareMaterial(material);\n  float4 c = texture(materialParams_albedo, getUV0());\n  c *= materialParams.baseColor;\n  c.rgb *= c.a;\n  material.baseColor = c;\n}\n");
        com.google.android.filament.filamat.b d10 = bVar.d();
        if (d10 == null || !d10.b()) {
            throw new RuntimeException("Falha ao compilar material em runtime!");
        }
        ec.b.l(hashCode, d10.a());
    }

    public static void d() {
        c(true);
    }

    public static boolean i(List<C13205b> items) {
        for (int i10 = 1; i10 < items.size(); i10++) {
            if (items.get(i10 - 1).c() > items.get(i10).c()) {
                return true;
            }
        }
        return false;
    }

    public static void l(float[] out, float tx, float ty, float tz, float sx, float sy) {
        out[0] = sx;
        out[1] = 0.0f;
        out[2] = 0.0f;
        out[3] = 0.0f;
        out[4] = 0.0f;
        out[5] = sy;
        out[6] = 0.0f;
        out[7] = 0.0f;
        out[8] = 0.0f;
        out[9] = 0.0f;
        out[10] = 1.0f;
        out[11] = 0.0f;
        out[12] = tx;
        out[13] = ty;
        out[14] = tz;
        out[15] = 1.0f;
    }

    public void a(C13205b quadImage) {
        quadImage.getClass();
        synchronized (this.f86168a) {
            this.f86168a.add(quadImage);
        }
    }

    public void e() {
        synchronized (this.f86168a) {
            this.f86168a.clear();
        }
    }

    public final void f() {
        if (this.f86178k == null) {
            FilamentCamera filamentCamera = new FilamentCamera();
            this.f86178k = filamentCamera;
            this.f86173f.j(filamentCamera.f());
            float[] fArr = new float[16];
            float[] fArr2 = new float[16];
            Matrix.setLookAtM(fArr, 0, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
            Matrix.setIdentityM(fArr2, 0);
            Matrix.invertM(fArr2, 0, fArr, 0);
            double[] dArr = new double[16];
            for (int i10 = 0; i10 < 16; i10++) {
                dArr[i10] = fArr2[i10];
            }
            this.f86178k.k(dArr);
        }
        int i11 = this.f86179l;
        int i12 = this.f86181n;
        if (i11 == i12 && this.f86180m == this.f86182o) {
            return;
        }
        Matrix.orthoM(new float[16], 0, 0.0f, i12, 0.0f, this.f86182o, 1.0f, 10.0f);
        double[] dArr2 = new double[16];
        for (int i13 = 0; i13 < 16; i13++) {
            dArr2[i13] = r0[i13];
        }
        this.f86178k.j(dArr2, 1.0f, 10.0f);
        this.f86179l = this.f86181n;
        this.f86180m = this.f86182o;
    }

    public final void g(int needed) {
        int i10 = 3;
        Engine f10 = Qb.a.f();
        TransformManager j02 = f10.j0();
        RenderableManager h02 = f10.h0();
        while (this.f86175h.size() < needed) {
            Rb.c cVar = new Rb.c();
            FilamentMaterial e10 = this.f86171d.e();
            float[] fArr = new float[i10];
            
            fArr[0] = -10000.0f;
            fArr[1] = -10000.0f;
            fArr[2] = -10000.0f;
            float[] fArr2 = new float[i10];
            
            fArr2[0] = 10000.0f;
            fArr2[1] = 10000.0f;
            fArr2[2] = 10000.0f;
            this.f86175h.add(new a(cVar, new FilamentRenderable(new RenderableManager.a(1).f(false).d(false).y(false), e10, cVar, this.f86169b, this.f86170c, RenderableManager.b.TRIANGLES, new Box(fArr, fArr2)), e10));
            j02.b(cVar.getId());
            h02.m0(h02.M(cVar.getId()), 0, true);
            i10 = 3;
        }
    }

    public void h() {
        this.f86173f = new FilamentScene();
        FilamentView filamentView = new FilamentView();
        this.f86172e = filamentView;
        filamentView.C(this.f86173f);
        this.f86172e.z(false);
        this.f86172e.w(View.d.TRANSLUCENT);
        int hashCode = f86167r.hashCode();
        ByteBuffer f10 = ec.b.f(hashCode);
        if (f10 != null) {
            ByteBuffer duplicate = f10.duplicate();
            duplicate.rewind();
            this.f86171d = new FilamentMaterialTemplate(new Material.b().b(duplicate, duplicate.remaining()));
        } else {
            Sb.b bVar = (Sb.b) new Sb.b().v("QuadRenderer-" + Tc.b.L()).V(MaterialBuilder.u.OBJECT).x(MaterialBuilder.h.MOBILE).E(MaterialBuilder.n.UNLIT).C(MaterialBuilder.t.UV0).m(true).l(false).k(false).i(MaterialBuilder.c.NONE).c(MaterialBuilder.a.TRANSPARENT);
            bVar.U(255);
            bVar.P(MaterialBuilder.r.FLOAT4, "baseColor");
            bVar.D(MaterialBuilder.m.SAMPLER_2D, MaterialBuilder.l.FLOAT, MaterialBuilder.g.HIGH, "albedo");
            bVar.r("void material(inout MaterialInputs material) {\n  prepareMaterial(material);\n  float4 c = texture(materialParams_albedo, getUV0()); // sRGB -> linear (autom\u00e1tico)\n  c *= materialParams.baseColor;   // tint, se quiser\n  c.rgb *= c.a;                    // premultiplied para evitar halos\n  material.baseColor = c;\n}\n");
            com.google.android.filament.filamat.b d10 = bVar.d();
            if (d10 == null || !d10.b()) {
                throw new RuntimeException("Falha ao compilar material em runtime!");
            }
            ByteBuffer a10 = d10.a();
            ByteBuffer duplicate2 = a10.duplicate();
            duplicate2.rewind();
            ec.b.l(hashCode, a10);
            this.f86171d = new FilamentMaterialTemplate(new Material.b().b(duplicate2, duplicate2.remaining()));
        }
        ByteBuffer order = ByteBuffer.allocateDirect(80).order(ByteOrder.nativeOrder());
        order.asFloatBuffer().put(new float[]{-0.5f, -0.5f, 0.0f, 0.0f, 1.0f, 0.5f, -0.5f, 0.0f, 1.0f, 1.0f, 0.5f, 0.5f, 0.0f, 1.0f, 0.0f, -0.5f, 0.5f, 0.0f, 0.0f, 0.0f}).flip();
        FilamentVertexBuffer filamentVertexBuffer = new FilamentVertexBuffer(new VertexBuffer.b().h(4).c(1).b(VertexBuffer.c.POSITION, 0, VertexBuffer.a.FLOAT3, 0, 20).b(VertexBuffer.c.UV0, 0, VertexBuffer.a.FLOAT2, 12, 20));
        this.f86169b = filamentVertexBuffer;
        filamentVertexBuffer.q(0, order);
        ByteBuffer order2 = ByteBuffer.allocateDirect(12).order(ByteOrder.nativeOrder());
        order2.asShortBuffer().put(new short[]{0, 1, 2, 0, 2, 3}).flip();
        Rb.d dVar = new Rb.d(new IndexBuffer.a().c(6).a(IndexBuffer.a.b.USHORT));
        this.f86170c = dVar;
        dVar.r(order2);
    }

    public void j() {
        int i10;
        if (this.f86168a.isEmpty()) {
            return;
        }
        if (this.f86171d == null || this.f86169b == null || this.f86170c == null) {
            Log.e("QuadRenderer", "ERRO: QuadRenderer.onSurfaceCreated() n\u00e3o foi chamado!");
            return;
        }
        if (this.f86181n <= 0 || this.f86182o <= 0) {
            Log.w("QuadRenderer", "Viewport n\u00e3o configurado: " + this.f86181n + "x" + this.f86182o);
            return;
        }
        f();
        Qb.a.g();
        Engine f10 = Qb.a.f();
        if (i(this.f86168a)) {
            this.f86168a.sort(f86166q);
        }
        g(this.f86168a.size());
        TransformManager j02 = f10.j0();
        RenderableManager h02 = f10.h0();
        int i11 = 0;
        int i12 = 0;
        while (i11 < this.f86168a.size()) {
            C13205b c13205b = this.f86168a.get(i11);
            if (p.L(c13205b.d())) {
                a aVar = this.f86175h.get(i12);
                Rb.c cVar = aVar.f86184a;
                FilamentMaterial filamentMaterial = aVar.f86186c;
                int c10 = c13205b.c();
                int f11 = c13205b.f();
                int g10 = c13205b.g();
                int e10 = c13205b.e();
                int b10 = c13205b.b();
                float f12 = e10;
                float f13 = f11 + (f12 * 0.5f);
                int i13 = this.f86182o;
                i10 = i11;
                int i14 = i12;
                float f14 = b10;
                float f15 = i13 - (g10 + (0.5f * f14));
                if (!aVar.f86188e || aVar.f86189f != f11 || aVar.f86190g != g10 || aVar.f86191h != e10 || aVar.f86192i != b10 || aVar.f86193j != i13 || aVar.f86194k != this.f86181n) {
                    l(this.f86177j, f13, f15, 0.0f, f12, f14);
                    j02.u(j02.h(cVar.getId()), this.f86177j);
                    aVar.f86188e = true;
                    aVar.f86189f = f11;
                    aVar.f86190g = g10;
                    aVar.f86191h = e10;
                    aVar.f86192i = b10;
                    aVar.f86193j = this.f86182o;
                    aVar.f86194k = this.f86181n;
                }
                if (!aVar.f86195l || aVar.f86196m != c10) {
                    h02.b0(h02.M(cVar.getId()), 0, 65535 & c10);
                    aVar.f86195l = true;
                    aVar.f86196m = c10;
                }
                ColorINT a10 = c13205b.a();
                int i15 = a10.intColor;
                if (!aVar.f86197n || aVar.f86198o != i15) {
                    filamentMaterial.E("baseColor", a10.w(), a10.u(), a10.s(), a10.r());
                    aVar.f86197n = true;
                    aVar.f86198o = i15;
                }
                p d10 = c13205b.d();
                if (!aVar.f86199p || aVar.f86200q != d10) {
                    d10.f(filamentMaterial, "albedo");
                    aVar.f86199p = true;
                    aVar.f86200q = d10;
                }
                if (!aVar.f86187d) {
                    this.f86173f.j(cVar);
                    aVar.f86187d = true;
                }
                i12 = i14 + 1;
            } else {
                i10 = i11;
            }
            i11 = i10 + 1;
        }
        while (i12 < this.f86175h.size()) {
            a aVar2 = this.f86175h.get(i12);
            if (aVar2.f86187d) {
                aVar2.f86186c.k();
                aVar2.f86199p = false;
                aVar2.f86200q = null;
                try {
                    this.f86173f.s(aVar2.f86184a);
                } catch (Exception e11) {
                    e11.printStackTrace();
                    try {
                        FilamentScene m10 = FilamentScene.m(aVar2.f86184a);
                        if (m10 != null) {
                            m10.s(aVar2.f86184a);
                        }
                    } catch (Exception e12) {
                        e12.printStackTrace();
                    }
                }
                aVar2.f86187d = false;
            }
            i12++;
        }
    }

    public void k() {
        synchronized (this.f86168a) {
            try {
                if (this.f86168a.isEmpty()) {
                    return;
                }
                if (this.f86171d == null || this.f86169b == null || this.f86170c == null) {
                    Log.e("QuadRenderer", "ERRO: QuadRenderer.onSurfaceCreated() n\u00e3o foi chamado!");
                    return;
                }
                if (this.f86181n <= 0 || this.f86182o <= 0) {
                    Log.w("QuadRenderer", "Viewport n\u00e3o configurado: " + this.f86181n + "x" + this.f86182o);
                    return;
                }
                synchronized (this.f86168a) {
                    try {
                        Renderer g10 = Qb.a.g();
                        Qb.a.f();
                        Tb.a aVar = this.f86183p;
                        if (aVar != null) {
                            aVar.a(this.f86172e);
                        } else {
                            this.f86172e.F();
                        }
                        this.f86172e.E(this.f86176i);
                        this.f86172e.x(this.f86178k);
                        Renderer.a e10 = g10.e();
                        e10.f60066b = true;
                        e10.f60067c = true;
                        e10.f60065a = this.f86174g;
                        g10.r(e10);
                        Qb.a.o(this.f86172e);
                        this.f86168a.clear();
                        this.f86172e.F();
                    } finally {
                    }
                }
            } finally {
            }
        }
    }

    public void m(float x10, float y10, float z10, float w10) {
        double[] dArr = this.f86174g;
        dArr[0] = x10;
        dArr[1] = y10;
        dArr[2] = z10;
        dArr[3] = w10;
    }

    public void n(Tb.a frameBuffer) {
        this.f86183p = frameBuffer;
    }

    public void o(int width, int height) {
        this.f86181n = width;
        this.f86182o = height;
        this.f86176i = new w(0, 0, width, height);
    }
}
