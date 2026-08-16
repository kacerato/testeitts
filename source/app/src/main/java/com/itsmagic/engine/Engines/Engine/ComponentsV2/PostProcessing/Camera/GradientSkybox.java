package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera;

import C5.b;
import F5.c;
import JAVARuntime.Component;
import android.content.Context;
import com.google.android.filament.IndirectLight;
import com.google.android.filament.Skybox;
import com.google.android.filament.filamat.MaterialBuilder;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Core.BasePostProcessing;
import com.itsmagic.engine.Engines.Engine.Gradient.Entry;
import com.itsmagic.engine.Engines.Engine.Gradient.Gradient;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentCamera;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentIndirectLight;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentSkybox;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;
import mc.C14207a;
import s8.InterfaceC15237a;
import wb.C15980b;
import wb.C15986h;

public class GradientSkybox extends BasePostProcessing<f> implements Serializable {

    public static final int f75257D0 = 10;

    public static final String f75258Q = "GradientSkybox";

    public static final Class f75259R = GradientSkybox.class;

    public static final int f75260S = 0;

    public static final int f75261T = 1;

    public static final int f75262U = 2;

    public static final int f75263V = 3;

    public static final int f75264W = 4;

    public static final int f75265X = 5;

    public static final int f75266Y = 6;

    public static final int f75267Z = 7;

    public static final int f75268b1 = 11;

    public static final int f75269i1 = 12;

    public static int[] f75270m1 = null;

    public static final int f75271q0 = 8;

    public static final int f75272q1 = 256;

    public static final int f75273v0 = 9;

    public int f75274H;

    public int f75275I;

    public C15986h f75276J;

    public C15986h f75277K;

    public ub.n f75278L;

    public transient Bb.e f75279M;

    public int f75280N;

    public boolean f75281O;

    public Component f75282P;

    @Expose
    public boolean ambientLight;

    @Expose
    @eb.f
    private int ambientLightReso;

    @Expose
    private Gradient colorGradient;

    @Expose
    @eb.f
    private float lux;

