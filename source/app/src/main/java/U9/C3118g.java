package U9;

import com.ardor3d.util.export.xml.XMLExporter;
import com.google.android.filament.Box;
import com.google.android.filament.IndexBuffer;
import com.google.android.filament.Material;
import com.google.android.filament.RenderableManager;
import com.google.android.filament.VertexBuffer;
import com.google.android.filament.filamat.MaterialBuilder;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Gradient.Entry;
import com.itsmagic.engine.Engines.Engine.Gradient.Gradient;
import com.itsmagic.engine.Engines.Engine.ImGUI.Styles.UIStyle;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentCamera;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterialTemplate;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentRenderable;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentScene;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentVertexBuffer;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import mc.C14207a;
import o9.C14491a;
import yb.C16165b;

public class C3118g {

    public static final int f25837o = 1024;

    public static FilamentMaterialTemplate f25838p;

    public final a f25839a;

    public UIStyle f25840b;

    public ub.p f25841c;

    public Tb.a f25842d;

    public Tb.a f25843e;

    public ub.n f25844f;

    public int f25845g;

    public int f25846h;

    public int f25847i = Integer.MIN_VALUE;

    public int f25848j = Integer.MIN_VALUE;

    public boolean f25849k;

    public boolean f25850l;

    public final InterfaceC3114c f25851m;

    public final Runnable f25852n;

    public static class a {

        public final FilamentView f25853a;

        public final FilamentScene f25854b;

        public final Rb.c f25855c;

        public final FilamentRenderable f25856d;

        public final FilamentCamera f25857e;

        public final FilamentMaterial f25858f;

        public final FilamentVertexBuffer f25859g;

        public final Rb.d f25860h;

        public boolean f25861i;

        public a() {
            FilamentMaterial e10 = C3118g.f25838p.e();
            this.f25858f = e10;
            FilamentVertexBuffer c10 = c();
            this.f25859g = c10;
            Rb.d b10 = b();
            this.f25860h = b10;
            FilamentScene filamentScene = new FilamentScene();
            this.f25854b = filamentScene;
            Rb.c cVar = new Rb.c();
            this.f25855c = cVar;
            this.f25856d = new FilamentRenderable(new RenderableManager.a(1).f(false), e10, cVar, c10, b10, RenderableManager.b.TRIANGLES, new Box(0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f));
            filamentScene.j(cVar);
            FilamentView filamentView = new FilamentView();
            this.f25853a = filamentView;
            filamentView.C(filamentScene);
            filamentView.z(false);
            FilamentCamera filamentCamera = new FilamentCamera();
            this.f25857e = filamentCamera;
            filamentCamera.l(-1.0f, 1.0f, -1.0f, 1.0f, 0.0f, 1.0f);
            filamentView.x(filamentCamera);
            filamentScene.j(filamentCamera.f());
        }

        public final Rb.d b() {
            ByteBuffer order = ByteBuffer.allocateDirect(12).order(ByteOrder.nativeOrder());
            order.asShortBuffer().put(new short[]{0, 1, 2, 0, 2, 3}).flip();
            Rb.d dVar = new Rb.d(new IndexBuffer.a().c(6).a(IndexBuffer.a.b.USHORT));
            dVar.r(order);
            return dVar;
        }

        public final FilamentVertexBuffer c() {
            ByteBuffer order = ByteBuffer.allocateDirect(64).order(ByteOrder.nativeOrder());
            order.asFloatBuffer().put(new float[]{-1.0f, -1.0f, 0.0f, 1.0f, 1.0f, -1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f, -1.0f, 1.0f, 0.0f, 0.0f}).flip();
            VertexBuffer.b c10 = new VertexBuffer.b().h(4).c(1);
            VertexBuffer.c cVar = VertexBuffer.c.POSITION;
            VertexBuffer.a aVar = VertexBuffer.a.FLOAT2;
            FilamentVertexBuffer filamentVertexBuffer = new FilamentVertexBuffer(c10.b(cVar, 0, aVar, 0, 16).b(VertexBuffer.c.UV0, 0, aVar, 8, 16));
            filamentVertexBuffer.q(0, order);
            return filamentVertexBuffer;
        }

        public void d() {
            if (this.f25861i) {
                return;
            }
            this.f25861i = true;
            this.f25858f.k();
            this.f25853a.x(null);
            this.f25853a.C(null);
            this.f25854b.s(this.f25855c);
            this.f25854b.s(this.f25857e.f());
            this.f25856d.destroyImmediate();
            this.f25858f.destroyImmediate();
            this.f25859g.destroyImmediate();
            this.f25860h.destroyImmediate();
            this.f25855c.destroyImmediate();
            this.f25857e.destroyImmediate();
            this.f25854b.destroyImmediate();
            this.f25853a.destroyImmediate();
        }

