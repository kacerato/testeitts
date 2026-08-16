package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI;

import com.google.android.filament.Box;
import com.google.android.filament.Engine;
import com.google.android.filament.IndexBuffer;
import com.google.android.filament.Material;
import com.google.android.filament.RenderableManager;
import com.google.android.filament.VertexBuffer;
import com.google.android.filament.filamat.MaterialBuilder;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIController;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Texture.ColorTexture;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentCamera;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterialTemplate;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentRenderable;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentScene;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentVertexBuffer;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.function.BiConsumer;
import mc.C14207a;
import o9.C14491a;

public abstract class DoublePassUIPostProcessPass extends UIBasePostProcessing<c> {

    public static final int f75901R = 64;

    public FilamentMaterialTemplate f75902H;

    public final Map<String, Vb.c> f75903I;

    public final Map<String, MaterialBuilder.m> f75904J;

    public String f75905K;

    public volatile d f75906L;

    public boolean f75907M;

    public boolean f75908N;

    public boolean f75909O;

    public int f75910P;

    public final int[] f75911Q;

    public class a implements BiConsumer<String, MaterialBuilder.r> {
        public a() {
        }

        @Override
        public void accept(String s10, MaterialBuilder.r uniformType) {
            DoublePassUIPostProcessPass.this.f75906L.f75943d.put(s10, new Vb.c(uniformType));
        }
    }

    public static final class b {

        public final c f75913a;

        public b(c cVar, a aVar) {
            this(cVar);
        }

        public void a(String name, ub.p tex) {
            tex.f(this.f75913a.f75918e, name);
        }

        public void b(String name, boolean v10) {
            this.f75913a.f75918e.r(name, v10);
        }

        public void c(String name, ColorINT color) {
            this.f75913a.f75918e.E(name, color.w(), color.u(), color.s(), color.r());
        }

        public void d(String name, float v10) {
            this.f75913a.f75918e.w(name, v10);
        }

        public void e(String name, float x10, float y10) {
            this.f75913a.f75918e.y(name, x10, y10);
        }

        public void f(String name, float x10, float y10, float z10) {
            this.f75913a.f75918e.B(name, x10, y10, z10);
        }

        public void g(String name, float x10, float y10, float z10, float w10) {
            this.f75913a.f75918e.E(name, x10, y10, z10, w10);
        }

        public void h(String name, Vector2 value) {
            this.f75913a.f75918e.y(name, value.getX(), value.getY());
        }

        public void i(String name, Vector3 value) {
            this.f75913a.f75918e.B(name, value.getX(), value.getY(), value.getZ());
        }

        public b(c cache) {
            this.f75913a = cache;
        }
    }

    public static class c {

        public FilamentView f75914a;

        public FilamentScene f75915b;

        public Rb.c f75916c;

        public FilamentRenderable f75917d;

        public FilamentMaterial f75918e;

        public FilamentVertexBuffer f75919f;

        public Rb.d f75920g;

        public FilamentCamera f75921h;

        public C14491a f75922i;

        public Tb.a f75934u;

        public Object f75935v;

        public Object f75936w;

        public String f75937x;

        public final Map<String, Object> f75923j = new HashMap();

        public final b f75924k = new b(this, null);

        public boolean f75925l = false;

        public int f75926m = Integer.MIN_VALUE;

        public final int[] f75927n = new int[64];

        public int f75928o = -1;

        public int f75929p = -1;

        public int f75930q = -1;

        public int f75931r = -1;

        public int f75932s = -1;

        public int f75933t = -1;

        public final BiConsumer f75938y = new a();

        public class a implements BiConsumer<String, Object> {
            public a() {
            }

