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

public class PrecomputedAtmosphereSkybox extends BasePostProcessing<v> implements Serializable {

    public static final float f75470F1 = 0.012345f;

    public static final float f75471H1 = 0.029413f;

    public static final float f75472L1 = 0.003996f;

    public static final float f75473M1 = 0.003996f;

    public static final float f75474R1 = 0.003996f;

    public static final float f75475V1 = 0.00444f;

    public static final float f75476b2 = 0.00444f;

    public static final float f75477i2 = 0.00444f;

    public static final float f75478m2 = 0.002291f;

    public static final String f75479q1 = "PrecomputedAtmosphereSkybox";

    public static final float f75480q2 = 0.00154f;

    public static final Class f75481v1 = PrecomputedAtmosphereSkybox.class;

    public static final float f75482v2 = 0.0f;

    public static final float f75483y1 = 0.006605f;

    public LODTarget f75484D0;

    public int f75485H;

    public int f75486I;

    public C15986h f75487J;

    public C15986h f75488K;

    public Tb.a f75489L;

    public Tb.a f75490M;

    public Tb.a f75491N;

    public u f75492O;

    public u f75493P;

    public u f75494Q;

    public final float[] f75495R;

    public int f75496S;

    public int f75497T;

    public int f75498U;

    public int f75499V;

    public boolean f75500W;

    public boolean f75501X;

    public boolean f75502Y;

    public boolean f75503Z;

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
    private float atmosphereThicknessKm;

    @Expose
    @eb.f
    private boolean autoHeight;

    public final Vector3 f75504b1;

    @Expose
    @eb.f
    private float eyeHeightKm;

    @Expose
    @eb.f
    private ColorINT groundAlbedo;

    @Expose
    @eb.f
    private float groundRadiusKm;

    public boolean f75505i1;

    @Expose
    private boolean limbDarkening;

    @Expose
    @eb.f
    private float lux;

    @Expose
    private Curve luxCurve;

    public Component f75506m1;

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
    private float msContribution;

    @Expose
    @eb.f
    private int msDirSamples;

    @Expose
    @eb.f
    private int msLutReso;

    @Expose
    @eb.f
    private float msOffsetSamplePhi;

    @Expose
    @eb.f
    private float msOffsetSampleTheta;

    @Expose
    @eb.f
    private float msOffsetSegmentT;

    @Expose
    @eb.f
    private int msRaymarchSteps;

    @Expose
    @eb.f
    private float ozoneAbsorptionFalloffKm;

    @Expose
    @eb.f
    private float ozonePeakAbsorptionHeightKm;

    public boolean f75507q0;

    @Expose
    @eb.f
    private float rayleighMaxHeightKm;

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

    public final float[] f75508v0;

    public class a implements t {
        public a() {
        }

        @Override
        public void a(float v10) {
            PrecomputedAtmosphereSkybox.this.msContribution = v10;
        }

        @Override
        public float get() {
            return PrecomputedAtmosphereSkybox.this.msContribution;
        }
    }

    public class b implements c.o0 {

        public class a implements t {
            public a() {
            }

            @Override
            public void a(float v10) {
                PrecomputedAtmosphereSkybox.this.rayleighMaxHeightKm = Math.max(0.001f, v10);
            }

            @Override
            public float get() {
                return PrecomputedAtmosphereSkybox.this.rayleighMaxHeightKm;
            }
        }

        public class C1223b implements t {
            public C1223b() {
            }

            @Override
            public void a(float v10) {
                PrecomputedAtmosphereSkybox.this.mieMaxHeightKm = Math.max(0.001f, v10);
            }

            @Override
            public float get() {
                return PrecomputedAtmosphereSkybox.this.mieMaxHeightKm;
            }
        }

        public class c implements t {
            public c() {
            }

            @Override
            public void a(float v10) {
                PrecomputedAtmosphereSkybox.this.ozonePeakAbsorptionHeightKm = Math.max(0.0f, v10);
            }

            @Override
            public float get() {
                return PrecomputedAtmosphereSkybox.this.ozonePeakAbsorptionHeightKm;
            }
        }

        public class d implements t {
            public d() {
            }

            @Override
            public void a(float v10) {
                PrecomputedAtmosphereSkybox.this.ozoneAbsorptionFalloffKm = Math.max(0.001f, v10);
            }

            @Override
            public float get() {
                return PrecomputedAtmosphereSkybox.this.ozoneAbsorptionFalloffKm;
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
            inner.add(PrecomputedAtmosphereSkybox.this.floatEntry("Rayleigh max height (km)", new a(), true, true, true, false));
            inner.add(PrecomputedAtmosphereSkybox.this.floatEntry("Mie max height (km)", new C1223b(), true, true, true, false));
            inner.add(PrecomputedAtmosphereSkybox.this.floatEntry("Ozone peak absorption height (km)", new c(), true, true, true, false));
            inner.add(PrecomputedAtmosphereSkybox.this.floatEntry("Ozone absorption falloff (km)", new d(), true, true, true, false));
            return inner;
        }
    }

    public class c implements c.o0 {

        public class a implements t {
            public a() {
            }

            @Override
            public void a(float v10) {
                PrecomputedAtmosphereSkybox.this.transmittanceOffsetSegmentT = Math.max(0.0f, v10);
            }

            @Override
            public float get() {
                return PrecomputedAtmosphereSkybox.this.transmittanceOffsetSegmentT;
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
            inner.add(PrecomputedAtmosphereSkybox.this.floatEntry("Offset segment t", new a(), true, false, false, false));
            return inner;
        }
    }

    public class d implements c.o0 {

        public class a implements t {
            public a() {
            }

            @Override
            public void a(float v10) {
                PrecomputedAtmosphereSkybox.this.msOffsetSegmentT = Math.max(0.0f, v10);
            }

            @Override
            public float get() {
                return PrecomputedAtmosphereSkybox.this.msOffsetSegmentT;
            }
        }

        public class b implements t {
            public b() {
            }

            @Override
            public void a(float v10) {
                PrecomputedAtmosphereSkybox.this.msOffsetSampleTheta = Math.max(0.0f, v10);
            }

            @Override
            public float get() {
                return PrecomputedAtmosphereSkybox.this.msOffsetSampleTheta;
            }
        }

        public class c implements t {
            public c() {
            }

            @Override
            public void a(float v10) {
                PrecomputedAtmosphereSkybox.this.msOffsetSamplePhi = Math.max(0.0f, v10);
            }

            @Override
            public float get() {
                return PrecomputedAtmosphereSkybox.this.msOffsetSamplePhi;
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
            inner.add(PrecomputedAtmosphereSkybox.this.floatEntry("Offset segment t", new a(), false, true, false, false));
            inner.add(PrecomputedAtmosphereSkybox.this.floatEntry("Offset sample theta", new b(), false, true, false, false));
            inner.add(PrecomputedAtmosphereSkybox.this.floatEntry("Offset sample phi", new c(), false, true, false, false));
            return inner;
        }
    }

    public class e implements c.o0 {

        public class a implements t {
            public a() {
            }

            @Override
            public void a(float v10) {
                PrecomputedAtmosphereSkybox.this.skyviewMaxRaymarchDistMegaKm = Math.max(1.0E-9f, v10);
            }

            @Override
            public float get() {
                return PrecomputedAtmosphereSkybox.this.skyviewMaxRaymarchDistMegaKm;
            }
        }

        public class b implements t {
            public b() {
            }

            @Override
            public void a(float v10) {
                PrecomputedAtmosphereSkybox.this.skyviewOffsetSegmentT = Math.max(0.0f, v10);
            }

            @Override
            public float get() {
                return PrecomputedAtmosphereSkybox.this.skyviewOffsetSegmentT;
            }
        }

        public e() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> inner) {
            inner.add(PrecomputedAtmosphereSkybox.this.floatEntry("Max raymarch dist (million km)", new a(), false, false, true, false));
            inner.add(PrecomputedAtmosphereSkybox.this.floatEntry("Offset segment t", new b(), false, false, true, false));
            return inner;
        }
    }

