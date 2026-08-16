package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera;

import C5.b;
import JAVARuntime.Component;
import android.content.Context;
import com.google.android.filament.Box;
import com.google.android.filament.Engine;
import com.google.android.filament.IndexBuffer;
import com.google.android.filament.Material;
import com.google.android.filament.RenderableManager;
import com.google.android.filament.VertexBuffer;
import com.google.android.filament.filamat.MaterialBuilder;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Core.BasePostProcessing;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentCamera;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterialTemplate;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentRenderable;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentScene;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentVertexBuffer;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import ic.C13621U;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.function.BiConsumer;
import mc.C14207a;
import o9.C14491a;
import s8.InterfaceC15237a;
import ub.p;

public class MotionBlur extends BasePostProcessing<f> {

    public static final String f75343O = "MotionBlur";

    public static final Class f75344P = MotionBlur.class;

    public static final Map<String, MaterialBuilder.r> f75345Q;

    public static final Map<String, MaterialBuilder.m> f75346R;

    public FilamentMaterialTemplate f75347H;

    public final Map<String, Vb.c> f75348I;

    public final Map<String, MaterialBuilder.m> f75349J;

    public String f75350K;

    public g f75351L;

    public boolean f75352M;

    public Component f75353N;

    @Expose
    @eb.f
    private float alpha;

    @Expose
    @eb.f
    private float border;

