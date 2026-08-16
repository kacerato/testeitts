package com.itsmagic.engine.Engines.Engine.ComponentsV2.SpriteRenderer;

import C5.b;
import F5.c;
import Ic.C2629h;
import Ic.C2632k;
import JAVARuntime.Runnable;
import M7.c;
import M7.o;
import M7.r;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import b3.s;
import com.google.android.filament.Box;
import com.google.android.filament.IndexBuffer;
import com.google.android.filament.Material;
import com.google.android.filament.RenderableManager;
import com.google.android.filament.TransformManager;
import com.google.android.filament.VertexBuffer;
import com.google.android.filament.filamat.MaterialBuilder;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDicFile;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Texture.Sprite.Rect;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterialTemplate;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentRenderable;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentScene;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentVertexBuffer;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import ec.EnumC13053a;
import fb.AbstractC13203c;
import fb.C13201a;
import ib.InterfaceC13601h;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.EnumMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import mc.C14207a;
import ub.p;
import yb.C16165b;

public class SpriteRenderer extends Component implements Serializable {

    public static final String f76691T = "SpriteRenderer";

    public static final Class f76692U = SpriteRenderer.class;

    public static final String f76693V = "Shaders/Sprites/sprite_renderer.glsl";

    public static final Map<EnumC13053a, FilamentMaterialTemplate> f76694W;

    public static final float[] f76695X;

    public static final short[] f76696Y;

    public String f76697E;

    public boolean f76698F;

    public String f76699G;

    public p f76700H;

    public boolean f76701I;

    public float f76702J;

    public final float[] f76703K;

    public Rb.c f76704L;

    public FilamentRenderable f76705M;

    public FilamentMaterial f76706N;

    public FilamentVertexBuffer f76707O;

    public Rb.d f76708P;

    public boolean f76709Q;

    public final Bb.e f76710R;

    public final InterfaceC13601h f76711S;

    @Expose
    private EnumC13053a blendingMode;

    @Expose
    private boolean castShadow;

    @Expose
    private int priority;

    @Expose
    private boolean receiveShadow;

    @Expose
    private float speed;

    @Expose
    private int spriteIndex;

    @Expose
    private l tab;

    @Expose
    private String textureFile;

    public class a implements D5.h {

        public class C1257a implements Runnable {

            public final Variable f76713b;

            public C1257a(final Variable val$variable) {
                this.f76713b = val$variable;
            }

            @Override
            public void run() {
                SpriteRenderer.this.setReceiveShadow(this.f76713b.booolean_value.booleanValue());
            }
        }

        public a() {
        }