            @Override
            public void accept(String s10, Object o10) {
                if (o10 instanceof Float) {
                    c.this.f75918e.w(s10, ((Float) o10).floatValue());
                    return;
                }
                if (o10 instanceof float[]) {
                    float[] fArr = (float[]) o10;
                    int length = fArr.length;
                    if (length == 2) {
                        c.this.f75918e.y(s10, fArr[0], fArr[1]);
                        return;
                    }
                    if (length == 3) {
                        c.this.f75918e.B(s10, fArr[0], fArr[1], fArr[2]);
                        return;
                    } else {
                        if (length == 4) {
                            c.this.f75918e.E(s10, fArr[0], fArr[1], fArr[2], fArr[3]);
                            return;
                        }
                        throw new IllegalArgumentException("Array inv\u00e1lido em uniform: " + s10);
                    }
                }
                if (o10 instanceof Vector2) {
                    Vector2 vector2 = (Vector2) o10;
                    c.this.f75918e.y(s10, vector2.getX(), vector2.getY());
                    return;
                }
                if (o10 instanceof Vector3) {
                    Vector3 vector3 = (Vector3) o10;
                    c.this.f75918e.B(s10, vector3.getX(), vector3.getY(), vector3.getZ());
                    return;
                }
                if (o10 instanceof Boolean) {
                    c.this.f75918e.r(s10, ((Boolean) o10).booleanValue());
                    return;
                }
                if (o10 instanceof ub.p) {
                    ((ub.p) o10).f(c.this.f75918e, s10);
                    return;
                }
                if (o10 instanceof ColorINT) {
                    ColorINT colorINT = (ColorINT) o10;
                    c.this.f75918e.E(s10, colorINT.w(), colorINT.u(), colorINT.s(), colorINT.r());
                    return;
                }
                throw new IllegalArgumentException("Param type not supported:" + s10 + " tipo:" + o10.getClass().getSimpleName());
            }
        }

        public final void p() {
            this.f75923j.forEach(this.f75938y);
        }

        public void q() {
            if (this.f75925l) {
                this.f75914a.F();
                this.f75914a.x(null);
                this.f75914a.C(null);
                this.f75915b.s(this.f75921h.f());
                this.f75915b.s(this.f75916c);
                C14491a c14491a = this.f75922i;
                if (c14491a != null) {
                    c14491a.k();
                    this.f75922i = null;
                }
                this.f75917d.destroyImmediate();
                this.f75918e.destroyImmediate();
                this.f75919f.destroyImmediate();
                this.f75920g.destroyImmediate();
                this.f75921h.destroyImmediate();
                this.f75914a.destroyImmediate();
                this.f75915b.destroyImmediate();
                this.f75916c.destroyImmediate();
                this.f75914a = null;
                this.f75915b = null;
                this.f75916c = null;
                this.f75917d = null;
                this.f75918e = null;
                this.f75919f = null;
                this.f75920g = null;
                this.f75921h = null;
                this.f75925l = false;
            }
        }

        public final void r(Tb.a frameBuffer, Tb.a cacheBuffer, String cameraColorTextureParam) {
            String str;
            ColorTexture l10 = frameBuffer.l();
            if (l10 != this.f75936w || (str = this.f75937x) == null || !str.equals(cameraColorTextureParam)) {
                frameBuffer.l().f(this.f75918e, cameraColorTextureParam);
                this.f75936w = l10;
                this.f75937x = cameraColorTextureParam;
            }
            int i10 = frameBuffer.i();
            int h10 = frameBuffer.h();
            if (i10 != this.f75930q || h10 != this.f75931r) {
                this.f75914a.D(0, 0, i10, h10);
                this.f75930q = i10;
                this.f75931r = h10;
            }
            int i11 = cacheBuffer.i();
            int h11 = cacheBuffer.h();
            ColorTexture l11 = cacheBuffer.l();
            boolean z10 = cacheBuffer != this.f75934u;
            boolean z11 = l11 != this.f75935v;
            boolean z12 = (i11 == this.f75932s && h11 == this.f75933t) ? false : true;
            if (z10 || z11) {
                this.f75922i.a(cacheBuffer);
                this.f75934u = cacheBuffer;
                this.f75935v = l11;
                this.f75932s = i11;
                this.f75933t = h11;
                return;
            }
            if (z12) {
                this.f75922i.c(cacheBuffer);
                this.f75932s = i11;
                this.f75933t = h11;
            }
        }