        public void e(Tb.a dst) {
            this.f25853a.D(0, 0, dst.i(), dst.h());
            dst.a(this.f25853a);
            Qb.a.o(this.f25853a);
            dst.z();
        }
    }

    public C3118g(int w10, int h10, InterfaceC3114c dpConversor, Runnable dirtyListener) {
        t();
        this.f25845g = w10;
        this.f25846h = h10;
        this.f25851m = dpConversor;
        this.f25852n = dirtyListener;
        this.f25842d = new Tb.a(w10, h10, 100, 1, false);
        this.f25843e = new Tb.a(w10, h10, 100, 1, false);
        this.f25839a = new a();
        k();
        this.f25849k = true;
        this.f25850l = false;
    }

    public static void c() {
        d(false);
    }

    public static void d(boolean forceRebuild) {
        ByteBuffer g10;
        try {
            String q10 = q("ui_style_renderer.vsc");
            int hashCode = ("ui-style-renderer-v1:" + q10).hashCode();
            if (forceRebuild) {
                if (ec.b.c(hashCode)) {
                    return;
                }
                if (ec.b.h(hashCode) && (g10 = ec.b.g(hashCode)) != null) {
                    ec.b.l(hashCode, g10);
                    return;
                }
            } else if (ec.b.c(hashCode)) {
                return;
            }
            Sb.b bVar = (Sb.b) new Sb.b().v("UIStyleRenderer-" + Tc.b.L()).m(true).x(MaterialBuilder.h.MOBILE).E(MaterialBuilder.n.UNLIT).C(MaterialBuilder.t.UV0).l(false).k(false);
            bVar.P(MaterialBuilder.r.FLOAT2, XMLExporter.ATTRIBUTE_SIZE);
            MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT4;
            bVar.P(rVar, "baseColor");
            bVar.P(rVar, "strokeColor");
            bVar.P(rVar, "innerGlowColor");
            bVar.P(rVar, "outerGlowColor");
            bVar.P(rVar, "innerShadowColor");
            bVar.P(rVar, "outerShadowColor");
            MaterialBuilder.r rVar2 = MaterialBuilder.r.FLOAT;
            bVar.P(rVar2, "gradientMode");
            bVar.P(rVar2, "gradientAngle");
            bVar.P(rVar2, "maskMode");
            bVar.P(rVar2, "maskValue");
            bVar.P(rVar2, "maskAngle");
            bVar.P(rVar, "cornerTypes");
            bVar.P(rVar2, "cornerPx");
            bVar.P(rVar2, "strokePx");
            bVar.P(rVar2, "hole");
            bVar.P(rVar2, "innerGlowSizePx");
            bVar.P(rVar2, "innerGlowSmoothPx");
            bVar.P(rVar2, "outerGlowSizePx");
            bVar.P(rVar2, "outerGlowSmoothPx");
            bVar.P(rVar2, "innerShadowSizePx");
            bVar.P(rVar2, "innerShadowSmoothPx");
            bVar.P(rVar2, "innerShadowAngle");
            bVar.P(rVar2, "outerShadowSizePx");
            bVar.P(rVar2, "outerShadowSmoothPx");
            bVar.P(rVar2, "outerShadowAngle");
            MaterialBuilder.m mVar = MaterialBuilder.m.SAMPLER_2D;
            MaterialBuilder.l lVar = MaterialBuilder.l.FLOAT;
            MaterialBuilder.g gVar = MaterialBuilder.g.HIGH;
            bVar.D(mVar, lVar, gVar, "gradientTex");
            bVar.D(mVar, lVar, gVar, "albedo");
            bVar.r(q10);
            ec.b.l(hashCode, bVar.d().a());
        } catch (Exception e10) {
            throw new RuntimeException("Failed to build StyleRenderer shader cache", e10);
        }
    }

    public static void e() {
        d(true);
    }

    public static String q(String file) {
        return C14207a.a("Shaders/UI/" + file);
    }

