package Ug;

import android.graphics.Bitmap;
import android.util.Log;
import com.google.android.filament.Box;
import com.google.android.filament.IndexBuffer;
import com.google.android.filament.Material;
import com.google.android.filament.RenderableManager;
import com.google.android.filament.VertexBuffer;
import com.google.android.filament.filamat.MaterialBuilder;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Material.EntryNotFoundException;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.Texture.Data.a;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentCamera;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterialTemplate;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentRenderable;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentScene;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentVertexBuffer;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Generic.ShaderBinder;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import mc.C14207a;
import org.eclipse.jdt.core.JavaCore;
import ub.p;
import yb.C16165b;

public class n {

    public FilamentScene f26159a;

    public FilamentView f26160b;

    public Tb.a f26161c;

    public int f26163e;

    public int f26164f;

    public Bb.b f26165g;

    public FilamentCamera f26166h;

    public FilamentMaterialTemplate f26167i;

    public final String f26168j;

    public final String f26169k;

    public final String f26170l;

    public final boolean f26172n;

    public final List<b> f26162d = new ArrayList();

    public final Map<Integer, p> f26171m = new HashMap();

    public class a implements a.b {

        public final Runnable f26173a;

        public class RunnableC0718a implements Runnable {
            public RunnableC0718a() {
            }

            @Override
            public void run() {
                n.this.i();
            }
        }

        public a(final Runnable val$post) {
            this.f26173a = val$post;
        }

        @Override
        public void on(Bitmap bitmap) {
            if (bitmap == null || bitmap.isRecycled()) {
                return;
            }
            n.this.p("Bitmap extracted successfully.");
            ColorINT colorINT = new ColorINT();
            for (int i10 = 0; i10 < n.this.f26163e; i10++) {
                for (int i11 = 0; i11 < n.this.f26164f; i11++) {
                    colorINT.J(bitmap.getPixel(i10, i11));
                    if (colorINT.r() > 0.0f) {
                        n.this.f26165g.t(i10, i11, colorINT);
                    }
                }
            }
            bitmap.recycle();
            this.f26173a.run();
            K8.a.B(new RunnableC0718a());
        }
    }

    public static class b {

        public Rb.c f26176a;

        public FilamentRenderable f26177b;

        public FilamentVertexBuffer f26178c;

        public Rb.d f26179d;

        public FilamentMaterial f26180e;

        public p f26181f;

        public b() {
        }

        public b(a aVar) {
            this();
        }
    }

    public n(String albedoTextureParam, String tillingParam, String offsetParam, boolean allowDiffuseColor) {
        this.f26168j = albedoTextureParam;
        this.f26169k = tillingParam;
        this.f26170l = offsetParam;
        this.f26172n = allowDiffuseColor;
    }

