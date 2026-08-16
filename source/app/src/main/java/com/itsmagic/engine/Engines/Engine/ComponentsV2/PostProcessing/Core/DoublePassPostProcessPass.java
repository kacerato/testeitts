package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Core;

import com.google.android.filament.Box;
import com.google.android.filament.Engine;
import com.google.android.filament.IndexBuffer;
import com.google.android.filament.Material;
import com.google.android.filament.RenderableManager;
import com.google.android.filament.VertexBuffer;
import com.google.android.filament.filamat.MaterialBuilder;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
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
import ub.p;
import yb.C16165b;

public abstract class DoublePassPostProcessPass extends BasePostProcessing<c> {

    public static final int f75849R = 64;

    public FilamentMaterialTemplate f75850H;

    public final Map<String, Vb.c> f75851I;

    public final Map<String, MaterialBuilder.m> f75852J;

    public String f75853K;

    public volatile d f75854L;

    public boolean f75855M;

    public boolean f75856N;

    public boolean f75857O;

    public int f75858P;

    public final int[] f75859Q;

    public class a implements BiConsumer<String, MaterialBuilder.r> {
        public a() {
        }

        @Override
        public void accept(String s10, MaterialBuilder.r uniformType) {
            DoublePassPostProcessPass.this.f75854L.f75891d.put(s10, new Vb.c(uniformType));
        }
    }

    public static final class b {

        public final c f75861a;

        public b(c cVar, a aVar) {
            this(cVar);
        }

        public void a(String name, p tex) {
            if (p.L(tex)) {
                tex.f(this.f75861a.f75866e, name);
            } else {
                C16165b.f130163i.f(this.f75861a.f75866e, name);
            }
        }

        public void b(String name, boolean v10) {
            this.f75861a.f75866e.r(name, v10);
        }

        public void c(String name, ColorINT color) {
            this.f75861a.f75866e.E(name, color.w(), color.u(), color.s(), color.r());
        }

        public void d(String name, float v10) {
            this.f75861a.f75866e.w(name, v10);
        }

        public void e(String name, float x10, float y10) {
            this.f75861a.f75866e.y(name, x10, y10);
        }

        public void f(String name, float x10, float y10, float z10) {
            this.f75861a.f75866e.B(name, x10, y10, z10);
        }

        public void g(String name, float x10, float y10, float z10, float w10) {
            this.f75861a.f75866e.E(name, x10, y10, z10, w10);
        }

        public void h(String name, Vector2 value) {
            this.f75861a.f75866e.y(name, value.getX(), value.getY());
        }

        public void i(String name, Vector3 value) {
            this.f75861a.f75866e.B(name, value.getX(), value.getY(), value.getZ());
        }

        public b(c cache) {
            this.f75861a = cache;
        }
    }

    public static class c {

        public FilamentView f75862a;

        public FilamentScene f75863b;

        public Rb.c f75864c;

        public FilamentRenderable f75865d;

        public FilamentMaterial f75866e;

        public FilamentVertexBuffer f75867f;

        public Rb.d f75868g;

        public FilamentCamera f75869h;

        public C14491a f75870i;

        public Tb.a f75882u;

        public Object f75883v;

        public Object f75884w;

        public String f75885x;

        public final Map<String, Object> f75871j = new HashMap();

        public final b f75872k = new b(this, null);

        public boolean f75873l = false;

        public int f75874m = Integer.MIN_VALUE;

        public final int[] f75875n = new int[64];

        public int f75876o = -1;

        public int f75877p = -1;

        public int f75878q = -1;

        public int f75879r = -1;

        public int f75880s = -1;

        public int f75881t = -1;

        public final BiConsumer f75886y = new a();

        public class a implements BiConsumer<String, Object> {
            public a() {
            }