    public static void t() {
        C14491a.l();
        if (f25838p != null) {
            return;
        }
        try {
            String q10 = q("ui_style_renderer.vsc");
            int hashCode = ("ui-style-renderer-v1:" + q10).hashCode();
            ByteBuffer f10 = ec.b.f(hashCode);
            if (f10 != null) {
                ByteBuffer duplicate = f10.duplicate();
                duplicate.rewind();
                f25838p = new FilamentMaterialTemplate(new Material.b().b(duplicate, duplicate.remaining()));
                return;
            }
            Sb.b bVar = (Sb.b) new Sb.b().v("UIStyleRenderer-" + Tc.b.L()).m(true).x(MaterialBuilder.h.MOBILE).E(MaterialBuilder.n.UNLIT).C(MaterialBuilder.t.UV0).l(false).k(false);
            bVar.P(MaterialBuilder.r.FLOAT2, XMLExporter.ATTRIBUTE_SIZE);
            MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT4;
            bVar.P(rVar, "baseColor");
            bVar.P(rVar, "strokeColor");
            bVar.P(rVar, "innerGlowColor");
            bVar.P(rVar, "outerGlowColor");
            bVar.P(rVar, "innerShadowColor");
            bVar.P(rVar, "outerShadowColor");
            MaterialBuilder.r rVar2 = MaterialBuilder.r.FLOAT;
            bVar.P(rVar2, "gradientMode");
            bVar.P(rVar2, "gradientAngle");
            bVar.P(rVar2, "maskMode");
            bVar.P(rVar2, "maskValue");
            bVar.P(rVar2, "maskAngle");
            bVar.P(rVar, "cornerTypes");
            bVar.P(rVar2, "cornerPx");
            bVar.P(rVar2, "strokePx");
            bVar.P(rVar2, "hole");
            bVar.P(rVar2, "innerGlowSizePx");
            bVar.P(rVar2, "innerGlowSmoothPx");
            bVar.P(rVar2, "outerGlowSizePx");
            bVar.P(rVar2, "outerGlowSmoothPx");
            bVar.P(rVar2, "innerShadowSizePx");
            bVar.P(rVar2, "innerShadowSmoothPx");
            bVar.P(rVar2, "innerShadowAngle");
            bVar.P(rVar2, "outerShadowSizePx");
            bVar.P(rVar2, "outerShadowSmoothPx");
            bVar.P(rVar2, "outerShadowAngle");
            MaterialBuilder.m mVar = MaterialBuilder.m.SAMPLER_2D;
            MaterialBuilder.l lVar = MaterialBuilder.l.FLOAT;
            MaterialBuilder.g gVar = MaterialBuilder.g.HIGH;
            bVar.D(mVar, lVar, gVar, "gradientTex");
            bVar.D(mVar, lVar, gVar, "albedo");
            bVar.r(q10);
            ByteBuffer a10 = bVar.d().a();
            ByteBuffer duplicate2 = a10.duplicate();
            duplicate2.rewind();
            ec.b.l(hashCode, a10);
            f25838p = new FilamentMaterialTemplate(new Material.b().b(duplicate2, duplicate2.remaining()));
        } catch (Exception e10) {
            throw new RuntimeException("Failed to create UIStyleRenderer material", e10);
        }
    }

    public final void A() {
        Tb.a aVar = this.f25842d;
        this.f25842d = this.f25843e;
        this.f25843e = aVar;
    }

    public final void B(Gradient gradient) {
        k();
        int g10 = g(gradient);
        if (g10 == this.f25848j) {
            return;
        }
        this.f25848j = g10;
        if (gradient == null) {
            gradient = new Gradient();
            gradient.n();
        }
        ColorINT colorINT = new ColorINT();
        for (int i10 = 0; i10 < 1024; i10++) {
            gradient.l(i10 / 1023, colorINT);
            this.f25844f.Y(i10, 0, colorINT);
        }
        this.f25844f.apply();
    }

