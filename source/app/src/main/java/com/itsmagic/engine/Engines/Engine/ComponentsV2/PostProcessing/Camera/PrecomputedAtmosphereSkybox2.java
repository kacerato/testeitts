package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera;

import C5.b;
import F5.c;
import JAVARuntime.Component;
import android.content.Context;
import com.google.android.filament.Box;
import com.google.android.filament.IndexBuffer;
import com.google.android.filament.IndirectLight;
import com.google.android.filament.Material;
import com.google.android.filament.RenderableManager;
import com.google.android.filament.Skybox;
import com.google.android.filament.Texture;
import com.google.android.filament.TextureSampler;
import com.google.android.filament.VertexBuffer;
import com.google.android.filament.filamat.MaterialBuilder;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.LOD.LODTarget;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.SunLight;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Core.BasePostProcessing;
import com.itsmagic.engine.Engines.Engine.Curve.Curve;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Settings.GraphicsSettings;
import com.itsmagic.engine.Engines.Engine.Texture.ColorTexture;
import com.itsmagic.engine.Engines.Engine.Texture.DepthTexture;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentCamera;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentIndirectLight;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterialTemplate;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentRenderable;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentScene;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentSkybox;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentVertexBuffer;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.LinkedList;
import java.util.List;
import mc.C14207a;
import s8.InterfaceC15237a;
import wb.C15980b;
import wb.C15986h;

public class PrecomputedAtmosphereSkybox2 extends BasePostProcessing<r> implements Serializable {

    public static final String f75574D0 = "PrecomputedAtmosphereSkybox2";

    public static final float f75575F1 = 0.003996f;

    public static final float f75576H1 = 6.5E-4f;

    public static final float f75577L1 = 0.001881f;

    public static final float f75578M1 = 8.5E-5f;

    public static final Class f75579b1 = PrecomputedAtmosphereSkybox2.class;

    public static final float f75580i1 = 0.005802f;

    public static final float f75581m1 = 0.013558f;

    public static final float f75582q1 = 0.0331f;

    public static final float f75583v1 = 0.003996f;

    public static final float f75584y1 = 0.003996f;

    public int f75585H;

    public int f75586I;

    public C15986h f75587J;

    public C15986h f75588K;

    public Tb.a f75589L;

    public Tb.a f75590M;

    public q f75591N;

    public q f75592O;

    public final float[] f75593P;

    public int f75594Q;

    public int f75595R;

    public int f75596S;

    public boolean f75597T;

    public boolean f75598U;

    public boolean f75599V;

    public boolean f75600W;

    public final float[] f75601X;

    public LODTarget f75602Y;

    public final Vector3 f75603Z;

    @Expose
    public boolean ambientLight;

    @Expose
    @eb.f
    private int ambientLightReso;

    @Expose
    @eb.f
    private ColorINT ambientLightSkyColorMultiplier;

    @Expose
    @eb.f
    private float atmosphereDensity;

    @Expose
    @eb.f
    private float atmosphereThicknessKm;

    @Expose
    @eb.f
    private boolean autoHeight;

    @Expose
    @eb.f
    private float eyeHeightKm;

    @Expose
    @eb.f
    private float groundRadiusKm;

    @Expose
    @eb.f
    private float lux;

    @Expose
    private Curve luxCurve;

    @Expose
    @eb.f
    private int maxReso;

    @Expose
    @eb.f
    private float mieG;

    @Expose
    @eb.f
    private float mieMaxHeightKm;

    @Expose
    @eb.f
    private float mieStrength;

    @Expose
    @eb.f
    private float ozoneAbsorptionFalloffKm;

    @Expose
    @eb.f
    private float ozonePeakAbsorptionHeightKm;

    @Expose
    @eb.f
    private float ozoneStrength;

    public boolean f75604q0;

    @Expose
    @eb.f
    private float rayleighMaxHeightKm;

    @Expose
    @eb.f
    private float rayleighStrength;

    @Expose
    @eb.f
    private ColorINT skyLuminanceColor;

    @Expose
    @eb.f
    private float skyLuminanceScale;

    @Expose
    @eb.f
    private int skyRaymarchSteps;

    @Expose
    @eb.f
    private float skySaturation;

    @Expose
    @eb.f
    private int skyviewLutReso;

    @Expose
    @eb.f
    private float skyviewMaxRaymarchDistMegaKm;

    @Expose
    @eb.f
    private float skyviewOffsetSegmentT;

    @Expose
    @eb.f
    private float sunAngularDiameter;

    @Expose
    @eb.f
    private float sunDiscFeather;

    @Expose
    @eb.f
    private float sunDiskIntensity;

    @Expose
    @eb.f
    private int transmittanceLutReso;

    @Expose
    @eb.f
    private float transmittanceOffsetSegmentT;

    @Expose
    @eb.f
    private int transmittanceSteps;

    @Expose
    @eb.f
    private boolean useDebanding;

    public Component f75605v0;

    public class a implements c.o0 {

        public class C1225a implements D5.h {

            public class RunnableC1226a implements Runnable {

                public final Variable f75608b;

                public RunnableC1226a(final Variable val$variable) {
                    this.f75608b = val$variable;
                }

                @Override
                public void run() {
                    t6.e S12 = t6.j.J1() ? t6.j.S1("PrecomputedAtmosphereSkybox2 - set auto height") : null;
                    try {
                        PrecomputedAtmosphereSkybox2.this.autoHeight = this.f75608b.booolean_value.booleanValue();
                    } finally {
                        t6.j.P1(S12);
                    }
                }
            }

            public C1225a() {
            }

            @Override
            public Variable get() {
                return new Variable("", PrecomputedAtmosphereSkybox2.this.autoHeight + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new RunnableC1226a(variable));
                }
            }
        }

        public class b implements p {
            public b() {
            }

            @Override
            public void a(float v10) {
                PrecomputedAtmosphereSkybox2.this.eyeHeightKm = v10;
            }

            @Override
            public float get() {
                return PrecomputedAtmosphereSkybox2.this.eyeHeightKm;
            }
        }