        public void s(FilamentMaterialTemplate material) {
            this.f75925l = true;
            this.f75918e = material.e();
            this.f75919f = DoublePassUIPostProcessPass.createFullScreenQuad(Qb.a.f());
            this.f75920g = DoublePassUIPostProcessPass.createFullScreenIndices(Qb.a.f());
            this.f75915b = new FilamentScene();
            this.f75916c = new Rb.c();
            int i10 = 0;
            this.f75917d = new FilamentRenderable(new RenderableManager.a(1).f(false), this.f75918e, this.f75916c, this.f75919f, this.f75920g, RenderableManager.b.TRIANGLES, new Box(0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f));
            this.f75915b.j(this.f75916c);
            FilamentView filamentView = new FilamentView();
            this.f75914a = filamentView;
            filamentView.C(this.f75915b);
            this.f75914a.z(false);
            FilamentCamera filamentCamera = new FilamentCamera();
            this.f75921h = filamentCamera;
            filamentCamera.l(-1.0f, 1.0f, -1.0f, 1.0f, 0.0f, 1.0f);
            this.f75914a.x(this.f75921h);
            this.f75915b.j(this.f75921h.f());
            C14491a.l();
            this.f75922i = new C14491a();
            this.f75926m = Integer.MIN_VALUE;
            while (true) {
                int[] iArr = this.f75927n;
                if (i10 >= iArr.length) {
                    this.f75928o = -1;
                    this.f75929p = -1;
                    this.f75930q = -1;
                    this.f75931r = -1;
                    this.f75932s = -1;
                    this.f75933t = -1;
                    this.f75934u = null;
                    this.f75935v = null;
                    this.f75936w = null;
                    this.f75937x = null;
                    return;
                }
                iArr[i10] = Integer.MIN_VALUE;
                i10++;
            }
        }

        public final void t(Tb.a frameBuffer) {
            this.f75922i.h(frameBuffer);
        }

        public final void u(Tb.a cacheBuffer) {
            Qb.a.g();
            cacheBuffer.a(this.f75914a);
            Qb.a.o(this.f75914a);
            cacheBuffer.z();
        }
    }

    public static class d {

        public String f75940a;

        public String f75941b;

        public String f75942c;

        public Map<String, Vb.c> f75943d;

        public Map<String, MaterialBuilder.m> f75944e;

        public d() {
        }

        public d(a aVar) {
            this();
        }
    }

    public DoublePassUIPostProcessPass(String serializedComponentType) {
        super(serializedComponentType);
        this.f75903I = new HashMap();
        this.f75904J = new HashMap();
        this.f75908N = false;
        this.f75909O = false;
        this.f75910P = 1;
        this.f75911Q = new int[64];
    }

    private void applyUploadedParamVersions(c c10, long dirtyMask) {
        long trackedParameterMask = getTrackedParameterMask();
        if (trackedParameterMask == 0 || dirtyMask == -1) {
            if (dirtyMask == -1) {
                c10.f75926m = this.f75910P;
            }
        } else {
            while (true) {
                dirtyMask &= trackedParameterMask;
                if (dirtyMask == 0) {
                    return;
                }
                int numberOfTrailingZeros = Long.numberOfTrailingZeros(dirtyMask);
                c10.f75927n[numberOfTrailingZeros] = this.f75911Q[numberOfTrailingZeros];
                trackedParameterMask = ~(1 << numberOfTrailingZeros);
            }
        }
    }

    private FilamentMaterialTemplate buildMaterial(String fragmentShaderCode) {
        return buildMaterialDirect(loadFile(fragmentShaderCode));
    }