            @Override
            public void accept(String s10, Object o10) {
                if (o10 instanceof Float) {
                    c.this.f75866e.w(s10, ((Float) o10).floatValue());
                    return;
                }
                if (o10 instanceof float[]) {
                    float[] fArr = (float[]) o10;
                    int length = fArr.length;
                    if (length == 2) {
                        c.this.f75866e.y(s10, fArr[0], fArr[1]);
                        return;
                    }
                    if (length == 3) {
                        c.this.f75866e.B(s10, fArr[0], fArr[1], fArr[2]);
                        return;
                    }
                    if (length == 4) {
                        c.this.f75866e.E(s10, fArr[0], fArr[1], fArr[2], fArr[3]);
                        return;
                    }
                    throw new IllegalArgumentException("Invalid array size for param: " + s10 + " with size of:" + fArr.length);
                }
                if (o10 instanceof Vector2) {
                    Vector2 vector2 = (Vector2) o10;
                    c.this.f75866e.y(s10, vector2.getX(), vector2.getY());
                    return;
                }
                if (o10 instanceof Vector3) {
                    Vector3 vector3 = (Vector3) o10;
                    c.this.f75866e.B(s10, vector3.getX(), vector3.getY(), vector3.getZ());
                    return;
                }
                if (o10 instanceof Boolean) {
                    c.this.f75866e.r(s10, ((Boolean) o10).booleanValue());
                    return;
                }
                if (o10 instanceof p) {
                    p pVar = (p) o10;
                    if (p.L(pVar)) {
                        pVar.f(c.this.f75866e, s10);
                        return;
                    } else {
                        C16165b.f130163i.f(c.this.f75866e, s10);
                        return;
                    }
                }
                if (o10 instanceof ColorINT) {
                    ColorINT colorINT = (ColorINT) o10;
                    c.this.f75866e.E(s10, colorINT.w(), colorINT.u(), colorINT.s(), colorINT.r());
                    return;
                }
                throw new IllegalArgumentException("Param type not supported:" + s10 + " tipo:" + o10.getClass().getSimpleName());
            }
        }

        public final void p() {
            this.f75871j.forEach(this.f75886y);
        }

        public void q() {
            if (this.f75873l) {
                this.f75862a.F();
                this.f75862a.x(null);
                this.f75862a.C(null);
                this.f75863b.s(this.f75869h.f());
                this.f75863b.s(this.f75864c);
                C14491a c14491a = this.f75870i;
                if (c14491a != null) {
                    c14491a.k();
                    this.f75870i = null;
                }
                this.f75865d.destroyImmediate();
                this.f75866e.destroyImmediate();
                this.f75867f.destroyImmediate();
                this.f75868g.destroyImmediate();
                this.f75869h.destroyImmediate();
                this.f75862a.destroyImmediate();
                this.f75863b.destroyImmediate();
                this.f75864c.destroyImmediate();
                this.f75862a = null;
                this.f75863b = null;
                this.f75864c = null;
                this.f75865d = null;
                this.f75866e = null;
                this.f75867f = null;
                this.f75868g = null;
                this.f75869h = null;
                this.f75873l = false;
            }
        }

        public final void r(Tb.a frameBuffer, Tb.a cacheBuffer, String cameraColorTextureParam) {
            String str;
            ColorTexture l10 = frameBuffer.l();
            if (l10 != this.f75884w || (str = this.f75885x) == null || !str.equals(cameraColorTextureParam)) {
                frameBuffer.l().f(this.f75866e, cameraColorTextureParam);
                this.f75884w = l10;
                this.f75885x = cameraColorTextureParam;
            }
            int i10 = frameBuffer.i();
            int h10 = frameBuffer.h();
            if (i10 != this.f75878q || h10 != this.f75879r) {
                this.f75862a.D(0, 0, i10, h10);
                this.f75878q = i10;
                this.f75879r = h10;
            }
            int i11 = cacheBuffer.i();
            int h11 = cacheBuffer.h();
            ColorTexture l11 = cacheBuffer.l();
            boolean z10 = cacheBuffer != this.f75882u;
            boolean z11 = l11 != this.f75883v;
            boolean z12 = (i11 == this.f75880s && h11 == this.f75881t) ? false : true;
            if (z10 || z11) {
                this.f75870i.a(cacheBuffer);
                this.f75882u = cacheBuffer;
                this.f75883v = l11;
                this.f75880s = i11;
                this.f75881t = h11;
                return;
            }
            if (z12) {
                this.f75870i.c(cacheBuffer);
                this.f75880s = i11;
                this.f75881t = h11;
            }
        }

