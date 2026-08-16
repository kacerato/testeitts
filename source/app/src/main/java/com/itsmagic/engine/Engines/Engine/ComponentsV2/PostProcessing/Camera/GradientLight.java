package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera;

import C5.b;
import F5.c;
import JAVARuntime.Component;
import android.content.Context;
import com.google.android.filament.IndirectLight;
import com.google.android.filament.filamat.MaterialBuilder;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Core.BasePostProcessing;
import com.itsmagic.engine.Engines.Engine.Gradient.Entry;
import com.itsmagic.engine.Engines.Engine.Gradient.Gradient;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Settings.GraphicsSettings;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentCamera;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentIndirectLight;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import mc.C14207a;
import s8.InterfaceC15237a;
import wb.C15980b;
import wb.C15986h;

public class GradientLight extends BasePostProcessing<e> implements Serializable {

    public static final int f75222D0 = 12;

    public static final String f75223O = "GradientLight";

    public static final Class f75224P = GradientLight.class;

    public static final int f75225Q = 0;

    public static final int f75226R = 1;

    public static final int f75227S = 2;

    public static final int f75228T = 3;

    public static final int f75229U = 4;

    public static final int f75230V = 5;

    public static final int f75231W = 6;

    public static final int f75232X = 7;

    public static final int f75233Y = 8;

    public static final int f75234Z = 9;

    public static int[] f75235b1 = null;

    public static final int f75236i1 = 256;

    public static final int f75237q0 = 10;

    public static final int f75238v0 = 11;

    public int f75239H;

    public C15986h f75240I;

    public ub.n f75241J;

    public transient Bb.e f75242K;

    public int f75243L;

    public boolean f75244M;

