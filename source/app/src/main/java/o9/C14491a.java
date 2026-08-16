package o9;

import Rb.d;
import com.google.android.filament.Box;
import com.google.android.filament.Engine;
import com.google.android.filament.IndexBuffer;
import com.google.android.filament.Material;
import com.google.android.filament.RenderableManager;
import com.google.android.filament.VertexBuffer;
import com.google.android.filament.filamat.MaterialBuilder;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentCamera;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterialTemplate;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentRenderable;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentScene;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentVertexBuffer;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import ub.p;

public class C14491a {

    public static final String f98611i = "copyPass-v2-inputTex";

    public static FilamentMaterialTemplate f98612j;

    public final FilamentView f98613a;

    public final FilamentScene f98614b;

    public final Rb.c f98615c;

    public final FilamentRenderable f98616d;

    public FilamentCamera f98617e;

    public final FilamentMaterial f98618f;

    public final FilamentVertexBuffer f98619g;

    public final d f98620h;

    public C14491a() {
        if (f98612j == null) {
            throw new RuntimeException("Call prepareMaterial()");
        }
        Engine f10 = Qb.a.f();
        FilamentMaterial e10 = f98612j.e();
        this.f98618f = e10;
        FilamentVertexBuffer j10 = j(f10);
        this.f98619g = j10;
        d i10 = i(f10);
        this.f98620h = i10;
        FilamentScene filamentScene = new FilamentScene();
        this.f98614b = filamentScene;
        Rb.c cVar = new Rb.c();
        this.f98615c = cVar;
        this.f98616d = new FilamentRenderable(new RenderableManager.a(1).f(false), e10, cVar, j10, i10, RenderableManager.b.TRIANGLES, new Box(0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f));
        filamentScene.j(cVar);
        FilamentView filamentView = new FilamentView();
        this.f98613a = filamentView;
        filamentView.C(filamentScene);
        filamentView.z(false);
        FilamentCamera filamentCamera = new FilamentCamera();
        this.f98617e = filamentCamera;
        filamentCamera.l(-1.0f, 1.0f, -1.0f, 1.0f, 0.0f, 1.0f);
        filamentView.x(this.f98617e);
        filamentScene.j(this.f98617e.f());
    }

    public static FilamentMaterialTemplate d() {
        try {
            ByteBuffer f10 = ec.b.f(-472141305);
            if (f10 != null) {
                ByteBuffer duplicate = f10.duplicate();
                duplicate.rewind();
                return new FilamentMaterialTemplate(new Material.b().b(duplicate, duplicate.remaining()));
            }
            Sb.b bVar = (Sb.b) new Sb.b().v("CopyPass-" + Tc.b.L()).m(true).x(MaterialBuilder.h.MOBILE).E(MaterialBuilder.n.UNLIT).C(MaterialBuilder.t.UV0).l(false).k(false).D(MaterialBuilder.m.SAMPLER_2D, MaterialBuilder.l.FLOAT, MaterialBuilder.g.HIGH, "inputTex");
            bVar.r("void material(inout MaterialInputs material) {\n    prepareMaterial(material);\n    float2 uv = getUV0();\n    material.baseColor = texture(materialParams_inputTex, uv);\n}");
            ByteBuffer a10 = bVar.d().a();
            ByteBuffer duplicate2 = a10.duplicate();
            duplicate2.rewind();
            ec.b.l(-472141305, a10);
            return new FilamentMaterialTemplate(new Material.b().b(duplicate2, duplicate2.remaining()));
        } catch (Exception e10) {
            throw new RuntimeException("Erro criando material do CopyPass", e10);
        }
    }

    public static void e() {
        f(false);
    }

    public static void f(boolean forceRebuild) {
        ByteBuffer g10;
        try {
            if (ec.b.c(-472141305)) {
                return;
            }
            if (forceRebuild && ec.b.h(-472141305) && (g10 = ec.b.g(-472141305)) != null) {
                ec.b.l(-472141305, g10);
                return;
            }
            Sb.b bVar = (Sb.b) new Sb.b().v("CopyPass-" + Tc.b.L()).m(true).x(MaterialBuilder.h.MOBILE).E(MaterialBuilder.n.UNLIT).C(MaterialBuilder.t.UV0).l(false).k(false).D(MaterialBuilder.m.SAMPLER_2D, MaterialBuilder.l.FLOAT, MaterialBuilder.g.HIGH, "inputTex");
            bVar.r("void material(inout MaterialInputs material) {\n    prepareMaterial(material);\n    float2 uv = getUV0();\n    material.baseColor = texture(materialParams_inputTex, uv);\n}");
            ec.b.l(-472141305, bVar.d().a());
        } catch (Exception e10) {
            throw new RuntimeException("Erro criando material do CopyPass", e10);
        }
    }

    public static void g() {
        f(true);
    }

    public static void l() {
        if (f98612j == null) {
            f98612j = d();
        }
    }

    public void a(Tb.a src) {
        src.l().f(this.f98618f, "inputTex");
        c(src);
    }

    public void b(p src, int dstWidth, int dstHeight) {
        if (src == null) {
            throw new NullPointerException("src texture can't be null");
        }
        src.f(this.f98618f, "inputTex");
        this.f98613a.D(0, 0, dstWidth, dstHeight);
    }

    public void c(Tb.a src) {
        this.f98613a.D(0, 0, src.i(), src.h());
    }

    public void h(Tb.a dst) {
        Qb.a.g();
        dst.a(this.f98613a);
        Qb.a.o(this.f98613a);
        dst.z();
    }

    public final d i(Engine engine) {
        ByteBuffer order = ByteBuffer.allocateDirect(12).order(ByteOrder.nativeOrder());
        order.asShortBuffer().put(new short[]{0, 1, 2, 0, 2, 3}).flip();
        d dVar = new d(new IndexBuffer.a().c(6).a(IndexBuffer.a.b.USHORT));
        dVar.r(order);
        return dVar;
    }

    public final FilamentVertexBuffer j(Engine engine) {
        ByteBuffer order = ByteBuffer.allocateDirect(64).order(ByteOrder.nativeOrder());
        order.asFloatBuffer().put(new float[]{-1.0f, -1.0f, 0.0f, 1.0f, 1.0f, -1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f, -1.0f, 1.0f, 0.0f, 0.0f}).flip();
        VertexBuffer.b c10 = new VertexBuffer.b().h(4).c(1);
        VertexBuffer.c cVar = VertexBuffer.c.POSITION;
        VertexBuffer.a aVar = VertexBuffer.a.FLOAT2;
        FilamentVertexBuffer filamentVertexBuffer = new FilamentVertexBuffer(c10.b(cVar, 0, aVar, 0, 16).b(VertexBuffer.c.UV0, 0, aVar, 8, 16));
        filamentVertexBuffer.q(0, order);
        return filamentVertexBuffer;
    }

    public void k() {
        this.f98613a.F();
        this.f98613a.x(null);
        this.f98613a.C(null);
        this.f98614b.s(this.f98617e.f());
        this.f98614b.s(this.f98615c);
        this.f98616d.destroyImmediate();
        this.f98618f.destroyImmediate();
        this.f98619g.destroyImmediate();
        this.f98620h.destroyImmediate();
        this.f98617e.destroyImmediate();
        this.f98613a.destroyImmediate();
        this.f98614b.destroyImmediate();
        this.f98615c.destroyImmediate();
    }
}