    @Expose
    @eb.f
    private float reset;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return MotionBlur.f75344P;
        }

        @Override
        public String c() {
            return MotionBlur.f75343O;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Blur";
        }
    }

    public class b implements BiConsumer<String, MaterialBuilder.r> {
        public b() {
        }

        @Override
        public void accept(String s10, MaterialBuilder.r uniformType) {
            MotionBlur.this.f75351L.f75374c.put(s10, new Vb.c(uniformType));
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", MotionBlur.this.getAlpha() + "");
        }

        @Override
        public void set(Variable v10) {
            MotionBlur.this.setAlpha(v10.float_value);
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", MotionBlur.this.getReset() + "");
        }

        @Override
        public void set(Variable v10) {
            MotionBlur.this.setReset(v10.float_value);
        }
    }

    public class e implements D5.h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", MotionBlur.this.getBorder() + "");
        }

        @Override
        public void set(Variable v10) {
            MotionBlur.this.setBorder(v10.float_value);
        }
    }

    public static class f {

        public FilamentView f75358a;

        public FilamentScene f75359b;

        public Rb.c f75360c;

        public FilamentRenderable f75361d;

        public FilamentMaterial f75362e;

        public FilamentVertexBuffer f75363f;

        public Rb.d f75364g;

        public FilamentCamera f75365h;

        public C14491a f75366i;

        public Tb.a f75369l;

        public final Map<String, Object> f75367j = new HashMap();

        public boolean f75368k = false;

        public final BiConsumer f75370m = new a();

        public class a implements BiConsumer<String, Object> {
            public a() {
            }

            @Override
            public void accept(String s10, Object o10) {
                if (o10 instanceof Float) {
                    f.this.f75362e.w(s10, ((Float) o10).floatValue());
                    return;
                }
                if (o10 instanceof float[]) {
                    float[] fArr = (float[]) o10;
                    int length = fArr.length;
                    if (length == 2) {
                        f.this.f75362e.y(s10, fArr[0], fArr[1]);
                        return;
                    }
                    if (length == 3) {
                        f.this.f75362e.B(s10, fArr[0], fArr[1], fArr[2]);
                        return;
                    }
                    if (length == 4) {
                        f.this.f75362e.E(s10, fArr[0], fArr[1], fArr[2], fArr[3]);
                        return;
                    }
                    throw new IllegalArgumentException("Invalid array size for param: " + s10 + " with size of:" + fArr.length);
                }
                if (o10 instanceof Vector2) {
                    Vector2 vector2 = (Vector2) o10;
                    f.this.f75362e.y(s10, vector2.getX(), vector2.getY());
                    return;
                }
                if (o10 instanceof Vector3) {
                    Vector3 vector3 = (Vector3) o10;
                    f.this.f75362e.B(s10, vector3.getX(), vector3.getY(), vector3.getZ());
                    return;
                }
                if (o10 instanceof Boolean) {
                    f.this.f75362e.r(s10, ((Boolean) o10).booleanValue());
                    return;
                }
                if (o10 instanceof p) {
                    ((p) o10).f(f.this.f75362e, s10);
                    return;
                }
                if (o10 instanceof ColorINT) {
                    ColorINT colorINT = (ColorINT) o10;
                    f.this.f75362e.E(s10, colorINT.w(), colorINT.u(), colorINT.s(), colorINT.r());
                    return;
                }
                throw new IllegalArgumentException("Param type not supported:" + s10 + " tipo:" + o10.getClass().getSimpleName());
            }
        }

        public final void j(Tb.a frameBuffer, Tb.a cacheBuffer, String cameraColorTextureParam) {
            frameBuffer.l().f(this.f75362e, cameraColorTextureParam);
            Tb.a aVar = this.f75369l;
            if (aVar == null || aVar.l() == null || !this.f75369l.l().J()) {
                frameBuffer.l().f(this.f75362e, "historyTex");
            } else {
                this.f75369l.l().f(this.f75362e, "historyTex");
            }
            this.f75358a.D(0, 0, frameBuffer.i(), frameBuffer.h());
            this.f75366i.a(cacheBuffer);
            this.f75367j.forEach(this.f75370m);
        }

        public final void k() {
            FilamentView filamentView = this.f75358a;
            if (filamentView != null) {
                filamentView.F();
                this.f75358a.x(null);
                this.f75358a.C(null);
            }
            FilamentScene filamentScene = this.f75359b;
            if (filamentScene != null) {
                FilamentCamera filamentCamera = this.f75365h;
                if (filamentCamera != null) {
                    try {
                        filamentScene.s(filamentCamera.f());
                    } catch (Throwable unused) {
                    }
                }
                Rb.c cVar = this.f75360c;
                if (cVar != null) {
                    try {
                        this.f75359b.s(cVar);
                    } catch (Throwable unused2) {
                    }
                }
            }
            Tb.a aVar = this.f75369l;
            if (aVar != null && !aVar.f24207r) {
                aVar.c();
                this.f75369l = null;
            }
            C14491a c14491a = this.f75366i;
            if (c14491a != null) {
                c14491a.k();
                this.f75366i = null;
            }
            FilamentRenderable filamentRenderable = this.f75361d;
            if (filamentRenderable != null) {
                filamentRenderable.destroyImmediate();
                this.f75361d = null;
            }
            FilamentMaterial filamentMaterial = this.f75362e;
            if (filamentMaterial != null) {
                filamentMaterial.destroyImmediate();
                this.f75362e = null;
            }
            FilamentVertexBuffer filamentVertexBuffer = this.f75363f;
            if (filamentVertexBuffer != null) {
                filamentVertexBuffer.destroyImmediate();
                this.f75363f = null;
            }
            Rb.d dVar = this.f75364g;
            if (dVar != null) {
                dVar.destroyImmediate();
                this.f75364g = null;
            }
            FilamentCamera filamentCamera2 = this.f75365h;
            if (filamentCamera2 != null) {
                filamentCamera2.destroyImmediate();
                this.f75365h = null;
            }
            FilamentView filamentView2 = this.f75358a;
            if (filamentView2 != null) {
                filamentView2.destroyImmediate();
                this.f75358a = null;
            }
            FilamentScene filamentScene2 = this.f75359b;
            if (filamentScene2 != null) {
                filamentScene2.destroyImmediate();
                this.f75359b = null;
            }
            Rb.c cVar2 = this.f75360c;
            if (cVar2 != null) {
                cVar2.destroyImmediate();
                this.f75360c = null;
            }
            this.f75368k = false;
            this.f75367j.clear();
        }

        public void l(FilamentMaterialTemplate material) {
            this.f75368k = true;
            this.f75362e = material.e();
            this.f75363f = MotionBlur.createFullScreenQuad(Qb.a.f());
            this.f75364g = MotionBlur.createFullScreenIndices(Qb.a.f());
            this.f75359b = new FilamentScene();
            this.f75360c = new Rb.c();
            this.f75361d = new FilamentRenderable(new RenderableManager.a(1).f(false), this.f75362e, this.f75360c, this.f75363f, this.f75364g, RenderableManager.b.TRIANGLES, new Box(0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f));
            this.f75359b.j(this.f75360c);
            FilamentView filamentView = new FilamentView();
            this.f75358a = filamentView;
            filamentView.C(this.f75359b);
            this.f75358a.z(false);
            FilamentCamera filamentCamera = new FilamentCamera();
            this.f75365h = filamentCamera;
            filamentCamera.l(-1.0f, 1.0f, -1.0f, 1.0f, 0.0f, 1.0f);
            this.f75358a.x(this.f75365h);
            this.f75359b.j(this.f75365h.f());
            C14491a.l();
            this.f75366i = new C14491a();
        }

        public final void m(Tb.a frameBuffer) {
            this.f75366i.h(frameBuffer);
        }

        public final void n(Tb.a cacheBuffer) {
            Qb.a.g();
            cacheBuffer.a(this.f75358a);
            Qb.a.o(this.f75358a);
            cacheBuffer.z();
        }
    }

    public static class g {

        public String f75372a;

        public String f75373b;

        public Map<String, Vb.c> f75374c;

        public Map<String, MaterialBuilder.m> f75375d;

        public g() {
        }

        public g(a aVar) {
            this();
        }
    }

    static {
        C13201a.b(new a());
        HashMap hashMap = new HashMap();
        f75345Q = hashMap;
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT;
        hashMap.put("alpha", rVar);
        hashMap.put("reset", rVar);
        hashMap.put("border", rVar);
        f75346R = new HashMap();
    }

    public MotionBlur() {
        super(f75343O);
        this.f75348I = new HashMap();
        this.f75349J = new HashMap();
        this.alpha = 0.85f;
        this.reset = 0.0f;
        this.border = 0.0f;
        g gVar = new g(null);
        this.f75351L = gVar;
        gVar.f75373b = "inputTex";
        gVar.f75375d = new HashMap();
        this.f75351L.f75374c = new HashMap();
        f75345Q.forEach(new b());
    }

    private FilamentMaterialTemplate buildMaterial(String fragmentShaderCode) {
        return buildMaterialDirect(loadFile(fragmentShaderCode));
    }

    private String buildMaterialCacheKey(String fragmentShaderCode, Map<String, Vb.c> uniforms, Map<String, MaterialBuilder.m> samplers, String cameraColorTextureParam) {
        StringBuilder sb2 = new StringBuilder("motionBlur-v2|camera=");
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
            int hashCode = buildMaterialCacheKey(fragmentShaderCode, this.f75348I, this.f75349J, this.f75350K).hashCode();
            ByteBuffer f10 = ec.b.f(hashCode);
            if (f10 != null) {
                ByteBuffer duplicate = f10.duplicate();
                duplicate.rewind();
                return new FilamentMaterialTemplate(new Material.b().b(duplicate, duplicate.remaining()));
            }
            Sb.b bVar = (Sb.b) new Sb.b().v("PostProcessDynamic-" + Tc.b.L()).m(true).x(MaterialBuilder.h.MOBILE).E(MaterialBuilder.n.UNLIT).C(MaterialBuilder.t.UV0);
            for (Map.Entry<String, Vb.c> entry : this.f75348I.entrySet()) {
                Vb.c value = entry.getValue();
                bVar.O(value.f26805a, value.f26806b, entry.getKey());
            }
            for (Map.Entry<String, MaterialBuilder.m> entry2 : this.f75349J.entrySet()) {
                bVar.D(entry2.getValue(), MaterialBuilder.l.FLOAT, MaterialBuilder.g.HIGH, entry2.getKey());
            }
            bVar.r(fragmentShaderCode);
            com.google.android.filament.filamat.b d10 = bVar.d();
            if (d10 == null || !d10.b()) {
                throw new RuntimeException("Failed to compile shader!");
            }
            ByteBuffer a10 = d10.a();
            ByteBuffer duplicate2 = a10.duplicate();
            duplicate2.rewind();
            ec.b.l(hashCode, a10);
            return new FilamentMaterialTemplate(new Material.b().b(duplicate2, duplicate2.remaining()));
        } catch (Exception unused) {
            throw new RuntimeException("Failed to compile shader!");
        }
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
        this.f75350K = cameraColorTextureParam;
        Qb.a.f();
        this.f75348I.clear();
        this.f75349J.clear();
        if (uniforms != null) {
            this.f75348I.putAll(uniforms);
        }
        if (samplers != null) {
            this.f75349J.putAll(samplers);
        }
        Map<String, MaterialBuilder.m> map = this.f75349J;
        MaterialBuilder.m mVar = MaterialBuilder.m.SAMPLER_2D;
        map.put(cameraColorTextureParam, mVar);
        this.f75349J.put("historyTex", mVar);
        this.f75347H = buildMaterial(fragmentShader);
    }

    private static String loadFile(String file) {
        return C14207a.a("Shaders/PostProcessing/" + file + ".vsc");
    }

    @Override
    public void applyAfterRender(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
        if (this.f75347H != null && camera.renderPostProcessing()) {
            f cache = getCache(camera);
            if (!cache.f75368k || cacheBuffer == null) {
                return;
            }
            cache.n(cacheBuffer);
            cache.m(frameBuffer);
            cache.m(cache.f75369l);
        }
    }

    @Override
    public void applyInPreUpdate(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
        if (this.f75347H != null && camera.renderPostProcessing()) {
            f cache = getCache(camera);
            camera.requestCacheBuffer();
            if (frameBuffer == null || cacheBuffer == null) {
                return;
            }
            if (!cache.f75368k) {
                cache.l(this.f75347H);
            }
            if (cache.f75369l == null || cache.f75369l.i() != frameBuffer.i() || cache.f75369l.h() != frameBuffer.h()) {
                cache.f75369l = new Tb.a(frameBuffer.i(), frameBuffer.h());
            }
            if (!cache.f75368k || camera.getCacheBuffer() == null) {
                return;
            }
            applyParams(camera, filamentCamera, view, frameBuffer, cacheBuffer, cache.f75367j);
            cache.j(frameBuffer, camera.getCacheBuffer(), this.f75350K);
        }
    }

    public void applyParams(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer, Map<String, Object> params) {
        params.put("alpha", Float.valueOf(this.alpha));
        params.put("reset", Float.valueOf(this.reset));
        params.put("border", Float.valueOf(this.border));
    }

    @Override
    public void disableFor(Camera camera, FilamentCamera filamentCamera, FilamentView view) {
    }

    @InterfaceC15237a
    public float getAlpha() {
        return this.alpha;
    }

    @InterfaceC15237a
    public float getBorder() {
        return this.border;
    }

    @Override
    public String getDisplayableTitle() {
        return C13621U.f91826e;
    }

    @Override
    public int getIconResource() {
        return R.drawable.vulkan_icon;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_meshrenderer;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        c cVar = new c();
        b.a aVar = b.a.SLFloat01;
        C5.b bVar = new C5.b(cVar, "Alpha", aVar);
        GameObject gameObject = this.f79250n;
        com.itsmagic.engine.Engines.Engine.Animation.c cVar2 = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        linkedList.add(bVar.d(gameObject, this, "alpha", cVar2));
        linkedList.add(new C5.b(new d(), "Reset", aVar).d(this.f79250n, this, "reset", cVar2));
        linkedList.add(new C5.b(new e(), "Border", aVar).d(this.f79250n, this, "border", cVar2));
        return linkedList;
    }

    @InterfaceC15237a
    public float getReset() {
        return this.reset;
    }

    @Override
    public String getTitle() {
        return f75343O;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    public boolean isFailed() {
        return this.f75352M;
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        g gVar = this.f75351L;
        if (gVar != null) {
            init("motion_blur", gVar.f75374c, gVar.f75375d, gVar.f75373b);
            this.f75351L = null;
        }
    }

    @Override
    public void receiveEvent(Lb.c event) {
        super.receiveEvent(event);
        if (event instanceof o9.c) {
            this.f75352M = false;
        }
    }

    @InterfaceC15237a
    public void setAlpha(float alpha) {
        this.alpha = alpha;
    }

    @InterfaceC15237a
    public void setBorder(float border) {
        this.border = Math.max(0.0f, Math.min(1.0f, border));
    }

    @InterfaceC15237a
    public void setReset(float reset) {
        this.reset = reset;
    }

    @Override
    public void setRuntime(Component run) {
        this.f75353N = run;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f75353N;
        if (component != null) {
            return component;
        }
        JAVARuntime.MotionBlur motionBlur = new JAVARuntime.MotionBlur(this);
        this.f75353N = motionBlur;
        return motionBlur;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        MotionBlur motionBlur = new MotionBlur();
        motionBlur.alpha = this.alpha;
        motionBlur.reset = this.reset;
        motionBlur.border = this.border;
        return motionBlur;
    }

    @Override
    public void destroyCache(f cache) {
        if (cache != null) {
            cache.k();
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public f newCacheInstance() {
        return new f();
    }
}