    public static String o(String file) {
        return C14207a.a("Shaders/Atlas/" + file);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(27:1|(2:2|(1:4)(1:5))|6|(10:55|56|(1:58)|59|(3:70|71|(3:75|76|77))|61|62|63|64|65)(1:8)|(1:10)|11|12|13|(1:17)|19|20|21|22|23|24|(2:26|(10:28|29|30|31|32|(1:34)(1:41)|35|(1:37)|38|39))|49|29|30|31|32|(0)(0)|35|(0)|38|39|(1:(1:81))) */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0202, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0203, code lost:
    
        r0.printStackTrace();
        r0 = k(r32);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x020f, code lost:
    
        if (r0.J() != false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0211, code lost:
    
        r0.f(r7, "albedo");
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0215, code lost:
    
        yb.C16165b.f130163i.f(r7, "albedo");
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0234  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x023f  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0236  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void f(g vertex, ColorINT color, Material material) {
        p pVar;
        p pVar2;
        float f10;
        boolean z10;
        String u10;
        boolean z11;
        ColorINT q10;
        b bVar = new b(null);
        this.f26162d.add(bVar);
        NativeFloatBuffer k10 = vertex.i().k();
        NativeFloatBuffer h10 = vertex.e().h();
        NativeFloatBuffer h11 = vertex.a().h();
        NativeIntBuffer g10 = vertex.g().g();
        VertexBuffer.b b10 = new VertexBuffer.b().h(k10.capacity() / 3).c(4).b(VertexBuffer.c.POSITION, 0, VertexBuffer.a.FLOAT3, 0, 0);
        VertexBuffer.c cVar = VertexBuffer.c.UV0;
        VertexBuffer.a aVar = VertexBuffer.a.FLOAT2;
        bVar.f26178c = new FilamentVertexBuffer(b10.b(cVar, 1, aVar, 0, 0).b(VertexBuffer.c.UV1, 2, aVar, 0, 0).b(VertexBuffer.c.CUSTOM0, 3, VertexBuffer.a.FLOAT4, 0, 0));
        int capacity = k10.capacity() / 3;
        FloatBuffer floatBuffer = k10.toFloatBuffer();
        FloatBuffer asFloatBuffer = ByteBuffer.allocateDirect(capacity * 16).order(ByteOrder.nativeOrder()).asFloatBuffer();
        floatBuffer.rewind();
        int i10 = 0;
        while (true) {
            if (i10 >= capacity) {
                break;
            }
            asFloatBuffer.put(floatBuffer.get());
            asFloatBuffer.put(floatBuffer.get());
            asFloatBuffer.put(floatBuffer.get());
            asFloatBuffer.put(1.0f);
            i10++;
        }
        asFloatBuffer.flip();
        floatBuffer.rewind();
        bVar.f26178c.u(0, floatBuffer);
        bVar.f26178c.u(1, h10.toFloatBuffer());
        bVar.f26178c.u(2, h11.toFloatBuffer());
        bVar.f26178c.u(3, asFloatBuffer);
        bVar.f26179d = new Rb.d(new IndexBuffer.a().c(g10.capacity()).a(IndexBuffer.a.b.USHORT));
        bVar.f26179d.r(g10.buildIndexData());
        FilamentMaterial e10 = this.f26167i.e();
        bVar.f26180e = e10;
        bVar.f26176a = new Rb.c();
        bVar.f26177b = new FilamentRenderable(new RenderableManager.a(1).f(false).d(false).y(false), bVar.f26180e, bVar.f26176a, bVar.f26178c, bVar.f26179d, RenderableManager.b.TRIANGLES, new Box(0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f));
        this.f26159a.j(bVar.f26176a);
        Vector2 vector2 = new Vector2(1.0f);
        Vector2 vector22 = new Vector2();
        ColorINT colorINT = new ColorINT();
        if (material != null) {
            try {
                p v10 = material.v(this.f26168j);
                if (v10 == null) {
                    v10 = null;
                }
                pVar = v10;
            } catch (EntryNotFoundException unused) {
                pVar = null;
            }
            if (pVar == null) {
                try {
                    String w10 = material.w(this.f26168j);
                    if (w10 != null && !w10.isEmpty()) {
                        try {
                            pVar = new ub.g(w10, new TextureConfig(true));
                        } catch (Exception e11) {
                            e11.printStackTrace();
                        }
                    }
                } catch (EntryNotFoundException unused2) {
                }
            }
            pVar2 = pVar;
            try {
                vector2.x0(material.x(this.f26169k));
            } catch (EntryNotFoundException unused3) {
            }
            try {
                vector22.x0(material.x(this.f26170l));
            } catch (EntryNotFoundException unused4) {
            }
        } else {
            pVar2 = null;
        }
        if (pVar2 == null) {
            pVar2 = k(material);
        }
        p pVar3 = pVar2;
        bVar.f26181f = pVar3;
        boolean n10 = n(pVar3);
        try {
            if (this.f26172n && (q10 = material.q("diffuse")) != null) {
                colorINT.K(q10);
            }
        } catch (EntryNotFoundException unused5) {
        }
        try {
            f10 = material.r("alphaCutout");
        } catch (EntryNotFoundException unused6) {
            f10 = 0.0f;
        }
        try {
            u10 = material.u("uvSource");
        } catch (Exception e12) {
            e12.printStackTrace();
            z10 = false;
        }
        if (u10 != null) {
            if (u10.equalsIgnoreCase("World")) {
                z11 = true;
                z10 = z11;
                pVar3.f(e10, "albedo");
                e10.v("diffuse", colorINT);
                e10.w("alphaCutout", f10);
                e10.y("albedoTilling", vector2.f79838x, vector2.f79839y);
                e10.y("albedoOffset", vector22.f79838x, vector22.f79839y);
                e10.w("useWorldUV", !z10 ? 1.0f : 0.0f);
                e10.w("encodeSrgbForAtlas", n10 ? 1.0f : 0.0f);
            }
        }
        z11 = false;
        z10 = z11;
        pVar3.f(e10, "albedo");
        e10.v("diffuse", colorINT);
        e10.w("alphaCutout", f10);
        e10.y("albedoTilling", vector2.f79838x, vector2.f79839y);
        e10.y("albedoOffset", vector22.f79838x, vector22.f79839y);
        e10.w("useWorldUV", !z10 ? 1.0f : 0.0f);
        e10.w("encodeSrgbForAtlas", n10 ? 1.0f : 0.0f);
    }

    public void g(Bb.b output) {
        this.f26165g = output;
        this.f26163e = output.p();
        this.f26164f = output.l();
        p("FilamentTriangleRasterizer begin()");
        this.f26161c = new Tb.a(this.f26163e, this.f26164f);
        FilamentScene filamentScene = new FilamentScene();
        this.f26159a = filamentScene;
        filamentScene.u(null);
        FilamentView filamentView = new FilamentView();
        this.f26160b = filamentView;
        filamentView.C(this.f26159a);
        this.f26160b.D(0, 0, this.f26163e, this.f26164f);
        FilamentCamera filamentCamera = new FilamentCamera();
        this.f26166h = filamentCamera;
        filamentCamera.l(-1.0f, 1.0f, -1.0f, 1.0f, 0.0f, 1.0f);
        this.f26160b.x(this.f26166h);
        this.f26159a.j(this.f26166h.f());
        String o10 = o("RasterizeAtlasVertex.glsl");
        String o11 = o("RasterizeAtlasFragment.glsl");
        if (o10 == null || o10.isEmpty()) {
            throw new RuntimeException("Failed to load vertex shader");
        }
        if (o11 == null || o11.isEmpty()) {
            throw new RuntimeException("Failed to load fragment shader");
        }
        Sb.b bVar = (Sb.b) new Sb.b().v("RasterizeAtlas").V(MaterialBuilder.u.OBJECT).x(MaterialBuilder.h.MOBILE).E(MaterialBuilder.n.UNLIT).C(MaterialBuilder.t.UV0).C(MaterialBuilder.t.UV1).C(MaterialBuilder.t.CUSTOM0).m(true).c(MaterialBuilder.a.TRANSPARENT);
        bVar.T(MaterialBuilder.s.CUSTOM0, "worldVertexPos");
        bVar.D(MaterialBuilder.m.SAMPLER_2D, MaterialBuilder.l.FLOAT, MaterialBuilder.g.HIGH, "albedo");
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT4;
        MaterialBuilder.g gVar = MaterialBuilder.g.MEDIUM;
        bVar.O(rVar, gVar, "diffuse");
        MaterialBuilder.r rVar2 = MaterialBuilder.r.FLOAT;
        bVar.O(rVar2, gVar, "alphaCutout");
        MaterialBuilder.r rVar3 = MaterialBuilder.r.FLOAT2;
        bVar.O(rVar3, gVar, "albedoTilling");
        bVar.O(rVar3, gVar, "albedoOffset");
        bVar.O(rVar2, gVar, "useWorldUV");
        bVar.O(rVar2, gVar, "encodeSrgbForAtlas");
        bVar.t(o10);
        bVar.r(o11);
        com.google.android.filament.filamat.b d10 = bVar.d();
        if (d10 == null || !d10.b()) {
            throw new RuntimeException("Falha ao compilar material em runtime!");
        }
        ByteBuffer duplicate = d10.a().duplicate();
        duplicate.rewind();
        this.f26167i = new FilamentMaterialTemplate(new Material.b().b(duplicate, duplicate.remaining()));
    }

    public boolean h() {
        for (int i10 = 0; i10 < this.f26162d.size(); i10++) {
            b bVar = this.f26162d.get(i10);
            if (bVar.f26181f != null && !bVar.f26181f.J()) {
                return false;
            }
        }
        return true;
    }

    public final void i() {
        for (int i10 = 0; i10 < this.f26162d.size(); i10++) {
            b bVar = this.f26162d.get(i10);
            this.f26159a.s(bVar.f26176a);
            bVar.f26177b.destroyImmediate();
            bVar.f26177b = null;
            bVar.f26176a = null;
            bVar.f26178c.destroyImmediate();
            bVar.f26178c = null;
            bVar.f26179d.destroyImmediate();
            bVar.f26179d = null;
            bVar.f26180e = null;
        }
        this.f26162d.clear();
        if (this.f26171m.isEmpty()) {
            return;
        }
        for (p pVar : this.f26171m.values()) {
            if (pVar instanceof ub.n) {
                ((ub.n) pVar).destroyImmediate();
            }
        }
        this.f26171m.clear();
    }

    public final p j(com.itsmagic.engine.Engines.Engine.Material.Material material) {
        ShaderBinder k10;
        if (material == null) {
            return null;
        }
        try {
            dc.k y10 = material.y();
            if (y10 == null || (k10 = y10.k()) == null) {
                return null;
            }
            return k10.r(this.f26168j);
        } catch (Exception unused) {
            return null;
        }
    }

    public final p k(com.itsmagic.engine.Engines.Engine.Material.Material material) {
        float r10;
        if (this.f26168j.equalsIgnoreCase(JavaCore.NORMAL) || this.f26168j.equalsIgnoreCase("normalMap")) {
            return C16165b.f130166l;
        }
        if (this.f26168j.equalsIgnoreCase("roughness") || this.f26168j.equalsIgnoreCase("roughnessMap")) {
            if (material != null) {
                try {
                    r10 = material.r("roughnessFallback");
                } catch (Exception unused) {
                }
                float max = Math.max(0.0f, Math.min(1.0f, r10));
                ColorINT colorINT = new ColorINT();
                colorINT.Q(max);
                colorINT.P(0.0f);
                colorINT.O(0.0f);
                colorINT.N(1.0f);
                return l(colorINT);
            }
            r10 = 0.6f;
            float max2 = Math.max(0.0f, Math.min(1.0f, r10));
            ColorINT colorINT2 = new ColorINT();
            colorINT2.Q(max2);
            colorINT2.P(0.0f);
            colorINT2.O(0.0f);
            colorINT2.N(1.0f);
            return l(colorINT2);
        }
        if (this.f26168j.equalsIgnoreCase("ao") || this.f26168j.equalsIgnoreCase("aoMap")) {
            return C16165b.f130161g;
        }
        if (this.f26168j.equalsIgnoreCase("height") || this.f26168j.equalsIgnoreCase("heightMap")) {
            return C16165b.f130163i;
        }
        if (!this.f26168j.equalsIgnoreCase("emissive")) {
            p j10 = j(material);
            return j10 != null ? j10 : C16165b.f130161g;
        }
        p j11 = j(material);
        if (j11 != null) {
            try {
                ColorINT i10 = j11.i(0, 0);
                if (i10 != null) {
                    if (!m(i10)) {
                        return j11;
                    }
                }
            } catch (Exception unused2) {
            }
        }
        if (material != null) {
            try {
                ColorINT q10 = material.q("emissiveColor");
                if (q10 != null) {
                    ColorINT clone = q10.clone();
                    clone.L(255);
                    if (!m(clone)) {
                        return l(clone);
                    }
                }
            } catch (Exception unused3) {
            }
        }
        return j11 != null ? j11 : C16165b.f130163i;
    }

    public final p l(ColorINT color) {
        int i10 = color.intColor;
        p pVar = this.f26171m.get(Integer.valueOf(i10));
        if (pVar != null) {
            return pVar;
        }
        ub.n nVar = new ub.n(1, 1, true, false);
        nVar.Y(0, 0, color);
        nVar.apply();
        this.f26171m.put(Integer.valueOf(i10), nVar);
        return nVar;
    }

    public final boolean m(ColorINT color) {
        if (color == null) {
            return true;
        }
        return color.C() <= 1 && color.x() <= 1 && color.p() <= 1;
    }

    public final boolean n(p texture) {
        TextureConfig t02;
        if (texture == null) {
            return false;
        }
        if (!(texture instanceof ub.g)) {
            return (texture instanceof ub.n) && (t02 = ((ub.n) texture).t0()) != null && t02.gammaCorrection;
        }
        TextureConfig u02 = ((ub.g) texture).u0();
        return u02 != null && u02.gammaCorrection;
    }

    public final void p(String msg) {
        Log.d("FilamentTriangleRasterizer", msg);
    }

    public void q(Runnable post) {
        this.f26161c.a(this.f26160b);
        Qb.a.o(this.f26160b);
        this.f26161c.l().U0(this.f26161c.r(), new a(post));
    }
}