        @Override
        public Variable get() {
            return new Variable("", SpriteRenderer.this.receiveShadow + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new C1257a(variable));
            }
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", SpriteRenderer.this.priority + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                SpriteRenderer.this.priority = variable.int_value;
                SpriteRenderer spriteRenderer = SpriteRenderer.this;
                spriteRenderer.setPriority(spriteRenderer.priority);
            }
        }
    }

    public class c extends AbstractC13203c {
        @Override
        public Class b() {
            return SpriteRenderer.f76692U;
        }

        @Override
        public String c() {
            return SpriteRenderer.f76691T;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.MODEL_RENDERERS);
        }

        @Override
        public String f() {
            return "Sprite Renderer";
        }
    }

    public class d implements Bb.e {
        public d() {
        }

        @Override
        public void b() {
            SpriteRenderer.this.f76701I = true;
            SpriteRenderer.this.applyTextureToMaterial();
        }
    }

    public class e implements InterfaceC13601h {
        public e() {
        }

        @Override
        public void a(com.itsmagic.engine.Engines.Engine.Vector.f globalMatrix) {
            Qb.a.d();
            if (SpriteRenderer.this.f76704L != null) {
                globalMatrix.o(SpriteRenderer.this.f76703K);
                TransformManager i10 = Qb.a.i();
                i10.u(i10.h(SpriteRenderer.this.f76704L.getId()), SpriteRenderer.this.f76703K);
            }
        }
    }

    public class f implements D5.e {

        public static final int f76718f = 2;

        public LinearLayout f76719a;

        public final List<M7.g> f76720b = new LinkedList();

        public LayoutInflater f76721c;

        public final Context f76722d;

        public class a implements r {
            public a() {
            }

            @Override
            public void b(boolean value, View v10, Context context, o tbToggle, boolean isFromUserAction) {
                if (value) {
                    l lVar = SpriteRenderer.this.tab;
                    l lVar2 = l.Sprite;
                    if (lVar != lVar2) {
                        SpriteRenderer.this.tab = lVar2;
                        SpriteRenderer.this.reloadInspector();
                    }
                }
            }
        }

        public class b implements r {
            public b() {
            }

            @Override
            public void b(boolean value, View v10, Context context, o tbToggle, boolean isFromUserAction) {
                if (value) {
                    l lVar = SpriteRenderer.this.tab;
                    l lVar2 = l.Data;
                    if (lVar != lVar2) {
                        SpriteRenderer.this.tab = lVar2;
                        SpriteRenderer.this.reloadInspector();
                    }
                }
            }
        }

        public f(final Context val$context) {
            this.f76722d = val$context;
        }

        private void c() {
            this.f76719a.removeAllViews();
            for (int i10 = 0; i10 < this.f76720b.size(); i10++) {
                M7.g gVar = this.f76720b.get(i10);
                gVar.a(this.f76719a, this.f76722d, this.f76721c);
                M7.k kVar = new M7.k(Nc.b.l0(2.0f, this.f76722d));
                kVar.a(this.f76719a, this.f76722d, this.f76721c);
                gVar.n(kVar.e());
            }
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.content);
            this.f76719a = linearLayout;
            linearLayout.removeAllViews();
            this.f76721c = LayoutInflater.from(context);
            this.f76720b.clear();
            o oVar = new o(R.drawable.render_texture, new a(), c.b.Left, context);
            Ac.b bVar = Theme.T.PRIMARY_DARK;
            o B02 = oVar.B0(bVar);
            B02.W(true);
            o B03 = new o(R.drawable.wrench, new b(), c.b.Right, context).B0(bVar);
            B03.W(true);
            M7.p pVar = new M7.p(context);
            pVar.s(B02);
            pVar.s(B03);
            if (SpriteRenderer.this.tab == l.Sprite) {
                pVar.z(0, false);
            } else {
                pVar.z(1, false);
            }
            this.f76720b.add(pVar);
            c();
        }
    }

    public class g implements D5.h {

        public class a implements Runnable {

            public final Variable f76727b;

            public a(final Variable val$variable) {
                this.f76727b = val$variable;
            }

            @Override
            public void run() {
                SpriteRenderer.this.setTextureFile(this.f76727b.str_value);
                SpriteRenderer.this.reloadInspector();
            }
        }

        public g() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", SpriteRenderer.this.textureFile != null ? SpriteRenderer.this.textureFile : "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class h extends c.n0<EnumC13053a> {

        public class a implements Runnable {

            public final EnumC13053a f76730b;

            public a(final EnumC13053a val$value) {
                this.f76730b = val$value;
            }

            @Override
            public void run() {
                SpriteRenderer.this.setBlendingMode(this.f76730b);
            }
        }

        public h() {
        }

        @Override
        public void a() {
            SpriteRenderer.this.reloadInspector();
        }

        @Override
        public void set(EnumC13053a value) {
            K8.a.I(new a(value));
        }
    }

    public class i implements D5.h {

        public class a implements Runnable {

            public final Variable f76733b;

            public a(final Variable val$variable) {
                this.f76733b = val$variable;
            }

            @Override
            public void run() {
                SpriteRenderer.this.setSpeed(this.f76733b.float_value);
            }
        }

        public i() {
        }

        @Override
        public Variable get() {
            return new Variable("", SpriteRenderer.this.speed + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class j implements D5.h {

        public class a implements Runnable {

            public final Variable f76736b;

            public a(final Variable val$variable) {
                this.f76736b = val$variable;
            }

            @Override
            public void run() {
                SpriteRenderer.this.setSpriteIndex(this.f76736b.int_value);
                SpriteRenderer.this.reloadInspector();
            }
        }

        public j() {
        }

        @Override
        public Variable get() {
            return new Variable("", SpriteRenderer.this.spriteIndex + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class k implements D5.h {

        public class a implements Runnable {

            public final Variable f76739b;

            public a(final Variable val$variable) {
                this.f76739b = val$variable;
            }

            @Override
            public void run() {
                SpriteRenderer.this.setCastShadow(this.f76739b.booolean_value.booleanValue());
            }
        }

        public k() {
        }

        @Override
        public Variable get() {
            return new Variable("", SpriteRenderer.this.castShadow + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public enum l {
        Sprite,
        Data
    }

    static {
        C13201a.b(new c());
        f76694W = new EnumMap(EnumC13053a.class);
        f76695X = new float[]{-0.5f, -0.5f, 0.0f, 0.0f, 1.0f, 0.5f, -0.5f, 0.0f, 1.0f, 1.0f, 0.5f, 0.5f, 0.0f, 1.0f, 0.0f, -0.5f, 0.5f, 0.0f, 0.0f, 0.0f};
        f76696Y = new short[]{0, 1, 2, 0, 2, 3};
    }

    public SpriteRenderer() {
        super(f76691T);
        this.tab = l.Sprite;
        this.textureFile = null;
        this.spriteIndex = 0;
        this.blendingMode = EnumC13053a.TRANSPARENT;
        this.speed = 1.0f;
        this.castShadow = false;
        this.receiveShadow = false;
        this.priority = 0;
        this.f76697E = null;
        this.f76698F = false;
        this.f76699G = null;
        this.f76701I = true;
        this.f76702J = 0.0f;
        this.f76703K = new float[16];
        this.f76709Q = false;
        this.f76710R = new d();
        this.f76711S = new e();
    }

    private void addTextureListener() {
        p pVar = this.f76700H;
        if (pVar != null) {
            pVar.e(this.f76710R);
        }
    }

    private void addToGraphics() {
        if (this.f76709Q || this.f76704L == null) {
            return;
        }
        getEffectiveScene().j(this.f76704L);
        this.f76709Q = true;
    }

    public void applyTextureToMaterial() {
        if (!this.f76701I || this.f76706N == null) {
            return;
        }
        Rect spriteRect = getSpriteRect();
        if (spriteRect == null) {
            this.f76706N.E("albedoSprite", 0.0f, 0.0f, 1.0f, 1.0f);
        } else {
            this.f76706N.E("albedoSprite", spriteRect.d(), spriteRect.e(), spriteRect.c(), spriteRect.b());
        }
        p pVar = this.f76700H;
        if (!p.L(pVar)) {
            pVar = C16165b.f130161g;
        }
        if (p.L(pVar)) {
            pVar.f(this.f76706N, "albedo");
        }
        this.f76701I = false;
    }

    private static int buildCacheHash(String shaderCode, ec.i variance) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("spriterenderer:");
        sb2.append(variance.d());
        sb2.append(s.f32937c);
        sb2.append(shaderCode != null ? shaderCode.hashCode() : 0);
        return sb2.toString().hashCode();
    }

    public static void buildShaderCache() {
        buildShaderCache(false);
    }

    public static void buildShaderCacheForce() {
        buildShaderCache(true);
    }

    private static ByteBuffer buildSharedPayload(EnumC13053a mode, boolean forceRebuild) {
        if (mode == null) {
            mode = EnumC13053a.TRANSPARENT;
        }
        String loadSpriteShaderCode = loadSpriteShaderCode();
        ec.i buildVariance = buildVariance(mode);
        int buildCacheHash = buildCacheHash(loadSpriteShaderCode, buildVariance);
        ByteBuffer f10 = !forceRebuild ? ec.b.f(buildCacheHash) : ec.b.h(buildCacheHash) ? ec.b.g(buildCacheHash) : null;
        if (f10 != null) {
            return f10;
        }
        Sb.b bVar = (Sb.b) new Sb.b().v("SpriteRenderer-" + ((Object) mode) + "-" + Tc.b.L()).V(MaterialBuilder.u.OBJECT).x(MaterialBuilder.h.MOBILE).E(MaterialBuilder.n.UNLIT).C(MaterialBuilder.t.UV0).m(buildVariance.i()).l(buildVariance.h()).k(buildVariance.g()).i(buildVariance.c()).c(buildVariance.a()).q(buildVariance.e());
        bVar.P(MaterialBuilder.r.FLOAT4, "albedoSprite");
        bVar.D(MaterialBuilder.m.SAMPLER_2D, MaterialBuilder.l.FLOAT, MaterialBuilder.g.HIGH, "albedo");
        bVar.r(loadSpriteShaderCode);
        com.google.android.filament.filamat.b d10 = bVar.d();
        if (d10 == null || !d10.b()) {
            throw new RuntimeException("Falha ao compilar material de sprite.");
        }
        ByteBuffer a10 = d10.a();
        ec.b.l(buildCacheHash, a10);
        return a10;
    }

    private static ec.i buildVariance(EnumC13053a blendingMode) {
        if (blendingMode == null) {
            blendingMode = EnumC13053a.TRANSPARENT;
        }
        return new ec.i(MaterialBuilder.a.valueOf(blendingMode.name()), 0.5f, MaterialBuilder.c.NONE, true, null, false, false);
    }

    private static Rb.d createIndexBuffer() {
        short[] sArr = f76696Y;
        ByteBuffer order = ByteBuffer.allocateDirect(sArr.length * 2).order(ByteOrder.nativeOrder());
        order.asShortBuffer().put(sArr).flip();
        Rb.d dVar = new Rb.d(new IndexBuffer.a().c(sArr.length).a(IndexBuffer.a.b.USHORT));
        dVar.r(order);
        return dVar;
    }

    private static FilamentMaterialTemplate createTemplateFromPayload(EnumC13053a mode, ByteBuffer payload) {
        if (mode == null) {
            mode = EnumC13053a.TRANSPARENT;
        }
        ByteBuffer duplicate = payload.duplicate();
        duplicate.rewind();
        FilamentMaterialTemplate filamentMaterialTemplate = new FilamentMaterialTemplate(new Material.b().b(duplicate, duplicate.remaining()));
        f76694W.put(mode, filamentMaterialTemplate);
        return filamentMaterialTemplate;
    }

    private static FilamentVertexBuffer createVertexBuffer() {
        float[] fArr = f76695X;
        ByteBuffer order = ByteBuffer.allocateDirect(fArr.length * 4).order(ByteOrder.nativeOrder());
        order.asFloatBuffer().put(fArr).flip();
        FilamentVertexBuffer filamentVertexBuffer = new FilamentVertexBuffer(new VertexBuffer.b().h(4).c(1).b(VertexBuffer.c.POSITION, 0, VertexBuffer.a.FLOAT3, 0, 20).b(VertexBuffer.c.UV0, 0, VertexBuffer.a.FLOAT2, 12, 20));
        filamentVertexBuffer.q(0, order);
        return filamentVertexBuffer;
    }

    private void destroyRenderable() {
        destroyRenderable(getEffectiveScene(), true);
    }

    private void ensureRenderable() {
        Transform transform;
        if (this.f76704L != null) {
            if (isHierarchyActive()) {
                addToGraphics();
                return;
            }
            return;
        }
        FilamentMaterialTemplate ensureSharedResources = ensureSharedResources(this.blendingMode);
        if (ensureSharedResources == null) {
            return;
        }
        this.f76707O = createVertexBuffer();
        this.f76708P = createIndexBuffer();
        this.f76704L = new Rb.c();
        this.f76706N = ensureSharedResources.e();
        FilamentRenderable filamentRenderable = new FilamentRenderable(new RenderableManager.a(1).d(this.castShadow).y(this.receiveShadow), this.f76706N, this.f76704L, this.f76707O, this.f76708P, RenderableManager.b.TRIANGLES, new Box(new float[]{-0.5f, -0.5f, -0.001f}, new float[]{0.5f, 0.5f, 0.001f}));
        this.f76705M = filamentRenderable;
        filamentRenderable.setPriority(this.priority);
        TransformManager i10 = Qb.a.i();
        i10.b(this.f76704L.getId());
        GameObject gameObject = this.f79250n;
        if (gameObject != null && (transform = gameObject.transform) != null) {
            transform.O2(this.f76711S);
            this.f79250n.transform.u(this.f76711S);
            this.f79250n.transform.r0(this.f76703K);
            i10.u(i10.h(this.f76704L.getId()), this.f76703K);
        }
        this.f76701I = true;
        applyTextureToMaterial();
        if (isHierarchyActive()) {
            addToGraphics();
        }
    }

    private static synchronized FilamentMaterialTemplate ensureSharedResources(EnumC13053a mode) {
        FilamentMaterialTemplate ensureSharedResources;
        synchronized (SpriteRenderer.class) {
            ensureSharedResources = ensureSharedResources(mode, false);
        }
        return ensureSharedResources;
    }

    private List<C5.b> getDataEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        k kVar = new k();
        String l10 = Lang.l(Lang.T.CAST_SHADOWS);
        b.a aVar = b.a.SLBoolean;
        linkedList.add(new C5.b(kVar, l10, aVar));
        linkedList.add(new C5.b(new a(), "Receive shadows", aVar));
        linkedList.add(new C5.b(new b(), "Priority", b.a.SLInt));
        return linkedList;
    }

    private List<C5.b> getSpriteEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(new C5.b(new g(), SerializableShaderEntry.f81152f, b.a.UITexture, context));
        linkedList.add(F5.c.i("Blending mode", EnumC13053a.class, this.blendingMode, new h()));
        linkedList.add(new C5.b(new i(), "Speed", b.a.SLFloat).d(this.f79250n, this, "speed", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
        linkedList.add(new C5.b(new j(), "Sprite index", b.a.SLInt).d(this.f79250n, this, "spriteIndex", com.itsmagic.engine.Engines.Engine.Animation.c.INT));
        return linkedList;
    }

    private static String loadSpriteShaderCode() {
        return C14207a.a(f76693V);
    }

    private void removeFromGraphics() {
        if (this.f76709Q) {
            if (this.f76704L != null) {
                getEffectiveScene().s(this.f76704L);
            }
            this.f76709Q = false;
        }
    }

    private void removeTextureListener() {
        removeTextureListener(this.f76700H);
    }

    private void updateSpriteAnimation() {
        p pVar;
        TextureConfig u02;
        int C10;
        int f10;
        if (c8.b.k() && this.speed != 0.0f && (pVar = this.f76700H) != null && (pVar instanceof ub.g) && (u02 = ((ub.g) pVar).u0()) != null && u02.type == TextureConfig.f.Sprite && u02.v() != null && (C10 = u02.v().C()) > 1 && (f10 = u02.v().f()) > 0) {
            float b10 = K8.d.b();
            if (b10 <= 0.0f) {
                return;
            }
            float f11 = this.f76702J + (this.speed * f10 * b10);
            this.f76702J = f11;
            int i10 = (int) f11;
            if (i10 == 0) {
                return;
            }
            this.f76702J = f11 - i10;
            this.spriteIndex = wrapSpriteIndex(this.spriteIndex + i10, C10);
            this.f76701I = true;
        }
    }

    private void updateTexture() {
        String str;
        p pVar = this.f76700H;
        String str2 = this.textureFile;
        if (str2 == null || str2.isEmpty()) {
            this.f76700H = null;
            this.f76697E = null;
        } else {
            String str3 = this.textureFile;
            if (!this.f76698F && str3.startsWith("@@UIG@@")) {
                str3 = H3.h.G1(this.textureFile.substring(7));
                this.f76699G = str3;
                this.f76698F = true;
            }
            if (this.f76698F) {
                str3 = this.f76699G;
            }
            if (str3 != null && !str3.isEmpty() && ((str = this.f76697E) == null || !str.equals(str3))) {
                this.f76697E = str3;
                this.f76700H = C16165b.u(str3);
                addTextureListener();
            }
        }
        if (pVar != this.f76700H) {
            removeTextureListener(pVar);
            this.f76701I = true;
        }
    }

    private static int wrapSpriteIndex(int index, int spriteCount) {
        if (spriteCount <= 0) {
            return 0;
        }
        int i10 = index % spriteCount;
        return i10 < 0 ? i10 + spriteCount : i10;
    }

    public EnumC13053a getBlendingMode() {
        return this.blendingMode;
    }

    @Override
    public C2632k getDependencyFiles(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        String str = this.textureFile;
        if (!this.f76698F && str != null && str.startsWith("@@UIG@@")) {
            str = H3.h.G1(this.textureFile.substring(7));
            this.f76699G = str;
            this.f76698F = true;
        }
        if (this.f76698F) {
            str = this.f76699G;
        }
        if (str != null) {
            c2632k.f9114a.add(str);
        }
        return c2632k;
    }

    @Override
    public String getDisplayableTitle() {
        return "Sprite Renderer";
    }

    @Override
    public int getIconResource() {
        return R.drawable.render_texture;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        if (context == null) {
            return linkedList;
        }
        if (this.tab == null) {
            this.tab = l.Sprite;
        }
        linkedList.add(new C5.b(new f(context), R.layout.inspector_component_terrain_tabs, (Object) null));
        int ordinal = this.tab.ordinal();
        if (ordinal == 0) {
            linkedList.addAll(getSpriteEntries(context));
        } else if (ordinal == 1) {
            linkedList.addAll(getDataEntries(context));
        }
        return linkedList;
    }

    public int getPriority() {
        return this.priority;
    }

    public float getSpeed() {
        return this.speed;
    }

    public int getSpriteIndex() {
        return this.spriteIndex;
    }

    public Rect getSpriteRect() {
        TextureConfig u02;
        p pVar = this.f76700H;
        if (!(pVar instanceof ub.g) || (u02 = ((ub.g) pVar).u0()) == null || u02.type != TextureConfig.f.Sprite || u02.v() == null || u02.v().C() <= 0) {
            return null;
        }
        return Rect.a(u02.v().B(Nc.b.F(0, this.spriteIndex, u02.v().C() - 1)));
    }

    public p getTexture() {
        return this.f76700H;
    }

    public String getTextureFile() {
        return this.textureFile;
    }

    @Override
    public String getTitle() {
        return f76691T;
    }

    @Override
    public Component.e getType() {
        return Component.e.SpriteRenderer;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    public boolean isCastShadow() {
        return this.castShadow;
    }

    public boolean isReceiveShadow() {
        return this.receiveShadow;
    }

    @Override
    public void onAttach() {
        Transform transform;
        super.onAttach();
        GameObject gameObject = this.f79250n;
        if (gameObject != null && (transform = gameObject.transform) != null) {
            transform.u(this.f76711S);
        }
        updateTexture();
        ensureRenderable();
    }

    @Override
    public void onDetach() {
        Transform transform;
        removeTextureListener();
        destroyRenderable();
        GameObject gameObject = this.f79250n;
        if (gameObject != null && (transform = gameObject.transform) != null) {
            transform.O2(this.f76711S);
        }
        super.onDetach();
    }

    @Override
    public void onHierarchyActiveChanged(boolean enabled) {
        super.onHierarchyActiveChanged(enabled);
        if (enabled) {
            addToGraphics();
        } else {
            removeFromGraphics();
        }
    }

    @Override
    public void onSceneChanged(FilamentScene oldScene) {
        super.onSceneChanged(oldScene);
        if (this.f76704L == null) {
            return;
        }
        destroyRenderable(oldScene, true);
        if (isHierarchyActive()) {
            ensureRenderable();
        }
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        if (gameObject == null) {
            return;
        }
        updateTexture();
        updateSpriteAnimation();
        applyTextureToMaterial();
    }

    @Override
    public void reloadFilesPaths(BuildDictionary dictionary) {
        BuildDicFile f10;
        String str = this.textureFile;
        if (!this.f76698F && str != null && str.startsWith("@@UIG@@")) {
            str = H3.h.G1(this.textureFile.substring(7));
            this.f76699G = str;
            this.f76698F = true;
        }
        if (this.f76698F) {
            str = this.f76699G;
        }
        if (str == null || str.isEmpty() || str.startsWith("@@ASSET@@") || (f10 = dictionary.f(str)) == null) {
            return;
        }
        dictionary.h("SpriteRenderer: REPLACING " + str + " TO " + f10.b());
        String b10 = f10.b();
        this.textureFile = b10;
        if (this.f76698F) {
            this.f76699G = b10;
        }
    }

    public void setBlendingMode(EnumC13053a blendingMode) {
        if (blendingMode == null) {
            blendingMode = EnumC13053a.TRANSPARENT;
        }
        if (this.blendingMode == blendingMode) {
            return;
        }
        this.blendingMode = blendingMode;
        destroyRenderable();
        ensureRenderable();
    }

    public void setCastShadow(boolean castShadow) {
        this.castShadow = castShadow;
    }

    public void setPriority(int priority) {
        this.priority = priority;
        FilamentRenderable filamentRenderable = this.f76705M;
        if (filamentRenderable != null) {
            filamentRenderable.setPriority(priority);
        }
    }

    public void setReceiveShadow(boolean receiveShadow) {
        this.receiveShadow = receiveShadow;
    }

    public void setSpeed(float speed) {
        this.speed = speed;
    }

    public void setSpriteIndex(int spriteIndex) {
        this.spriteIndex = spriteIndex;
        this.f76702J = 0.0f;
        this.f76701I = true;
        applyTextureToMaterial();
    }

    public void setTexture(p texture) {
        removeTextureListener(this.f76700H);
        this.f76700H = texture;
        if (texture instanceof ub.g) {
            this.textureFile = ((ub.g) texture).getFile();
        } else if (texture == null) {
            this.textureFile = null;
        } else {
            this.textureFile = null;
        }
        String str = this.textureFile;
        if (str == null) {
            str = null;
        }
        this.f76697E = str;
        this.f76698F = false;
        this.f76699G = null;
        this.f76702J = 0.0f;
        addTextureListener();
        this.f76701I = true;
        applyTextureToMaterial();
    }

    public void setTextureFile(String textureFile) {
        this.textureFile = textureFile;
        this.f76700H = null;
        this.f76697E = null;
        this.f76698F = false;
        this.f76699G = null;
        this.f76702J = 0.0f;
        updateTexture();
        this.f76701I = true;
        applyTextureToMaterial();
    }

    private static synchronized void buildShaderCache(boolean forceRebuild) {
        synchronized (SpriteRenderer.class) {
            for (EnumC13053a enumC13053a : EnumC13053a.values()) {
                buildSharedPayload(enumC13053a, forceRebuild);
            }
        }
    }

    private void destroyRenderable(FilamentScene scene, boolean destroyIfCan) {
        Transform transform;
        if (this.f76704L == null) {
            return;
        }
        removeFromGraphics();
        FilamentRenderable filamentRenderable = this.f76705M;
        if (filamentRenderable != null) {
            filamentRenderable.destroyImmediate();
            this.f76705M = null;
        }
        FilamentVertexBuffer filamentVertexBuffer = this.f76707O;
        if (filamentVertexBuffer != null) {
            filamentVertexBuffer.destroyImmediate();
            this.f76707O = null;
        }
        Rb.d dVar = this.f76708P;
        if (dVar != null) {
            dVar.destroyImmediate();
            this.f76708P = null;
        }
        if (scene == null || !scene.l(this.f76704L)) {
            scene = FilamentScene.m(this.f76704L);
        }
        if (scene != null) {
            scene.s(this.f76704L);
        }
        if (destroyIfCan) {
            this.f76704L.destroyImmediate();
        }
        GameObject gameObject = this.f79250n;
        if (gameObject != null && (transform = gameObject.transform) != null) {
            transform.O2(this.f76711S);
        }
        this.f76704L = null;
        this.f76706N = null;
        this.f76701I = true;
    }

    private static synchronized FilamentMaterialTemplate ensureSharedResources(EnumC13053a mode, boolean forceRebuild) {
        synchronized (SpriteRenderer.class) {
            if (mode == null) {
                mode = EnumC13053a.TRANSPARENT;
            }
            FilamentMaterialTemplate filamentMaterialTemplate = f76694W.get(mode);
            if (filamentMaterialTemplate != null && !forceRebuild) {
                return filamentMaterialTemplate;
            }
            ByteBuffer buildSharedPayload = buildSharedPayload(mode, forceRebuild);
            if (buildSharedPayload == null) {
                return null;
            }
            return createTemplateFromPayload(mode, buildSharedPayload);
        }
    }

    private void removeTextureListener(p ref) {
        if (ref != null) {
            try {
                ref.T(this.f76710R);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    public Component mo1248clone() {
        SpriteRenderer spriteRenderer = new SpriteRenderer();
        spriteRenderer.tab = this.tab;
        spriteRenderer.textureFile = this.textureFile;
        spriteRenderer.spriteIndex = this.spriteIndex;
        spriteRenderer.blendingMode = this.blendingMode;
        spriteRenderer.speed = this.speed;
        spriteRenderer.castShadow = this.castShadow;
        spriteRenderer.receiveShadow = this.receiveShadow;
        spriteRenderer.priority = this.priority;
        return spriteRenderer;
    }

    public SpriteRenderer(String textureFile) {
        super(f76691T);
        this.tab = l.Sprite;
        this.textureFile = null;
        this.spriteIndex = 0;
        this.blendingMode = EnumC13053a.TRANSPARENT;
        this.speed = 1.0f;
        this.castShadow = false;
        this.receiveShadow = false;
        this.priority = 0;
        this.f76697E = null;
        this.f76698F = false;
        this.f76699G = null;
        this.f76701I = true;
        this.f76702J = 0.0f;
        this.f76703K = new float[16];
        this.f76709Q = false;
        this.f76710R = new d();
        this.f76711S = new e();
        this.textureFile = textureFile;
    }
}