    private String buildMaterialCacheKey(String fragmentShaderCode, Map<String, Vb.c> uniforms, Map<String, MaterialBuilder.m> samplers, String cameraColorTextureParam) {
        StringBuilder sb2 = new StringBuilder("dpppp-ui-v2|camera=");
        sb2.append(cameraColorTextureParam);
        sb2.append("|shader=");
        sb2.append(fragmentShaderCode);
        TreeMap treeMap = new TreeMap();
        if (uniforms != null) {
            treeMap.putAll(uniforms);
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            Vb.c cVar = (Vb.c) entry.getValue();
            sb2.append("|u:");
            sb2.append((String) entry.getKey());
            sb2.append("=");
            if (cVar != null) {
                sb2.append((Object) cVar.f26805a);
                sb2.append("@");
                sb2.append((Object) cVar.f26806b);
            } else {
                sb2.append("null");
            }
        }
        TreeMap treeMap2 = new TreeMap();
        if (samplers != null) {
            treeMap2.putAll(samplers);
        }
        for (Map.Entry entry2 : treeMap2.entrySet()) {
            sb2.append("|s:");
            sb2.append((String) entry2.getKey());
            sb2.append("=");
            sb2.append(entry2.getValue());
        }
        return sb2.toString();
    }

    private FilamentMaterialTemplate buildMaterialDirect(String fragmentShaderCode) {
        try {
            int hashCode = buildMaterialCacheKey(fragmentShaderCode, this.f75903I, this.f75904J, this.f75905K).hashCode();
            if (this.f75908N) {
                ByteBuffer g10 = ec.b.g(hashCode);
                if (g10 == null) {
                    return null;
                }
                ByteBuffer duplicate = g10.duplicate();
                duplicate.rewind();
                return new FilamentMaterialTemplate(new Material.b().b(duplicate, duplicate.remaining()));
            }
            ByteBuffer f10 = ec.b.f(hashCode);
            if (f10 != null) {
                ByteBuffer duplicate2 = f10.duplicate();
                duplicate2.rewind();
                return new FilamentMaterialTemplate(new Material.b().b(duplicate2, duplicate2.remaining()));
            }
            Sb.b bVar = (Sb.b) new Sb.b().v("PostProcessDynamic-" + Tc.b.L()).m(true).x(MaterialBuilder.h.MOBILE).E(MaterialBuilder.n.UNLIT).C(MaterialBuilder.t.UV0);
            for (Map.Entry<String, Vb.c> entry : this.f75903I.entrySet()) {
                Vb.c value = entry.getValue();
                bVar.O(value.f26805a, value.f26806b, entry.getKey());
            }
            for (Map.Entry<String, MaterialBuilder.m> entry2 : this.f75904J.entrySet()) {
                bVar.D(entry2.getValue(), MaterialBuilder.l.FLOAT, MaterialBuilder.g.HIGH, entry2.getKey());
            }
            bVar.r(fragmentShaderCode);
            com.google.android.filament.filamat.b d10 = bVar.d();
            if (d10 == null || !d10.b()) {
                throw new RuntimeException("Failed to compile shader!");
            }
            ByteBuffer a10 = d10.a();
            ByteBuffer duplicate3 = a10.duplicate();
            duplicate3.rewind();
            ec.b.l(hashCode, a10);
            return new FilamentMaterialTemplate(new Material.b().b(duplicate3, duplicate3.remaining()));
        } catch (Exception unused) {
            throw new RuntimeException("Failed to compile shader!");
        }
    }

    private long computeDirtyParameterMask(c c10, UIController controller, Tb.a frameBuffer, Tb.a cacheBuffer) {
        long trackedParameterMask = getTrackedParameterMask();
        if (trackedParameterMask == 0) {
            return (c10.f75928o >= 0 && c10.f75928o == frameBuffer.i() && c10.f75929p == frameBuffer.h() && c10.f75926m == this.f75910P && !requiresParameterUploadEveryFrame(controller, frameBuffer, cacheBuffer)) ? 0L : -1L;
        }
        long j10 = trackedParameterMask;
        long j11 = 0;
        for (long j12 = 0; j10 != j12; j12 = 0) {
            int numberOfTrailingZeros = Long.numberOfTrailingZeros(j10);
            long j13 = 1 << numberOfTrailingZeros;
            if (c10.f75927n[numberOfTrailingZeros] != this.f75911Q[numberOfTrailingZeros]) {
                j11 |= j13;
            }
            j10 &= ~j13;
        }
        if (c10.f75928o != frameBuffer.i() || c10.f75929p != frameBuffer.h()) {
            j11 |= getResolutionDependentParameterMask();
        }
        if (requiresParameterUploadEveryFrame(controller, frameBuffer, cacheBuffer)) {
            j11 |= trackedParameterMask;
        }
        return c10.f75928o < 0 ? j11 | trackedParameterMask : j11;
    }

