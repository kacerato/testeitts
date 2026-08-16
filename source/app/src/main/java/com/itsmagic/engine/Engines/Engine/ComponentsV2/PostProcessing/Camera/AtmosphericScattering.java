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
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.SunLight;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Core.BasePostProcessing;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Settings.GraphicsSettings;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
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
import java.util.concurrent.atomic.AtomicBoolean;
import mc.C14207a;
import s8.InterfaceC15237a;
import ub.p;
import wb.C15980b;
import wb.C15986h;
import yb.C16165b;

public class AtmosphericScattering extends BasePostProcessing<m> implements Serializable {

    public static final int f74739D0 = 7;

    public static final String f74740T = "AtmosphericScattering";

    public static final Class f74741U = AtmosphericScattering.class;

    public static final int f74742V = 0;

    public static final int f74743W = 1;

    public static final int f74744X = 2;

    public static final int f74745Y = 3;

    public static final int f74746Z = 4;

    public static final int f74747b1 = 8;

    public static final int f74748i1 = 9;

    public static final int f74749m1 = 10;

    public static final int f74750q0 = 5;

    public static final int f74751q1 = 11;

    public static final int f74752v0 = 6;

    public static final int f74753v1 = 12;

    public static int[] f74754y1;

    public int f74755H;

    public int f74756I;

    public C15986h f74757J;

    public C15986h f74758K;

    public final AtomicBoolean f74759L;

    public p f74760M;

    public final float[] f74761N;

    public float f74762O;

    public final float f74763P;

    public final float[] f74764Q;

    public final Vector3 f74765R;

    public Component f74766S;

    @Expose
    public boolean ambientLight;

    @Expose
    @eb.f
    private int ambientLightReso;

    @Expose
    @eb.f
    public float atmosphereDensity;

    @Expose
    @eb.f
    public float atmosphereDensityFalloff;

    @Expose
    @eb.f
    public float atmosphereExtent;

    @Expose
    public l cirrusClouds;

    @Expose
    public l cumulusClouds;

    @Expose
    public boolean enableMoonball;

    @Expose
    public boolean enableSunball;

    @Expose
    @eb.f
    public ColorINT groundColor;

    @Expose
    @eb.f
    private float lux;

    @Expose
    @eb.f
    private int maxReso;

    @Expose
    @eb.f
    public ColorINT rayLeigh;

    @Expose
    @eb.f
    public float skyboxSimulationSpeed;

    @Expose
    @eb.f
    public float wetness;

    public class a implements c.o0 {

        public class C1219a extends c.n0<l> {
            public C1219a() {
            }

            @Override
            public void a() {
            }

            @Override
            public void set(l value) {
                AtmosphericScattering atmosphericScattering = AtmosphericScattering.this;
                atmosphericScattering.cumulusClouds = value;
                atmosphericScattering.requestRebuild();
            }

            @Override
            public String c(l enumObject) {
                return enumObject.toString();
            }
        }

        public class b extends c.n0<l> {
            public b() {
            }

            @Override
            public void a() {
            }

            @Override
            public void set(l value) {
                AtmosphericScattering atmosphericScattering = AtmosphericScattering.this;
                atmosphericScattering.cirrusClouds = value;
                atmosphericScattering.requestRebuild();
            }

            @Override
            public String c(l enumObject) {
                return enumObject.toString();
            }
        }

        public class c implements D5.h {
            public c() {
            }

            @Override
            public Variable get() {
                try {
                    return new Variable("", AtmosphericScattering.this.wetness + "");
                } catch (Exception unused) {
                    return new Variable("", "0");
                }
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    try {
                        AtmosphericScattering atmosphericScattering = AtmosphericScattering.this;
                        atmosphericScattering.wetness = variable.float_value;
                        atmosphericScattering.requestRebuild();
                    } catch (Exception unused) {
                    }
                }
            }
        }

        public a() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            entries.add(F5.c.i(Lang.l(Lang.T.CUMULUS), l.class, AtmosphericScattering.this.cumulusClouds, new C1219a()));
            entries.add(F5.c.i(Lang.l(Lang.T.CIRRUS), l.class, AtmosphericScattering.this.cirrusClouds, new b()));
            C5.b bVar = new C5.b(new c(), Lang.l(Lang.T.WETNESS), b.a.SLFloat);
            AtmosphericScattering atmosphericScattering = AtmosphericScattering.this;
            entries.add(bVar.d(atmosphericScattering.f79250n, atmosphericScattering, "wetness", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
            return entries;
        }
    }