    public class f implements c.o0 {

        public class a implements D5.h {

            public class RunnableC1224a implements Runnable {

                public final Variable f75526b;

                public RunnableC1224a(final Variable val$variable) {
                    this.f75526b = val$variable;
                }

                @Override
                public void run() {
                    t6.e S12 = t6.j.J1() ? t6.j.S1("PrecomputedAtmosphereSkybox - set auto height") : null;
                    try {
                        PrecomputedAtmosphereSkybox.this.autoHeight = this.f75526b.booolean_value.booleanValue();
                    } finally {
                        t6.j.P1(S12);
                    }
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", PrecomputedAtmosphereSkybox.this.autoHeight + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new RunnableC1224a(variable));
                }
            }
        }

        public class b implements t {
            public b() {
            }

            @Override
            public void a(float v10) {
                PrecomputedAtmosphereSkybox.this.eyeHeightKm = v10;
            }

            @Override
            public float get() {
                return PrecomputedAtmosphereSkybox.this.eyeHeightKm;
            }
        }

        public f() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> inner) {
            inner.add(new C5.b(new a(), "Auto height", b.a.SLBoolean));
            inner.add(PrecomputedAtmosphereSkybox.this.floatEntry("Eye height (km)", new b(), false, false, true, true));
            return inner;
        }
    }

    public class g implements c.o0 {

        public class a implements t {
            public a() {
            }

            @Override
            public void a(float v10) {
                PrecomputedAtmosphereSkybox.this.transmittanceSteps = Math.max(1, (int) v10);
            }

            @Override
            public float get() {
                return PrecomputedAtmosphereSkybox.this.transmittanceSteps;
            }
        }

        public class b implements t {
            public b() {
            }

            @Override
            public void a(float v10) {
                PrecomputedAtmosphereSkybox.this.msDirSamples = Math.max(1, (int) v10);
            }

            @Override
            public float get() {
                return PrecomputedAtmosphereSkybox.this.msDirSamples;
            }
        }

        public class c implements t {
            public c() {
            }

            @Override
            public void a(float v10) {
                PrecomputedAtmosphereSkybox.this.msRaymarchSteps = Math.max(1, (int) v10);
            }

            @Override
            public float get() {
                return PrecomputedAtmosphereSkybox.this.msRaymarchSteps;
            }
        }

        public class d implements t {
            public d() {
            }

            @Override
            public void a(float v10) {
                PrecomputedAtmosphereSkybox.this.skyRaymarchSteps = Math.max(1, (int) v10);
            }

            @Override
            public float get() {
                return PrecomputedAtmosphereSkybox.this.skyRaymarchSteps;
            }
        }

        public g() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> inner) {
            inner.add(PrecomputedAtmosphereSkybox.this.floatEntry("Transmittance steps", new a(), true, false, false, false));
            inner.add(PrecomputedAtmosphereSkybox.this.floatEntry("MS direction samples", new b(), false, true, false, false));
            inner.add(PrecomputedAtmosphereSkybox.this.floatEntry("MS steps", new c(), false, true, false, false));
            inner.add(PrecomputedAtmosphereSkybox.this.floatEntry("Skyview steps", new d(), false, false, true, false));
            return inner;
        }
    }

    public class h implements c.o0 {

        public class a implements c.s0 {
            public a() {
            }

            @Override
            public void a() {
            }

            @Override
            public void b(int id2) {
                PrecomputedAtmosphereSkybox.this.maxReso = id2;
                PrecomputedAtmosphereSkybox.this.f75503Z = true;
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
                PrecomputedAtmosphereSkybox.this.transmittanceLutReso = id2;
                PrecomputedAtmosphereSkybox.this.f75500W = true;
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
                PrecomputedAtmosphereSkybox.this.msLutReso = id2;
                PrecomputedAtmosphereSkybox.this.f75501X = true;
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
                PrecomputedAtmosphereSkybox.this.skyviewLutReso = id2;
                PrecomputedAtmosphereSkybox.this.f75502Y = true;
            }
        }