    public static Rb.d createFullScreenIndices(Engine engine) {
        ByteBuffer order = ByteBuffer.allocateDirect(12).order(ByteOrder.nativeOrder());
        order.asShortBuffer().put(new short[]{0, 1, 2, 0, 2, 3}).flip();
        Rb.d dVar = new Rb.d(new IndexBuffer.a().c(6).a(IndexBuffer.a.b.USHORT));
        dVar.r(order);
        return dVar;
    }

    public static FilamentVertexBuffer createFullScreenQuad(Engine engine) {
        ByteBuffer order = ByteBuffer.allocateDirect(64).order(ByteOrder.nativeOrder());
        order.asFloatBuffer().put(new float[]{-1.0f, -1.0f, 0.0f, 1.0f, 1.0f, -1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f, -1.0f, 1.0f, 0.0f, 0.0f}).flip();
        VertexBuffer.b c10 = new VertexBuffer.b().h(4).c(1);
        VertexBuffer.c cVar = VertexBuffer.c.POSITION;
        VertexBuffer.a aVar = VertexBuffer.a.FLOAT2;
        FilamentVertexBuffer filamentVertexBuffer = new FilamentVertexBuffer(c10.b(cVar, 0, aVar, 0, 16).b(VertexBuffer.c.UV0, 0, aVar, 8, 16));
        filamentVertexBuffer.q(0, order);
        return filamentVertexBuffer;
    }

    private void init(String fragmentShader, Map<String, Vb.c> uniforms, Map<String, MaterialBuilder.m> samplers, String cameraColorTextureParam) {
        this.f75905K = cameraColorTextureParam;
        Qb.a.f();
        this.f75903I.clear();
        this.f75904J.clear();
        if (uniforms != null) {
            this.f75903I.putAll(uniforms);
        }
        if (samplers != null) {
            this.f75904J.putAll(samplers);
        }
        this.f75904J.put(cameraColorTextureParam, MaterialBuilder.m.SAMPLER_2D);
        FilamentMaterialTemplate buildMaterial = buildMaterial(fragmentShader);
        if (buildMaterial != null || !this.f75908N) {
            this.f75909O = false;
            this.f75902H = buildMaterial;
        } else {
            this.f75909O = true;
            this.f75907M = false;
            this.f75902H = null;
        }
    }