    public final void b() {
        UIStyle uIStyle = this.f25840b;
        if (uIStyle == null) {
            return;
        }
        float a10 = this.f25851m.a(uIStyle.W());
        float a11 = this.f25851m.a(this.f25840b.t0());
        float a12 = this.f25851m.a(this.f25840b.b0());
        float a13 = this.f25851m.a(this.f25840b.c0());
        float a14 = this.f25851m.a(this.f25840b.n0());
        float a15 = this.f25851m.a(this.f25840b.o0());
        float a16 = this.f25851m.a(this.f25840b.f0());
        float a17 = this.f25851m.a(this.f25840b.g0());
        float a18 = this.f25851m.a(this.f25840b.r0());
        float a19 = this.f25851m.a(this.f25840b.s0());
        this.f25839a.f25858f.y(XMLExporter.ATTRIBUTE_SIZE, this.f25845g, this.f25846h);
        x("baseColor", this.f25840b.U());
        x("strokeColor", this.f25840b.u0());
        x("innerGlowColor", this.f25840b.a0());
        x("outerGlowColor", this.f25840b.m0());
        x("innerShadowColor", this.f25840b.e0());
        x("outerShadowColor", this.f25840b.q0());
        this.f25839a.f25858f.w("gradientMode", u(this.f25840b.Y()));
        this.f25839a.f25858f.w("gradientAngle", this.f25840b.X());
        this.f25839a.f25858f.w("maskMode", v(this.f25840b.j0()));
        this.f25839a.f25858f.w("maskValue", this.f25840b.k0());
        this.f25839a.f25858f.w("maskAngle", this.f25840b.i0());
        this.f25839a.f25858f.E("cornerTypes", UIStyle.B0(this.f25840b.v0()).ordinal(), UIStyle.B0(this.f25840b.w0()).ordinal(), UIStyle.B0(this.f25840b.T()).ordinal(), UIStyle.B0(this.f25840b.S()).ordinal());
        this.f25839a.f25858f.w("cornerPx", a10);
        this.f25839a.f25858f.w("strokePx", a11);
        this.f25839a.f25858f.w("hole", this.f25840b.Z());
        this.f25839a.f25858f.w("innerGlowSizePx", a12);
        this.f25839a.f25858f.w("innerGlowSmoothPx", a13);
        this.f25839a.f25858f.w("outerGlowSizePx", a14);
        this.f25839a.f25858f.w("outerGlowSmoothPx", a15);
        this.f25839a.f25858f.w("innerShadowSizePx", a16);
        this.f25839a.f25858f.w("innerShadowSmoothPx", a17);
        this.f25839a.f25858f.w("innerShadowAngle", this.f25840b.d0());
        this.f25839a.f25858f.w("outerShadowSizePx", a18);
        this.f25839a.f25858f.w("outerShadowSmoothPx", a19);
        this.f25839a.f25858f.w("outerShadowAngle", this.f25840b.p0());
        ub.n nVar = this.f25844f;
        if (nVar != null && nVar.J()) {
            this.f25844f.f(this.f25839a.f25858f, "gradientTex");
        }
        ub.p pVar = this.f25841c;
        if (pVar == null) {
            pVar = C16165b.f130161g;
        }
        if (!ub.p.L(pVar)) {
            throw new RuntimeException("StyleRenderer albedo fallback is not renderable");
        }
        pVar.f(this.f25839a.f25858f, "albedo");
    }

    public final int f(ColorINT colorINT) {
        if (colorINT != null) {
            return colorINT.intColor;
        }
        return 0;
    }

    public final int g(Gradient gradient) {
        if (gradient == null) {
            return 0;
        }
        int j10 = gradient.j();
        int i10 = 527 + j10;
        for (int i11 = 0; i11 < j10; i11++) {
            Entry i12 = gradient.i(i11);
            int floatToIntBits = (i10 * 31) + Float.floatToIntBits(i12.d());
            ColorINT c10 = i12.c();
            i10 = (floatToIntBits * 31) + (c10 != null ? c10.intColor : 0);
        }
        return i10;
    }

    public final int h(UIStyle s10) {
        return ((((((((((((((((((((((((((((((((((((((((((((((((((((((((527 + Float.floatToIntBits(s10.W())) * 31) + Float.floatToIntBits(s10.t0())) * 31) + f(s10.U())) * 31) + f(s10.u0())) * 31) + (s10.Y() != null ? s10.Y().ordinal() : 0)) * 31) + Float.floatToIntBits(s10.X())) * 31) + (s10.v0() != null ? s10.v0().ordinal() : 0)) * 31) + (s10.w0() != null ? s10.w0().ordinal() : 0)) * 31) + (s10.T() != null ? s10.T().ordinal() : 0)) * 31) + (s10.S() != null ? s10.S().ordinal() : 0)) * 31) + Float.floatToIntBits(s10.Z())) * 31) + Float.floatToIntBits(s10.b0())) * 31) + Float.floatToIntBits(s10.c0())) * 31) + f(s10.a0())) * 31) + Float.floatToIntBits(s10.n0())) * 31) + Float.floatToIntBits(s10.o0())) * 31) + f(s10.m0())) * 31) + Float.floatToIntBits(s10.f0())) * 31) + Float.floatToIntBits(s10.g0())) * 31) + Float.floatToIntBits(s10.d0())) * 31) + f(s10.e0())) * 31) + Float.floatToIntBits(s10.r0())) * 31) + Float.floatToIntBits(s10.s0())) * 31) + Float.floatToIntBits(s10.p0())) * 31) + f(s10.q0())) * 31) + (s10.j0() != null ? s10.j0().ordinal() : 0)) * 31) + Float.floatToIntBits(s10.k0())) * 31) + Float.floatToIntBits(s10.i0())) * 31) + g(s10.V());
    }