        public void s(FilamentMaterialTemplate material) {
            this.f75873l = true;
            this.f75866e = material.e();
            this.f75867f = DoublePassPostProcessPass.createFullScreenQuad(Qb.a.f());
            this.f75868g = DoublePassPostProcessPass.createFullScreenIndices(Qb.a.f());
            this.f75863b = new FilamentScene();
            this.f75864c = new Rb.c();
            int i10 = 0;
            this.f75865d = new FilamentRenderable(new RenderableManager.a(1).f(false), this.f75866e, this.f75864c, this.f75867f, this.f75868g, RenderableManager.b.TRIANGLES, new Box(0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f));
            this.f75863b.j(this.f75864c);
            FilamentView filamentView = new FilamentView();
            this.f75862a = filamentView;
            filamentView.C(this.f75863b);
            this.f75862a.z(false);
            FilamentCamera filamentCamera = new FilamentCamera();
            this.f75869h = filamentCamera;
            filamentCamera.l(-1.0f, 1.0f, -1.0f, 1.0f, 0.0f, 1.0f);
            this.f75862a.x(this.f75869h);
            this.f75863b.j(this.f75869h.f());
            C14491a.l();
            this.f75870i = new C14491a();
            this.f75874m = Integer.MIN_VALUE;
            while (true) {
                int[] iArr = this.f75875n;
                if (i10 >= iArr.length) {
                    this.f75876o = -1;
                    this.f75877p = -1;
                    this.f75878q = -1;
                    this.f75879r = -1;
                    this.f75880s = -1;
                    this.f75881t = -1;
                    this.f75882u = null;
                    this.f75883v = null;
                    this.f75884w = null;
                    this.f75885x = null;
                    return;
                }
                iArr[i10] = Integer.MIN_VALUE;
                i10++;
            }
        }

        public final void t(Tb.a frameBuffer) {
            this.f75870i.h(frameBuffer);
        }

        public final void u(Tb.a cacheBuffer) {
            Qb.a.g();
            cacheBuffer.a(this.f75862a);
            Qb.a.o(this.f75862a);
            cacheBuffer.z();
        }
    }

    public static class d {

        public String f75888a;

        public String f75889b;

        public String f75890c;

        public Map<String, Vb.c> f75891d;

        public Map<String, MaterialBuilder.m> f75892e;

        public d() {
        }

        public d(a aVar) {
            this();
        }
    }

    public DoublePassPostProcessPass(String serializedComponentType) {
        super(serializedComponentType);
        this.f75851I = new HashMap();
        this.f75852J = new HashMap();
        this.f75856N = false;
        this.f75857O = false;
        this.f75858P = 1;
        this.f75859Q = new int[64];
    }

    private void applyUploadedParamVersions(c c10, long dirtyMask) {
        long trackedParameterMask = getTrackedParameterMask();
        if (trackedParameterMask == 0 || dirtyMask == -1) {
            if (dirtyMask == -1) {
                c10.f75874m = this.f75858P;
            }
        } else {
            while (true) {
                dirtyMask &= trackedParameterMask;
                if (dirtyMask == 0) {
                    return;
                }
                int numberOfTrailingZeros = Long.numberOfTrailingZeros(dirtyMask);
                c10.f75875n[numberOfTrailingZeros] = this.f75859Q[numberOfTrailingZeros];
                trackedParameterMask = ~(1 << numberOfTrailingZeros);
            }
        }
    }

    private FilamentMaterialTemplate buildMaterial(String fragmentShaderCode) {
        return buildMaterialDirect(loadFile(fragmentShaderCode));
    }