    public Component f75245N;

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

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return GradientLight.f75224P;
        }

        @Override
        public String c() {
            return GradientLight.f75223O;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Light";
        }
    }

    public class b implements Bb.e {
        public b() {
        }

        @Override
        public void b() {
            GradientLight.this.f75244M = true;
        }
    }

    public class c implements c.o0 {

        public class a implements D5.h {
            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", GradientLight.this.ambientLight + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    GradientLight.this.ambientLight = variable.booolean_value.booleanValue();
                    GradientLight.this.f75244M = true;
                }
            }
        }

        public class b implements D5.h {
            public b() {
            }

            @Override
            public Variable get() {
                try {
                    return new Variable("", GradientLight.this.lux + "");
                } catch (Exception unused) {
                    return new Variable("", "0");
                }
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    try {
                        GradientLight.this.lux = variable.float_value;
                        GradientLight.this.f75244M = true;
                    } catch (Exception unused) {
                    }
                }
            }
        }

        public class C1222c implements c.s0 {
            public C1222c() {
            }

            @Override
            public void a() {
            }

            @Override
            public void b(int id2) {
                GradientLight.this.ambientLightReso = id2;
            }
        }

        public c() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            entries.add(new C5.b(new a(), "Enable", b.a.SLBoolean));
            C5.b bVar = new C5.b(new b(), "Lux", b.a.SLFloat);
            GradientLight gradientLight = GradientLight.this;
            entries.add(bVar.d(gradientLight.f79250n, gradientLight, "lux", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
            entries.add(GradientLight.this.createResolutionEntry(Lang.l(Lang.T.RESOLUTION), GradientLight.this.ambientLightReso, new C1222c()));
            return entries;
        }
    }

    public class d implements D5.h {

        public final c.s0 f75251a;

        public final int f75252b;

        public d(final c.s0 val$listener, final int val$shadowResolutionID) {
            this.f75251a = val$listener;
            this.f75252b = val$shadowResolutionID;
        }

        @Override
        public Variable get() {
            return new Variable("", GradientLight.f75235b1[this.f75252b] + "x" + GradientLight.f75235b1[this.f75252b]);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f75251a.b(variable.int_value);
            }
        }
    }

    public static class e {

        public FilamentIndirectLight f75254a;

        public float f75255b;

        public C15980b f75256c;
    }

    static {
        C13201a.b(new a());
        f75235b1 = new int[]{16, 24, 32, 48, 64, 96, 128, 192, 256, 384, 512, 768, 1024};
    }

    public GradientLight() {
        super(f75223O);
        this.ambientLight = true;
        this.lux = 25.0f;
        this.ambientLightReso = 2;
        Gradient gradient = new Gradient();
        this.colorGradient = gradient;
        this.f75239H = -1;
        this.f75243L = -1;
        gradient.n();
    }

    private static void addSamples(List<ec.f> params, List<ec.g> samples) {
        samples.add(new ec.g(MaterialBuilder.m.SAMPLER_2D, MaterialBuilder.l.FLOAT, MaterialBuilder.g.HIGH, "gradientTex"));
    }

    private void applySettingsTo(C15986h cubemap) {
        ub.n nVar;
        FilamentMaterial l10 = cubemap.l();
        if (l10 == null || (nVar = this.f75241J) == null || !nVar.J()) {
            return;
        }
        this.f75241J.f(l10, "gradientTex");
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

    private void destroyReflectionCubemap() {
        C15986h c15986h = this.f75240I;
        if (c15986h != null) {
            c15986h.h();
            this.f75240I = null;
        }
    }

    private void disposeGradientTexture() {
        ub.n nVar = this.f75241J;
        if (nVar != null) {
            Bb.e eVar = this.f75242K;
            if (eVar != null) {
                nVar.T(eVar);
            }
            this.f75241J.destroyImmediate();
            this.f75241J = null;
        }
    }

    private void ensureGradientTexture() {
        if (this.f75241J != null) {
            return;
        }
        TextureConfig textureConfig = new TextureConfig();
        textureConfig.genMipmaps = false;
        textureConfig.allowModifications = true;
        textureConfig.wrap = TextureConfig.h.Clamp;
        textureConfig.j0(TextureConfig.c.Linear);
        this.f75241J = new ub.n(256, 1, textureConfig, true);
        if (this.f75242K == null) {
            this.f75242K = new b();
        }
        this.f75241J.e(this.f75242K);
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
        if (computeGradientHash == this.f75243L) {
            return;
        }
        this.f75243L = computeGradientHash;
        ColorINT colorINT = new ColorINT();
        for (int i10 = 0; i10 < 256; i10++) {
            this.colorGradient.l(i10 / 255, colorINT);
            this.f75241J.Y(255 - i10, 0, colorINT);
        }
        this.f75241J.apply();
    }

    private void updateReflectionsCubemapInstance() {
        int i10 = TextureConfig.f79814s[this.ambientLightReso];
        if (this.f75240I == null || this.f75239H != i10) {
            this.f75239H = i10;
            ub.n nVar = this.f75241J;
            this.f75244M = nVar != null && nVar.J();
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            SteppedArrayList steppedArrayList2 = new SteppedArrayList();
            String loadFile = loadFile("fragment.glsl");
            addSamples(steppedArrayList, steppedArrayList2);
            this.f75240I = new C15986h(i10, loadFile, steppedArrayList, steppedArrayList2, false);
            this.f75244M = true;
        }
    }

    @Override
    public void applyBeforeRender(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer) {
        e cache = getCache(camera);
        if (this.ambientLight) {
            getEffectiveScene().u(cache.f75254a);
        }
    }

    @Override
    public void applyInPreUpdate(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
        e cache = getCache(camera);
        if (!this.ambientLight) {
            cache.f75254a = null;
            return;
        }
        float effectiveLux = getEffectiveLux();
        if (cache.f75254a != null && cache.f75255b == effectiveLux && cache.f75256c == this.f75240I) {
            return;
        }
        cache.f75255b = effectiveLux;
        cache.f75256c = this.f75240I;
        cache.f75254a = new FilamentIndirectLight(new IndirectLight.a().c(1, new float[]{1.0f, 1.0f, 1.0f}).b(effectiveLux * 1000.0f), this.f75240I);
    }

    public C5.b createResolutionEntry(String tittle, int value, c.s0 listener) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i10 : f75235b1) {
            steppedArrayList.add(i10 + "x" + i10);
        }
        return new C5.b(new d(listener, value), f75235b1[value] + "x" + f75235b1[value], steppedArrayList, b.a.SLDropdown, tittle);
    }

    @Override
    public void disableFor(Camera camera, FilamentCamera filamentCamera, FilamentView view) {
        e peekCache = peekCache(camera);
        if (peekCache == null || peekCache.f75254a == null || getEffectiveScene().n() != peekCache.f75254a) {
            return;
        }
        getEffectiveScene().u(null);
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
        return f75223O;
    }

    public float getEffectiveLux() {
        return GraphicsSettings.d() ? this.lux : this.lux * 3.0f;
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
        linkedList.add(N9.a.a("Color gradient", this.colorGradient, context));
        linkedList.add(F5.c.d(getInspectorMemory(), Lang.l(Lang.T.AMBIENT_LIGHT), new c()));
        return linkedList;
    }

    @InterfaceC15237a
    public float getLux() {
        return this.lux;
    }

    @InterfaceC15237a
    public int getMaxResolutionID() {
        return this.ambientLightReso;
    }

    @Override
    public String getTitle() {
        return f75223O;
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
        C15986h c15986h = this.f75240I;
        if (c15986h != null) {
            c15986h.n();
        }
    }

    @Override
    public void onDetach() {
        Iterator<e> it = getCaches().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            e next = it.next();
            if (next != null && next.f75254a != null && getEffectiveScene().n() == next.f75254a) {
                getEffectiveScene().u(null);
                break;
            }
        }
        super.onDetach();
        destroyReflectionCubemap();
        disposeGradientTexture();
    }

    @Override
    public void preRender() {
        super.preRender();
        if (this.f75244M) {
            if (!this.ambientLight) {
                this.f75244M = false;
                return;
            }
            C15986h c15986h = this.f75240I;
            if (c15986h == null || !c15986h.m()) {
                return;
            }
            this.f75240I.o();
            this.f75244M = false;
        }
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        updateGradientTexture();
        if (this.ambientLight) {
            updateReflectionsCubemapInstance();
            applySettingsTo(this.f75240I);
        }
    }

    @InterfaceC15237a
    public void setAmbientLight(boolean ambientLight) {
        this.ambientLight = ambientLight;
    }

    @InterfaceC15237a
    public void setAmbientLightResolutionID(int ambientLightReso) {
        if (ambientLightReso >= 0 && ambientLightReso < f75235b1.length) {
            this.ambientLightReso = ambientLightReso;
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("resolution ID out of bounds [0..");
        sb2.append(f75235b1.length - 1);
        sb2.append("]");
        throw new IndexOutOfBoundsException(sb2.toString());
    }

    @InterfaceC15237a
    public void setColorGradient(Gradient colorGradient) {
        if (colorGradient == null) {
            return;
        }
        this.colorGradient = colorGradient;
        this.f75243L = -1;
    }

    @InterfaceC15237a
    public void setLux(float lux) {
        this.lux = lux;
    }

    @InterfaceC15237a
    public void setMaxResolutionID(int maxReso) {
        setAmbientLightResolutionID(maxReso);
    }

    @Override
    public void setRuntime(Component run) {
        this.f75245N = run;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f75245N;
        if (component != null) {
            return component;
        }
        JAVARuntime.GradientLight gradientLight = new JAVARuntime.GradientLight(this);
        this.f75245N = gradientLight;
        return gradientLight;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        GradientLight gradientLight = new GradientLight();
        gradientLight.ambientLight = this.ambientLight;
        gradientLight.lux = this.lux;
        gradientLight.ambientLightReso = this.ambientLightReso;
        Gradient gradient = this.colorGradient;
        gradientLight.colorGradient = gradient != null ? gradient.clone() : null;
        return gradientLight;
    }

    @Override
    public void destroyCache(e cache) {
        if (cache == null) {
            return;
        }
        if (cache.f75254a != null) {
            if (getEffectiveScene().n() == cache.f75254a) {
                getEffectiveScene().u(null);
            }
            cache.f75254a.destroyImmediate();
            cache.f75254a = null;
        }
        cache.f75256c = null;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public e newCacheInstance() {
        return new e();
    }
}