    public void i() {
        this.f25839a.d();
        ub.n nVar = this.f25844f;
        if (nVar != null) {
            nVar.destroyImmediate();
            this.f25844f = null;
        }
        Tb.a aVar = this.f25842d;
        if (aVar != null && !aVar.f24207r) {
            aVar.c();
        }
        Tb.a aVar2 = this.f25843e;
        if (aVar2 != null && aVar2 != this.f25842d && !aVar2.f24207r) {
            aVar2.c();
        }
        this.f25842d = null;
        this.f25843e = null;
    }

    public void j() {
        if (!this.f25849k || this.f25840b == null || this.f25842d == null || this.f25843e == null || this.f25839a == null) {
            return;
        }
        ub.p pVar = this.f25841c;
        if (pVar != null && !pVar.J()) {
            this.f25850l = false;
            return;
        }
        l();
        int h10 = h(this.f25840b);
        if (h10 != this.f25847i) {
            this.f25847i = h10;
            this.f25849k = true;
        }
        B(this.f25840b.V());
        b();
        this.f25850l = true;
    }

    public final void k() {
        if (this.f25844f != null) {
            return;
        }
        TextureConfig textureConfig = new TextureConfig();
        textureConfig.genMipmaps = false;
        textureConfig.allowModifications = true;
        textureConfig.wrap = TextureConfig.h.Clamp;
        textureConfig.j0(TextureConfig.c.Linear);
        this.f25844f = new ub.n(1024, 1, textureConfig, true);
    }

    public final void l() {
        Tb.a aVar = this.f25843e;
        if (aVar == null) {
            this.f25843e = new Tb.a(this.f25845g, this.f25846h, 100, 1, false);
        } else {
            if (aVar.p() == this.f25845g && this.f25843e.o() == this.f25846h) {
                return;
            }
            this.f25843e.u(this.f25845g, this.f25846h);
        }
    }

    public ub.p m() {
        return this.f25841c;
    }

    public ub.p n() {
        if (p()) {
            return this.f25842d.l();
        }
        throw new RuntimeException("Not renderable yet");
    }

    public UIStyle o() {
        return this.f25840b;
    }

    public boolean p() {
        Tb.a aVar = this.f25842d;
        return (aVar == null || aVar.l() == null || !this.f25842d.l().J()) ? false : true;
    }

    public void r() {
        this.f25850l = false;
        this.f25849k = true;
    }

    public void s() {
        Tb.a aVar;
        a aVar2;
        if (!this.f25849k || this.f25840b == null || (aVar = this.f25843e) == null || (aVar2 = this.f25839a) == null || !this.f25850l) {
            return;
        }
        aVar2.e(aVar);
        A();
        this.f25849k = false;
        this.f25850l = false;
        Runnable runnable = this.f25852n;
        if (runnable != null) {
            runnable.run();
        }
    }

    public final float u(EnumC3115d gradientMode) {
        if (gradientMode == null) {
            gradientMode = EnumC3115d.Solid;
        }
        return gradientMode.ordinal();
    }

    public final float v(EnumC3116e maskMode) {
        if (maskMode == null) {
            maskMode = EnumC3116e.Linear;
        }
        return maskMode.ordinal();
    }

    public void w(ub.p albedo) {
        if (this.f25841c == albedo) {
            return;
        }
        this.f25841c = albedo;
        this.f25849k = true;
        this.f25850l = false;
    }

    public final void x(String param, ColorINT colorINT) {
        if (colorINT == null) {
            this.f25839a.f25858f.E(param, 0.0f, 0.0f, 0.0f, 0.0f);
        } else {
            this.f25839a.f25858f.E(param, colorINT.w(), colorINT.u(), colorINT.s(), colorINT.r());
        }
    }

    public boolean y(int w10, int h10) {
        K8.a.G();
        boolean z10 = (this.f25845g == w10 && this.f25846h == h10) ? false : true;
        this.f25845g = w10;
        this.f25846h = h10;
        if (z10) {
            this.f25847i = Integer.MIN_VALUE;
            this.f25849k = true;
            this.f25850l = false;
        }
        return z10;
    }

    public void z(UIStyle style) {
        if (this.f25840b == style) {
            return;
        }
        this.f25840b = style;
        this.f25847i = Integer.MIN_VALUE;
        this.f25849k = true;
        this.f25850l = false;
    }
}