    public class b implements c.o0 {

        public class a implements D5.h {
            public a() {
            }

            @Override
            public Variable get() {
                try {
                    return new Variable("", AtmosphericScattering.this.atmosphereDensity + "");
                } catch (Exception unused) {
                    return new Variable("", "0");
                }
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    try {
                        AtmosphericScattering atmosphericScattering = AtmosphericScattering.this;
                        atmosphericScattering.atmosphereDensity = variable.float_value;
                        atmosphericScattering.requestRebuild();
                    } catch (Exception unused) {
                    }
                }
            }
        }

        public class C1220b implements D5.h {
            public C1220b() {
            }

            @Override
            public Variable get() {
                try {
                    return new Variable("", AtmosphericScattering.this.atmosphereDensityFalloff + "");
                } catch (Exception unused) {
                    return new Variable("", "0");
                }
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    try {
                        AtmosphericScattering atmosphericScattering = AtmosphericScattering.this;
                        atmosphericScattering.atmosphereDensityFalloff = variable.float_value;
                        atmosphericScattering.requestRebuild();
                    } catch (Exception unused) {
                    }
                }
            }
        }

        public class c implements D5.h {
            public c() {
            }

            @Override
            public Variable get() {
                try {
                    return new Variable("", AtmosphericScattering.this.atmosphereExtent + "");
                } catch (Exception unused) {
                    return new Variable("", "0");
                }
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    try {
                        AtmosphericScattering atmosphericScattering = AtmosphericScattering.this;
                        atmosphericScattering.atmosphereExtent = variable.float_value;
                        atmosphericScattering.requestRebuild();
                    } catch (Exception unused) {
                    }
                }
            }
        }

        public b() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            a aVar = new a();
            String l10 = Lang.l(Lang.T.ATMOSPHERE_DENSITY);
            b.a aVar2 = b.a.SLFloat;
            C5.b bVar = new C5.b(aVar, l10, aVar2);
            AtmosphericScattering atmosphericScattering = AtmosphericScattering.this;
            GameObject gameObject = atmosphericScattering.f79250n;
            com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
            entries.add(bVar.d(gameObject, atmosphericScattering, "atmosphereDensity", cVar));
            C5.b bVar2 = new C5.b(new C1220b(), Lang.l(Lang.T.ATMOSPHERE_DENSITY_FALLOFF), aVar2);
            AtmosphericScattering atmosphericScattering2 = AtmosphericScattering.this;
            entries.add(bVar2.d(atmosphericScattering2.f79250n, atmosphericScattering2, "atmosphereDensityFalloff", cVar));
            C5.b bVar3 = new C5.b(new c(), Lang.l(Lang.T.ATMOSPHERE_EXTENT), aVar2);
            AtmosphericScattering atmosphericScattering3 = AtmosphericScattering.this;
            entries.add(bVar3.d(atmosphericScattering3.f79250n, atmosphericScattering3, "atmosphereExtent", cVar));
            return entries;
        }
    }

    public class c extends AbstractC13203c {
        @Override
        public Class b() {
            return AtmosphericScattering.f74741U;
        }

        @Override
        public String c() {
            return AtmosphericScattering.f74740T;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Skybox";
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override
        public void run() {
            t6.e S12 = t6.j.J1() ? t6.j.S1("AtmosphericScattering - request rebuild") : null;
            try {
                AtmosphericScattering.this.f74765R.set(0.0f);
            } finally {
                t6.j.P1(S12);
            }
        }
    }

    public class e implements c.s0 {
        public e() {
        }

        @Override
        public void a() {
        }

        @Override
        public void b(int id2) {
            AtmosphericScattering.this.maxReso = id2;
        }
    }

    public class f implements D5.h {
        public f() {
        }

        @Override
        public Variable get() {
            try {
                return new Variable("", AtmosphericScattering.this.skyboxSimulationSpeed + "");
            } catch (Exception unused) {
                return new Variable("", "0");
            }
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                try {
                    AtmosphericScattering.this.skyboxSimulationSpeed = variable.float_value;
                } catch (Exception unused) {
                }
            }
        }
    }

    public class g implements D5.h {
        public g() {
        }

        @Override
        public Variable get() {
            return new Variable("", AtmosphericScattering.this.enableSunball + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                AtmosphericScattering.this.enableSunball = variable.booolean_value.booleanValue();
                AtmosphericScattering.this.requestRebuild();
            }
        }
    }

    public class h implements D5.h {
        public h() {
        }

        @Override
        public Variable get() {
            return new Variable("", AtmosphericScattering.this.enableMoonball + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                AtmosphericScattering.this.enableMoonball = variable.booolean_value.booleanValue();
                AtmosphericScattering.this.requestRebuild();
            }
        }
    }

    public class i implements c.o0 {

        public class a implements D5.h {
            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", AtmosphericScattering.this.ambientLight + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    AtmosphericScattering.this.ambientLight = variable.booolean_value.booleanValue();
                    AtmosphericScattering.this.requestRebuild();
                }
            }
        }

        public class b implements D5.h {
            public b() {
            }

            @Override
            public Variable get() {
                try {
                    return new Variable("", AtmosphericScattering.this.lux + "");
                } catch (Exception unused) {
                    return new Variable("", "0");
                }
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    try {
                        AtmosphericScattering.this.lux = variable.float_value;
                        AtmosphericScattering.this.requestRebuild();
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
                AtmosphericScattering.this.ambientLightReso = id2;
            }
        }

        public i() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            entries.add(new C5.b(new a(), "Enable", b.a.SLBoolean));
            C5.b bVar = new C5.b(new b(), "Lux", b.a.SLFloat);
            AtmosphericScattering atmosphericScattering = AtmosphericScattering.this;
            entries.add(bVar.d(atmosphericScattering.f79250n, atmosphericScattering, "lux", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
            entries.add(AtmosphericScattering.this.createResolutionEntry(Lang.l(Lang.T.RESOLUTION), AtmosphericScattering.this.ambientLightReso, new c()));
            return entries;
        }
    }

    public class j implements D5.h {

        public final c.s0 f74784a;

        public final int f74785b;

        public j(final c.s0 val$listener, final int val$shadowResolutionID) {
            this.f74784a = val$listener;
            this.f74785b = val$shadowResolutionID;
        }

        @Override
        public Variable get() {
            return new Variable("", AtmosphericScattering.f74754y1[this.f74785b] + "x" + AtmosphericScattering.f74754y1[this.f74785b]);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f74784a.b(variable.int_value);
            }
        }
    }

    public class k implements c.o0 {

        public final Context f74787a;

        public class a implements D5.h {
            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("temp", AtmosphericScattering.this.groundColor);
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    AtmosphericScattering atmosphericScattering = AtmosphericScattering.this;
                    atmosphericScattering.groundColor.intColor = variable.color_value.intColor;
                    atmosphericScattering.requestRebuild();
                }
            }
        }

        public class b implements D5.h {
            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("temp", AtmosphericScattering.this.rayLeigh);
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    AtmosphericScattering atmosphericScattering = AtmosphericScattering.this;
                    atmosphericScattering.rayLeigh.intColor = variable.color_value.intColor;
                    atmosphericScattering.requestRebuild();
                }
            }
        }

        public k(final Context val$context) {
            this.f74787a = val$context;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            a aVar = new a();
            b.a aVar2 = b.a.Color;
            C5.b bVar = new C5.b(aVar, "Ground color", aVar2, this.f74787a);
            AtmosphericScattering atmosphericScattering = AtmosphericScattering.this;
            GameObject gameObject = atmosphericScattering.f79250n;
            com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.COLOR;
            entries.add(bVar.d(gameObject, atmosphericScattering, "groundColor", cVar));
            C5.b bVar2 = new C5.b(new b(), Lang.l(Lang.T.RAY_COLOR), aVar2, this.f74787a);
            AtmosphericScattering atmosphericScattering2 = AtmosphericScattering.this;
            entries.add(bVar2.d(atmosphericScattering2.f79250n, atmosphericScattering2, "rayLeigh", cVar));
            return entries;
        }
    }

    public enum l {
        Disabled,
        Simple,
        Advanced
    }

    public static class m {

        public FilamentSkybox f74791a;

        public C15980b f74792b;

        public FilamentIndirectLight f74793c;

        public float f74794d;

        public C15980b f74795e;
    }

    static {
        C13201a.b(new c());
        f74754y1 = new int[]{16, 24, 32, 48, 64, 96, 128, 192, 256, 384, 512, 768, 1024};
    }

    public AtmosphericScattering() {
        super(f74740T);
        this.ambientLight = true;
        this.lux = 25.0f;
        this.ambientLightReso = 2;
        this.cumulusClouds = l.Simple;
        this.cirrusClouds = l.Advanced;
        this.rayLeigh = new ColorINT(51, 102, 255);
        this.wetness = 0.0f;
        this.atmosphereDensity = 0.07f;
        this.atmosphereDensityFalloff = 0.3f;
        this.atmosphereExtent = 80.0f;
        this.skyboxSimulationSpeed = 3.0f;
        this.enableSunball = false;
        this.enableMoonball = false;
        this.groundColor = new ColorINT(99, 91, 86);
        this.maxReso = 9;
        this.f74755H = -1;
        this.f74756I = -1;
        this.f74759L = new AtomicBoolean();
        this.f74761N = new float[3];
        this.f74762O = 0.0f;
        this.f74763P = 780.0f;
        this.f74764Q = new float[]{0.0f, -1.0f, 0.0f};
        this.f74765R = new Vector3(-99999.0f);
    }

    private static void addSamples(List<ec.f> params, List<ec.g> samples) {
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT4;
        MaterialBuilder.g gVar = MaterialBuilder.g.HIGH;
        params.add(new ec.f(rVar, "Rayleigh", gVar));
        MaterialBuilder.r rVar2 = MaterialBuilder.r.FLOAT3;
        params.add(new ec.f(rVar2, "sunDir", gVar));
        params.add(new ec.f(MaterialBuilder.r.FLOAT2, "advancedClouds", gVar));
        MaterialBuilder.r rVar3 = MaterialBuilder.r.FLOAT;
        params.add(new ec.f(rVar3, "time", gVar));
        params.add(new ec.f(rVar3, "wetness", gVar));
        params.add(new ec.f(rVar3, "atmosphereDensity", gVar));
        params.add(new ec.f(rVar3, "atmosphereDensityFalloff", gVar));
        params.add(new ec.f(rVar3, "atmosphereExtent", gVar));
        params.add(new ec.f(rVar2, "groundColor", gVar));
        params.add(new ec.f(rVar3, "enableClouds", gVar));
        params.add(new ec.f(rVar3, "enableCumulusClouds", gVar));
        params.add(new ec.f(rVar3, "enableCirrusClouds", gVar));
        params.add(new ec.f(rVar3, "enableSunball", gVar));
        params.add(new ec.f(rVar3, "enableMoonball", gVar));
        samples.add(new ec.g(MaterialBuilder.m.SAMPLER_2D, MaterialBuilder.l.FLOAT, gVar, "noiseTex"));
    }

    private void applySettingsTo(C15986h cubemap) {
        FilamentMaterial l10 = cubemap.l();
        if (l10 == null) {
            return;
        }
        l10.v("Rayleigh", this.rayLeigh);
        float[] fArr = this.f74764Q;
        l10.B("sunDir", fArr[0], fArr[1], fArr[2]);
        l10.w("time", this.f74762O);
        l10.w("wetness", this.wetness);
        l10.w("atmosphereDensity", this.atmosphereDensity);
        l10.w("atmosphereDensityFalloff", this.atmosphereDensityFalloff);
        l10.w("atmosphereExtent", this.atmosphereExtent);
        l10.u("groundColor", this.groundColor);
        l10.r("enableClouds", isCloudsEnabled());
        l lVar = this.cumulusClouds;
        l lVar2 = l.Disabled;
        l10.r("enableCumulusClouds", lVar != lVar2);
        l10.r("enableCirrusClouds", this.cirrusClouds != lVar2);
        l10.r("enableSunball", this.enableSunball);
        l10.r("enableMoonball", this.enableMoonball);
        l lVar3 = this.cumulusClouds;
        l lVar4 = l.Advanced;
        l10.s("advancedClouds", lVar3 == lVar4, this.cirrusClouds == lVar4);
        p pVar = this.f74760M;
        if (pVar == null || !pVar.J()) {
            return;
        }
        this.f74760M.f(l10, "noiseTex");
    }

    private void destroyCacheIndirectLight(m cache) {
        if (cache == null || cache.f74793c == null) {
            return;
        }
        if (getEffectiveScene().n() == cache.f74793c) {
            getEffectiveScene().u(null);
        }
        cache.f74793c.destroyImmediate();
        cache.f74793c = null;
        cache.f74795e = null;
    }

    private void destroyCacheSkybox(m cache) {
        if (cache == null || cache.f74791a == null) {
            return;
        }
        if (getEffectiveScene().p() == cache.f74791a) {
            getEffectiveScene().v(null);
        }
        cache.f74791a.destroyImmediate();
        cache.f74791a = null;
        cache.f74792b = null;
    }

    private void destroyIndirectLightsUsing(C15980b cubemapInstance) {
        if (cubemapInstance == null) {
            return;
        }
        for (m mVar : getCaches()) {
            if (mVar != null && mVar.f74795e == cubemapInstance) {
                destroyCacheIndirectLight(mVar);
            }
        }
    }

    private void destroyShaderCubemaps() {
        C15986h c15986h = this.f74757J;
        if (c15986h != null) {
            c15986h.h();
            this.f74757J = null;
        }
        C15986h c15986h2 = this.f74758K;
        if (c15986h2 != null) {
            c15986h2.h();
            this.f74758K = null;
        }
    }

    private void destroySkyboxesUsing(C15980b cubemapInstance) {
        if (cubemapInstance == null) {
            return;
        }
        for (m mVar : getCaches()) {
            if (mVar != null && mVar.f74792b == cubemapInstance) {
                destroyCacheSkybox(mVar);
            }
        }
    }

    private boolean isCloudsEnabled() {
        l lVar = this.cirrusClouds;
        l lVar2 = l.Disabled;
        return (lVar == lVar2 && this.cumulusClouds == lVar2) ? false : true;
    }

    public static String loadFile(String file) {
        return C14207a.a("Shaders/Atmos/" + file);
    }

    public void requestRebuild() {
        K8.a.I(new d());
    }

    private void updateReflectionsCubemapInstance() {
        int i10 = TextureConfig.f79814s[this.ambientLightReso];
        if (this.f74758K == null || this.f74756I != i10) {
            requestRebuild();
            C15986h c15986h = this.f74758K;
            if (c15986h != null) {
                destroyIndirectLightsUsing(c15986h);
                this.f74758K.h();
            }
            this.f74756I = i10;
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            SteppedArrayList steppedArrayList2 = new SteppedArrayList();
            String loadFile = loadFile("fragment.glsl");
            addSamples(steppedArrayList, steppedArrayList2);
            this.f74758K = new C15986h(i10, loadFile, steppedArrayList, steppedArrayList2, false);
            if (this.f74760M == null) {
                this.f74760M = C16165b.i("@@ASSET@@Engine/Graphics/Shaders/Atmos/noise.png");
            }
        }
    }

    private void updateSkyboxCubemapInstance() {
        int i10 = TextureConfig.f79814s[this.maxReso];
        if (this.f74757J == null || this.f74755H != i10) {
            requestRebuild();
            C15986h c15986h = this.f74757J;
            if (c15986h != null) {
                destroySkyboxesUsing(c15986h);
                this.f74757J.h();
            }
            this.f74755H = i10;
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            SteppedArrayList steppedArrayList2 = new SteppedArrayList();
            String loadFile = loadFile("fragment.glsl");
            addSamples(steppedArrayList, steppedArrayList2);
            this.f74757J = new C15986h(i10, loadFile, steppedArrayList, steppedArrayList2, true);
            if (this.f74760M == null) {
                this.f74760M = C16165b.i("@@ASSET@@Engine/Graphics/Shaders/Atmos/noise.png");
            }
        }
    }

    @Override
    public void applyBeforeRender(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer) {
        m cache = getCache(camera);
        if (camera.overrideAmbientLight() == null && this.ambientLight) {
            getEffectiveScene().u(cache.f74793c);
        }
        if (camera.getBackgroundType() != Camera.F.Skybox) {
            return;
        }
        getEffectiveScene().v(cache.f74791a);
    }

    @Override
    public void applyInPreUpdate(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
        if (camera.getBackgroundType() != Camera.F.Skybox) {
            return;
        }
        m cache = getCache(camera);
        if (cache.f74791a == null || cache.f74792b != this.f74757J) {
            destroyCacheSkybox(cache);
            cache.f74792b = this.f74757J;
            Skybox.a e10 = new Skybox.a().b(1.0f, 1.0f, 1.0f, 1.0f).e(1.0f);
            e10.g(false);
            cache.f74791a = new FilamentSkybox(e10, this.f74757J);
        }
        float effectiveLux = getEffectiveLux();
        if (!this.ambientLight) {
            destroyCacheIndirectLight(cache);
            return;
        }
        if (cache.f74793c != null && cache.f74794d == effectiveLux && cache.f74795e == this.f74758K) {
            return;
        }
        destroyCacheIndirectLight(cache);
        cache.f74794d = effectiveLux;
        cache.f74795e = this.f74758K;
        float[] fArr = this.f74761N;
        fArr[0] = 1.0f;
        fArr[1] = 1.0f;
        fArr[2] = 1.0f;
        cache.f74793c = new FilamentIndirectLight(new IndirectLight.a().c(1, this.f74761N).b(effectiveLux * 1000.0f), this.f74758K);
    }

    public C5.b createResolutionEntry(String tittle, int value, c.s0 listener) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i10 : f74754y1) {
            steppedArrayList.add(i10 + "x" + i10);
        }
        return new C5.b(new j(listener, value), f74754y1[value] + "x" + f74754y1[value], steppedArrayList, b.a.SLDropdown, tittle);
    }

    @Override
    public void disableFor(Camera camera, FilamentCamera filamentCamera, FilamentView view) {
        m peekCache = peekCache(camera);
        if (peekCache != null) {
            if (peekCache.f74791a != null && getEffectiveScene().p() == peekCache.f74791a) {
                getEffectiveScene().v(null);
            }
            if (peekCache.f74793c == null || getEffectiveScene().n() != peekCache.f74793c) {
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
    public float getAtmosphereDensity() {
        return this.atmosphereDensity;
    }

    @InterfaceC15237a
    public float getAtmosphereDensityFalloff() {
        return this.atmosphereDensityFalloff;
    }

    @InterfaceC15237a
    public float getAtmosphereExtent() {
        return this.atmosphereExtent;
    }

    public List<C5.b> getAtmosphericDensitySettings(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(F5.c.d(getInspectorMemory(), Lang.l(Lang.T.DENSITY), new b()));
        return steppedArrayList;
    }

    @InterfaceC15237a
    public l getCirrusClouds() {
        return this.cirrusClouds;
    }

    public List<C5.b> getCloudsSettings(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(F5.c.d(getInspectorMemory(), Lang.l(Lang.T.CLOUDS), new a()));
        return steppedArrayList;
    }

    public List<C5.b> getColorSettings(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(F5.c.d(getInspectorMemory(), Lang.l(Lang.T.COLOR), new k(context)));
        return steppedArrayList;
    }

    @InterfaceC15237a
    public l getCumulusClouds() {
        return this.cumulusClouds;
    }

    @Override
    public String getDisplayableTitle() {
        return f74740T;
    }

    public float getEffectiveLux() {
        return GraphicsSettings.d() ? this.lux : this.lux * 3.0f;
    }

    @InterfaceC15237a
    public ColorINT getGroundColor() {
        return this.groundColor;
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
        linkedList.add(createResolutionEntry(Lang.l(Lang.T.RESOLUTION), this.maxReso, new e()));
        linkedList.add(new C5.b(new f(), Lang.l(Lang.T.SIMULATION_SPEED), b.a.SLFloat).d(this.f79250n, this, "skyboxSimulationSpeed", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
        g gVar = new g();
        b.a aVar = b.a.SLBoolean;
        linkedList.add(new C5.b(gVar, "Enable sun ball", aVar));
        linkedList.add(new C5.b(new h(), "Enable moon ball", aVar));
        linkedList.add(F5.c.d(getInspectorMemory(), Lang.l(Lang.T.AMBIENT_LIGHT), new i()));
        linkedList.addAll(getColorSettings(context));
        linkedList.addAll(getCloudsSettings(context));
        linkedList.addAll(getAtmosphericDensitySettings(context));
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

    @InterfaceC15237a
    public ColorINT getRayLeigh() {
        return this.rayLeigh;
    }

    @InterfaceC15237a
    public float getSkyboxSimulationSpeed() {
        return this.skyboxSimulationSpeed;
    }

    @Override
    public String getTitle() {
        return f74740T;
    }

    @InterfaceC15237a
    public float getWetness() {
        return this.wetness;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @InterfaceC15237a
    public boolean isAmbientLight() {
        return this.ambientLight;
    }

    @InterfaceC15237a
    public boolean isEnableMoonball() {
        return this.enableMoonball;
    }

    @InterfaceC15237a
    public boolean isEnableSunball() {
        return this.enableSunball;
    }

    @Override
    public void lowTaskUpdate(GameObject gameObject, boolean isEditor) {
        super.lowTaskUpdate(gameObject, isEditor);
        C15986h c15986h = this.f74757J;
        if (c15986h != null) {
            c15986h.n();
        }
        C15986h c15986h2 = this.f74758K;
        if (c15986h2 != null) {
            c15986h2.n();
        }
    }

    @Override
    public void onDetach() {
        for (m mVar : getCaches()) {
            if (mVar != null) {
                if (mVar.f74791a != null && getEffectiveScene().p() == mVar.f74791a) {
                    getEffectiveScene().v(null);
                }
                if (mVar.f74793c != null && getEffectiveScene().n() == mVar.f74793c) {
                    getEffectiveScene().u(null);
                }
            }
        }
        super.onDetach();
        destroyShaderCubemaps();
    }

    @Override
    public void preRender() {
        super.preRender();
        Vector3 vector3 = this.f74765R;
        float[] fArr = this.f74764Q;
        if (!vector3.equally(fArr[0], fArr[1], fArr[2]) || (isCloudsEnabled() && this.skyboxSimulationSpeed != 0.0f)) {
            Vector3 vector32 = this.f74765R;
            float[] fArr2 = this.f74764Q;
            vector32.set(fArr2[0], fArr2[1], fArr2[2]);
            float b10 = this.f74762O + (K8.d.b() * this.skyboxSimulationSpeed);
            this.f74762O = b10;
            if (b10 >= 780.0f) {
                this.f74762O = b10 - 780.0f;
            }
            float f10 = this.f74762O;
            if (f10 <= -780.0f) {
                this.f74762O = f10 + 780.0f;
            }
            C15986h c15986h = this.f74757J;
            if (c15986h == null || !c15986h.m()) {
                this.f74765R.set(-99999.0f);
            } else {
                this.f74757J.o();
            }
            C15986h c15986h2 = this.f74758K;
            if (c15986h2 == null || !c15986h2.m()) {
                this.f74765R.set(-99999.0f);
            } else {
                this.f74758K.o();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0039, code lost:
    
        r6.f79250n.transform.C(r4.f74764Q);
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        updateSkyboxCubemapInstance();
        if (this.ambientLight) {
            updateReflectionsCubemapInstance();
        }
        try {
            List<com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component> h10 = R8.f.h(SunLight.class);
            float[] fArr = this.f74764Q;
            int i10 = 0;
            fArr[0] = 0.0f;
            fArr[1] = 1.0f;
            fArr[2] = 0.0f;
            if (!h10.isEmpty()) {
                while (true) {
                    if (i10 >= h10.size()) {
                        break;
                    }
                    com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component component = h10.get(i10);
                    if (component.isHierarchyActive()) {
                        break;
                    } else {
                        i10++;
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        C15986h c15986h = this.f74757J;
        if (c15986h != null) {
            applySettingsTo(c15986h);
        }
        C15986h c15986h2 = this.f74758K;
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
        if (ambientLightReso >= 0 && ambientLightReso < f74754y1.length) {
            this.ambientLightReso = ambientLightReso;
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("resolution ID out of bounds [0..");
        sb2.append(f74754y1.length - 1);
        sb2.append("]");
        throw new IndexOutOfBoundsException(sb2.toString());
    }

    @InterfaceC15237a
    public void setAtmosphereDensity(float atmosphereDensity) {
        this.atmosphereDensity = atmosphereDensity;
    }

    @InterfaceC15237a
    public void setAtmosphereDensityFalloff(float atmosphereDensityFalloff) {
        this.atmosphereDensityFalloff = atmosphereDensityFalloff;
    }

    @InterfaceC15237a
    public void setAtmosphereExtent(float atmosphereExtent) {
        this.atmosphereExtent = atmosphereExtent;
    }

    @InterfaceC15237a
    public void setCirrusClouds(l cirrusClouds) {
        this.cirrusClouds = cirrusClouds;
    }

    @InterfaceC15237a
    public void setCumulusClouds(l cumulusClouds) {
        this.cumulusClouds = cumulusClouds;
    }

    @InterfaceC15237a
    public void setEnableMoonball(boolean enableMoonball) {
        this.enableMoonball = enableMoonball;
    }

    @InterfaceC15237a
    public void setEnableSunball(boolean enableSunball) {
        this.enableSunball = enableSunball;
    }

    @InterfaceC15237a
    public void setGroundColor(ColorINT groundColor) {
        this.groundColor = groundColor;
    }

    @InterfaceC15237a
    public void setLux(float lux) {
        this.lux = lux;
    }

    @InterfaceC15237a
    public void setMaxResolutionID(int maxReso) {
        if (maxReso >= 0 && maxReso < f74754y1.length) {
            this.maxReso = maxReso;
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("resolution ID out of bounds [0..");
        sb2.append(f74754y1.length - 1);
        sb2.append("]");
        throw new IndexOutOfBoundsException(sb2.toString());
    }

    @InterfaceC15237a
    public void setRayLeigh(ColorINT rayLeigh) {
        this.rayLeigh = rayLeigh;
    }

    @Override
    public void setRuntime(Component run) {
        this.f74766S = run;
    }

    @InterfaceC15237a
    public void setSkyboxSimulationSpeed(float skyboxSimulationSpeed) {
        this.skyboxSimulationSpeed = skyboxSimulationSpeed;
    }

    @InterfaceC15237a
    public void setWetness(float wetness) {
        this.wetness = wetness;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f74766S;
        if (component != null) {
            return component;
        }
        JAVARuntime.AtmosphericScattering atmosphericScattering = new JAVARuntime.AtmosphericScattering(this);
        this.f74766S = atmosphericScattering;
        return atmosphericScattering;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        AtmosphericScattering atmosphericScattering = new AtmosphericScattering();
        atmosphericScattering.ambientLight = this.ambientLight;
        atmosphericScattering.lux = this.lux;
        atmosphericScattering.ambientLightReso = this.ambientLightReso;
        atmosphericScattering.cumulusClouds = this.cumulusClouds;
        atmosphericScattering.cirrusClouds = this.cirrusClouds;
        ColorINT colorINT = this.rayLeigh;
        atmosphericScattering.rayLeigh = colorINT != null ? ColorINT.k(colorINT) : null;
        ColorINT colorINT2 = this.groundColor;
        atmosphericScattering.groundColor = colorINT2 != null ? ColorINT.k(colorINT2) : null;
        atmosphericScattering.wetness = this.wetness;
        atmosphericScattering.atmosphereDensity = this.atmosphereDensity;
        atmosphericScattering.atmosphereDensityFalloff = this.atmosphereDensityFalloff;
        atmosphericScattering.atmosphereExtent = this.atmosphereExtent;
        atmosphericScattering.skyboxSimulationSpeed = this.skyboxSimulationSpeed;
        atmosphericScattering.enableSunball = this.enableSunball;
        atmosphericScattering.enableMoonball = this.enableMoonball;
        atmosphericScattering.maxReso = this.maxReso;
        return atmosphericScattering;
    }

    @Override
    public void destroyCache(m cache) {
        if (cache == null) {
            return;
        }
        destroyCacheSkybox(cache);
        destroyCacheIndirectLight(cache);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public m newCacheInstance() {
        return new m();
    }
}