        public h() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> inner) {
            inner.add(F5.c.v(Lang.l(Lang.T.RESOLUTION), PrecomputedAtmosphereSkybox.this.maxReso, new a()));
            inner.add(F5.c.v("Transmittance LUT", PrecomputedAtmosphereSkybox.this.transmittanceLutReso, new b()));
            inner.add(F5.c.v("MS LUT", PrecomputedAtmosphereSkybox.this.msLutReso, new c()));
            inner.add(F5.c.v("Skyview LUT", PrecomputedAtmosphereSkybox.this.skyviewLutReso, new d()));
            return inner;
        }
    }

    public class i implements c.o0 {

        public final Context f75539a;

        public class a implements D5.h {
            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", PrecomputedAtmosphereSkybox.this.ambientLight + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    PrecomputedAtmosphereSkybox.this.ambientLight = variable.booolean_value.booleanValue();
                    PrecomputedAtmosphereSkybox.this.f75503Z = true;
                }
            }
        }

        public class b implements D5.h {
            public b() {
            }

            @Override
            public Variable get() {
                PrecomputedAtmosphereSkybox.this.ensureAmbientLightSkyColorMultiplier();
                return new Variable("temp", PrecomputedAtmosphereSkybox.this.ambientLightSkyColorMultiplier);
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    PrecomputedAtmosphereSkybox.this.ensureAmbientLightSkyColorMultiplier();
                    PrecomputedAtmosphereSkybox.this.ambientLightSkyColorMultiplier.intColor = variable.color_value.intColor;
                    PrecomputedAtmosphereSkybox.this.f75503Z = true;
                }
            }
        }

        public class c implements D5.h {
            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", PrecomputedAtmosphereSkybox.this.lux + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    PrecomputedAtmosphereSkybox.this.lux = variable.float_value;
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
                PrecomputedAtmosphereSkybox.this.ambientLightReso = id2;
                PrecomputedAtmosphereSkybox.this.f75503Z = true;
            }
        }

        public i(final Context val$context) {
            this.f75539a = val$context;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> inner) {
            inner.add(new C5.b(new a(), "Enable", b.a.SLBoolean));
            inner.add(new C5.b(new b(), "Sky color multiplier", b.a.Color, this.f75539a));
            inner.add(new C5.b(new c(), "Lux", b.a.SLFloat));
            PrecomputedAtmosphereSkybox.this.ensureLuxCurve();
            inner.add(J9.c.a("Lux curve", PrecomputedAtmosphereSkybox.this.luxCurve, this.f75539a));
            inner.add(F5.c.v(Lang.l(Lang.T.RESOLUTION), PrecomputedAtmosphereSkybox.this.ambientLightReso, new d()));
            return inner;
        }
    }

    public class j implements D5.h {

        public final t f75545a;

        public final boolean f75546b;

        public final boolean f75547c;

        public final boolean f75548d;

        public final boolean f75549e;

        public j(final t val$ref, final boolean val$markTrans, final boolean val$markMs, final boolean val$markSky, final boolean val$markSkybox) {
            this.f75545a = val$ref;
            this.f75546b = val$markTrans;
            this.f75547c = val$markMs;
            this.f75548d = val$markSky;
            this.f75549e = val$markSkybox;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f75545a.get() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f75545a.a(variable.float_value);
                if (this.f75546b) {
                    PrecomputedAtmosphereSkybox.this.f75500W = true;
                }
                if (this.f75547c) {
                    PrecomputedAtmosphereSkybox.this.f75501X = true;
                }
                if (this.f75548d) {
                    PrecomputedAtmosphereSkybox.this.f75502Y = true;
                }
                if (this.f75549e) {
                    PrecomputedAtmosphereSkybox.this.f75503Z = true;
                }
            }
        }
    }

    public class k extends AbstractC13203c {
        @Override
        public Class b() {
            return PrecomputedAtmosphereSkybox.f75481v1;
        }

        @Override
        public String c() {
            return PrecomputedAtmosphereSkybox.f75479q1;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER) + "/Skybox";
        }
    }

    public class l implements D5.h {
        public l() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", PrecomputedAtmosphereSkybox.this.skyLuminanceColor);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                PrecomputedAtmosphereSkybox.this.skyLuminanceColor.intColor = variable.color_value.intColor;
                PrecomputedAtmosphereSkybox.this.f75503Z = true;
            }
        }
    }

    public class m implements t {
        public m() {
        }

        @Override
        public void a(float v10) {
            PrecomputedAtmosphereSkybox.this.skyLuminanceScale = v10;
        }

        @Override
        public float get() {
            return PrecomputedAtmosphereSkybox.this.skyLuminanceScale;
        }
    }

    public class n implements t {
        public n() {
        }

        @Override
        public void a(float v10) {
            PrecomputedAtmosphereSkybox.this.skySaturation = Math.max(0.0f, v10);
        }

        @Override
        public float get() {
            return PrecomputedAtmosphereSkybox.this.skySaturation;
        }
    }

    public class o implements t {
        public o() {
        }

        @Override
        public void a(float v10) {
            PrecomputedAtmosphereSkybox.this.sunAngularDiameter = v10;
        }

        @Override
        public float get() {
            return PrecomputedAtmosphereSkybox.this.sunAngularDiameter;
        }
    }

    public class p implements t {
        public p() {
        }

        @Override
        public void a(float v10) {
            PrecomputedAtmosphereSkybox.this.sunDiskIntensity = v10;
        }

        @Override
        public float get() {
            return PrecomputedAtmosphereSkybox.this.sunDiskIntensity;
        }
    }

    public class q implements t {
        public q() {
        }

        @Override
        public void a(float v10) {
            PrecomputedAtmosphereSkybox.this.groundRadiusKm = v10;
        }

        @Override
        public float get() {
            return PrecomputedAtmosphereSkybox.this.groundRadiusKm;
        }
    }

    public class r implements t {
        public r() {
        }

        @Override
        public void a(float v10) {
            PrecomputedAtmosphereSkybox.this.atmosphereThicknessKm = v10;
        }

        @Override
        public float get() {
            return PrecomputedAtmosphereSkybox.this.atmosphereThicknessKm;
        }
    }

    public class s implements t {
        public s() {
        }

        @Override
        public void a(float v10) {
            PrecomputedAtmosphereSkybox.this.mieG = v10;
        }

        @Override
        public float get() {
            return PrecomputedAtmosphereSkybox.this.mieG;
        }
    }

    public interface t {
        void a(float value);

        float get();
    }

    public static class u {

        public final FilamentMaterialTemplate f75559a;

        public final FilamentView f75560b;

        public final FilamentScene f75561c;

        public final Rb.c f75562d;

        public final FilamentRenderable f75563e;

        public final FilamentVertexBuffer f75564f;

        public final Rb.d f75565g;

        public final FilamentCamera f75566h;

        public final FilamentMaterial f75567i;

        public u(String name, String shaderCode, List<ec.f> uniforms, List<ec.g> samplers) {
            FilamentMaterialTemplate b10 = b(name, shaderCode, uniforms, samplers);
            this.f75559a = b10;
            FilamentMaterial e10 = b10.e();
            this.f75567i = e10;
            FilamentVertexBuffer d10 = d();
            this.f75564f = d10;
            Rb.d c10 = c();
            this.f75565g = c10;
            FilamentScene filamentScene = new FilamentScene();
            this.f75561c = filamentScene;
            Rb.c cVar = new Rb.c();
            this.f75562d = cVar;
            this.f75563e = new FilamentRenderable(new RenderableManager.a(1).f(false), e10, cVar, d10, c10, RenderableManager.b.TRIANGLES, new Box(0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f));
            filamentScene.j(cVar);
            FilamentView filamentView = new FilamentView();
            this.f75560b = filamentView;
            filamentView.C(filamentScene);
            filamentView.z(false);
            FilamentCamera filamentCamera = new FilamentCamera();
            this.f75566h = filamentCamera;
            filamentCamera.l(-1.0f, 1.0f, -1.0f, 1.0f, 0.0f, 1.0f);
            filamentView.x(filamentCamera);
            filamentScene.j(filamentCamera.f());
        }

        public static FilamentMaterialTemplate b(String name, String shaderCode, List<ec.f> uniforms, List<ec.g> samplers) {
            int computeFullscreenMaterialHash = PrecomputedAtmosphereSkybox.computeFullscreenMaterialHash(name, shaderCode, uniforms, samplers);
            ByteBuffer f10 = ec.b.f(computeFullscreenMaterialHash);
            if (f10 == null) {
                com.google.android.filament.filamat.b d10 = PrecomputedAtmosphereSkybox.createFullscreenMaterialBuilder(name, shaderCode, uniforms, samplers).d();
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
            this.f75560b.F();
            this.f75560b.x(null);
            this.f75560b.C(null);
            try {
                this.f75561c.s(this.f75566h.f());
            } catch (Throwable unused) {
            }
            try {
                this.f75561c.s(this.f75562d);
            } catch (Throwable unused2) {
            }
            this.f75563e.destroyImmediate();
            this.f75567i.destroyImmediate();
            this.f75564f.destroyImmediate();
            this.f75565g.destroyImmediate();
            this.f75566h.destroyImmediate();
            this.f75560b.destroyImmediate();
            this.f75561c.destroyImmediate();
            this.f75562d.destroyImmediate();
        }

        public void f(Tb.a dst) {
            this.f75560b.D(0, 0, dst.i(), dst.h());
            dst.a(this.f75560b);
            Qb.a.o(this.f75560b);
            dst.z();
        }
    }

    public static class v {

        public FilamentSkybox f75568a;

        public C15980b f75569b;

        public FilamentIndirectLight f75570c;

        public float f75571d;

        public C15980b f75572e;

        public int f75573f;
    }

    static {
        C13201a.b(new k());
    }

    public PrecomputedAtmosphereSkybox() {
        super(f75479q1);
        this.ambientLight = true;
        this.lux = 25.0f;
        this.ambientLightReso = 2;
        this.ambientLightSkyColorMultiplier = new ColorINT(222, 222, 222);
        this.maxReso = 11;
        this.transmittanceLutReso = 8;
        this.msLutReso = 2;
        this.skyviewLutReso = 7;
        this.skyLuminanceColor = new ColorINT(255, 255, 255);
        this.skyLuminanceScale = 4.0f;
        this.skySaturation = 1.0f;
        this.sunAngularDiameter = 0.009349978f;
        this.limbDarkening = true;
        this.sunDiskIntensity = 1.0f;
        this.groundRadiusKm = 6360.0f;
        this.atmosphereThicknessKm = 100.0f;
        this.groundAlbedo = new ColorINT(26, 26, 26);
        this.eyeHeightKm = 0.1f;
        this.autoHeight = true;
        this.mieG = 0.8f;
        this.msContribution = 8.0f;
        this.rayleighMaxHeightKm = 8.0f;
        this.mieMaxHeightKm = 1.2f;
        this.ozonePeakAbsorptionHeightKm = 40.179f;
        this.ozoneAbsorptionFalloffKm = 17.83f;
        this.transmittanceOffsetSegmentT = 0.3f;
        this.msOffsetSegmentT = 0.3f;
        this.msOffsetSampleTheta = 0.3f;
        this.msOffsetSamplePhi = 0.5f;
        this.skyviewMaxRaymarchDistMegaKm = 1000.0f;
        this.skyviewOffsetSegmentT = 0.3f;
        this.skyRaymarchSteps = 20;
        this.transmittanceSteps = 40;
        this.msDirSamples = 8;
        this.msRaymarchSteps = 20;
        this.f75485H = -1;
        this.f75486I = -1;
        this.f75495R = new float[]{0.0f, 1.0f, 0.0f};
        this.f75496S = Integer.MIN_VALUE;
        this.f75497T = Integer.MIN_VALUE;
        this.f75498U = Integer.MIN_VALUE;
        this.f75499V = Integer.MIN_VALUE;
        this.f75500W = true;
        this.f75501X = true;
        this.f75502Y = true;
        this.f75503Z = true;
        this.f75508v0 = new float[]{1.0f, 1.0f, 1.0f};
        this.f75504b1 = new Vector3();
        ensureLuxCurve();
    }

    private void applyLutPassSettings() {
        u uVar = this.f75492O;
        if (uVar != null) {
            FilamentMaterial filamentMaterial = uVar.f75567i;
            setSharedAtmosphereParams(filamentMaterial);
            filamentMaterial.w("offsetSegmentT", Math.max(0.0f, this.transmittanceOffsetSegmentT));
            filamentMaterial.w("transmittanceSteps", Math.max(1, this.transmittanceSteps));
        }
        u uVar2 = this.f75493P;
        if (uVar2 != null) {
            FilamentMaterial filamentMaterial2 = uVar2.f75567i;
            setSharedAtmosphereParams(filamentMaterial2);
            filamentMaterial2.B("groundAlbedo", this.groundAlbedo.w(), this.groundAlbedo.u(), this.groundAlbedo.s());
            filamentMaterial2.w("mieG", this.mieG);
            filamentMaterial2.w("offsetSegmentT", Math.max(0.0f, this.msOffsetSegmentT));
            filamentMaterial2.w("offsetSampleTheta", Math.max(0.0f, this.msOffsetSampleTheta));
            filamentMaterial2.w("offsetSamplePhi", Math.max(0.0f, this.msOffsetSamplePhi));
            filamentMaterial2.w("msDirSamples", Math.max(1, this.msDirSamples));
            filamentMaterial2.w("msRaymarchSteps", Math.max(1, this.msRaymarchSteps));
            Tb.a aVar = this.f75489L;
            if (aVar != null && aVar.s()) {
                ColorTexture l10 = this.f75489L.l();
                if (ub.p.L(l10)) {
                    l10.f(filamentMaterial2, "transmittanceTex");
                }
            }
        }
        u uVar3 = this.f75494Q;
        if (uVar3 != null) {
            FilamentMaterial filamentMaterial3 = uVar3.f75567i;
            setSharedAtmosphereParams(filamentMaterial3);
            filamentMaterial3.w("mieG", this.mieG);
            filamentMaterial3.w("msContribution", getEffectiveContribution());
            filamentMaterial3.w("maxRaymarchDistKm", Math.max(0.001f, this.skyviewMaxRaymarchDistMegaKm * 1000000.0f));
            filamentMaterial3.w("offsetSegmentT", Math.max(0.0f, this.skyviewOffsetSegmentT));
            float[] fArr = this.f75495R;
            filamentMaterial3.B("sunDir", fArr[0], fArr[1], fArr[2]);
            filamentMaterial3.w("eyeHeightKm", Math.max(0.001f, this.eyeHeightKm));
            filamentMaterial3.w("skyRaymarchSteps", Math.max(1, this.skyRaymarchSteps));
            Tb.a aVar2 = this.f75489L;
            if (aVar2 != null && aVar2.s()) {
                ColorTexture l11 = this.f75489L.l();
                if (ub.p.L(l11)) {
                    l11.f(filamentMaterial3, "transmittanceTex");
                }
            }
            Tb.a aVar3 = this.f75490M;
            if (aVar3 == null || !aVar3.s()) {
                return;
            }
            ColorTexture l12 = this.f75490M.l();
            if (ub.p.L(l12)) {
                l12.f(filamentMaterial3, "msTex");
            }
        }
    }

    private boolean applySkyboxSettingsTo(C15986h cubemap, float skyColorMulR, float skyColorMulG, float skyColorMulB) {
        FilamentMaterial l10 = cubemap.l();
        if (l10 == null) {
            return false;
        }
        l10.B("skyLuminanceMultiplier", this.skyLuminanceColor.w() * skyColorMulR * getEffectiveLuminanceScale(), this.skyLuminanceColor.u() * skyColorMulG * getEffectiveLuminanceScale(), this.skyLuminanceColor.s() * skyColorMulB * getEffectiveLuminanceScale());
        l10.w("skySaturation", Math.max(0.0f, this.skySaturation));
        l10.w("sunAngularDiameter", Math.max(1.0E-4f, this.sunAngularDiameter));
        l10.r("limbDarkening", this.limbDarkening);
        l10.w("sunDiskIntensity", Math.max(0.0f, this.sunDiskIntensity));
        l10.w("groundRadiusKm", Math.max(1.0f, this.groundRadiusKm));
        l10.w("atmosphereThicknessKm", Math.max(0.1f, this.atmosphereThicknessKm));
        l10.w("eyeHeightKm", Math.max(0.001f, this.eyeHeightKm));
        float[] fArr = this.f75495R;
        l10.B("sunDir", fArr[0], fArr[1], fArr[2]);
        Tb.a aVar = this.f75489L;
        if (aVar != null && this.f75491N != null && aVar.s() && this.f75491N.s()) {
            ColorTexture l11 = this.f75489L.l();
            ColorTexture l12 = this.f75491N.l();
            if (ub.p.L(l11) && ub.p.L(l12)) {
                l11.f(l10, "transmittanceLut");
                l12.f(l10, "skyviewLut");
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
            throw new RuntimeException("Failed to compile cubemap material for PrecomputedAtmosphere");
        }
        ec.b.l(computeShaderCubemapHash, d10.a());
    }

    public static int computeFullscreenMaterialHash(String name, String shaderCode, List<ec.f> uniforms, List<ec.g> samplers) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("precomputed-atmosphere-fs-v1:");
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

    private int computeMSHash() {
        return ((((((((((((((((527 + computeTransmittanceHash()) * 31) + this.groundAlbedo.intColor) * 31) + Float.floatToIntBits(this.mieG)) * 31) + Float.floatToIntBits(this.msOffsetSegmentT)) * 31) + Float.floatToIntBits(this.msOffsetSampleTheta)) * 31) + Float.floatToIntBits(this.msOffsetSamplePhi)) * 31) + this.msDirSamples) * 31) + this.msRaymarchSteps) * 31) + this.msLutReso;
    }

    private static int computeShaderCubemapHash(String shaderCode) {
        return ("shadercubemap-" + shaderCode).hashCode();
    }

    private int computeSkyboxHash() {
        int floatToIntBits = ((((((((((((((((527 + this.skyLuminanceColor.intColor) * 31) + Float.floatToIntBits(getEffectiveLuminanceScale())) * 31) + Float.floatToIntBits(this.skySaturation)) * 31) + Float.floatToIntBits(this.sunAngularDiameter)) * 31) + (this.limbDarkening ? 1 : 0)) * 31) + Float.floatToIntBits(this.sunDiskIntensity)) * 31) + Float.floatToIntBits(this.eyeHeightKm)) * 31) + this.maxReso) * 31) + this.ambientLightReso;
        ensureAmbientLightSkyColorMultiplier();
        return (((floatToIntBits * 31) + this.ambientLightSkyColorMultiplier.intColor) * 31) + (this.ambientLight ? 1 : 0);
    }

    private int computeSkyviewHash() {
        return ((((((((((((((((((527 + computeMSHash()) * 31) + Float.floatToIntBits(getEffectiveContribution())) * 31) + Float.floatToIntBits(this.skyviewMaxRaymarchDistMegaKm)) * 31) + Float.floatToIntBits(this.skyviewOffsetSegmentT)) * 31) + Float.floatToIntBits(this.eyeHeightKm)) * 31) + this.skyRaymarchSteps) * 31) + this.skyviewLutReso) * 31) + Float.floatToIntBits(this.f75495R[0])) * 31) + Float.floatToIntBits(this.f75495R[1])) * 31) + Float.floatToIntBits(this.f75495R[2]);
    }

    private int computeTransmittanceHash() {
        return ((((((((((((((((527 + Float.floatToIntBits(this.groundRadiusKm)) * 31) + Float.floatToIntBits(this.atmosphereThicknessKm)) * 31) + Float.floatToIntBits(this.rayleighMaxHeightKm)) * 31) + Float.floatToIntBits(this.mieMaxHeightKm)) * 31) + Float.floatToIntBits(this.ozonePeakAbsorptionHeightKm)) * 31) + Float.floatToIntBits(this.ozoneAbsorptionFalloffKm)) * 31) + Float.floatToIntBits(this.transmittanceOffsetSegmentT)) * 31) + this.transmittanceSteps) * 31) + this.transmittanceLutReso;
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
        Tb.a aVar = this.f75489L;
        if (aVar != null && !aVar.f24207r) {
            aVar.c();
        }
        Tb.a aVar2 = this.f75490M;
        if (aVar2 != null && !aVar2.f24207r) {
            aVar2.c();
        }
        Tb.a aVar3 = this.f75491N;
        if (aVar3 != null && !aVar3.f24207r) {
            aVar3.c();
        }
        this.f75489L = null;
        this.f75490M = null;
        this.f75491N = null;
    }

    private void destroyCacheIndirectLight(v cache) {
        if (cache == null || cache.f75570c == null) {
            return;
        }
        if (getEffectiveScene().n() == cache.f75570c) {
            getEffectiveScene().u(null);
        }
        cache.f75570c.destroyImmediate();
        cache.f75570c = null;
        cache.f75572e = null;
    }

    private void destroyCacheSkybox(v cache) {
        if (cache == null || cache.f75568a == null) {
            return;
        }
        if (getEffectiveScene().p() == cache.f75568a) {
            getEffectiveScene().v(null);
        }
        cache.f75568a.destroyImmediate();
        cache.f75568a = null;
        cache.f75569b = null;
    }

    private void destroyFullscreenPasses() {
        u uVar = this.f75492O;
        if (uVar != null) {
            uVar.e();
            this.f75492O = null;
        }
        u uVar2 = this.f75493P;
        if (uVar2 != null) {
            uVar2.e();
            this.f75493P = null;
        }
        u uVar3 = this.f75494Q;
        if (uVar3 != null) {
            uVar3.e();
            this.f75494Q = null;
        }
    }

    private void destroyIndirectLightsUsing(C15980b cubemapInstance) {
        if (cubemapInstance == null) {
            return;
        }
        for (v vVar : getCaches()) {
            if (vVar != null && vVar.f75572e == cubemapInstance) {
                destroyCacheIndirectLight(vVar);
            }
        }
    }

    private void destroyShaderCubemaps() {
        C15986h c15986h = this.f75487J;
        if (c15986h != null) {
            c15986h.h();
            this.f75487J = null;
        }
        C15986h c15986h2 = this.f75488K;
        if (c15986h2 != null) {
            c15986h2.h();
            this.f75488K = null;
        }
    }

    private void destroySkyboxesUsing(C15980b cubemapInstance) {
        if (cubemapInstance == null) {
            return;
        }
        for (v vVar : getCaches()) {
            if (vVar != null && vVar.f75569b == cubemapInstance) {
                destroyCacheSkybox(vVar);
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
        int[] iArr = TextureConfig.f79814s;
        int i11 = iArr[this.msLutReso];
        int i12 = iArr[this.skyviewLutReso];
        int max2 = Math.max(16, i12 / 2);
        Tb.a aVar = this.f75489L;
        if (aVar == null) {
            this.f75489L = createLutFrameBuffer(i10, max);
            this.f75500W = true;
            this.f75501X = true;
            this.f75502Y = true;
            this.f75503Z = true;
        } else if (aVar.p() != i10 || this.f75489L.o() != max) {
            this.f75489L.c();
            this.f75489L = createLutFrameBuffer(i10, max);
            this.f75500W = true;
            this.f75501X = true;
            this.f75502Y = true;
            this.f75503Z = true;
        }
        Tb.a aVar2 = this.f75490M;
        if (aVar2 == null) {
            this.f75490M = createLutFrameBuffer(i11, i11);
            this.f75501X = true;
            this.f75502Y = true;
            this.f75503Z = true;
        } else if (aVar2.p() != i11 || this.f75490M.o() != i11) {
            this.f75490M.c();
            this.f75490M = createLutFrameBuffer(i11, i11);
            this.f75501X = true;
            this.f75502Y = true;
            this.f75503Z = true;
        }
        Tb.a aVar3 = this.f75491N;
        if (aVar3 == null) {
            this.f75491N = createLutFrameBuffer(i12, max2);
            this.f75502Y = true;
            this.f75503Z = true;
        } else if (aVar3.p() != i12 || this.f75491N.o() != max2) {
            this.f75491N.c();
            this.f75491N = createLutFrameBuffer(i12, max2);
            this.f75502Y = true;
            this.f75503Z = true;
        }
        if (this.f75492O == null) {
            this.f75492O = new u("TransmittanceLut", loadFile("transmittance_lut.glsl"), transmittanceParams(), new SteppedArrayList());
            this.f75500W = true;
            this.f75501X = true;
            this.f75502Y = true;
        }
        if (this.f75493P == null) {
            this.f75493P = new u("MultipleScatteringLut", loadFile("ms_lut.glsl"), msParams(), msSamplers());
            this.f75501X = true;
            this.f75502Y = true;
        }
        if (this.f75494Q == null) {
            this.f75494Q = new u("SkyviewLut", loadFile("skyview_lut.glsl"), skyviewParams(), skyviewSamplers());
            this.f75502Y = true;
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

    public C5.b floatEntry(String title, t ref, boolean markTrans, boolean markMs, boolean markSky, boolean markSkybox) {
        return floatEntry(title, ref, markTrans, markMs, markSky, markSkybox, b.a.SLFloat);
    }

    private float getEffectiveContribution() {
        return !GraphicsSettings.d() ? this.msContribution / 3.0f : this.msContribution;
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
        return C14207a.a("Shaders/PrecomputedAtmosphere/" + file);
    }

    private void markMSDirtyCascade() {
        this.f75501X = true;
        this.f75502Y = true;
        this.f75503Z = true;
    }

    private void markSkyviewDirtyCascade() {
        this.f75502Y = true;
        this.f75503Z = true;
    }

    private void markTransmittanceDirtyCascade() {
        this.f75500W = true;
        this.f75501X = true;
        this.f75502Y = true;
        this.f75503Z = true;
    }

    private List<ec.f> msParams() {
        List<ec.f> sharedAtmosphereParams = sharedAtmosphereParams();
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT3;
        MaterialBuilder.g gVar = MaterialBuilder.g.HIGH;
        sharedAtmosphereParams.add(new ec.f(rVar, "groundAlbedo", gVar));
        MaterialBuilder.r rVar2 = MaterialBuilder.r.FLOAT;
        sharedAtmosphereParams.add(new ec.f(rVar2, "mieG", gVar));
        sharedAtmosphereParams.add(new ec.f(rVar2, "offsetSegmentT", gVar));
        sharedAtmosphereParams.add(new ec.f(rVar2, "offsetSampleTheta", gVar));
        sharedAtmosphereParams.add(new ec.f(rVar2, "offsetSamplePhi", gVar));
        sharedAtmosphereParams.add(new ec.f(rVar2, "msDirSamples", gVar));
        sharedAtmosphereParams.add(new ec.f(rVar2, "msRaymarchSteps", gVar));
        return sharedAtmosphereParams;
    }

    private List<ec.g> msSamplers() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(new ec.g(MaterialBuilder.m.SAMPLER_2D, MaterialBuilder.l.FLOAT, MaterialBuilder.g.HIGH, "transmittanceTex"));
        return steppedArrayList;
    }

    private void setSharedAtmosphereParams(FilamentMaterial m10) {
        m10.w("groundRadiusKm", Math.max(1.0f, this.groundRadiusKm));
        m10.w("atmosphereThicknessKm", Math.max(0.1f, this.atmosphereThicknessKm));
        m10.w("rayleighMaxHeightKm", Math.max(0.001f, this.rayleighMaxHeightKm));
        m10.w("mieMaxHeightKm", Math.max(0.001f, this.mieMaxHeightKm));
        m10.w("ozonePeakAbsorptionHeightKm", Math.max(0.0f, this.ozonePeakAbsorptionHeightKm));
        m10.w("ozoneAbsorptionFalloffKm", Math.max(0.001f, this.ozoneAbsorptionFalloffKm));
        m10.B("rayleighScatteringCoefficient", 0.006605f, 0.012345f, 0.029413f);
        m10.B("mieScatteringCoefficient", 0.003996f, 0.003996f, 0.003996f);
        m10.B("mieAbsorptionCoefficient", 0.00444f, 0.00444f, 0.00444f);
        m10.B("ozoneAbsorptionCoefficient", 0.002291f, 0.00154f, 0.0f);
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
        steppedArrayList.add(new ec.f(rVar, "skyLuminanceMultiplier", gVar));
        MaterialBuilder.r rVar2 = MaterialBuilder.r.FLOAT;
        steppedArrayList.add(new ec.f(rVar2, "skySaturation", gVar));
        steppedArrayList.add(new ec.f(rVar2, "sunAngularDiameter", gVar));
        steppedArrayList.add(new ec.f(rVar2, "limbDarkening", gVar));
        steppedArrayList.add(new ec.f(rVar2, "sunDiskIntensity", gVar));
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
        sharedAtmosphereParams.add(new ec.f(rVar, "msContribution", gVar));
        sharedAtmosphereParams.add(new ec.f(rVar, "maxRaymarchDistKm", gVar));
        sharedAtmosphereParams.add(new ec.f(rVar, "offsetSegmentT", gVar));
        sharedAtmosphereParams.add(new ec.f(MaterialBuilder.r.FLOAT3, "sunDir", gVar));
        sharedAtmosphereParams.add(new ec.f(rVar, "eyeHeightKm", gVar));
        sharedAtmosphereParams.add(new ec.f(rVar, "skyRaymarchSteps", gVar));
        return sharedAtmosphereParams;
    }

    private List<ec.g> skyviewSamplers() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        MaterialBuilder.m mVar = MaterialBuilder.m.SAMPLER_2D;
        MaterialBuilder.l lVar = MaterialBuilder.l.FLOAT;
        MaterialBuilder.g gVar = MaterialBuilder.g.HIGH;
        steppedArrayList.add(new ec.g(mVar, lVar, gVar, "transmittanceTex"));
        steppedArrayList.add(new ec.g(mVar, lVar, gVar, "msTex"));
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
            float round = Math.round((this.f75504b1.getY() / 100.0f) / 0.1f) * 0.1f;
            this.eyeHeightKm = round;
            this.eyeHeightKm = Nc.b.M(0.2f, round);
        }
    }

    private void updateLodReferencePosition() {
        GameObject gameObject;
        GameObject gameObject2;
        LODTarget lODTarget = this.f75484D0;
        if (lODTarget != null && (lODTarget.f79250n == null || !lODTarget.isHierarchyActive())) {
            this.f75484D0 = null;
        }
        if (this.f75484D0 == null) {
            this.f75484D0 = (LODTarget) com.itsmagic.engine.Engines.Engine.World.a.k(LODTarget.class);
        }
        LODTarget lODTarget2 = this.f75484D0;
        if (lODTarget2 != null && (gameObject2 = lODTarget2.f79250n) != null) {
            gameObject2.transform.u0(this.f75504b1);
            this.f75505i1 = true;
            return;
        }
        Camera mainCameraAllowEditor = Camera.mainCameraAllowEditor();
        if (mainCameraAllowEditor == null || (gameObject = mainCameraAllowEditor.f79250n) == null) {
            this.f75505i1 = false;
        } else {
            gameObject.transform.u0(this.f75504b1);
            this.f75505i1 = true;
        }
    }

    private void updateReflectionsCubemapInstance() {
        int i10 = TextureConfig.f79814s[this.ambientLightReso];
        C15986h c15986h = this.f75488K;
        if (c15986h == null || this.f75486I != i10) {
            if (c15986h != null) {
                destroyIndirectLightsUsing(c15986h);
                this.f75488K.h();
            }
            this.f75486I = i10;
            this.f75488K = new C15986h(i10, loadFile("fragment.glsl"), skyboxParams(), skyboxSamplers(), false);
            this.f75503Z = true;
        }
    }

    private void updateSkyboxCubemapInstance() {
        int i10 = TextureConfig.f79814s[this.maxReso];
        C15986h c15986h = this.f75487J;
        if (c15986h == null || this.f75485H != i10) {
            if (c15986h != null) {
                destroySkyboxesUsing(c15986h);
                this.f75487J.h();
            }
            this.f75485H = i10;
            this.f75487J = new C15986h(i10, loadFile("fragment.glsl"), skyboxParams(), skyboxSamplers(), true);
            this.f75503Z = true;
        }
    }

    private void updateSunDirection() {
        float[] fArr = this.f75495R;
        fArr[0] = 0.0f;
        fArr[1] = 1.0f;
        fArr[2] = 0.0f;
        try {
            List<com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component> h10 = R8.f.h(SunLight.class);
            for (int i10 = 0; i10 < h10.size(); i10++) {
                com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component component = h10.get(i10);
                if (component != null && component.isHierarchyActive()) {
                    component.f79250n.transform.C(this.f75495R);
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
        v cache = getCache(camera);
        if (camera.overrideAmbientLight() == null && this.ambientLight) {
            getEffectiveScene().u(cache.f75570c);
        }
        if (camera.getBackgroundType() != Camera.F.Skybox) {
            return;
        }
        getEffectiveScene().v(cache.f75568a);
    }

    @Override
    public void applyInPreUpdate(Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
        if (camera.getBackgroundType() != Camera.F.Skybox) {
            return;
        }
        v cache = getCache(camera);
        if (cache.f75568a == null || cache.f75569b != this.f75487J) {
            destroyCacheSkybox(cache);
            cache.f75569b = this.f75487J;
            Skybox.a e10 = new Skybox.a().b(1.0f, 1.0f, 1.0f, 1.0f).e(1.0f);
            e10.g(false);
            cache.f75568a = new FilamentSkybox(e10, this.f75487J);
        }
        float effectiveLux = getEffectiveLux();
        if (!this.ambientLight) {
            destroyCacheIndirectLight(cache);
            return;
        }
        ensureAmbientLightSkyColorMultiplier();
        int i10 = this.ambientLightSkyColorMultiplier.intColor;
        if (cache.f75570c != null && cache.f75571d == effectiveLux && cache.f75572e == this.f75488K && cache.f75573f == i10) {
            return;
        }
        destroyCacheIndirectLight(cache);
        cache.f75571d = effectiveLux;
        cache.f75572e = this.f75488K;
        cache.f75573f = i10;
        this.f75508v0[0] = this.ambientLightSkyColorMultiplier.w();
        this.f75508v0[1] = this.ambientLightSkyColorMultiplier.u();
        this.f75508v0[2] = this.ambientLightSkyColorMultiplier.s();
        cache.f75570c = new FilamentIndirectLight(new IndirectLight.a().c(1, this.f75508v0).b(effectiveLux * 1000.0f), this.f75488K);
    }

    @Override
    public void disableFor(Camera camera, FilamentCamera filamentCamera, FilamentView view) {
        v peekCache = peekCache(camera);
        if (peekCache != null) {
            if (peekCache.f75568a != null && getEffectiveScene().p() == peekCache.f75568a) {
                getEffectiveScene().v(null);
            }
            if (peekCache.f75570c == null || getEffectiveScene().n() != peekCache.f75570c) {
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
        return f75479q1;
    }

    public float getEffectiveLux() {
        ensureLuxCurve();
        return (GraphicsSettings.d() ? this.lux : this.lux * 3.0f) * Nc.b.I(this.luxCurve.p(Nc.b.I(this.f75495R[1])));
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
        linkedList.add(new C5.b(new l(), "Sky color", b.a.Color, context));
        linkedList.add(floatEntry("Sky luminance scale", new m(), false, false, false, true));
        linkedList.add(floatEntry("Sky saturation", new n(), false, false, false, true, b.a.SLFloat01));
        linkedList.add(floatEntry("Sun angular diameter", new o(), false, false, false, true));
        linkedList.add(floatEntry("Sun disk intensity", new p(), false, false, false, true));
        linkedList.add(floatEntry("Ground radius (km)", new q(), true, true, true, false));
        linkedList.add(floatEntry("Atmosphere thickness (km)", new r(), true, true, true, false));
        linkedList.add(floatEntry("Mie g", new s(), false, true, true, false));
        linkedList.add(floatEntry("MS contribution", new a(), false, false, true, false));
        linkedList.add(F5.c.d(getInspectorMemory(), "Atmosphere Profile", new b()));
        linkedList.add(F5.c.d(getInspectorMemory(), "Transmittance", new c()));
        linkedList.add(F5.c.d(getInspectorMemory(), "LUT", new d()));
        linkedList.add(F5.c.d(getInspectorMemory(), "Skyview", new e()));
        linkedList.add(F5.c.d(getInspectorMemory(), "Eye Height", new f()));
        linkedList.add(F5.c.d(getInspectorMemory(), "Steps", new g()));
        linkedList.add(F5.c.d(getInspectorMemory(), "Resolutions", new h()));
        linkedList.add(F5.c.d(getInspectorMemory(), Lang.l(Lang.T.AMBIENT_LIGHT), new i(context)));
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
        return this.msContribution;
    }

    @InterfaceC15237a
    public int getMsDirSamples() {
        return this.msDirSamples;
    }

    @InterfaceC15237a
    public int getMsLutResolutionID() {
        return this.msLutReso;
    }

    @InterfaceC15237a
    public float getMsOffsetSamplePhi() {
        return this.msOffsetSamplePhi;
    }

    @InterfaceC15237a
    public float getMsOffsetSampleTheta() {
        return this.msOffsetSampleTheta;
    }

    @InterfaceC15237a
    public float getMsOffsetSegmentT() {
        return this.msOffsetSegmentT;
    }

    @InterfaceC15237a
    public int getMsRaymarchSteps() {
        return this.msRaymarchSteps;
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
        return f75479q1;
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
        C15986h c15986h = this.f75487J;
        if (c15986h != null) {
            c15986h.n();
        }
        C15986h c15986h2 = this.f75488K;
        if (c15986h2 != null) {
            c15986h2.n();
        }
    }

    @Override
    public void onDetach() {
        for (v vVar : getCaches()) {
            if (vVar != null) {
                if (vVar.f75568a != null && getEffectiveScene().p() == vVar.f75568a) {
                    getEffectiveScene().v(null);
                }
                if (vVar.f75570c != null && getEffectiveScene().n() == vVar.f75570c) {
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
        Tb.a aVar2;
        u uVar;
        Tb.a aVar3;
        super.preRender();
        boolean z10 = true;
        if (this.f75500W && (uVar = this.f75492O) != null && (aVar3 = this.f75489L) != null) {
            uVar.f(aVar3);
            this.f75500W = false;
            this.f75501X = true;
            this.f75502Y = true;
            this.f75503Z = true;
        }
        if (this.f75501X && !this.f75500W && this.f75493P != null && this.f75490M != null && (aVar2 = this.f75489L) != null && aVar2.s()) {
            this.f75493P.f(this.f75490M);
            this.f75501X = false;
            this.f75502Y = true;
            this.f75503Z = true;
        }
        if (this.f75502Y && !this.f75500W && !this.f75501X && this.f75494Q != null && this.f75491N != null && (aVar = this.f75489L) != null && this.f75490M != null && aVar.s() && this.f75490M.s()) {
            this.f75494Q.f(this.f75491N);
            this.f75502Y = false;
            this.f75503Z = true;
        }
        if (this.f75503Z && this.f75507q0) {
            C15986h c15986h2 = this.f75487J;
            boolean z11 = c15986h2 != null && c15986h2.m();
            if (this.ambientLight && ((c15986h = this.f75488K) == null || !c15986h.m())) {
                z10 = false;
            }
            if (z11) {
                this.f75487J.o();
            }
            if (this.ambientLight && z10) {
                this.f75488K.o();
            }
            if (z11 && z10) {
                this.f75503Z = false;
            }
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
        if (computeTransmittanceHash != this.f75496S) {
            this.f75496S = computeTransmittanceHash;
            this.f75500W = true;
            this.f75501X = true;
            this.f75502Y = true;
            this.f75503Z = true;
        }
        int computeMSHash = computeMSHash();
        if (computeMSHash != this.f75497T) {
            this.f75497T = computeMSHash;
            this.f75501X = true;
            this.f75502Y = true;
            this.f75503Z = true;
        }
        int computeSkyviewHash = computeSkyviewHash();
        if (computeSkyviewHash != this.f75498U) {
            this.f75498U = computeSkyviewHash;
            this.f75502Y = true;
            this.f75503Z = true;
        }
        int computeSkyboxHash = computeSkyboxHash();
        if (computeSkyboxHash != this.f75499V) {
            this.f75499V = computeSkyboxHash;
            this.f75503Z = true;
        }
        applyLutPassSettings();
        this.f75507q0 = false;
        C15986h c15986h = this.f75487J;
        if (c15986h != null) {
            this.f75507q0 = applySkyboxSettingsTo(c15986h, 1.0f, 1.0f, 1.0f);
        }
        if (this.f75488K != null) {
            ensureAmbientLightSkyColorMultiplier();
            applySkyboxSettingsTo(this.f75488K, this.ambientLightSkyColorMultiplier.w(), this.ambientLightSkyColorMultiplier.u(), this.ambientLightSkyColorMultiplier.s());
        }
    }

    @InterfaceC15237a
    public void setAmbientLight(boolean ambientLight) {
        this.ambientLight = ambientLight;
        this.f75503Z = true;
    }

    @InterfaceC15237a
    public void setAmbientLightResolutionID(int ambientLightReso) {
        validateResolutionID(ambientLightReso);
        this.ambientLightReso = ambientLightReso;
        this.f75503Z = true;
    }

    @InterfaceC15237a
    public void setAmbientLightSkyColorMultiplier(ColorINT ambientLightSkyColorMultiplier) {
        if (ambientLightSkyColorMultiplier == null) {
            throw new NullPointerException("ambientLightSkyColorMultiplier can't be null");
        }
        this.ambientLightSkyColorMultiplier = ambientLightSkyColorMultiplier;
        this.f75503Z = true;
    }

    @InterfaceC15237a
    public void setAtmosphereThicknessKm(float atmosphereThicknessKm) {
        this.atmosphereThicknessKm = atmosphereThicknessKm;
        markTransmittanceDirtyCascade();
    }

    @InterfaceC15237a
    public void setAutoHeight(boolean autoHeight) {
        this.autoHeight = autoHeight;
    }

    @InterfaceC15237a
    public void setEyeHeightKm(float eyeHeightKm) {
        this.eyeHeightKm = eyeHeightKm;
        this.f75502Y = true;
        this.f75503Z = true;
    }

    @InterfaceC15237a
    public void setGroundRadiusKm(float groundRadiusKm) {
        this.groundRadiusKm = groundRadiusKm;
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
        this.f75503Z = true;
    }

    @InterfaceC15237a
    public void setMieG(float mieG) {
        this.mieG = mieG;
        markMSDirtyCascade();
    }

    @InterfaceC15237a
    public void setMieMaxHeightKm(float mieMaxHeightKm) {
        this.mieMaxHeightKm = Math.max(0.001f, mieMaxHeightKm);
        markTransmittanceDirtyCascade();
    }

    @InterfaceC15237a
    public void setMsContribution(float msContribution) {
        this.msContribution = msContribution;
        markSkyviewDirtyCascade();
    }

    @InterfaceC15237a
    public void setMsDirSamples(int msDirSamples) {
        this.msDirSamples = Math.max(1, msDirSamples);
        markMSDirtyCascade();
    }

    @InterfaceC15237a
    public void setMsLutResolutionID(int msLutReso) {
        validateResolutionID(msLutReso);
        this.msLutReso = msLutReso;
        markMSDirtyCascade();
    }

    @InterfaceC15237a
    public void setMsOffsetSamplePhi(float msOffsetSamplePhi) {
        this.msOffsetSamplePhi = Math.max(0.0f, msOffsetSamplePhi);
        markMSDirtyCascade();
    }

    @InterfaceC15237a
    public void setMsOffsetSampleTheta(float msOffsetSampleTheta) {
        this.msOffsetSampleTheta = Math.max(0.0f, msOffsetSampleTheta);
        markMSDirtyCascade();
    }

    @InterfaceC15237a
    public void setMsOffsetSegmentT(float msOffsetSegmentT) {
        this.msOffsetSegmentT = Math.max(0.0f, msOffsetSegmentT);
        markMSDirtyCascade();
    }

    @InterfaceC15237a
    public void setMsRaymarchSteps(int msRaymarchSteps) {
        this.msRaymarchSteps = Math.max(1, msRaymarchSteps);
        markMSDirtyCascade();
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
        this.f75506m1 = run;
    }

    @InterfaceC15237a
    public void setSkyLuminanceColor(ColorINT skyLuminanceColor) {
        if (skyLuminanceColor == null) {
            throw new NullPointerException("skyLuminanceColor can't be null");
        }
        this.skyLuminanceColor = skyLuminanceColor;
        this.f75503Z = true;
    }

    @InterfaceC15237a
    public void setSkyLuminanceScale(float skyLuminanceScale) {
        this.skyLuminanceScale = skyLuminanceScale;
        this.f75503Z = true;
    }

    @InterfaceC15237a
    public void setSkyRaymarchSteps(int skyRaymarchSteps) {
        this.skyRaymarchSteps = Math.max(1, skyRaymarchSteps);
        markSkyviewDirtyCascade();
    }

    @InterfaceC15237a
    public void setSkySaturation(float skySaturation) {
        this.skySaturation = Math.max(0.0f, skySaturation);
        this.f75503Z = true;
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
        this.f75503Z = true;
    }

    @InterfaceC15237a
    public void setSunDiskIntensity(float sunDiskIntensity) {
        this.sunDiskIntensity = sunDiskIntensity;
        this.f75503Z = true;
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
        Component component = this.f75506m1;
        if (component != null) {
            return component;
        }
        JAVARuntime.PrecomputedAtmosphereSkybox precomputedAtmosphereSkybox = new JAVARuntime.PrecomputedAtmosphereSkybox(this);
        this.f75506m1 = precomputedAtmosphereSkybox;
        return precomputedAtmosphereSkybox;
    }

    private static void buildShaderCache(boolean forceRebuild) {
        try {
            PrecomputedAtmosphereSkybox precomputedAtmosphereSkybox = new PrecomputedAtmosphereSkybox();
            String loadFile = loadFile("transmittance_lut.glsl");
            String loadFile2 = loadFile("ms_lut.glsl");
            String loadFile3 = loadFile("skyview_lut.glsl");
            String loadFile4 = loadFile("fragment.glsl");
            buildFullscreenShaderCache("PrecomputedAtmosphere.TransmittanceLut.v1", loadFile, precomputedAtmosphereSkybox.transmittanceParams(), new SteppedArrayList(), forceRebuild);
            buildFullscreenShaderCache("PrecomputedAtmosphere.MultipleScatteringLut.v1", loadFile2, precomputedAtmosphereSkybox.msParams(), precomputedAtmosphereSkybox.msSamplers(), forceRebuild);
            buildFullscreenShaderCache("PrecomputedAtmosphere.SkyviewLut.v1", loadFile3, precomputedAtmosphereSkybox.skyviewParams(), precomputedAtmosphereSkybox.skyviewSamplers(), forceRebuild);
            buildShaderCubemapCache(loadFile4, precomputedAtmosphereSkybox.skyboxParams(), precomputedAtmosphereSkybox.skyboxSamplers(), forceRebuild);
        } catch (Exception e10) {
            throw new RuntimeException("Failed to build PrecomputedAtmosphere shader cache", e10);
        }
    }

    private C5.b floatEntry(String title, t ref, boolean markTrans, boolean markMs, boolean markSky, boolean markSkybox, b.a type) {
        return new C5.b(new j(ref, markTrans, markMs, markSky, markSkybox), title, type);
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        PrecomputedAtmosphereSkybox precomputedAtmosphereSkybox = new PrecomputedAtmosphereSkybox();
        precomputedAtmosphereSkybox.ambientLight = this.ambientLight;
        precomputedAtmosphereSkybox.lux = this.lux;
        precomputedAtmosphereSkybox.luxCurve = Curve.k(this.luxCurve);
        precomputedAtmosphereSkybox.ambientLightReso = this.ambientLightReso;
        ensureAmbientLightSkyColorMultiplier();
        precomputedAtmosphereSkybox.ambientLightSkyColorMultiplier = ColorINT.k(this.ambientLightSkyColorMultiplier);
        precomputedAtmosphereSkybox.maxReso = this.maxReso;
        precomputedAtmosphereSkybox.transmittanceLutReso = this.transmittanceLutReso;
        precomputedAtmosphereSkybox.msLutReso = this.msLutReso;
        precomputedAtmosphereSkybox.skyviewLutReso = this.skyviewLutReso;
        precomputedAtmosphereSkybox.skyLuminanceColor = ColorINT.k(this.skyLuminanceColor);
        precomputedAtmosphereSkybox.skyLuminanceScale = this.skyLuminanceScale;
        precomputedAtmosphereSkybox.skySaturation = this.skySaturation;
        precomputedAtmosphereSkybox.sunAngularDiameter = this.sunAngularDiameter;
        precomputedAtmosphereSkybox.limbDarkening = this.limbDarkening;
        precomputedAtmosphereSkybox.sunDiskIntensity = this.sunDiskIntensity;
        precomputedAtmosphereSkybox.groundRadiusKm = this.groundRadiusKm;
        precomputedAtmosphereSkybox.atmosphereThicknessKm = this.atmosphereThicknessKm;
        precomputedAtmosphereSkybox.groundAlbedo = ColorINT.k(this.groundAlbedo);
        precomputedAtmosphereSkybox.eyeHeightKm = this.eyeHeightKm;
        precomputedAtmosphereSkybox.mieG = this.mieG;
        precomputedAtmosphereSkybox.msContribution = this.msContribution;
        precomputedAtmosphereSkybox.rayleighMaxHeightKm = this.rayleighMaxHeightKm;
        precomputedAtmosphereSkybox.mieMaxHeightKm = this.mieMaxHeightKm;
        precomputedAtmosphereSkybox.ozonePeakAbsorptionHeightKm = this.ozonePeakAbsorptionHeightKm;
        precomputedAtmosphereSkybox.ozoneAbsorptionFalloffKm = this.ozoneAbsorptionFalloffKm;
        precomputedAtmosphereSkybox.transmittanceOffsetSegmentT = this.transmittanceOffsetSegmentT;
        precomputedAtmosphereSkybox.msOffsetSegmentT = this.msOffsetSegmentT;
        precomputedAtmosphereSkybox.msOffsetSampleTheta = this.msOffsetSampleTheta;
        precomputedAtmosphereSkybox.msOffsetSamplePhi = this.msOffsetSamplePhi;
        precomputedAtmosphereSkybox.skyviewMaxRaymarchDistMegaKm = this.skyviewMaxRaymarchDistMegaKm;
        precomputedAtmosphereSkybox.skyviewOffsetSegmentT = this.skyviewOffsetSegmentT;
        precomputedAtmosphereSkybox.skyRaymarchSteps = this.skyRaymarchSteps;
        precomputedAtmosphereSkybox.transmittanceSteps = this.transmittanceSteps;
        precomputedAtmosphereSkybox.msDirSamples = this.msDirSamples;
        precomputedAtmosphereSkybox.msRaymarchSteps = this.msRaymarchSteps;
        return precomputedAtmosphereSkybox;
    }

    @Override
    public void destroyCache(v cache) {
        if (cache == null) {
            return;
        }
        destroyCacheSkybox(cache);
        destroyCacheIndirectLight(cache);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public v newCacheInstance() {
        return new v();
    }
}