        public a() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> inner) {
            inner.add(new C5.b(new C1225a(), "Auto height", b.a.SLBoolean));
            inner.add(PrecomputedAtmosphereSkybox2.this.floatEntry("Eye height (km)", new b(), false, false, true, true));
            return inner;
        }
    }

    public class b implements c.o0 {

        public class a implements p {
            public a() {
            }

            @Override
            public void a(float v10) {
                PrecomputedAtmosphereSkybox2.this.transmittanceSteps = Math.max(1, (int) v10);
            }

            @Override
            public float get() {
                return PrecomputedAtmosphereSkybox2.this.transmittanceSteps;
            }
        }

        public class C1227b implements p {
            public C1227b() {
            }

            @Override
            public void a(float v10) {
                PrecomputedAtmosphereSkybox2.this.skyRaymarchSteps = Math.max(1, (int) v10);
            }

            @Override
            public float get() {
                return PrecomputedAtmosphereSkybox2.this.skyRaymarchSteps;
            }
        }

        public b() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> inner) {
            inner.add(PrecomputedAtmosphereSkybox2.this.floatEntry("Transmittance steps", new a(), true, false, false, false));
            inner.add(PrecomputedAtmosphereSkybox2.this.floatEntry("Skyview raymarch steps", new C1227b(), false, false, true, false));
            return inner;
        }
    }

    public class c implements c.o0 {

        public class a implements p {
            public a() {
            }

            @Override
            public void a(float v10) {
                PrecomputedAtmosphereSkybox2.this.transmittanceOffsetSegmentT = Math.max(0.0f, v10);
            }

            @Override
            public float get() {
                return PrecomputedAtmosphereSkybox2.this.transmittanceOffsetSegmentT;
            }
        }

        public class b implements p {
            public b() {
            }

            @Override
            public void a(float v10) {
                PrecomputedAtmosphereSkybox2.this.skyviewOffsetSegmentT = Math.max(0.0f, v10);
            }

            @Override
            public float get() {
                return PrecomputedAtmosphereSkybox2.this.skyviewOffsetSegmentT;
            }
        }

        public class C1228c implements p {
            public C1228c() {
            }

            @Override
            public void a(float v10) {
                PrecomputedAtmosphereSkybox2.this.skyviewMaxRaymarchDistMegaKm = Math.max(1.0E-9f, v10);
            }

            @Override
            public float get() {
                return PrecomputedAtmosphereSkybox2.this.skyviewMaxRaymarchDistMegaKm;
            }
        }

        public c() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> inner) {
            inner.add(PrecomputedAtmosphereSkybox2.this.floatEntry("Transmittance offset", new a(), true, false, false, false));
            inner.add(PrecomputedAtmosphereSkybox2.this.floatEntry("Skyview offset", new b(), false, false, true, false));
            inner.add(PrecomputedAtmosphereSkybox2.this.floatEntry("Skyview max dist (million km)", new C1228c(), false, false, true, false));
            return inner;
        }
    }

    public class d implements c.o0 {

        public class a implements c.s0 {
            public a() {
            }

            @Override
            public void a() {
            }

            @Override
            public void b(int id2) {
                PrecomputedAtmosphereSkybox2.this.maxReso = id2;
                PrecomputedAtmosphereSkybox2.this.f75599V = true;
            }
        }

        public class b implements c.s0 {
            public b() {
            }

            @Override
            public void a() {
            }

            @Override
            public void b(int id2) {
                PrecomputedAtmosphereSkybox2.this.transmittanceLutReso = id2;
                PrecomputedAtmosphereSkybox2.this.markTransmittanceDirtyCascade();
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
                PrecomputedAtmosphereSkybox2.this.skyviewLutReso = id2;
                PrecomputedAtmosphereSkybox2.this.markSkyviewDirtyCascade();
            }
        }

        public d() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> inner) {
            inner.add(F5.c.v(Lang.l(Lang.T.RESOLUTION), PrecomputedAtmosphereSkybox2.this.maxReso, new a()));
            inner.add(F5.c.v("Transmittance LUT", PrecomputedAtmosphereSkybox2.this.transmittanceLutReso, new b()));
            inner.add(F5.c.v("Skyview LUT", PrecomputedAtmosphereSkybox2.this.skyviewLutReso, new c()));
            return inner;
        }
    }

    public class e implements c.o0 {

        public final Context f75622a;

        public class a implements D5.h {
            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", PrecomputedAtmosphereSkybox2.this.ambientLight + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    PrecomputedAtmosphereSkybox2.this.ambientLight = variable.booolean_value.booleanValue();
                    PrecomputedAtmosphereSkybox2.this.f75599V = true;
                }
            }
        }

        public class b implements D5.h {
            public b() {
            }

            @Override
            public Variable get() {
                PrecomputedAtmosphereSkybox2.this.ensureAmbientLightSkyColorMultiplier();
                return new Variable("temp", PrecomputedAtmosphereSkybox2.this.ambientLightSkyColorMultiplier);
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    PrecomputedAtmosphereSkybox2.this.ensureAmbientLightSkyColorMultiplier();
                    PrecomputedAtmosphereSkybox2.this.ambientLightSkyColorMultiplier.intColor = variable.color_value.intColor;
                    PrecomputedAtmosphereSkybox2.this.f75599V = true;
                }
            }
        }

        public class c implements D5.h {
            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", PrecomputedAtmosphereSkybox2.this.lux + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    PrecomputedAtmosphereSkybox2.this.lux = variable.float_value;
                }
            }
        }

        public class d implements c.s0 {
            public d() {
            }

            @Override
            public void a() {
            }

            @Override
            public void b(int id2) {
                PrecomputedAtmosphereSkybox2.this.ambientLightReso = id2;
                PrecomputedAtmosphereSkybox2.this.f75599V = true;
            }
        }

        public e(final Context val$context) {
            this.f75622a = val$context;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> inner) {
            inner.add(new C5.b(new a(), "Enable", b.a.SLBoolean));
            inner.add(new C5.b(new b(), "Sky color multiplier", b.a.Color, this.f75622a));
            inner.add(new C5.b(new c(), "Lux", b.a.SLFloat));
            PrecomputedAtmosphereSkybox2.this.ensureLuxCurve();
            inner.add(J9.c.a("Lux curve", PrecomputedAtmosphereSkybox2.this.luxCurve, this.f75622a));
            inner.add(F5.c.v(Lang.l(Lang.T.RESOLUTION), PrecomputedAtmosphereSkybox2.this.ambientLightReso, new d()));
            return inner;
        }
    }

    public class f implements D5.h {

        public final p f75628a;

        public final boolean f75629b;

        public final boolean f75630c;

        public final boolean f75631d;

        public final boolean f75632e;

        public f(final p val$ref, final boolean val$markTrans, final boolean val$markSky, final boolean val$markSkybox, final boolean val$markMs) {
            this.f75628a = val$ref;
            this.f75629b = val$markTrans;
            this.f75630c = val$markSky;
            this.f75631d = val$markSkybox;
            this.f75632e = val$markMs;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f75628a.get() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f75628a.a(variable.float_value);
                if (this.f75629b) {
                    PrecomputedAtmosphereSkybox2.this.markTransmittanceDirtyCascade();
                }
                if (this.f75630c) {
                    PrecomputedAtmosphereSkybox2.this.markSkyviewDirtyCascade();
                }
                if (this.f75631d || this.f75632e) {
                    PrecomputedAtmosphereSkybox2.this.f75599V = true;
                }
            }
        }
    }

    public class g extends AbstractC13203c {
        @Override
        public Class b() {
            return PrecomputedAtmosphereSkybox2.f75579b1;
        }

        @Override
        public String c() {
            return PrecomputedAtmosphereSkybox2.f75574D0;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Skybox";
        }
    }

    public class h implements D5.h {
        public h() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", PrecomputedAtmosphereSkybox2.this.skyLuminanceColor);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                PrecomputedAtmosphereSkybox2.this.skyLuminanceColor.intColor = variable.color_value.intColor;
                PrecomputedAtmosphereSkybox2.this.f75599V = true;
            }
        }
    }

    public class i implements p {
        public i() {
        }

        @Override
        public void a(float v10) {
            PrecomputedAtmosphereSkybox2.this.skyLuminanceScale = v10;
        }

        @Override
        public float get() {
            return PrecomputedAtmosphereSkybox2.this.skyLuminanceScale;
        }
    }

    public class j implements p {
        public j() {
        }

        @Override
        public void a(float v10) {
            PrecomputedAtmosphereSkybox2.this.skySaturation = Math.max(0.0f, v10);
        }

        @Override
        public float get() {
            return PrecomputedAtmosphereSkybox2.this.skySaturation;
        }
    }

    public class k implements p {
        public k() {
        }

        @Override
        public void a(float v10) {
            PrecomputedAtmosphereSkybox2.this.sunAngularDiameter = v10;
        }

        @Override
        public float get() {
            return PrecomputedAtmosphereSkybox2.this.sunAngularDiameter;
        }
    }

    public class l implements p {
        public l() {
        }

        @Override
        public void a(float v10) {
            PrecomputedAtmosphereSkybox2.this.sunDiskIntensity = v10;
        }

        @Override
        public float get() {
            return PrecomputedAtmosphereSkybox2.this.sunDiskIntensity;
        }
    }

    public class m implements p {
        public m() {
        }

        @Override
        public void a(float v10) {
            PrecomputedAtmosphereSkybox2.this.sunDiscFeather = Math.max(0.0f, v10);
        }

        @Override
        public float get() {
            return PrecomputedAtmosphereSkybox2.this.sunDiscFeather;
        }
    }

    public class n implements D5.h {
        public n() {
        }

        @Override
        public Variable get() {
            return new Variable("", PrecomputedAtmosphereSkybox2.this.useDebanding + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                PrecomputedAtmosphereSkybox2.this.useDebanding = variable.booolean_value.booleanValue();
                PrecomputedAtmosphereSkybox2.this.f75599V = true;
            }
        }
    }

    public class o implements c.o0 {

        public class a implements p {
            public a() {
            }

            @Override
            public void a(float v10) {
                PrecomputedAtmosphereSkybox2.this.ozonePeakAbsorptionHeightKm = Math.max(0.0f, v10);
            }

            @Override
            public float get() {
                return PrecomputedAtmosphereSkybox2.this.ozonePeakAbsorptionHeightKm;
            }
        }

        public class b implements p {
            public b() {
            }

            @Override
            public void a(float v10) {
                PrecomputedAtmosphereSkybox2.this.ozoneAbsorptionFalloffKm = Math.max(0.001f, v10);
            }

            @Override
            public float get() {
                return PrecomputedAtmosphereSkybox2.this.ozoneAbsorptionFalloffKm;
            }
        }

        public class c implements p {
            public c() {
            }

            @Override
            public void a(float v10) {
                PrecomputedAtmosphereSkybox2.this.groundRadiusKm = Math.max(1.0f, v10);
            }

            @Override
            public float get() {
                return PrecomputedAtmosphereSkybox2.this.groundRadiusKm;
            }
        }

        public class d implements p {
            public d() {
            }

            @Override
            public void a(float v10) {
                PrecomputedAtmosphereSkybox2.this.atmosphereThicknessKm = Math.max(0.1f, v10);
            }

            @Override
            public float get() {
                return PrecomputedAtmosphereSkybox2.this.atmosphereThicknessKm;
            }
        }

        public class e implements p {
            public e() {
            }

            @Override
            public void a(float v10) {
                PrecomputedAtmosphereSkybox2.this.atmosphereDensity = Math.max(0.0f, v10);
            }

            @Override
            public float get() {
                return PrecomputedAtmosphereSkybox2.this.atmosphereDensity;
            }
        }

        public class f implements p {
            public f() {
            }

            @Override
            public void a(float v10) {
                PrecomputedAtmosphereSkybox2.this.rayleighStrength = Math.max(0.0f, v10);
            }

            @Override
            public float get() {
                return PrecomputedAtmosphereSkybox2.this.rayleighStrength;
            }
        }

        public class g implements p {
            public g() {
            }

            @Override
            public void a(float v10) {
                PrecomputedAtmosphereSkybox2.this.mieStrength = Math.max(0.0f, v10);
            }

            @Override
            public float get() {
                return PrecomputedAtmosphereSkybox2.this.mieStrength;
            }
        }

        public class h implements p {
            public h() {
            }

            @Override
            public void a(float v10) {
                PrecomputedAtmosphereSkybox2.this.ozoneStrength = Math.max(0.0f, v10);
            }

            @Override
            public float get() {
                return PrecomputedAtmosphereSkybox2.this.ozoneStrength;
            }
        }

        public class i implements p {
            public i() {
            }

            @Override
            public void a(float v10) {
                PrecomputedAtmosphereSkybox2.this.mieG = v10;
            }

            @Override
            public float get() {
                return PrecomputedAtmosphereSkybox2.this.mieG;
            }
        }

        public class j implements p {
            public j() {
            }

            @Override
            public void a(float v10) {
                PrecomputedAtmosphereSkybox2.this.rayleighMaxHeightKm = Math.max(0.001f, v10);
            }

            @Override
            public float get() {
                return PrecomputedAtmosphereSkybox2.this.rayleighMaxHeightKm;
            }
        }

        public class k implements p {
            public k() {
            }

            @Override
            public void a(float v10) {
                PrecomputedAtmosphereSkybox2.this.mieMaxHeightKm = Math.max(0.001f, v10);
            }

            @Override
            public float get() {
                return PrecomputedAtmosphereSkybox2.this.mieMaxHeightKm;
            }
        }

        public o() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> inner) {
            inner.add(PrecomputedAtmosphereSkybox2.this.floatEntry("Ground radius (km)", new c(), true, false, false, false));
            inner.add(PrecomputedAtmosphereSkybox2.this.floatEntry("Atmosphere thickness (km)", new d(), true, false, false, false));
            inner.add(PrecomputedAtmosphereSkybox2.this.floatEntry("Atmosphere density", new e(), true, false, false, false));
            inner.add(PrecomputedAtmosphereSkybox2.this.floatEntry("Rayleigh strength", new f(), true, false, false, false));
            inner.add(PrecomputedAtmosphereSkybox2.this.floatEntry("Mie strength", new g(), true, false, false, false));
            inner.add(PrecomputedAtmosphereSkybox2.this.floatEntry("Ozone strength", new h(), true, false, false, false));
            inner.add(PrecomputedAtmosphereSkybox2.this.floatEntry("Mie g", new i(), false, false, true, false));
            inner.add(PrecomputedAtmosphereSkybox2.this.floatEntry("Rayleigh scale height (km)", new j(), true, false, false, false));
            inner.add(PrecomputedAtmosphereSkybox2.this.floatEntry("Mie scale height (km)", new k(), true, false, false, false));
            inner.add(PrecomputedAtmosphereSkybox2.this.floatEntry("Ozone peak height (km)", new a(), true, false, false, false));
            inner.add(PrecomputedAtmosphereSkybox2.this.floatEntry("Ozone falloff (km)", new b(), true, false, false, false));
            return inner;
        }
    }

    public interface p {
        void a(float value);

        float get();
    }

    public static class q {

        public final FilamentMaterialTemplate f75653a;

        public final FilamentView f75654b;

        public final FilamentScene f75655c;

        public final Rb.c f75656d;

        public final FilamentRenderable f75657e;

        public final FilamentVertexBuffer f75658f;

        public final Rb.d f75659g;

        public final FilamentCamera f75660h;

        public final FilamentMaterial f75661i;

        public q(String name, String shaderCode, List<ec.f> uniforms, List<ec.g> samplers) {
            FilamentMaterialTemplate b10 = b(name, shaderCode, uniforms, samplers);
            this.f75653a = b10;
            FilamentMaterial e10 = b10.e();
            this.f75661i = e10;
            FilamentVertexBuffer d10 = d();
            this.f75658f = d10;
            Rb.d c10 = c();
            this.f75659g = c10;
            FilamentScene filamentScene = new FilamentScene();
            this.f75655c = filamentScene;
            Rb.c cVar = new Rb.c();
            this.f75656d = cVar;
            this.f75657e = new FilamentRenderable(new RenderableManager.a(1).f(false), e10, cVar, d10, c10, RenderableManager.b.TRIANGLES, new Box(0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f));
            filamentScene.j(cVar);
            FilamentView filamentView = new FilamentView();
            this.f75654b = filamentView;
            filamentView.C(filamentScene);
            filamentView.z(false);
            FilamentCamera filamentCamera = new FilamentCamera();
            this.f75660h = filamentCamera;
            filamentCamera.l(-1.0f, 1.0f, -1.0f, 1.0f, 0.0f, 1.0f);
            filamentView.x(filamentCamera);
            filamentScene.j(filamentCamera.f());
        }

        public static FilamentMaterialTemplate b(String name, String shaderCode, List<ec.f> uniforms, List<ec.g> samplers) {
            int computeFullscreenMaterialHash = PrecomputedAtmosphereSkybox2.computeFullscreenMaterialHash(name, shaderCode, uniforms, samplers);
            ByteBuffer f10 = ec.b.f(computeFullscreenMaterialHash);
            if (f10 == null) {
                com.google.android.filament.filamat.b d10 = PrecomputedAtmosphereSkybox2.createFullscreenMaterialBuilder(name, shaderCode, uniforms, samplers).d();
                if (d10 == null || !d10.b()) {
                    throw new RuntimeException("Failed to compile fullscreen material: " + name);
                }
                f10 = d10.a();
                ec.b.l(computeFullscreenMaterialHash, f10);
            }
            ByteBuffer duplicate = f10.duplicate();
            duplicate.rewind();
            return new FilamentMaterialTemplate(new Material.b().b(duplicate, duplicate.remaining()));
        }

        public static Rb.d c() {
            ByteBuffer order = ByteBuffer.allocateDirect(12).order(ByteOrder.nativeOrder());
            order.asShortBuffer().put(new short[]{0, 1, 2, 0, 2, 3}).flip();
            Rb.d dVar = new Rb.d(new IndexBuffer.a().c(6).a(IndexBuffer.a.b.USHORT));
            dVar.r(order);
            return dVar;
        }

        public static FilamentVertexBuffer d() {
            ByteBuffer order = ByteBuffer.allocateDirect(64).order(ByteOrder.nativeOrder());
            order.asFloatBuffer().put(new float[]{-1.0f, -1.0f, 0.0f, 1.0f, 1.0f, -1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f, -1.0f, 1.0f, 0.0f, 0.0f}).flip();
            VertexBuffer.b c10 = new VertexBuffer.b().h(4).c(1);
            VertexBuffer.c cVar = VertexBuffer.c.POSITION;
            VertexBuffer.a aVar = VertexBuffer.a.FLOAT2;
            FilamentVertexBuffer filamentVertexBuffer = new FilamentVertexBuffer(c10.b(cVar, 0, aVar, 0, 16).b(VertexBuffer.c.UV0, 0, aVar, 8, 16));
            filamentVertexBuffer.q(0, order);
            return filamentVertexBuffer;
        }

        public void e() {
            this.f75654b.F();
            this.f75654b.x(null);
            this.f75654b.C(null);
            try {
                this.f75655c.s(this.f75660h.f());
            } catch (Throwable unused) {
            }
            try {
                this.f75655c.s(this.f75656d);
            } catch (Throwable unused2) {
            }
            this.f75657e.destroyImmediate();
            this.f75661i.destroyImmediate();
            this.f75658f.destroyImmediate();
            this.f75659g.destroyImmediate();
            this.f75660h.destroyImmediate();
            this.f75654b.destroyImmediate();
            this.f75655c.destroyImmediate();
            this.f75656d.destroyImmediate();
        }

        public void f(Tb.a dst) {
            this.f75654b.D(0, 0, dst.i(), dst.h());
            dst.a(this.f75654b);
            Qb.a.o(this.f75654b);
            dst.z();
        }
    }

    public static class r {

        public FilamentSkybox f75662a;

        public C15980b f75663b;

        public FilamentIndirectLight f75664c;

        public float f75665d;

        public C15980b f75666e;

        public int f75667f;
    }

    static {
        C13201a.b(new g());
    }

    public PrecomputedAtmosphereSkybox2() {
        super(f75574D0);
        this.ambientLight = true;
        this.lux = 25.0f;
        this.ambientLightReso = 2;
        this.ambientLightSkyColorMultiplier = new ColorINT(222, 222, 222);
        this.maxReso = 11;
        this.transmittanceLutReso = 8;
        this.skyviewLutReso = 7;
        this.skyLuminanceColor = new ColorINT(255, 255, 255);
        this.skyLuminanceScale = 6.0f;
        this.skySaturation = 1.0f;
        this.sunAngularDiameter = 0.04f;
        this.sunDiskIntensity = 1.0f;
        this.sunDiscFeather = 0.1f;
        this.useDebanding = true;
        this.groundRadiusKm = 6371.0f;
        this.atmosphereThicknessKm = 100.0f;
        this.eyeHeightKm = 0.1f;
        this.autoHeight = true;
        this.mieG = 0.8f;
        this.rayleighStrength = 1.0f;
        this.mieStrength = 1.0f;
        this.ozoneStrength = 1.0f;
        this.atmosphereDensity = 1.0f;
        this.rayleighMaxHeightKm = 8.0f;
        this.mieMaxHeightKm = 1.2f;
        this.ozonePeakAbsorptionHeightKm = 25.0f;
        this.ozoneAbsorptionFalloffKm = 15.0f;
        this.skyRaymarchSteps = 64;
        this.transmittanceSteps = 40;
        this.transmittanceOffsetSegmentT = 0.3f;
        this.skyviewOffsetSegmentT = 0.3f;
        this.skyviewMaxRaymarchDistMegaKm = 1000.0f;
        this.f75585H = -1;
        this.f75586I = -1;
        this.f75593P = new float[]{0.0f, 1.0f, 0.0f};
        this.f75594Q = Integer.MIN_VALUE;
        this.f75595R = Integer.MIN_VALUE;
        this.f75596S = Integer.MIN_VALUE;
        this.f75597T = true;
        this.f75598U = true;
        this.f75599V = true;
        this.f75601X = new float[]{1.0f, 1.0f, 1.0f};
        this.f75603Z = new Vector3();
        ensureLuxCurve();
    }

    private void applyLutPassSettings() {
        q qVar = this.f75591N;
        if (qVar != null) {
            FilamentMaterial filamentMaterial = qVar.f75661i;
            setSharedAtmosphereParams(filamentMaterial);
            filamentMaterial.w("offsetSegmentT", Math.max(0.0f, this.transmittanceOffsetSegmentT));
            filamentMaterial.w("transmittanceSteps", Math.max(1, this.transmittanceSteps));
        }
        q qVar2 = this.f75592O;
        if (qVar2 != null) {
            FilamentMaterial filamentMaterial2 = qVar2.f75661i;
            setSharedAtmosphereParams(filamentMaterial2);
            filamentMaterial2.w("mieG", this.mieG);
            filamentMaterial2.w("maxRaymarchDistKm", Math.max(0.001f, this.skyviewMaxRaymarchDistMegaKm * 1000000.0f));
            filamentMaterial2.w("offsetSegmentT", Math.max(0.0f, this.skyviewOffsetSegmentT));
            float[] fArr = this.f75593P;
            filamentMaterial2.B("sunDir", fArr[0], fArr[1], fArr[2]);
            filamentMaterial2.w("eyeHeightKm", Math.max(0.001f, this.eyeHeightKm));
            filamentMaterial2.w("skyRaymarchSteps", Math.max(1, this.skyRaymarchSteps));
            Tb.a aVar = this.f75589L;
            if (aVar == null || !aVar.s()) {
                return;
            }
            ColorTexture l10 = this.f75589L.l();
            if (ub.p.L(l10)) {
                l10.f(filamentMaterial2, "transmittanceTex");
            }
        }
    }

    private boolean applySkyboxSettingsTo(C15986h cubemap, float skyColorMulR, float skyColorMulG, float skyColorMulB) {
        FilamentMaterial l10 = cubemap.l();
        if (l10 == null) {
            return false;
        }
        l10.B("lightColor", this.skyLuminanceColor.w() * skyColorMulR, this.skyLuminanceColor.u() * skyColorMulG, this.skyLuminanceColor.s() * skyColorMulB);
        l10.w("skySaturation", Math.max(0.0f, this.skySaturation));
        l10.w("skyExposure", Math.max(0.0f, getEffectiveLuminanceScale() * 2.5f));
        l10.w("sun_disc_feather", Math.max(0.0f, this.sunDiscFeather));
        l10.w("sunAngularDiameter", Math.max(1.0E-4f, this.sunAngularDiameter));
        l10.w("sundisc_intensity", Math.max(0.0f, this.sunDiskIntensity) * 10.0f);
        l10.w("use_debanding", this.useDebanding ? 1.0f : 0.0f);
        l10.w("groundRadiusKm", Math.max(1.0f, this.groundRadiusKm));
        l10.w("atmosphereThicknessKm", Math.max(0.1f, this.atmosphereThicknessKm));
        l10.w("eyeHeightKm", Math.max(0.001f, this.eyeHeightKm));
        float[] fArr = this.f75593P;
        l10.B("sunDir", fArr[0], fArr[1], fArr[2]);
        Tb.a aVar = this.f75589L;
        if (aVar != null && this.f75590M != null && aVar.s() && this.f75590M.s()) {
            ColorTexture l11 = this.f75589L.l();
            ColorTexture l12 = this.f75590M.l();
            if (ub.p.L(l11) && ub.p.L(l12)) {
                l12.f(l10, "skyviewLut");
                l11.f(l10, "transmittanceLut");
                return true;
            }
        }
        return false;
    }

    private static void buildFullscreenShaderCache(String name, String shaderCode, List<ec.f> uniforms, List<ec.g> samplers, boolean forceRebuild) {
        int computeFullscreenMaterialHash = computeFullscreenMaterialHash(name, shaderCode, uniforms, samplers);
        if (isCachedOrRestored(computeFullscreenMaterialHash, forceRebuild)) {
            return;
        }
        com.google.android.filament.filamat.b d10 = createFullscreenMaterialBuilder(name, shaderCode, uniforms, samplers).d();
        if (d10 != null && d10.b()) {
            ec.b.l(computeFullscreenMaterialHash, d10.a());
            return;
        }
        throw new RuntimeException("Failed to compile fullscreen material: " + name);
    }

    public static void buildShaderCache() {
        buildShaderCache(false);
    }

    public static void buildShaderCacheForce() {
        buildShaderCache(true);
    }

    private static void buildShaderCubemapCache(String shaderCode, List<ec.f> uniforms, List<ec.g> samplers, boolean forceRebuild) {
        int computeShaderCubemapHash = computeShaderCubemapHash(shaderCode);
        if (isCachedOrRestored(computeShaderCubemapHash, forceRebuild)) {
            return;
        }
        com.google.android.filament.filamat.b d10 = createShaderCubemapMaterialBuilder(shaderCode, uniforms, samplers).d();
        if (d10 == null || !d10.b()) {
            throw new RuntimeException("Failed to compile cubemap material for PrecomputedAtmosphere2");
        }
        ec.b.l(computeShaderCubemapHash, d10.a());
    }

    public static int computeFullscreenMaterialHash(String name, String shaderCode, List<ec.f> uniforms, List<ec.g> samplers) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("precomputed-atmosphere2-fs-v1:");
        sb2.append(name);
        sb2.append(':');
        sb2.append(shaderCode);
        sb2.append(':');
        for (int i10 = 0; i10 < uniforms.size(); i10++) {
            ec.f fVar = uniforms.get(i10);
            sb2.append(fVar.a());
            sb2.append('|');
            sb2.append((Object) fVar.d());
            sb2.append('|');
            sb2.append((Object) fVar.b());
            sb2.append(';');
        }
        sb2.append(':');
        for (int i11 = 0; i11 < samplers.size(); i11++) {
            ec.g gVar = samplers.get(i11);
            sb2.append(gVar.b());
            sb2.append('|');
            sb2.append((Object) gVar.d());
            sb2.append('|');
            sb2.append((Object) gVar.a());
            sb2.append('|');
            sb2.append((Object) gVar.c());
            sb2.append(';');
        }
        return sb2.toString().hashCode();
    }

    private static int computeShaderCubemapHash(String shaderCode) {
        return ("shadercubemap-" + shaderCode).hashCode();
    }

    private int computeSkyboxHash() {
        int computeSkyviewHash = ((((((((((((((((((527 + computeSkyviewHash()) * 31) + this.skyLuminanceColor.intColor) * 31) + Float.floatToIntBits(getEffectiveLuminanceScale())) * 31) + Float.floatToIntBits(this.skySaturation)) * 31) + Float.floatToIntBits(this.sunAngularDiameter)) * 31) + Float.floatToIntBits(this.sunDiskIntensity)) * 31) + Float.floatToIntBits(this.sunDiscFeather)) * 31) + (this.useDebanding ? 1 : 0)) * 31) + this.maxReso) * 31) + this.ambientLightReso;
        ensureAmbientLightSkyColorMultiplier();
        return (((computeSkyviewHash * 31) + this.ambientLightSkyColorMultiplier.intColor) * 31) + (this.ambientLight ? 1 : 0);
    }

    private int computeSkyviewHash() {
        return ((((((((((((((((((527 + computeTransmittanceHash()) * 31) + Float.floatToIntBits(this.mieG)) * 31) + Float.floatToIntBits(this.skyviewOffsetSegmentT)) * 31) + Float.floatToIntBits(this.skyviewMaxRaymarchDistMegaKm)) * 31) + Float.floatToIntBits(this.eyeHeightKm)) * 31) + this.skyRaymarchSteps) * 31) + this.skyviewLutReso) * 31) + Float.floatToIntBits(this.f75593P[0])) * 31) + Float.floatToIntBits(this.f75593P[1])) * 31) + Float.floatToIntBits(this.f75593P[2]);
    }

    private int computeTransmittanceHash() {
        return ((((((((((((((((((((((((527 + Float.floatToIntBits(this.groundRadiusKm)) * 31) + Float.floatToIntBits(this.atmosphereThicknessKm)) * 31) + Float.floatToIntBits(this.rayleighStrength)) * 31) + Float.floatToIntBits(this.mieStrength)) * 31) + Float.floatToIntBits(this.ozoneStrength)) * 31) + Float.floatToIntBits(this.atmosphereDensity)) * 31) + Float.floatToIntBits(this.rayleighMaxHeightKm)) * 31) + Float.floatToIntBits(this.mieMaxHeightKm)) * 31) + Float.floatToIntBits(this.ozonePeakAbsorptionHeightKm)) * 31) + Float.floatToIntBits(this.ozoneAbsorptionFalloffKm)) * 31) + Float.floatToIntBits(this.transmittanceOffsetSegmentT)) * 31) + this.transmittanceSteps) * 31) + this.transmittanceLutReso;
    }

    public static Sb.b createFullscreenMaterialBuilder(String name, String shaderCode, List<ec.f> uniforms, List<ec.g> samplers) {
        MaterialBuilder C10 = new Sb.b().v(name + "-" + Tc.b.L()).m(true).x(MaterialBuilder.h.MOBILE).E(MaterialBuilder.n.UNLIT).C(MaterialBuilder.t.UV0);
        Sb.b bVar = (Sb.b) C10.l(false).k(false);
        for (int i10 = 0; i10 < uniforms.size(); i10++) {
            ec.f fVar = uniforms.get(i10);
            bVar.O(fVar.d(), fVar.b(), fVar.a());
        }
        for (int i11 = 0; i11 < samplers.size(); i11++) {
            ec.g gVar = samplers.get(i11);
            bVar.D(gVar.d(), gVar.a(), gVar.c(), gVar.b());
        }
        bVar.r(shaderCode);
        return bVar;
    }

    private ColorTexture createLutColorTexture(int width, int height) {
        TextureSampler.f fVar = TextureSampler.f.CLAMP_TO_EDGE;
        try {
            try {
                return new ColorTexture(width, height, fVar, Texture.e.RGBA, Texture.f.RGBA32F, Texture.k.FLOAT);
            } catch (Throwable unused) {
                return new ColorTexture(width, height, fVar);
            }
        } catch (Throwable unused2) {
            return new ColorTexture(width, height, fVar, Texture.e.RGBA, Texture.f.RGBA16F, Texture.k.FLOAT);
        }
    }

    private Tb.a createLutFrameBuffer(int width, int height) {
        return new Tb.a(createLutColorTexture(width, height), (DepthTexture) null);
    }

    private static Sb.b createShaderCubemapMaterialBuilder(String shaderCode, List<ec.f> uniforms, List<ec.g> samplers) {
        Sb.b bVar = (Sb.b) new Sb.b().v("ShaderCubemapMaterial-" + Tc.b.L()).x(MaterialBuilder.h.MOBILE).E(MaterialBuilder.n.UNLIT).m(true).V(MaterialBuilder.u.OBJECT);
        for (int i10 = 0; i10 < uniforms.size(); i10++) {
            ec.f fVar = uniforms.get(i10);
            bVar.O(fVar.d(), fVar.b(), fVar.a());
        }
        for (int i11 = 0; i11 < samplers.size(); i11++) {
            ec.g gVar = samplers.get(i11);
            bVar.D(gVar.d(), gVar.a(), gVar.c(), gVar.b());
        }
        bVar.r(shaderCode);
        return bVar;
    }

    private void deleteLutBuffers() {
        Tb.a aVar = this.f75589L;
        if (aVar != null && !aVar.f24207r) {
            aVar.c();
        }
        Tb.a aVar2 = this.f75590M;
        if (aVar2 != null && !aVar2.f24207r) {
            aVar2.c();
        }
        this.f75589L = null;
        this.f75590M = null;
    }

    private void destroyCacheIndirectLight(r cache) {
        if (cache == null || cache.f75664c == null) {
            return;
        }
        if (getEffectiveScene().n() == cache.f75664c) {
            getEffectiveScene().u(null);
        }
        cache.f75664c.destroyImmediate();
        cache.f75664c = null;
        cache.f75666e = null;
    }

    private void destroyCacheSkybox(r cache) {
        if (cache == null || cache.f75662a == null) {
            return;
        }
        if (getEffectiveScene().p() == cache.f75662a) {
            getEffectiveScene().v(null);
        }
        cache.f75662a.destroyImmediate();
        cache.f75662a = null;
        cache.f75663b = null;
    }

    private void destroyFullscreenPasses() {
        q qVar = this.f75591N;
        if (qVar != null) {
            qVar.e();
            this.f75591N = null;
        }
        q qVar2 = this.f75592O;
        if (qVar2 != null) {
            qVar2.e();
            this.f75592O = null;
        }
    }

    private void destroyIndirectLightsUsing(C15980b cubemapInstance) {
        if (cubemapInstance == null) {
            return;
        }
        for (r rVar : getCaches()) {
            if (rVar != null && rVar.f75666e == cubemapInstance) {
                destroyCacheIndirectLight(rVar);
            }
        }
    }

    private void destroyShaderCubemaps() {
        C15986h c15986h = this.f75587J;
        if (c15986h != null) {
            c15986h.h();
            this.f75587J = null;
        }
        C15986h c15986h2 = this.f75588K;
        if (c15986h2 != null) {
            c15986h2.h();
            this.f75588K = null;
        }
    }

    private void destroySkyboxesUsing(C15980b cubemapInstance) {
        if (cubemapInstance == null) {
            return;
        }
        for (r rVar : getCaches()) {
            if (rVar != null && rVar.f75663b == cubemapInstance) {
                destroyCacheSkybox(rVar);
            }
        }
    }

    public void ensureAmbientLightSkyColorMultiplier() {
        if (this.ambientLightSkyColorMultiplier == null) {
            this.ambientLightSkyColorMultiplier = new ColorINT(255, 255, 255);
        }
    }

    private void ensureLutResources() {
        int i10 = TextureConfig.f79814s[this.transmittanceLutReso];
        int max = Math.max(16, i10 / 4);
        int i11 = TextureConfig.f79814s[this.skyviewLutReso];
        int max2 = Math.max(16, i11 / 2);
        Tb.a aVar = this.f75589L;
        if (aVar == null) {
            this.f75589L = createLutFrameBuffer(i10, max);
            markTransmittanceDirtyCascade();
        } else if (aVar.p() != i10 || this.f75589L.o() != max) {
            this.f75589L.c();
            this.f75589L = createLutFrameBuffer(i10, max);
            markTransmittanceDirtyCascade();
        }
        Tb.a aVar2 = this.f75590M;
        if (aVar2 == null) {
            this.f75590M = createLutFrameBuffer(i11, max2);
            markSkyviewDirtyCascade();
        } else if (aVar2.p() != i11 || this.f75590M.o() != max2) {
            this.f75590M.c();
            this.f75590M = createLutFrameBuffer(i11, max2);
            markSkyviewDirtyCascade();
        }
        if (this.f75591N == null) {
            this.f75591N = new q("PrecomputedAtmosphere2TransmittanceLut", loadFile("transmittance_lut.glsl"), transmittanceParams(), new SteppedArrayList());
            markTransmittanceDirtyCascade();
        }
        if (this.f75592O == null) {
            this.f75592O = new q("PrecomputedAtmosphere2SkyviewLut", loadFile("skyview_lut.glsl"), skyviewParams(), skyviewSamplers());
            markSkyviewDirtyCascade();
        }
    }

    public void ensureLuxCurve() {
        if (this.luxCurve != null) {
            return;
        }
        Curve curve = new Curve(N7.c.t());
        this.luxCurve = curve;
        curve.clear();
        this.luxCurve.f(0.0f, 0.1f);
        this.luxCurve.f(0.25f, 1.0f);
        this.luxCurve.f(0.75f, 1.0f);
        this.luxCurve.f(1.0f, 1.0f);
        this.luxCurve.G(Curve.a.ClampToBorder);
        this.luxCurve.apply();
    }

    public C5.b floatEntry(String title, p ref, boolean markTrans, boolean markMs, boolean markSky, boolean markSkybox) {
        return floatEntry(title, ref, markTrans, markMs, markSky, markSkybox, b.a.SLFloat);
    }

    private float getEffectiveLuminanceScale() {
        return !GraphicsSettings.d() ? this.skyLuminanceScale / 2.0f : this.skyLuminanceScale;
    }

    private static boolean isCachedOrRestored(int hash, boolean forceRebuild) {
        ByteBuffer g10;
        if (!forceRebuild) {
            if (ec.b.h(hash)) {
                return true;
            }
            return ec.b.j(hash);
        }
        if (ec.b.c(hash)) {
            return true;
        }
        if (!ec.b.h(hash) || (g10 = ec.b.g(hash)) == null) {
            return false;
        }
        ec.b.l(hash, g10);
        return true;
    }

    public static String loadFile(String file) {
        return C14207a.a("Shaders/PrecomputedAtmosphere2/" + file);
    }

    public void markSkyviewDirtyCascade() {
        this.f75598U = true;
        this.f75599V = true;
    }

    public void markTransmittanceDirtyCascade() {
        this.f75597T = true;
        this.f75598U = true;
        this.f75599V = true;
    }

    private void setSharedAtmosphereParams(FilamentMaterial m10) {
        float max = Math.max(0.0f, this.atmosphereDensity);
        float max2 = Math.max(0.0f, this.rayleighStrength) * max;
        float max3 = Math.max(0.0f, this.mieStrength) * max;
        float max4 = Math.max(0.0f, this.ozoneStrength) * max;
        m10.w("groundRadiusKm", Math.max(1.0f, this.groundRadiusKm));
        m10.w("atmosphereThicknessKm", Math.max(0.1f, this.atmosphereThicknessKm));
        m10.w("rayleighMaxHeightKm", Math.max(0.001f, this.rayleighMaxHeightKm));
        m10.w("mieMaxHeightKm", Math.max(0.001f, this.mieMaxHeightKm));
        m10.w("ozonePeakAbsorptionHeightKm", Math.max(0.0f, this.ozonePeakAbsorptionHeightKm));
        m10.w("ozoneAbsorptionFalloffKm", Math.max(0.001f, this.ozoneAbsorptionFalloffKm));
        m10.B("rayleighScatteringCoefficient", 0.005802f * max2, 0.013558f * max2, max2 * 0.0331f);
        float f10 = max3 * 0.003996f;
        m10.B("mieScatteringCoefficient", f10, f10, f10);
        float f11 = f10 * 0.1f;
        m10.B("mieAbsorptionCoefficient", f11, f11, f11);
        m10.B("ozoneAbsorptionCoefficient", 6.5E-4f * max4, 0.001881f * max4, max4 * 8.5E-5f);
    }

    private List<ec.f> sharedAtmosphereParams() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT;
        MaterialBuilder.g gVar = MaterialBuilder.g.HIGH;
        steppedArrayList.add(new ec.f(rVar, "groundRadiusKm", gVar));
        steppedArrayList.add(new ec.f(rVar, "atmosphereThicknessKm", gVar));
        steppedArrayList.add(new ec.f(rVar, "rayleighMaxHeightKm", gVar));
        steppedArrayList.add(new ec.f(rVar, "mieMaxHeightKm", gVar));
        steppedArrayList.add(new ec.f(rVar, "ozonePeakAbsorptionHeightKm", gVar));
        steppedArrayList.add(new ec.f(rVar, "ozoneAbsorptionFalloffKm", gVar));
        MaterialBuilder.r rVar2 = MaterialBuilder.r.FLOAT3;
        steppedArrayList.add(new ec.f(rVar2, "rayleighScatteringCoefficient", gVar));
        steppedArrayList.add(new ec.f(rVar2, "mieScatteringCoefficient", gVar));
        steppedArrayList.add(new ec.f(rVar2, "mieAbsorptionCoefficient", gVar));
        steppedArrayList.add(new ec.f(rVar2, "ozoneAbsorptionCoefficient", gVar));
        return steppedArrayList;
    }

    private List<ec.f> skyboxParams() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT3;
        MaterialBuilder.g gVar = MaterialBuilder.g.HIGH;
        steppedArrayList.add(new ec.f(rVar, "lightColor", gVar));
        MaterialBuilder.r rVar2 = MaterialBuilder.r.FLOAT;
        steppedArrayList.add(new ec.f(rVar2, "skySaturation", gVar));
        steppedArrayList.add(new ec.f(rVar2, "skyExposure", gVar));
        steppedArrayList.add(new ec.f(rVar2, "sun_disc_feather", gVar));
        steppedArrayList.add(new ec.f(rVar2, "sundisc_intensity", gVar));
        steppedArrayList.add(new ec.f(rVar2, "use_debanding", gVar));
        steppedArrayList.add(new ec.f(rVar2, "sunAngularDiameter", gVar));
        steppedArrayList.add(new ec.f(rVar2, "groundRadiusKm", gVar));
        steppedArrayList.add(new ec.f(rVar2, "atmosphereThicknessKm", gVar));
        steppedArrayList.add(new ec.f(rVar2, "eyeHeightKm", gVar));
        steppedArrayList.add(new ec.f(rVar, "sunDir", gVar));
        return steppedArrayList;
    }

    private List<ec.g> skyboxSamplers() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        MaterialBuilder.m mVar = MaterialBuilder.m.SAMPLER_2D;
        MaterialBuilder.l lVar = MaterialBuilder.l.FLOAT;
        MaterialBuilder.g gVar = MaterialBuilder.g.HIGH;
        steppedArrayList.add(new ec.g(mVar, lVar, gVar, "skyviewLut"));
        steppedArrayList.add(new ec.g(mVar, lVar, gVar, "transmittanceLut"));
        return steppedArrayList;
    }

    private List<ec.f> skyviewParams() {
        List<ec.f> sharedAtmosphereParams = sharedAtmosphereParams();
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT;
        MaterialBuilder.g gVar = MaterialBuilder.g.HIGH;
        sharedAtmosphereParams.add(new ec.f(rVar, "mieG", gVar));
        sharedAtmosphereParams.add(new ec.f(rVar, "maxRaymarchDistKm", gVar));
        sharedAtmosphereParams.add(new ec.f(rVar, "offsetSegmentT", gVar));
        sharedAtmosphereParams.add(new ec.f(MaterialBuilder.r.FLOAT3, "sunDir", gVar));
        sharedAtmosphereParams.add(new ec.f(rVar, "eyeHeightKm", gVar));
        sharedAtmosphereParams.add(new ec.f(rVar, "skyRaymarchSteps", gVar));
        return sharedAtmosphereParams;
    }

    private List<ec.g> skyviewSamplers() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(new ec.g(MaterialBuilder.m.SAMPLER_2D, MaterialBuilder.l.FLOAT, MaterialBuilder.g.HIGH, "transmittanceTex"));
        return steppedArrayList;
    }

    private List<ec.f> transmittanceParams() {
        List<ec.f> sharedAtmosphereParams = sharedAtmosphereParams();
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT;
        MaterialBuilder.g gVar = MaterialBuilder.g.HIGH;
        sharedAtmosphereParams.add(new ec.f(rVar, "offsetSegmentT", gVar));
        sharedAtmosphereParams.add(new ec.f(rVar, "transmittanceSteps", gVar));
        return sharedAtmosphereParams;
    }

    private void updateHeight() {
        if (this.autoHeight) {
            updateLodReferencePosition();
            float round = Math.round((this.f75603Z.getY() / 100.0f) / 0.1f) * 0.1f;
            this.eyeHeightKm = round;
            this.eyeHeightKm = Nc.b.M(0.2f, round);
        }
    }

    private void updateLodReferencePosition() {
        GameObject gameObject;
        GameObject gameObject2;
        LODTarget lODTarget = this.f75602Y;
        if (lODTarget != null && (lODTarget.f79250n == null || !lODTarget.isHierarchyActive())) {
            this.f75602Y = null;
        }
        if (this.f75602Y == null) {
            this.f75602Y = (LODTarget) com.itsmagic.engine.Engines.Engine.World.a.k(LODTarget.class);
        }
        LODTarget lODTarget2 = this.f75602Y;
        if (lODTarget2 != null && (gameObject2 = lODTarget2.f79250n) != null) {
            gameObject2.transform.u0(this.f75603Z);
            this.f75604q0 = true;
            return;
        }
        Camera mainCameraAllowEditor = Camera.mainCameraAllowEditor();
        if (mainCameraAllowEditor == null || (gameObject = mainCameraAllowEditor.f79250n) == null) {
            this.f75604q0 = false;
        } else {
            gameObject.transform.u0(this.f75603Z);
            this.f75604q0 = true;
        }
    }

    private void updateReflectionsCubemapInstance() {
        int i10 = TextureConfig.f79814s[this.ambientLightReso];
        C15986h c15986h = this.f75588K;
        if (c15986h == null || this.f75586I != i10) {
            if (c15986h != null) {
                destroyIndirectLightsUsing(c15986h);
                this.f75588K.h();
            }
            this.f75586I = i10;
            this.f75588K = new C15986h(i10, loadFile("fragment.glsl"), skyboxParams(), skyboxSamplers(), false);
            this.f75599V = true;
        }
    }

    private void updateSkyboxCubemapInstance() {
        int i10 = TextureConfig.f79814s[this.maxReso];
        C15986h c15986h = this.f75587J;
        if (c15986h == null || this.f75585H != i10) {
            if (c15986h != null) {
                destroySkyboxesUsing(c15986h);
                this.f75587J.h();
            }
            this.f75585H = i10;
            this.f75587J = new C15986h(i10, loadFile("fragment.glsl"), skyboxParams(), skyboxSamplers(), true);
            this.f75599V = true;
        }
    }

    private void updateSunDirection() {
        float[] fArr = this.f75593P;
        fArr[0] = 0.0f;
        fArr[1] = 1.0f;
        fArr[2] = 0.0f;
        try {
            List<com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component> h10 = R8.f.h(SunLight.class);
            for (int i10 = 0; i10 < h10.size(); i10++) {
                com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component component = h10.get(i10);
                if (component != null && component.isHierarchyActive()) {
                    component.f79250n.transform.C(this.f75593P);
                    return;
                }
            }
        } catch (Exception unused) {
        }
    }

    private void validateResolutionID(int resolutionID) {
        if (resolutionID < 0 || resolutionID >= TextureConfig.f79814s.length) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("resolution ID out of bounds [0..");
            sb2.append(TextureConfig.f79814s.length - 1);
            sb2.append("]");
            throw new IndexOutOfBoundsException(sb2.toString());
        }
    }

    @Override
    public void applyBeforeRender(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer) {
        r cache = getCache(camera);
        if (camera.overrideAmbientLight() == null && this.ambientLight) {
            getEffectiveScene().u(cache.f75664c);
        }
        if (camera.getBackgroundType() != Camera.F.Skybox) {
            return;
        }
        getEffectiveScene().v(cache.f75662a);
    }

    @Override
    public void applyInPreUpdate(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
        if (camera.getBackgroundType() != Camera.F.Skybox) {
            return;
        }
        r cache = getCache(camera);
        if (cache.f75662a == null || cache.f75663b != this.f75587J) {
            destroyCacheSkybox(cache);
            cache.f75663b = this.f75587J;
            Skybox.a e10 = new Skybox.a().b(1.0f, 1.0f, 1.0f, 1.0f).e(1.0f);
            e10.g(false);
            cache.f75662a = new FilamentSkybox(e10, this.f75587J);
        }
        float effectiveLux = getEffectiveLux();
        if (!this.ambientLight) {
            destroyCacheIndirectLight(cache);
            return;
        }
        ensureAmbientLightSkyColorMultiplier();
        int i10 = this.ambientLightSkyColorMultiplier.intColor;
        if (cache.f75664c != null && cache.f75665d == effectiveLux && cache.f75666e == this.f75588K && cache.f75667f == i10) {
            return;
        }
        destroyCacheIndirectLight(cache);
        cache.f75665d = effectiveLux;
        cache.f75666e = this.f75588K;
        cache.f75667f = i10;
        this.f75601X[0] = this.ambientLightSkyColorMultiplier.w();
        this.f75601X[1] = this.ambientLightSkyColorMultiplier.u();
        this.f75601X[2] = this.ambientLightSkyColorMultiplier.s();
        cache.f75664c = new FilamentIndirectLight(new IndirectLight.a().c(1, this.f75601X).b(effectiveLux * 1000.0f), this.f75588K);
    }

    @Override
    public void disableFor(Camera camera, FilamentCamera filamentCamera, FilamentView view) {
        r peekCache = peekCache(camera);
        if (peekCache != null) {
            if (peekCache.f75662a != null && getEffectiveScene().p() == peekCache.f75662a) {
                getEffectiveScene().v(null);
            }
            if (peekCache.f75664c == null || getEffectiveScene().n() != peekCache.f75664c) {
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
    public ColorINT getAmbientLightSkyColorMultiplier() {
        ensureAmbientLightSkyColorMultiplier();
        return this.ambientLightSkyColorMultiplier;
    }

    @InterfaceC15237a
    public float getAtmosphereThicknessKm() {
        return this.atmosphereThicknessKm;
    }

    @Override
    public String getDisplayableTitle() {
        return f75574D0;
    }

    public float getEffectiveLux() {
        ensureLuxCurve();
        return (GraphicsSettings.d() ? this.lux : this.lux * 3.0f) * Nc.b.I(this.luxCurve.p(Nc.b.I(this.f75593P[1])));
    }

    @InterfaceC15237a
    public float getEyeHeightKm() {
        return this.eyeHeightKm;
    }

    @InterfaceC15237a
    public float getGroundRadiusKm() {
        return this.groundRadiusKm;
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
        linkedList.add(new C5.b(new h(), "Sky color", b.a.Color, context));
        linkedList.add(floatEntry("Sky luminance scale", new i(), false, false, false, true));
        linkedList.add(floatEntry("Sky saturation", new j(), false, false, false, true, b.a.SLFloat01));
        linkedList.add(floatEntry("Sun angular diameter", new k(), false, false, false, true));
        linkedList.add(floatEntry("Sun disk intensity", new l(), false, false, false, true));
        linkedList.add(floatEntry("Sun disc feather", new m(), false, false, false, true));
        linkedList.add(new C5.b(new n(), "Use debanding", b.a.SLBoolean));
        linkedList.add(F5.c.d(getInspectorMemory(), "Atmosphere", new o()));
        linkedList.add(F5.c.d(getInspectorMemory(), "Eye Height", new a()));
        linkedList.add(F5.c.d(getInspectorMemory(), "Steps", new b()));
        linkedList.add(F5.c.d(getInspectorMemory(), "LUT", new c()));
        linkedList.add(F5.c.d(getInspectorMemory(), "Resolutions", new d()));
        linkedList.add(F5.c.d(getInspectorMemory(), Lang.l(Lang.T.AMBIENT_LIGHT), new e(context)));
        return linkedList;
    }

    @InterfaceC15237a
    public float getLux() {
        return this.lux;
    }

    @InterfaceC15237a
    public Curve getLuxCurve() {
        ensureLuxCurve();
        return this.luxCurve;
    }

    @InterfaceC15237a
    public int getMaxResolutionID() {
        return this.maxReso;
    }

    @InterfaceC15237a
    public float getMieG() {
        return this.mieG;
    }

    @InterfaceC15237a
    public float getMieMaxHeightKm() {
        return this.mieMaxHeightKm;
    }

    @InterfaceC15237a
    public float getMsContribution() {
        return 0.0f;
    }

    @InterfaceC15237a
    public int getMsDirSamples() {
        return 0;
    }

    @InterfaceC15237a
    public int getMsLutResolutionID() {
        return 2;
    }

    @InterfaceC15237a
    public float getMsOffsetSamplePhi() {
        return 0.0f;
    }

    @InterfaceC15237a
    public float getMsOffsetSampleTheta() {
        return 0.0f;
    }

    @InterfaceC15237a
    public float getMsOffsetSegmentT() {
        return 0.0f;
    }

    @InterfaceC15237a
    public int getMsRaymarchSteps() {
        return 0;
    }

    @InterfaceC15237a
    public float getOzoneAbsorptionFalloffKm() {
        return this.ozoneAbsorptionFalloffKm;
    }

    @InterfaceC15237a
    public float getOzonePeakAbsorptionHeightKm() {
        return this.ozonePeakAbsorptionHeightKm;
    }

    @InterfaceC15237a
    public float getRayleighMaxHeightKm() {
        return this.rayleighMaxHeightKm;
    }

    @InterfaceC15237a
    public ColorINT getSkyLuminanceColor() {
        return this.skyLuminanceColor;
    }

    @InterfaceC15237a
    public float getSkyLuminanceScale() {
        return this.skyLuminanceScale;
    }

    @InterfaceC15237a
    public int getSkyRaymarchSteps() {
        return this.skyRaymarchSteps;
    }

    @InterfaceC15237a
    public float getSkySaturation() {
        return this.skySaturation;
    }

    @InterfaceC15237a
    public int getSkyviewLutResolutionID() {
        return this.skyviewLutReso;
    }

    @InterfaceC15237a
    public float getSkyviewMaxRaymarchDistMegaKm() {
        return this.skyviewMaxRaymarchDistMegaKm;
    }

    @InterfaceC15237a
    public float getSkyviewOffsetSegmentT() {
        return this.skyviewOffsetSegmentT;
    }

    @InterfaceC15237a
    public float getSunAngularDiameter() {
        return this.sunAngularDiameter;
    }

    @InterfaceC15237a
    public float getSunDiskIntensity() {
        return this.sunDiskIntensity;
    }

    @Override
    public String getTitle() {
        return f75574D0;
    }

    @InterfaceC15237a
    public int getTransmittanceLutResolutionID() {
        return this.transmittanceLutReso;
    }

    @InterfaceC15237a
    public float getTransmittanceOffsetSegmentT() {
        return this.transmittanceOffsetSegmentT;
    }

    @InterfaceC15237a
    public int getTransmittanceSteps() {
        return this.transmittanceSteps;
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
    public boolean isAutoHeight() {
        return this.autoHeight;
    }

    @Override
    public void lowTaskUpdate(GameObject gameObject, boolean isEditor) {
        super.lowTaskUpdate(gameObject, isEditor);
        C15986h c15986h = this.f75587J;
        if (c15986h != null) {
            c15986h.n();
        }
        C15986h c15986h2 = this.f75588K;
        if (c15986h2 != null) {
            c15986h2.n();
        }
    }

    @Override
    public void onDetach() {
        for (r rVar : getCaches()) {
            if (rVar != null) {
                if (rVar.f75662a != null && getEffectiveScene().p() == rVar.f75662a) {
                    getEffectiveScene().v(null);
                }
                if (rVar.f75664c != null && getEffectiveScene().n() == rVar.f75664c) {
                    getEffectiveScene().u(null);
                }
            }
        }
        super.onDetach();
        destroyShaderCubemaps();
        destroyFullscreenPasses();
        deleteLutBuffers();
    }

    @Override
    public void preRender() {
        C15986h c15986h;
        Tb.a aVar;
        q qVar;
        Tb.a aVar2;
        super.preRender();
        boolean z10 = true;
        if (this.f75597T && (qVar = this.f75591N) != null && (aVar2 = this.f75589L) != null) {
            qVar.f(aVar2);
            this.f75597T = false;
            this.f75598U = true;
            this.f75599V = true;
        }
        if (this.f75598U && !this.f75597T && this.f75592O != null && this.f75590M != null && (aVar = this.f75589L) != null && aVar.s()) {
            this.f75592O.f(this.f75590M);
            this.f75598U = false;
            this.f75599V = true;
        }
        if (!this.f75599V || !this.f75600W || this.f75598U || this.f75597T) {
            return;
        }
        C15986h c15986h2 = this.f75587J;
        boolean z11 = c15986h2 != null && c15986h2.m();
        if (this.ambientLight && ((c15986h = this.f75588K) == null || !c15986h.m())) {
            z10 = false;
        }
        if (z11) {
            this.f75587J.o();
        }
        if (this.ambientLight && z10) {
            this.f75588K.o();
        }
        if (z11 && z10) {
            this.f75599V = false;
        }
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        updateHeight();
        updateSunDirection();
        ensureLutResources();
        updateSkyboxCubemapInstance();
        if (this.ambientLight) {
            updateReflectionsCubemapInstance();
        }
        int computeTransmittanceHash = computeTransmittanceHash();
        if (computeTransmittanceHash != this.f75594Q) {
            this.f75594Q = computeTransmittanceHash;
            this.f75597T = true;
            this.f75598U = true;
            this.f75599V = true;
        }
        int computeSkyviewHash = computeSkyviewHash();
        if (computeSkyviewHash != this.f75595R) {
            this.f75595R = computeSkyviewHash;
            this.f75598U = true;
            this.f75599V = true;
        }
        int computeSkyboxHash = computeSkyboxHash();
        if (computeSkyboxHash != this.f75596S) {
            this.f75596S = computeSkyboxHash;
            this.f75599V = true;
        }
        applyLutPassSettings();
        this.f75600W = false;
        C15986h c15986h = this.f75587J;
        if (c15986h != null) {
            this.f75600W = applySkyboxSettingsTo(c15986h, 1.0f, 1.0f, 1.0f);
        }
        if (this.f75588K != null) {
            ensureAmbientLightSkyColorMultiplier();
            applySkyboxSettingsTo(this.f75588K, this.ambientLightSkyColorMultiplier.w(), this.ambientLightSkyColorMultiplier.u(), this.ambientLightSkyColorMultiplier.s());
        }
    }

    @InterfaceC15237a
    public void setAmbientLight(boolean ambientLight) {
        this.ambientLight = ambientLight;
        this.f75599V = true;
    }

    @InterfaceC15237a
    public void setAmbientLightResolutionID(int ambientLightReso) {
        validateResolutionID(ambientLightReso);
        this.ambientLightReso = ambientLightReso;
        this.f75599V = true;
    }

    @InterfaceC15237a
    public void setAmbientLightSkyColorMultiplier(ColorINT ambientLightSkyColorMultiplier) {
        if (ambientLightSkyColorMultiplier == null) {
            throw new NullPointerException("ambientLightSkyColorMultiplier can't be null");
        }
        this.ambientLightSkyColorMultiplier = ambientLightSkyColorMultiplier;
        this.f75599V = true;
    }

    @InterfaceC15237a
    public void setAtmosphereThicknessKm(float atmosphereThicknessKm) {
        this.atmosphereThicknessKm = Math.max(0.1f, atmosphereThicknessKm);
        markTransmittanceDirtyCascade();
    }

    @InterfaceC15237a
    public void setAutoHeight(boolean autoHeight) {
        this.autoHeight = autoHeight;
    }

    @InterfaceC15237a
    public void setEyeHeightKm(float eyeHeightKm) {
        this.eyeHeightKm = eyeHeightKm;
        markSkyviewDirtyCascade();
    }

    @InterfaceC15237a
    public void setGroundRadiusKm(float groundRadiusKm) {
        this.groundRadiusKm = Math.max(1.0f, groundRadiusKm);
        markTransmittanceDirtyCascade();
    }

    @InterfaceC15237a
    public void setLux(float lux) {
        this.lux = lux;
    }

    @InterfaceC15237a
    public void setLuxCurve(Curve luxCurve) {
        if (luxCurve == null) {
            throw new NullPointerException("luxCurve can't be null");
        }
        this.luxCurve = luxCurve;
        luxCurve.apply();
    }

    @InterfaceC15237a
    public void setMaxResolutionID(int maxReso) {
        validateResolutionID(maxReso);
        this.maxReso = maxReso;
        this.f75599V = true;
    }

    @InterfaceC15237a
    public void setMieG(float mieG) {
        this.mieG = mieG;
        markSkyviewDirtyCascade();
    }

    @InterfaceC15237a
    public void setMieMaxHeightKm(float mieMaxHeightKm) {
        this.mieMaxHeightKm = Math.max(0.001f, mieMaxHeightKm);
        markTransmittanceDirtyCascade();
    }

    @InterfaceC15237a
    public void setMsContribution(float msContribution) {
    }

    @InterfaceC15237a
    public void setMsDirSamples(int msDirSamples) {
    }

    @InterfaceC15237a
    public void setMsLutResolutionID(int msLutReso) {
        validateResolutionID(msLutReso);
    }

    @InterfaceC15237a
    public void setMsOffsetSamplePhi(float msOffsetSamplePhi) {
    }

    @InterfaceC15237a
    public void setMsOffsetSampleTheta(float msOffsetSampleTheta) {
    }

    @InterfaceC15237a
    public void setMsOffsetSegmentT(float msOffsetSegmentT) {
    }

    @InterfaceC15237a
    public void setMsRaymarchSteps(int msRaymarchSteps) {
    }

    @InterfaceC15237a
    public void setOzoneAbsorptionFalloffKm(float ozoneAbsorptionFalloffKm) {
        this.ozoneAbsorptionFalloffKm = Math.max(0.001f, ozoneAbsorptionFalloffKm);
        markTransmittanceDirtyCascade();
    }

    @InterfaceC15237a
    public void setOzonePeakAbsorptionHeightKm(float ozonePeakAbsorptionHeightKm) {
        this.ozonePeakAbsorptionHeightKm = Math.max(0.0f, ozonePeakAbsorptionHeightKm);
        markTransmittanceDirtyCascade();
    }

    @InterfaceC15237a
    public void setRayleighMaxHeightKm(float rayleighMaxHeightKm) {
        this.rayleighMaxHeightKm = Math.max(0.001f, rayleighMaxHeightKm);
        markTransmittanceDirtyCascade();
    }

    @Override
    public void setRuntime(Component run) {
        this.f75605v0 = run;
    }

    @InterfaceC15237a
    public void setSkyLuminanceColor(ColorINT skyLuminanceColor) {
        if (skyLuminanceColor == null) {
            throw new NullPointerException("skyLuminanceColor can't be null");
        }
        this.skyLuminanceColor = skyLuminanceColor;
        this.f75599V = true;
    }

    @InterfaceC15237a
    public void setSkyLuminanceScale(float skyLuminanceScale) {
        this.skyLuminanceScale = skyLuminanceScale;
        this.f75599V = true;
    }

    @InterfaceC15237a
    public void setSkyRaymarchSteps(int skyRaymarchSteps) {
        this.skyRaymarchSteps = Math.max(1, skyRaymarchSteps);
        markSkyviewDirtyCascade();
    }

    @InterfaceC15237a
    public void setSkySaturation(float skySaturation) {
        this.skySaturation = Math.max(0.0f, skySaturation);
        this.f75599V = true;
    }

    @InterfaceC15237a
    public void setSkyviewLutResolutionID(int skyviewLutReso) {
        validateResolutionID(skyviewLutReso);
        this.skyviewLutReso = skyviewLutReso;
        markSkyviewDirtyCascade();
    }

    @InterfaceC15237a
    public void setSkyviewMaxRaymarchDistMegaKm(float skyviewMaxRaymarchDistMegaKm) {
        this.skyviewMaxRaymarchDistMegaKm = Math.max(1.0E-9f, skyviewMaxRaymarchDistMegaKm);
        markSkyviewDirtyCascade();
    }

    @InterfaceC15237a
    public void setSkyviewOffsetSegmentT(float skyviewOffsetSegmentT) {
        this.skyviewOffsetSegmentT = Math.max(0.0f, skyviewOffsetSegmentT);
        markSkyviewDirtyCascade();
    }

    @InterfaceC15237a
    public void setSunAngularDiameter(float sunAngularDiameter) {
        this.sunAngularDiameter = sunAngularDiameter;
        this.f75599V = true;
    }

    @InterfaceC15237a
    public void setSunDiskIntensity(float sunDiskIntensity) {
        this.sunDiskIntensity = sunDiskIntensity;
        this.f75599V = true;
    }

    @InterfaceC15237a
    public void setTransmittanceLutResolutionID(int transmittanceLutReso) {
        validateResolutionID(transmittanceLutReso);
        this.transmittanceLutReso = transmittanceLutReso;
        markTransmittanceDirtyCascade();
    }

    @InterfaceC15237a
    public void setTransmittanceOffsetSegmentT(float transmittanceOffsetSegmentT) {
        this.transmittanceOffsetSegmentT = Math.max(0.0f, transmittanceOffsetSegmentT);
        markTransmittanceDirtyCascade();
    }

    @InterfaceC15237a
    public void setTransmittanceSteps(int transmittanceSteps) {
        this.transmittanceSteps = Math.max(1, transmittanceSteps);
        markTransmittanceDirtyCascade();
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f75605v0;
        if (component != null) {
            return component;
        }
        JAVARuntime.PrecomputedAtmosphereSkybox2 precomputedAtmosphereSkybox2 = new JAVARuntime.PrecomputedAtmosphereSkybox2(this);
        this.f75605v0 = precomputedAtmosphereSkybox2;
        return precomputedAtmosphereSkybox2;
    }

    private static void buildShaderCache(boolean forceRebuild) {
        try {
            PrecomputedAtmosphereSkybox2 precomputedAtmosphereSkybox2 = new PrecomputedAtmosphereSkybox2();
            String loadFile = loadFile("transmittance_lut.glsl");
            String loadFile2 = loadFile("skyview_lut.glsl");
            String loadFile3 = loadFile("fragment.glsl");
            buildFullscreenShaderCache("PrecomputedAtmosphere2.TransmittanceLut.v1", loadFile, precomputedAtmosphereSkybox2.transmittanceParams(), new SteppedArrayList(), forceRebuild);
            buildFullscreenShaderCache("PrecomputedAtmosphere2.SkyviewLut.v1", loadFile2, precomputedAtmosphereSkybox2.skyviewParams(), precomputedAtmosphereSkybox2.skyviewSamplers(), forceRebuild);
            buildShaderCubemapCache(loadFile3, precomputedAtmosphereSkybox2.skyboxParams(), precomputedAtmosphereSkybox2.skyboxSamplers(), forceRebuild);
        } catch (Exception e10) {
            throw new RuntimeException("Failed to build PrecomputedAtmosphere2 shader cache", e10);
        }
    }

    private C5.b floatEntry(String title, p ref, boolean markTrans, boolean markMs, boolean markSky, boolean markSkybox, b.a type) {
        return new C5.b(new f(ref, markTrans, markSky, markSkybox, markMs), title, type);
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        PrecomputedAtmosphereSkybox2 precomputedAtmosphereSkybox2 = new PrecomputedAtmosphereSkybox2();
        precomputedAtmosphereSkybox2.ambientLight = this.ambientLight;
        precomputedAtmosphereSkybox2.lux = this.lux;
        precomputedAtmosphereSkybox2.luxCurve = Curve.k(this.luxCurve);
        precomputedAtmosphereSkybox2.ambientLightReso = this.ambientLightReso;
        ensureAmbientLightSkyColorMultiplier();
        precomputedAtmosphereSkybox2.ambientLightSkyColorMultiplier = ColorINT.k(this.ambientLightSkyColorMultiplier);
        precomputedAtmosphereSkybox2.maxReso = this.maxReso;
        precomputedAtmosphereSkybox2.transmittanceLutReso = this.transmittanceLutReso;
        precomputedAtmosphereSkybox2.skyviewLutReso = this.skyviewLutReso;
        precomputedAtmosphereSkybox2.skyLuminanceColor = ColorINT.k(this.skyLuminanceColor);
        precomputedAtmosphereSkybox2.skyLuminanceScale = this.skyLuminanceScale;
        precomputedAtmosphereSkybox2.skySaturation = this.skySaturation;
        precomputedAtmosphereSkybox2.sunAngularDiameter = this.sunAngularDiameter;
        precomputedAtmosphereSkybox2.sunDiskIntensity = this.sunDiskIntensity;
        precomputedAtmosphereSkybox2.sunDiscFeather = this.sunDiscFeather;
        precomputedAtmosphereSkybox2.useDebanding = this.useDebanding;
        precomputedAtmosphereSkybox2.groundRadiusKm = this.groundRadiusKm;
        precomputedAtmosphereSkybox2.atmosphereThicknessKm = this.atmosphereThicknessKm;
        precomputedAtmosphereSkybox2.eyeHeightKm = this.eyeHeightKm;
        precomputedAtmosphereSkybox2.mieG = this.mieG;
        precomputedAtmosphereSkybox2.rayleighStrength = this.rayleighStrength;
        precomputedAtmosphereSkybox2.mieStrength = this.mieStrength;
        precomputedAtmosphereSkybox2.ozoneStrength = this.ozoneStrength;
        precomputedAtmosphereSkybox2.atmosphereDensity = this.atmosphereDensity;
        precomputedAtmosphereSkybox2.rayleighMaxHeightKm = this.rayleighMaxHeightKm;
        precomputedAtmosphereSkybox2.mieMaxHeightKm = this.mieMaxHeightKm;
        precomputedAtmosphereSkybox2.ozonePeakAbsorptionHeightKm = this.ozonePeakAbsorptionHeightKm;
        precomputedAtmosphereSkybox2.ozoneAbsorptionFalloffKm = this.ozoneAbsorptionFalloffKm;
        precomputedAtmosphereSkybox2.skyRaymarchSteps = this.skyRaymarchSteps;
        precomputedAtmosphereSkybox2.transmittanceSteps = this.transmittanceSteps;
        precomputedAtmosphereSkybox2.transmittanceOffsetSegmentT = this.transmittanceOffsetSegmentT;
        precomputedAtmosphereSkybox2.skyviewOffsetSegmentT = this.skyviewOffsetSegmentT;
        precomputedAtmosphereSkybox2.skyviewMaxRaymarchDistMegaKm = this.skyviewMaxRaymarchDistMegaKm;
        return precomputedAtmosphereSkybox2;
    }

    @Override
    public void destroyCache(r cache) {
        if (cache == null) {
            return;
        }
        destroyCacheSkybox(cache);
        destroyCacheIndirectLight(cache);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public r newCacheInstance() {
        return new r();
    }
}