    private String buildMaterialCacheKey(String fragmentShaderCode, Map<String, Vb.c> uniforms, Map<String, MaterialBuilder.m> samplers, String cameraColorTextureParam) {
        StringBuilder sb2 = new StringBuilder("dpppp-v2|camera=");
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
            int hashCode = buildMaterialCacheKey(fragmentShaderCode, this.f75851I, this.f75852J, this.f75853K).hashCode();
            if (this.f75856N) {
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
            Sb.b bVar = (Sb.b) new Sb.b().v("PostProcessDynamic-" + Tc.b.L()).m(true).l(false).k(false).x(MaterialBuilder.h.MOBILE).E(MaterialBuilder.n.UNLIT).C(MaterialBuilder.t.UV0);
            for (Map.Entry<String, Vb.c> entry : this.f75851I.entrySet()) {
                Vb.c value = entry.getValue();
                bVar.O(value.f26805a, value.f26806b, entry.getKey());
            }
            for (Map.Entry<String, MaterialBuilder.m> entry2 : this.f75852J.entrySet()) {
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

    private long computeDirtyParameterMask(c c10, Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
        long trackedParameterMask = getTrackedParameterMask();
        if (trackedParameterMask == 0) {
            return (c10.f75876o >= 0 && c10.f75876o == frameBuffer.i() && c10.f75877p == frameBuffer.h() && c10.f75874m == this.f75858P && !requiresParameterUploadEveryFrame(camera, filamentCamera, view, frameBuffer, cacheBuffer)) ? 0L : -1L;
        }
        long j10 = trackedParameterMask;
        long j11 = 0;
        while (j10 != 0) {
            int numberOfTrailingZeros = Long.numberOfTrailingZeros(j10);
            long j12 = 1 << numberOfTrailingZeros;
            if (c10.f75875n[numberOfTrailingZeros] != this.f75859Q[numberOfTrailingZeros]) {
                j11 |= j12;
            }
            j10 &= ~j12;
        }
        if (c10.f75876o != frameBuffer.i() || c10.f75877p != frameBuffer.h()) {
            j11 |= getResolutionDependentParameterMask();
        }
        long j13 = j11;
        if (requiresParameterUploadEveryFrame(camera, filamentCamera, view, frameBuffer, cacheBuffer)) {
            j13 |= trackedParameterMask;
        }
        return c10.f75876o < 0 ? j13 | trackedParameterMask : j13;
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
        this.f75853K = cameraColorTextureParam;
        Qb.a.f();
        this.f75851I.clear();
        this.f75852J.clear();
        if (uniforms != null) {
            this.f75851I.putAll(uniforms);
        }
        if (samplers != null) {
            this.f75852J.putAll(samplers);
        }
        this.f75852J.put(cameraColorTextureParam, MaterialBuilder.m.SAMPLER_2D);
        FilamentMaterialTemplate buildMaterial = buildMaterial(fragmentShader);
        if (buildMaterial != null || !this.f75856N) {
            this.f75857O = false;
            this.f75850H = buildMaterial;
        } else {
            this.f75857O = true;
            this.f75855M = false;
            this.f75850H = null;
        }
    }

    private void initCustom(String fragmentShaderCode, Map<String, Vb.c> uniforms, Map<String, MaterialBuilder.m> samplers, String cameraColorTextureParam) {
        this.f75853K = cameraColorTextureParam;
        Qb.a.f();
        this.f75851I.clear();
        this.f75852J.clear();
        if (uniforms != null) {
            this.f75851I.putAll(uniforms);
        }
        if (samplers != null) {
            this.f75852J.putAll(samplers);
        }
        this.f75852J.put(cameraColorTextureParam, MaterialBuilder.m.SAMPLER_2D);
        try {
            FilamentMaterialTemplate buildMaterialDirect = buildMaterialDirect(fragmentShaderCode);
            if (buildMaterialDirect == null && this.f75856N) {
                this.f75857O = true;
                this.f75855M = false;
                this.f75850H = null;
            } else {
                this.f75857O = false;
                this.f75850H = buildMaterialDirect;
                this.f75855M = false;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            this.f75855M = true;
        }
    }

    private static String loadFile(String file) {
        return C14207a.a("Shaders/PostProcessing/" + file + ".vsc");
    }

    @Override
    public void applyAfterRender(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
        if (this.f75850H != null && camera.renderPostProcessing()) {
            c cache = getCache(camera);
            if (!cache.f75873l || cacheBuffer == null) {
                return;
            }
            cache.u(cacheBuffer);
            cache.t(frameBuffer);
        }
    }

    @Override
    public void applyInPreUpdate(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
        if (this.f75850H != null && camera.renderPostProcessing()) {
            c cache = getCache(camera);
            if (shouldApplyPreUpdatePass(camera, filamentCamera, view, frameBuffer, cacheBuffer)) {
                camera.requestCacheBuffer();
                if (!cache.f75873l) {
                    cache.s(this.f75850H);
                }
                if (!cache.f75873l || camera.getCacheBuffer() == null) {
                    return;
                }
                Tb.a cacheBuffer2 = camera.getCacheBuffer();
                cache.r(frameBuffer, cacheBuffer2, this.f75853K);
                long computeDirtyParameterMask = computeDirtyParameterMask(cache, camera, filamentCamera, view, frameBuffer, cacheBuffer2);
                if (computeDirtyParameterMask != 0) {
                    uploadDirtyParametersDirect(cache.f75872k, camera, filamentCamera, view, frameBuffer, cacheBuffer2, computeDirtyParameterMask);
                    applyUploadedParamVersions(cache, computeDirtyParameterMask);
                    cache.f75876o = frameBuffer.i();
                    cache.f75877p = frameBuffer.h();
                }
            }
        }
    }

    public void applyParams(Camera unused1, FilamentCamera unused2, FilamentView unused3, Tb.a frameBuffer, Tb.a cacheBuffer, Map<String, Object> params) {
    }

    public void buildShaderCache(String fragmentShaderCode) {
        buildShaderCacheDirect(loadFile(fragmentShaderCode));
    }

    public void buildShaderCacheDirect(String fragmentShaderCode) {
        buildShaderCacheDirect(fragmentShaderCode, this.f75851I, this.f75852J, this.f75853K);
    }

    public void buildShaderCacheDirectForce(String fragmentShaderCode) {
        buildShaderCacheDirect(fragmentShaderCode, this.f75851I, this.f75852J, this.f75853K, true);
    }

    public void buildShaderCacheForce(String fragmentShaderCode) {
        buildShaderCacheDirect(loadFile(fragmentShaderCode), this.f75851I, this.f75852J, this.f75853K, true);
    }

    public void buildShaderCacheFromDefaults() {
        if (this.f75854L == null) {
            return;
        }
        this.f75853K = this.f75854L.f75890c;
        this.f75851I.clear();
        this.f75852J.clear();
        if (this.f75854L.f75891d != null) {
            this.f75851I.putAll(this.f75854L.f75891d);
        }
        if (this.f75854L.f75892e != null) {
            this.f75852J.putAll(this.f75854L.f75892e);
        }
        this.f75852J.put(this.f75853K, MaterialBuilder.m.SAMPLER_2D);
        if (this.f75854L.f75888a != null) {
            buildShaderCache(this.f75854L.f75888a);
        } else if (this.f75854L.f75889b != null) {
            buildShaderCacheDirect(this.f75854L.f75889b);
        }
    }

    public void buildShaderCacheFromDefaultsForce() {
        if (this.f75854L == null) {
            return;
        }
        this.f75853K = this.f75854L.f75890c;
        this.f75851I.clear();
        this.f75852J.clear();
        if (this.f75854L.f75891d != null) {
            this.f75851I.putAll(this.f75854L.f75891d);
        }
        if (this.f75854L.f75892e != null) {
            this.f75852J.putAll(this.f75854L.f75892e);
        }
        this.f75852J.put(this.f75853K, MaterialBuilder.m.SAMPLER_2D);
        if (this.f75854L.f75888a != null) {
            buildShaderCacheForce(this.f75854L.f75888a);
        } else if (this.f75854L.f75889b != null) {
            buildShaderCacheDirectForce(this.f75854L.f75889b);
        }
    }

    @Override
    public void disableFor(Camera camera, FilamentCamera filamentCamera, FilamentView view) {
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
            this.f75855M = true;
            return false;
        }
    }

    public boolean ensurePayloadForCurrentShaderData() {
        String str;
        d dVar = this.f75854L;
        if (dVar == null) {
            return false;
        }
        String str2 = dVar.f75889b;
        if (str2 == null && (str = dVar.f75888a) != null) {
            try {
                str2 = loadFile(str);
            } catch (Exception unused) {
                this.f75855M = true;
                return false;
            }
        }
        return ensurePayloadCached(str2, dVar.f75891d, dVar.f75892e, dVar.f75890c);
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
        this.f75854L = null;
        this.f75850H = null;
        this.f75857O = false;
        this.f75855M = true;
    }

    public boolean isFailed() {
        return this.f75855M;
    }

    public final void markParameterDirty(int index) {
        if (index < 0 || index >= 64) {
            throw new IllegalArgumentException("param index out of range: " + index);
        }
        int[] iArr = this.f75859Q;
        int i10 = iArr[index] + 1;
        iArr[index] = i10 != Integer.MIN_VALUE ? i10 : 1;
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
        if (this.f75854L != null) {
            if (this.f75854L.f75888a != null) {
                init(this.f75854L.f75888a, this.f75854L.f75891d, this.f75854L.f75892e, this.f75854L.f75890c);
            } else {
                initCustom(this.f75854L.f75889b, this.f75854L.f75891d, this.f75854L.f75892e, this.f75854L.f75890c);
            }
            if (this.f75857O) {
                return;
            }
            this.f75854L = null;
        }
    }

    @Override
    public void receiveEvent(Lb.c event) {
        super.receiveEvent(event);
        if (event instanceof o9.c) {
            this.f75855M = false;
        }
    }

    public boolean requiresParameterUploadEveryFrame(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
        return false;
    }

    public void setCustomShader(String fragmentShaderCode, Map<String, Vb.c> uniforms, Map<String, MaterialBuilder.m> samplers) {
        this.f75854L = new d(null);
        this.f75854L.f75889b = fragmentShaderCode;
        this.f75854L.f75890c = "cameraImage";
        this.f75854L.f75892e = samplers;
        this.f75854L.f75891d = uniforms;
    }

    public boolean shouldApplyPreUpdatePass(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
        return true;
    }

    public void uploadDirtyParametersDirect(b writer, Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer, long dirtyMask) {
        uploadParametersDirect(writer, camera, filamentCamera, view, frameBuffer, cacheBuffer);
    }

    public void uploadParametersDirect(b writer, Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
        Map<String, Object> map = getCache(camera).f75871j;
        map.clear();
        applyParams(camera, filamentCamera, view, frameBuffer, cacheBuffer, map);
        getCache(camera).p();
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
            Sb.b bVar = (Sb.b) new Sb.b().v("PostProcessDynamic-" + Tc.b.L()).m(true).l(false).k(false).x(MaterialBuilder.h.MOBILE).E(MaterialBuilder.n.UNLIT).C(MaterialBuilder.t.UV0);
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
            int i10 = this.f75858P;
            if (i10 == Integer.MAX_VALUE) {
                this.f75858P = 1;
                return;
            } else {
                this.f75858P = i10 + 1;
                return;
            }
        }
        markParametersDirty(trackedParameterMask);
    }

    public DoublePassPostProcessPass(String serializedComponentType, String fragmentShaderFile, Map<String, MaterialBuilder.r> uniforms, Map<String, MaterialBuilder.m> samplers) {
        super(serializedComponentType);
        this.f75851I = new HashMap();
        this.f75852J = new HashMap();
        this.f75856N = false;
        this.f75857O = false;
        this.f75858P = 1;
        this.f75859Q = new int[64];
        this.f75854L = new d(null);
        this.f75854L.f75888a = fragmentShaderFile;
        this.f75854L.f75890c = "inputTex";
        this.f75854L.f75892e = samplers;
        this.f75854L.f75891d = new HashMap();
        uniforms.forEach(new a());
    }
}