    private void initCustom(String fragmentShaderCode, Map<String, Vb.c> uniforms, Map<String, MaterialBuilder.m> samplers, String cameraColorTextureParam) {
        this.f75905K = cameraColorTextureParam;
        Qb.a.f();
        this.f75903I.clear();
        this.f75904J.clear();
        if (uniforms != null) {
            this.f75903I.putAll(uniforms);
        }
        if (samplers != null) {
            this.f75904J.putAll(samplers);
        }
        this.f75904J.put(cameraColorTextureParam, MaterialBuilder.m.SAMPLER_2D);
        try {
            FilamentMaterialTemplate buildMaterialDirect = buildMaterialDirect(fragmentShaderCode);
            if (buildMaterialDirect == null && this.f75908N) {
                this.f75909O = true;
                this.f75907M = false;
                this.f75902H = null;
            } else {
                this.f75909O = false;
                this.f75902H = buildMaterialDirect;
                this.f75907M = false;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            this.f75907M = true;
        }
    }

    private static String loadFile(String file) {
        return C14207a.a("Shaders/PostProcessing/" + file + ".vsc");
    }

    @Override
    public void applyAfterRender(UIController uIController, Tb.a frameBuffer, Tb.a cacheBuffer) {
        if (this.f75902H == null) {
            return;
        }
        c cache = getCache(uIController);
        if (!cache.f75925l || cacheBuffer == null) {
            return;
        }
        cache.u(cacheBuffer);
        cache.t(frameBuffer);
    }

    @Override
    public void applyInPreUpdate(UIController uIController, Tb.a frameBuffer, Tb.a cacheBuffer) {
        if (this.f75902H != null && shouldApplyPreUpdatePass(uIController, frameBuffer, cacheBuffer)) {
            c cache = getCache(uIController);
            uIController.requestCacheBuffer();
            if (!cache.f75925l) {
                cache.s(this.f75902H);
            }
            if (!cache.f75925l || uIController.getCacheBuffer() == null) {
                return;
            }
            Tb.a cacheBuffer2 = uIController.getCacheBuffer();
            cache.r(frameBuffer, cacheBuffer2, this.f75905K);
            long computeDirtyParameterMask = computeDirtyParameterMask(cache, uIController, frameBuffer, cacheBuffer2);
            if (computeDirtyParameterMask != 0) {
                uploadDirtyParametersDirect(cache.f75924k, uIController, frameBuffer, cacheBuffer2, computeDirtyParameterMask);
                applyUploadedParamVersions(cache, computeDirtyParameterMask);
                cache.f75928o = frameBuffer.i();
                cache.f75929p = frameBuffer.h();
            }
        }
    }

    public void applyParams(UIController uIController, Tb.a frameBuffer, Tb.a cacheBuffer, Map<String, Object> outParams) {
    }

    public void buildShaderCache(String fragmentShaderCode) {
        buildShaderCacheDirect(loadFile(fragmentShaderCode));
    }

    public void buildShaderCacheDirect(String fragmentShaderCode) {
        buildShaderCacheDirect(fragmentShaderCode, this.f75903I, this.f75904J, this.f75905K);
    }

    public void buildShaderCacheDirectForce(String fragmentShaderCode) {
        buildShaderCacheDirect(fragmentShaderCode, this.f75903I, this.f75904J, this.f75905K, true);
    }

    public void buildShaderCacheForce(String fragmentShaderCode) {
        buildShaderCacheDirect(loadFile(fragmentShaderCode), this.f75903I, this.f75904J, this.f75905K, true);
    }

    public void buildShaderCacheFromDefaults() {
        if (this.f75906L == null) {
            return;
        }
        this.f75905K = this.f75906L.f75942c;
        this.f75903I.clear();
        this.f75904J.clear();
        if (this.f75906L.f75943d != null) {
            this.f75903I.putAll(this.f75906L.f75943d);
        }
        if (this.f75906L.f75944e != null) {
            this.f75904J.putAll(this.f75906L.f75944e);
        }
        this.f75904J.put(this.f75905K, MaterialBuilder.m.SAMPLER_2D);
        if (this.f75906L.f75940a != null) {
            buildShaderCache(this.f75906L.f75940a);
        } else if (this.f75906L.f75941b != null) {
            buildShaderCacheDirect(this.f75906L.f75941b);
        }
    }

    public void buildShaderCacheFromDefaultsForce() {
        if (this.f75906L == null) {
            return;
        }
        this.f75905K = this.f75906L.f75942c;
        this.f75903I.clear();
        this.f75904J.clear();
        if (this.f75906L.f75943d != null) {
            this.f75903I.putAll(this.f75906L.f75943d);
        }
        if (this.f75906L.f75944e != null) {
            this.f75904J.putAll(this.f75906L.f75944e);
        }
        this.f75904J.put(this.f75905K, MaterialBuilder.m.SAMPLER_2D);
        if (this.f75906L.f75940a != null) {
            buildShaderCacheForce(this.f75906L.f75940a);
        } else if (this.f75906L.f75941b != null) {
            buildShaderCacheDirectForce(this.f75906L.f75941b);
        }
    }

    @Override
    public void disableFor(UIController uIController) {
    }

    public boolean ensurePayloadCached(String fragmentShaderCode, Map<String, Vb.c> uniforms, Map<String, MaterialBuilder.m> samplers, String cameraColorTextureParam) {
        if (fragmentShaderCode == null) {
            return false;
        }
        int hashCode = buildMaterialCacheKey(fragmentShaderCode, uniforms, samplers, cameraColorTextureParam).hashCode();
        if (ec.b.h(hashCode) || ec.b.j(hashCode)) {
            return true;
        }
        try {
            buildShaderCacheDirect(fragmentShaderCode, uniforms, samplers, cameraColorTextureParam);
            return ec.b.h(hashCode);
        } catch (Exception unused) {
            this.f75907M = true;
            return false;
        }
    }

    public boolean ensurePayloadForCurrentShaderData() {
        String str;
        d dVar = this.f75906L;
        if (dVar == null) {
            return false;
        }
        String str2 = dVar.f75941b;
        if (str2 == null && (str = dVar.f75940a) != null) {
            try {
                str2 = loadFile(str);
            } catch (Exception unused) {
                this.f75907M = true;
                return false;
            }
        }
        return ensurePayloadCached(str2, dVar.f75943d, dVar.f75944e, dVar.f75942c);
    }

    public final int getMaxTrackedParameterCount() {
        return 64;
    }

    public final int getMaxTrackedParams() {
        return 64;
    }

    public long getResolutionDependentParameterMask() {
        return 0L;
    }

    public long getTrackedParameterMask() {
        return 0L;
    }

    public final void invalidateShaderForConfigError() {
        this.f75906L = null;
        this.f75902H = null;
        this.f75909O = false;
        this.f75907M = true;
    }

    public boolean isFailed() {
        return this.f75907M;
    }

    public final void markParameterDirty(int index) {
        if (index < 0 || index >= 64) {
            throw new IllegalArgumentException("param index out of range: " + index);
        }
        int[] iArr = this.f75911Q;
        int i10 = iArr[index] + 1;
        iArr[index] = i10 != Integer.MIN_VALUE ? i10 : 1;
        invalidateAttachedUIController();
    }

    public final void markParametersDirty(long mask) {
        while (mask != 0) {
            int numberOfTrailingZeros = Long.numberOfTrailingZeros(mask);
            markParameterDirty(numberOfTrailingZeros);
            mask &= ~(1 << numberOfTrailingZeros);
        }
    }

    public final long paramBit(int index) {
        if (index >= 0 && index < 64) {
            return 1 << index;
        }
        throw new IllegalArgumentException("param index out of range: " + index);
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        if (this.f75906L != null) {
            if (this.f75906L.f75940a != null) {
                init(this.f75906L.f75940a, this.f75906L.f75943d, this.f75906L.f75944e, this.f75906L.f75942c);
            } else {
                initCustom(this.f75906L.f75941b, this.f75906L.f75943d, this.f75906L.f75944e, this.f75906L.f75942c);
            }
            if (this.f75909O) {
                return;
            }
            this.f75906L = null;
        }
    }

    @Override
    public void receiveEvent(Lb.c event) {
        super.receiveEvent(event);
        if (event instanceof o9.c) {
            this.f75907M = false;
        }
    }

    public boolean requiresParameterUploadEveryFrame(UIController uIController, Tb.a frameBuffer, Tb.a cacheBuffer) {
        return false;
    }

    public void setCustomShader(String fragmentShaderCode, Map<String, Vb.c> uniforms, Map<String, MaterialBuilder.m> samplers) {
        this.f75906L = new d(null);
        this.f75906L.f75941b = fragmentShaderCode;
        this.f75906L.f75942c = "cameraImage";
        this.f75906L.f75944e = samplers;
        this.f75906L.f75943d = uniforms;
    }

    public boolean shouldApplyPreUpdatePass(UIController uIController, Tb.a frameBuffer, Tb.a cacheBuffer) {
        return true;
    }

    public void uploadDirtyParametersDirect(b writer, UIController uIController, Tb.a frameBuffer, Tb.a cacheBuffer, long dirtyMask) {
        uploadParametersDirect(writer, uIController, frameBuffer, cacheBuffer);
    }

    public void uploadParametersDirect(b writer, UIController uIController, Tb.a frameBuffer, Tb.a cacheBuffer) {
        Map<String, Object> map = getCache(uIController).f75923j;
        map.clear();
        applyParams(uIController, frameBuffer, cacheBuffer, map);
        getCache(uIController).p();
    }

    private void buildShaderCacheDirect(String fragmentShaderCode, Map<String, Vb.c> uniforms, Map<String, MaterialBuilder.m> samplers, String cameraColorTextureParam) {
        buildShaderCacheDirect(fragmentShaderCode, uniforms, samplers, cameraColorTextureParam, false);
    }

    @Override
    public void destroyCache(c cache) {
        if (cache != null) {
            cache.q();
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public c newCacheInstance() {
        return new c();
    }

    private void buildShaderCacheDirect(String fragmentShaderCode, Map<String, Vb.c> uniforms, Map<String, MaterialBuilder.m> samplers, String cameraColorTextureParam, boolean forceRebuild) {
        ByteBuffer g10;
        try {
            int hashCode = buildMaterialCacheKey(fragmentShaderCode, uniforms, samplers, cameraColorTextureParam).hashCode();
            if (!forceRebuild) {
                if (ec.b.h(hashCode) || ec.b.j(hashCode)) {
                    return;
                }
            } else {
                if (ec.b.c(hashCode)) {
                    return;
                }
                if (ec.b.h(hashCode) && (g10 = ec.b.g(hashCode)) != null) {
                    ec.b.l(hashCode, g10);
                    return;
                }
            }
            Sb.b bVar = (Sb.b) new Sb.b().v("PostProcessDynamic-" + Tc.b.L()).m(true).x(MaterialBuilder.h.MOBILE).E(MaterialBuilder.n.UNLIT).C(MaterialBuilder.t.UV0);
            if (uniforms != null) {
                for (Map.Entry<String, Vb.c> entry : uniforms.entrySet()) {
                    Vb.c value = entry.getValue();
                    bVar.O(value.f26805a, value.f26806b, entry.getKey());
                }
            }
            if (samplers != null) {
                for (Map.Entry<String, MaterialBuilder.m> entry2 : samplers.entrySet()) {
                    bVar.D(entry2.getValue(), MaterialBuilder.l.FLOAT, MaterialBuilder.g.HIGH, entry2.getKey());
                }
            }
            if (cameraColorTextureParam != null && !cameraColorTextureParam.isEmpty() && (samplers == null || !samplers.containsKey(cameraColorTextureParam))) {
                bVar.D(MaterialBuilder.m.SAMPLER_2D, MaterialBuilder.l.FLOAT, MaterialBuilder.g.HIGH, cameraColorTextureParam);
            }
            bVar.r(fragmentShaderCode);
            com.google.android.filament.filamat.b d10 = bVar.d();
            if (d10 != null && d10.b()) {
                ec.b.l(hashCode, d10.a());
                return;
            }
            throw new RuntimeException("Failed to compile shader!");
        } catch (Exception unused) {
            throw new RuntimeException("Failed to compile shader!");
        }
    }

    public final void markParametersDirty() {
        long trackedParameterMask = getTrackedParameterMask();
        if (trackedParameterMask == 0) {
            int i10 = this.f75910P;
            if (i10 == Integer.MAX_VALUE) {
                this.f75910P = 1;
            } else {
                this.f75910P = i10 + 1;
            }
            invalidateAttachedUIController();
            return;
        }
        markParametersDirty(trackedParameterMask);
    }

    public DoublePassUIPostProcessPass(String serializedComponentType, String fragmentShaderFile, Map<String, MaterialBuilder.r> uniforms, Map<String, MaterialBuilder.m> samplers) {
        super(serializedComponentType);
        this.f75903I = new HashMap();
        this.f75904J = new HashMap();
        this.f75908N = false;
        this.f75909O = false;
        this.f75910P = 1;
        this.f75911Q = new int[64];
        this.f75906L = new d(null);
        this.f75906L.f75940a = fragmentShaderFile;
        this.f75906L.f75942c = "inputTex";
        this.f75906L.f75944e = samplers;
        this.f75906L.f75943d = new HashMap();
        uniforms.forEach(new a());
    }
}