    @Expose
    @eb.f
    private int maxReso;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return GradientSkybox.f75259R;
        }

        @Override
        public String c() {
            return GradientSkybox.f75258Q;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Skybox";
        }
    }

    public class b implements Bb.e {
        public b() {
        }

        @Override
        public void b() {
            GradientSkybox.this.f75281O = true;
        }
    }

    public class c implements c.s0 {
        public c() {
        }

        @Override
        public void a() {
        }

        @Override
        public void b(int id2) {
            GradientSkybox.this.maxReso = id2;
        }
    }

    public class d implements c.o0 {

        public class a implements D5.h {
            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", GradientSkybox.this.ambientLight + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    GradientSkybox.this.ambientLight = variable.booolean_value.booleanValue();
                    GradientSkybox.this.f75281O = true;
                }
            }
        }

        public class b implements D5.h {
            public b() {
            }

            @Override
            public Variable get() {
                try {
                    return new Variable("", GradientSkybox.this.lux + "");
                } catch (Exception unused) {
                    return new Variable("", "0");
                }
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    try {
                        GradientSkybox.this.lux = variable.float_value;
                        GradientSkybox.this.f75281O = true;
                    } catch (Exception unused) {
                    }
                }
            }
        }

        public class c implements c.s0 {
            public c() {
            }

            @Override
            public void a() {
            }

            @Override
            public void b(int id2) {
                GradientSkybox.this.ambientLightReso = id2;
            }
        }

        public d() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            entries.add(new C5.b(new a(), "Enable", b.a.SLBoolean));
            C5.b bVar = new C5.b(new b(), "Lux", b.a.SLFloat);
            GradientSkybox gradientSkybox = GradientSkybox.this;
            entries.add(bVar.d(gradientSkybox.f79250n, gradientSkybox, "lux", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
            entries.add(GradientSkybox.this.createResolutionEntry(Lang.l(Lang.T.RESOLUTION), GradientSkybox.this.ambientLightReso, new c()));
            return entries;
        }
    }

    public class e implements D5.h {

        public final c.s0 f75289a;

        public final int f75290b;

        public e(final c.s0 val$listener, final int val$shadowResolutionID) {
            this.f75289a = val$listener;
            this.f75290b = val$shadowResolutionID;
        }

        @Override
        public Variable get() {
            return new Variable("", GradientSkybox.f75270m1[this.f75290b] + "x" + GradientSkybox.f75270m1[this.f75290b]);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f75289a.b(variable.int_value);
            }
        }
    }

    public static class f {

        public FilamentSkybox f75292a;

        public C15980b f75293b;

        public FilamentIndirectLight f75294c;

        public float f75295d;

        public C15980b f75296e;
    }

    static {
        C13201a.b(new a());
        f75270m1 = new int[]{16, 24, 32, 48, 64, 96, 128, 192, 256, 384, 512, 768, 1024};
    }

    public GradientSkybox() {
        super(f75258Q);
        this.ambientLight = true;
        this.lux = 25.0f;
        this.ambientLightReso = 2;
        this.maxReso = 6;
        Gradient gradient = new Gradient();
        this.colorGradient = gradient;
        this.f75274H = -1;
        this.f75275I = -1;
        this.f75280N = -1;
        gradient.n();
    }

    private static void addSamples(List<ec.f> params, List<ec.g> samples) {
        samples.add(new ec.g(MaterialBuilder.m.SAMPLER_2D, MaterialBuilder.l.FLOAT, MaterialBuilder.g.HIGH, "gradientTex"));
    }

    private void applySettingsTo(C15986h cubemap) {
        ub.n nVar;
        FilamentMaterial l10 = cubemap.l();
        if (l10 == null || (nVar = this.f75278L) == null || !nVar.J()) {
            return;
        }
        this.f75278L.f(l10, "gradientTex");
    }

    private int computeGradientHash() {
        int j10 = this.colorGradient.j();
        int i10 = 17;
        for (int i11 = 0; i11 < j10; i11++) {
            Entry i12 = this.colorGradient.i(i11);
            int floatToIntBits = (i10 * 31) + Float.floatToIntBits(i12.d());
            ColorINT c10 = i12.c();
            i10 = (floatToIntBits * 31) + (c10 != null ? c10.intColor : 0);
        }
        return i10;
    }

    private void destroyShaderCubemaps() {
        C15986h c15986h = this.f75276J;
        if (c15986h != null) {
            c15986h.h();
            this.f75276J = null;
        }
        C15986h c15986h2 = this.f75277K;
        if (c15986h2 != null) {
            c15986h2.h();
            this.f75277K = null;
        }
    }

    private void disposeGradientTexture() {
        ub.n nVar = this.f75278L;
        if (nVar != null) {
            Bb.e eVar = this.f75279M;
            if (eVar != null) {
                nVar.T(eVar);
            }
            this.f75278L.destroyImmediate();
            this.f75278L = null;
        }
    }

    private void ensureGradientTexture() {
        if (this.f75278L != null) {
            return;
        }
        TextureConfig textureConfig = new TextureConfig();
        textureConfig.genMipmaps = false;
        textureConfig.allowModifications = true;
        textureConfig.wrap = TextureConfig.h.Clamp;
        textureConfig.j0(TextureConfig.c.Linear);
        this.f75278L = new ub.n(256, 1, textureConfig, true);
        if (this.f75279M == null) {
            this.f75279M = new b();
        }
        this.f75278L.e(this.f75279M);
    }

    public static String loadFile(String file) {
        return C14207a.a("Shaders/GradientSkybox/" + file);
    }

    private void updateGradientTexture() {
        if (this.colorGradient == null) {
            return;
        }
        ensureGradientTexture();
        int computeGradientHash = computeGradientHash();
        if (computeGradientHash == this.f75280N) {
            return;
        }
        this.f75280N = computeGradientHash;
        ColorINT colorINT = new ColorINT();
        for (int i10 = 0; i10 < 256; i10++) {
            this.colorGradient.l(i10 / 255, colorINT);
            this.f75278L.Y(255 - i10, 0, colorINT);
        }
        this.f75278L.apply();
    }

    private void updateReflectionsCubemapInstance() {
        int i10 = TextureConfig.f79814s[this.ambientLightReso];
        if (this.f75277K == null || this.f75275I != i10) {
            this.f75275I = i10;
            ub.n nVar = this.f75278L;
            this.f75281O = nVar != null && nVar.J();
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            SteppedArrayList steppedArrayList2 = new SteppedArrayList();
            String loadFile = loadFile("fragment.glsl");
            addSamples(steppedArrayList, steppedArrayList2);
            this.f75277K = new C15986h(i10, loadFile, steppedArrayList, steppedArrayList2, false);
            this.f75281O = true;
        }
    }

    private void updateSkyboxCubemapInstance() {
        int i10 = TextureConfig.f79814s[this.maxReso];
        if (this.f75276J == null || this.f75274H != i10) {
            this.f75274H = i10;
            ub.n nVar = this.f75278L;
            this.f75281O = nVar != null && nVar.J();
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            SteppedArrayList steppedArrayList2 = new SteppedArrayList();
            String loadFile = loadFile("fragment.glsl");
            addSamples(steppedArrayList, steppedArrayList2);
            this.f75276J = new C15986h(i10, loadFile, steppedArrayList, steppedArrayList2, true);
            this.f75281O = true;
        }
    }

    @Override
    public void applyBeforeRender(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer) {
        if (camera.getBackgroundType() != Camera.F.Skybox) {
            return;
        }
        f cache = getCache(camera);
        getEffectiveScene().v(cache.f75292a);
        if (this.ambientLight) {
            getEffectiveScene().u(cache.f75294c);
        }
    }

    @Override
    public void applyInPreUpdate(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
        if (camera.getBackgroundType() != Camera.F.Skybox) {
            return;
        }
        f cache = getCache(camera);
        if (cache.f75292a == null || cache.f75293b != this.f75276J) {
            cache.f75293b = this.f75276J;
            Skybox.a e10 = new Skybox.a().b(1.0f, 1.0f, 1.0f, 1.0f).e(1.0f);
            e10.g(false);
            cache.f75292a = new FilamentSkybox(e10, this.f75276J);
        }
        if (!this.ambientLight) {
            cache.f75294c = null;
            return;
        }
        if (cache.f75294c != null && cache.f75295d == this.lux && cache.f75296e == this.f75277K) {
            return;
        }
        cache.f75295d = this.lux;
        cache.f75296e = this.f75277K;
        cache.f75294c = new FilamentIndirectLight(new IndirectLight.a().c(1, new float[]{1.0f, 1.0f, 1.0f}).b(this.lux * 1000.0f), this.f75277K);
    }

    public C5.b createResolutionEntry(String tittle, int value, c.s0 listener) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i10 : f75270m1) {
            steppedArrayList.add(i10 + "x" + i10);
        }
        return new C5.b(new e(listener, value), f75270m1[value] + "x" + f75270m1[value], steppedArrayList, b.a.SLDropdown, tittle);
    }

    @Override
    public void disableFor(Camera camera, FilamentCamera filamentCamera, FilamentView view) {
        f peekCache = peekCache(camera);
        if (peekCache != null) {
            if (peekCache.f75292a != null && getEffectiveScene().p() == peekCache.f75292a) {
                getEffectiveScene().v(null);
            }
            if (peekCache.f75294c == null || getEffectiveScene().n() != peekCache.f75294c) {
                return;
            }
            getEffectiveScene().u(null);
        }
    }

    @InterfaceC15237a
    public int getAmbientLightResolutionID() {
        return this.ambientLightReso;
    }

    @InterfaceC15237a
    public Gradient getColorGradient() {
        return this.colorGradient;
    }

    @Override
    public String getDisplayableTitle() {
        return f75258Q;
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
        linkedList.add(createResolutionEntry(Lang.l(Lang.T.RESOLUTION), this.maxReso, new c()));
        linkedList.add(N9.a.a("Color gradient", this.colorGradient, context));
        linkedList.add(F5.c.d(getInspectorMemory(), Lang.l(Lang.T.AMBIENT_LIGHT), new d()));
        return linkedList;
    }

    @InterfaceC15237a
    public float getLux() {
        return this.lux;
    }

    @InterfaceC15237a
    public int getMaxResolutionID() {
        return this.maxReso;
    }

    @Override
    public String getTitle() {
        return f75258Q;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @InterfaceC15237a
    public boolean isAmbientLight() {
        return this.ambientLight;
    }

    @Override
    public void lowTaskUpdate(GameObject gameObject, boolean isEditor) {
        super.lowTaskUpdate(gameObject, isEditor);
        C15986h c15986h = this.f75276J;
        if (c15986h != null) {
            c15986h.n();
        }
        C15986h c15986h2 = this.f75277K;
        if (c15986h2 != null) {
            c15986h2.n();
        }
    }

    @Override
    public void onDetach() {
        for (f fVar : getCaches()) {
            if (fVar != null) {
                if (fVar.f75292a != null && getEffectiveScene().p() == fVar.f75292a) {
                    getEffectiveScene().v(null);
                }
                if (fVar.f75294c != null && getEffectiveScene().n() == fVar.f75294c) {
                    getEffectiveScene().u(null);
                }
            }
        }
        super.onDetach();
        destroyShaderCubemaps();
        disposeGradientTexture();
    }

    @Override
    public void preRender() {
        C15986h c15986h;
        super.preRender();
        if (this.f75281O) {
            C15986h c15986h2 = this.f75276J;
            boolean z10 = true;
            boolean z11 = c15986h2 != null && c15986h2.m();
            if (this.ambientLight && ((c15986h = this.f75277K) == null || !c15986h.m())) {
                z10 = false;
            }
            if (z11) {
                this.f75276J.o();
            }
            if (this.ambientLight && z10) {
                this.f75277K.o();
            }
            if (z11 && z10) {
                this.f75281O = false;
            }
        }
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        updateGradientTexture();
        updateSkyboxCubemapInstance();
        if (this.ambientLight) {
            updateReflectionsCubemapInstance();
        }
        C15986h c15986h = this.f75276J;
        if (c15986h != null) {
            applySettingsTo(c15986h);
        }
        C15986h c15986h2 = this.f75277K;
        if (c15986h2 != null) {
            applySettingsTo(c15986h2);
        }
    }

    @InterfaceC15237a
    public void setAmbientLight(boolean ambientLight) {
        this.ambientLight = ambientLight;
    }

    @InterfaceC15237a
    public void setAmbientLightResolutionID(int ambientLightReso) {
        if (ambientLightReso >= 0 && ambientLightReso < f75270m1.length) {
            this.ambientLightReso = ambientLightReso;
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("resolution ID out of bounds [0..");
        sb2.append(f75270m1.length - 1);
        sb2.append("]");
        throw new IndexOutOfBoundsException(sb2.toString());
    }

    @InterfaceC15237a
    public void setColorGradient(Gradient colorGradient) {
        if (colorGradient == null) {
            return;
        }
        this.colorGradient = colorGradient;
        this.f75280N = -1;
    }

    @InterfaceC15237a
    public void setLux(float lux) {
        this.lux = lux;
    }

    @InterfaceC15237a
    public void setMaxResolutionID(int maxReso) {
        if (maxReso >= 0 && maxReso < f75270m1.length) {
            this.maxReso = maxReso;
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("resolution ID out of bounds [0..");
        sb2.append(f75270m1.length - 1);
        sb2.append("]");
        throw new IndexOutOfBoundsException(sb2.toString());
    }

    @Override
    public void setRuntime(Component run) {
        this.f75282P = run;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f75282P;
        if (component != null) {
            return component;
        }
        JAVARuntime.GradientSkybox gradientSkybox = new JAVARuntime.GradientSkybox(this);
        this.f75282P = gradientSkybox;
        return gradientSkybox;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        GradientSkybox gradientSkybox = new GradientSkybox();
        gradientSkybox.ambientLight = this.ambientLight;
        gradientSkybox.lux = this.lux;
        gradientSkybox.ambientLightReso = this.ambientLightReso;
        gradientSkybox.maxReso = this.maxReso;
        Gradient gradient = this.colorGradient;
        gradientSkybox.colorGradient = gradient != null ? gradient.clone() : null;
        return gradientSkybox;
    }

    @Override
    public void destroyCache(f cache) {
        if (cache == null) {
            return;
        }
        if (cache.f75292a != null) {
            if (getEffectiveScene().p() == cache.f75292a) {
                getEffectiveScene().v(null);
            }
            cache.f75292a.destroyImmediate();
            cache.f75292a = null;
        }
        if (cache.f75294c != null) {
            if (getEffectiveScene().n() == cache.f75294c) {
                getEffectiveScene().u(null);
            }
            cache.f75294c.destroyImmediate();
            cache.f75294c = null;
        }
        cache.f75293b = null;
        cache.f75296e = null;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public f newCacheInstance() {
        return new f();
    }
}
