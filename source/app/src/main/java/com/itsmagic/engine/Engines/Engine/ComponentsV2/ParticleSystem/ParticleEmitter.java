package com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem;

import C5.b;
import F5.c;
import Ic.C2629h;
import Ic.C2632k;
import JAVARuntime.Color;
import JAVARuntime.GizmoElement;
import JAVARuntime.GizmoObject;
import JAVARuntime.Runnable;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDicFile;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.Shapes.ParticleConeShapeOptions;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.Shapes.ParticleRectangleShapeOptions;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.Shapes.ParticleSphereShapeOptions;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.TestVFXEffect;
import com.itsmagic.engine.Engines.Engine.Curve.Curve;
import com.itsmagic.engine.Engines.Engine.Gradient.Gradient;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Texture.Sprite.Rect;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Engine.Vector.AABB;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import e9.C13045a;
import e9.C13046b;
import e9.C13047c;
import e9.C13048d;
import fb.AbstractC13203c;
import fb.C13201a;
import ib.InterfaceC13601h;
import java.util.LinkedList;
import java.util.List;
import s8.InterfaceC15237a;
import s8.InterfaceC15239c;
import yb.C16165b;

public class ParticleEmitter extends Component {

    public static final float f73874D2 = 0.5f;

    public static final int f73875F2 = 10;

    public static final int f73876H2 = 4;

    public static final String f73877L2 = "ParticleEmitter";

    public static final Class f73878M2 = ParticleEmitter.class;

    public static final float f73879v2 = 0.2f;

    public boolean f73880D0;

    public boolean f73881E;

    public Camera f73882F;

    public transient float[] f73883F1;

    public boolean f73884G;

    public transient boolean f73885H;

    public transient float[] f73886H1;

    public boolean f73887I;

    public final List<com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.a> f73888J;

    public final List<com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.a> f73889K;

    public final List<com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.a> f73890L;

    public transient int f73891L1;

    public final com.itsmagic.engine.Engines.Engine.Vector.f f73892M;

    public transient float f73893M1;

    public final com.itsmagic.engine.Engines.Engine.Vector.f f73894N;

    public final Object f73895O;

    public final Vector3 f73896P;

    public final Quaternion f73897Q;

    public final Vector3 f73898R;

    public C13046b f73899R1;

    public final Vector3 f73900S;

    public final Vector3 f73901T;

    public final InterfaceC13601h f73902U;

    public int f73903V;

    public boolean f73904V1;

    public float f73905W;

    public int f73906X;

    public float f73907Y;

    public float f73908Z;

    @Expose
    private boolean allowMergeV2;

    @Expose
    q alphaBased;

    @Expose
    Curve alphaOverLifeTimeCurve;

    public ub.p f73909b1;

    public boolean f73910b2;

    @Expose
    private boolean castShadows;

    @Expose
    @eb.f
    ColorINT color;

    @Expose
    r colorBased;

    @Expose
    Gradient colorGradient;

    @Expose
    s colorMode;

    @Expose
    private ParticleConeShapeOptions coneShapeOptions;

    @Expose
    @eb.f
    private float emissionPeriod;

    @Expose
    t emissionShape;

    @Expose
    private Curve emissionsOverPeriod;

    @Expose
    @eb.f
    private float emissionsPerSecond;

    @Expose
    @eb.f
    ColorINT emissive;

    @Expose
    u emissiveBased;

    @Expose
    Gradient emissiveGradient;

    @Expose
    @eb.f
    @Deprecated
    private float emitDelaySeconds;

    @Expose
    private boolean enableEmission;

    @Expose
    private boolean fullWhite;

    @Expose
    @eb.f
    float gravityMultiplier;

    public final AABB f73911i1;

    public boolean f73912i2;

    @Expose
    @eb.f
    int layer;

    public final AABB f73913m1;

    public final GizmoObject f73914m2;

    @Expose
    @eb.f
    float maxLifeSeconds;

    @Expose
    @eb.f
    float maxSpeed;

    @Expose
    private boolean playOnStart;

    public final ParticleRenderBatchData f73915q0;

    public final Vector3 f73916q1;

    public JAVARuntime.Component f73917q2;

    @Expose
    private boolean receiveLight;

    @Expose
    private boolean receiveShadows;

    @Expose
    private ParticleRectangleShapeOptions rectangleShapeOptions;

    @Expose
    public boolean rotateBasedDirection;

    @Expose
    v sizeBased;

    @Expose
    Curve sizeOverLifeTimeCurve;

    @Expose
    w speedBased;

    @Expose
    Curve speedOverLifeTimeCurve;

    @Expose
    private ParticleSphereShapeOptions sphereShapeOptions;

    @Expose
    x spriteBased;

    @Expose
    Curve spriteCurve;

    @Expose
    int spriteIndex;

    @Expose
    @eb.f
    float startSize;

    @Expose
    @eb.f
    float startSpeed;

    @Expose
    private String textureFile;

    @Expose
    y transparencyBased;

    public final ParticleRenderPerParticleData f73918v0;

    public transient NativeFloatBuffer f73919v1;

    @Expose
    z worldSpace;

    public transient NativeFloatBuffer f73920y1;

    public class a implements c.o0 {

        public final Context f73921a;

        public class C1208a extends c.n0<u> {
            public C1208a() {
            }

            @Override
            public void a() {
                ParticleEmitter.this.reloadInspector();
            }

            @Override
            public void set(u value) {
                ParticleEmitter.this.emissiveBased = value;
            }

            @Override
            public String c(u enumObject) {
                int ordinal = enumObject.ordinal();
                return ordinal != 0 ? ordinal != 1 ? ordinal != 2 ? enumObject.toString() : Lang.l(Lang.T.BY_SPEED) : "Emissive over life time" : Lang.l(Lang.T.CONSTANT);
            }
        }

        public class b implements D5.h {
            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("temp", ParticleEmitter.this.emissive);
            }

            @Override
            public void set(Variable variable) {
                if (variable == null || variable.e()) {
                    return;
                }
                ParticleEmitter.this.emissive.intColor = variable.color_value.intColor;
            }
        }

        public a(final Context val$context) {
            this.f73921a = val$context;
        }

        @Override
        public boolean a() {
            return true;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            entries.add(F5.c.i("Emissive based", u.class, ParticleEmitter.this.emissiveBased, new C1208a()));
            int ordinal = ParticleEmitter.this.emissiveBased.ordinal();
            if (ordinal == 0) {
                C5.b bVar = new C5.b(new b(), Lang.l(Lang.T.NOCODE_SLOT_EMISSIVE), b.a.Color, this.f73921a);
                ParticleEmitter particleEmitter = ParticleEmitter.this;
                entries.add(bVar.d(particleEmitter.f79250n, particleEmitter, "emissive", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR));
            } else if (ordinal == 1 || ordinal == 2) {
                entries.add(N9.a.a(Lang.l(Lang.T.NOCODE_SLOT_EMISSIVE), ParticleEmitter.this.emissiveGradient, this.f73921a));
            }
            return entries;
        }
    }

    public class b implements c.o0 {

        public final Context f73925a;

        public class a extends c.n0<v> {
            public a() {
            }

            @Override
            public void a() {
                ParticleEmitter.this.reloadInspector();
            }

            @Override
            public void set(v value) {
                ParticleEmitter.this.sizeBased = value;
            }

            @Override
            public String c(v enumObject) {
                int ordinal = enumObject.ordinal();
                return ordinal != 0 ? ordinal != 1 ? ordinal != 2 ? enumObject.toString() : Lang.l(Lang.T.BY_SPEED) : Lang.l(Lang.T.CONSTANT) : Lang.l(Lang.T.SIZE_OVER_LIFE_TIME);
            }
        }

        public class C1209b implements D5.h {

            public class a implements Runnable {

                public final Variable f73929b;

                public a(final Variable val$variable) {
                    this.f73929b = val$variable;
                }

                @Override
                public void run() {
                    ParticleEmitter.this.setStartSize(this.f73929b.float_value);
                }
            }

            public C1209b() {
            }

            @Override
            public Variable get() {
                return new Variable("", ParticleEmitter.this.startSize + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.B(new a(variable));
                }
            }
        }

        public b(final Context val$context) {
            this.f73925a = val$context;
        }

        @Override
        public boolean a() {
            return true;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            entries.add(F5.c.i(Lang.l(Lang.T.SIZE_BASED), v.class, ParticleEmitter.this.sizeBased, new a()));
            if (ParticleEmitter.this.sizeBased == v.SizeOverLifetime) {
                entries.add(J9.c.a(Lang.l(Lang.T.SIZE_OVER_LIFE_TIME), ParticleEmitter.this.sizeOverLifeTimeCurve, this.f73925a));
            }
            C5.b bVar = new C5.b(new C1209b(), Lang.l(Lang.T.START_SIZE), b.a.SLFloat);
            ParticleEmitter particleEmitter = ParticleEmitter.this;
            entries.add(bVar.d(particleEmitter.f79250n, particleEmitter, "startSize", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
            return entries;
        }
    }

    public class c implements c.o0 {

        public final Context f73931a;

        public class a implements D5.h {

            public class C1210a implements Runnable {

                public final Variable f73934b;

                public C1210a(final Variable val$variable) {
                    this.f73934b = val$variable;
                }

                @Override
                public void run() {
                    ParticleEmitter.this.sphereShapeOptions.i(this.f73934b.float_value);
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", ParticleEmitter.this.sphereShapeOptions.spherizeRotation + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.B(new C1210a(variable));
                }
            }
        }

        public class b implements D5.h {

            public class a implements Runnable {

                public final Variable f73937b;

                public a(final Variable val$variable) {
                    this.f73937b = val$variable;
                }

                @Override
                public void run() {
                    ParticleEmitter.this.sphereShapeOptions.g(this.f73937b.float_value);
                }
            }

            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", ParticleEmitter.this.sphereShapeOptions.randomizeRotation + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.B(new a(variable));
                }
            }
        }

        public class C1211c implements D5.h {

            public class a implements Runnable {

                public final Variable f73940b;

                public a(final Variable val$variable) {
                    this.f73940b = val$variable;
                }

                @Override
                public void run() {
                    ParticleEmitter.this.rectangleShapeOptions.l(this.f73940b.float_value);
                }
            }

            public C1211c() {
            }

            @Override
            public Variable get() {
                return new Variable("", ParticleEmitter.this.rectangleShapeOptions.width + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.B(new a(variable));
                }
            }
        }

        public class d implements D5.h {

            public class a implements Runnable {

                public final Variable f73943b;

                public a(final Variable val$variable) {
                    this.f73943b = val$variable;
                }

                @Override
                public void run() {
                    ParticleEmitter.this.rectangleShapeOptions.g(this.f73943b.float_value);
                }
            }

            public d() {
            }

            @Override
            public Variable get() {
                return new Variable("", ParticleEmitter.this.rectangleShapeOptions.height + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.B(new a(variable));
                }
            }
        }

        public class e implements D5.h {

            public class a implements Runnable {

                public final Variable f73946b;

                public a(final Variable val$variable) {
                    this.f73946b = val$variable;
                }

                @Override
                public void run() {
                    ParticleEmitter.this.rectangleShapeOptions.h(this.f73946b.float_value);
                }
            }

            public e() {
            }

            @Override
            public Variable get() {
                return new Variable("", ParticleEmitter.this.rectangleShapeOptions.length + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.B(new a(variable));
                }
            }
        }

        public class f implements D5.h {

            public class a implements Runnable {

                public final Variable f73949b;

                public a(final Variable val$variable) {
                    this.f73949b = val$variable;
                }

                @Override
                public void run() {
                    ParticleEmitter.this.rectangleShapeOptions.k(this.f73949b.float_value);
                }
            }

            public f() {
            }

            @Override
            public Variable get() {
                return new Variable("", ParticleEmitter.this.rectangleShapeOptions.spherizeRotation + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.B(new a(variable));
                }
            }
        }

        public class g implements D5.h {

            public class a implements Runnable {

                public final Variable f73952b;

                public a(final Variable val$variable) {
                    this.f73952b = val$variable;
                }

                @Override
                public void run() {
                    ParticleEmitter.this.rectangleShapeOptions.i(this.f73952b.float_value);
                }
            }

            public g() {
            }

            @Override
            public Variable get() {
                return new Variable("", ParticleEmitter.this.rectangleShapeOptions.randomizeRotation + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.B(new a(variable));
                }
            }
        }

        public class h extends c.n0<t> {
            public h() {
            }

            @Override
            public void a() {
                ParticleEmitter.this.reloadInspector();
            }

            @Override
            public void set(t value) {
                ParticleEmitter.this.emissionShape = value;
            }

            @Override
            public String c(t enumObject) {
                int ordinal = enumObject.ordinal();
                return ordinal != 0 ? ordinal != 1 ? enumObject.toString() : Lang.l(Lang.T.CONE) : Lang.l(Lang.T.SPHERE);
            }
        }

        public class i implements D5.h {
            public i() {
            }

            @Override
            public Variable get() {
                return new Variable("", ParticleEmitter.this.enableEmission + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    ParticleEmitter.this.enableEmission = variable.booolean_value.booleanValue();
                }
            }
        }

        public class j implements D5.h {

            public class a implements Runnable {

                public final Variable f73957b;

                public a(final Variable val$variable) {
                    this.f73957b = val$variable;
                }

                @Override
                public void run() {
                    ParticleEmitter.this.emissionPeriod = this.f73957b.float_value;
                }
            }

            public j() {
            }

            @Override
            public Variable get() {
                return new Variable("", ParticleEmitter.this.emissionPeriod + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.B(new a(variable));
                }
            }
        }

        public class k implements D5.h {

            public class a implements Runnable {

                public final Variable f73960b;

                public a(final Variable val$variable) {
                    this.f73960b = val$variable;
                }

                @Override
                public void run() {
                    ParticleEmitter.this.setEmissionsPerSecond(this.f73960b.float_value);
                }
            }

            public k() {
            }

            @Override
            public Variable get() {
                return new Variable("", ParticleEmitter.this.getEmissionsPerSecond() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.B(new a(variable));
                }
            }
        }

        public class l implements D5.h {

            public class a implements Runnable {

                public final Variable f73963b;

                public a(final Variable val$variable) {
                    this.f73963b = val$variable;
                }

                @Override
                public void run() {
                    ParticleEmitter.this.coneShapeOptions.f(this.f73963b.float_value);
                }
            }

            public l() {
            }

            @Override
            public Variable get() {
                return new Variable("", ParticleEmitter.this.coneShapeOptions.minAngle + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.B(new a(variable));
                }
            }
        }

        public class m implements D5.h {

            public class a implements Runnable {

                public final Variable f73966b;

                public a(final Variable val$variable) {
                    this.f73966b = val$variable;
                }

                @Override
                public void run() {
                    ParticleEmitter.this.coneShapeOptions.e(this.f73966b.float_value);
                }
            }

            public m() {
            }

            @Override
            public Variable get() {
                return new Variable("", ParticleEmitter.this.coneShapeOptions.maxAngle + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.B(new a(variable));
                }
            }
        }

        public class n implements D5.h {

            public class a implements Runnable {

                public final Variable f73969b;

                public a(final Variable val$variable) {
                    this.f73969b = val$variable;
                }

                @Override
                public void run() {
                    ParticleEmitter.this.coneShapeOptions.g(this.f73969b.float_value);
                }
            }

            public n() {
            }

            @Override
            public Variable get() {
                return new Variable("", ParticleEmitter.this.coneShapeOptions.radius + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.B(new a(variable));
                }
            }
        }

        public class o implements D5.h {

            public class a implements Runnable {

                public final Variable f73972b;

                public a(final Variable val$variable) {
                    this.f73972b = val$variable;
                }

                @Override
                public void run() {
                    ParticleEmitter.this.sphereShapeOptions.f(this.f73972b.float_value);
                }
            }

            public o() {
            }

            @Override
            public Variable get() {
                return new Variable("", ParticleEmitter.this.sphereShapeOptions.radius + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.B(new a(variable));
                }
            }
        }

        public class p implements D5.h {

            public class a implements Runnable {

                public final Variable f73975b;

                public a(final Variable val$variable) {
                    this.f73975b = val$variable;
                }

                @Override
                public void run() {
                    ParticleEmitter.this.sphereShapeOptions.j(this.f73975b.float_value);
                }
            }

            public p() {
            }

            @Override
            public Variable get() {
                return new Variable("", ParticleEmitter.this.sphereShapeOptions.volume + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.B(new a(variable));
                }
            }
        }

        public c(final Context val$context) {
            this.f73931a = val$context;
        }

        @Override
        public boolean a() {
            return true;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            entries.add(F5.c.i(Lang.l(Lang.T.SHAPE), t.class, ParticleEmitter.this.emissionShape, new h()));
            entries.add(new C5.b(new i(), "Enable emission", b.a.SLBoolean));
            j jVar = new j();
            b.a aVar = b.a.SLFloat;
            entries.add(new C5.b(jVar, "Emission period", aVar));
            entries.add(J9.c.a("Emissions over period", ParticleEmitter.this.emissionsOverPeriod, this.f73931a));
            C5.b bVar = new C5.b(new k(), "Emissions per second", aVar);
            ParticleEmitter particleEmitter = ParticleEmitter.this;
            GameObject gameObject = particleEmitter.f79250n;
            com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
            entries.add(bVar.d(gameObject, particleEmitter, "emissionsPerSecond", cVar));
            int ordinal = ParticleEmitter.this.emissionShape.ordinal();
            if (ordinal == 0) {
                C5.b bVar2 = new C5.b(new o(), Lang.l(Lang.T.RADIUS), aVar);
                ParticleEmitter particleEmitter2 = ParticleEmitter.this;
                entries.add(bVar2.d(particleEmitter2.f79250n, particleEmitter2, TestVFXEffect.f77524P, cVar));
                p pVar = new p();
                b.a aVar2 = b.a.SLFloatSlider;
                C5.b bVar3 = new C5.b(pVar, "Volume", aVar2, 0.0f, 1.0f, 0.0f);
                ParticleEmitter particleEmitter3 = ParticleEmitter.this;
                entries.add(bVar3.d(particleEmitter3.f79250n, particleEmitter3, "volume", cVar));
                C5.b bVar4 = new C5.b(new a(), Lang.l(Lang.T.SPHERIZE), aVar2, 0.0f, 1.0f, 0.0f);
                ParticleEmitter particleEmitter4 = ParticleEmitter.this;
                entries.add(bVar4.d(particleEmitter4.f79250n, particleEmitter4, "spherizeRotation", cVar));
                C5.b bVar5 = new C5.b(new b(), Lang.l(Lang.T.RANDOMIZE), aVar2, 0.0f, 1.0f, 0.0f);
                ParticleEmitter particleEmitter5 = ParticleEmitter.this;
                entries.add(bVar5.d(particleEmitter5.f79250n, particleEmitter5, "randomizeRotation", cVar));
            } else if (ordinal == 1) {
                C5.b bVar6 = new C5.b(new l(), Lang.l(Lang.T.MIN_ANGLE), aVar);
                ParticleEmitter particleEmitter6 = ParticleEmitter.this;
                entries.add(bVar6.d(particleEmitter6.f79250n, particleEmitter6, "minAngle", cVar));
                C5.b bVar7 = new C5.b(new m(), Lang.l(Lang.T.MAX_ANGLE), aVar);
                ParticleEmitter particleEmitter7 = ParticleEmitter.this;
                entries.add(bVar7.d(particleEmitter7.f79250n, particleEmitter7, "maxAngle", cVar));
                C5.b bVar8 = new C5.b(new n(), Lang.l(Lang.T.RADIUS), aVar);
                ParticleEmitter particleEmitter8 = ParticleEmitter.this;
                entries.add(bVar8.d(particleEmitter8.f79250n, particleEmitter8, TestVFXEffect.f77524P, cVar));
            } else if (ordinal == 2) {
                C5.b bVar9 = new C5.b(new C1211c(), F2.d.f6276t1, aVar);
                ParticleEmitter particleEmitter9 = ParticleEmitter.this;
                entries.add(bVar9.d(particleEmitter9.f79250n, particleEmitter9, "width", cVar));
                C5.b bVar10 = new C5.b(new d(), "Height", aVar);
                ParticleEmitter particleEmitter10 = ParticleEmitter.this;
                entries.add(bVar10.d(particleEmitter10.f79250n, particleEmitter10, "height", cVar));
                C5.b bVar11 = new C5.b(new e(), "Length", aVar);
                ParticleEmitter particleEmitter11 = ParticleEmitter.this;
                entries.add(bVar11.d(particleEmitter11.f79250n, particleEmitter11, "length", cVar));
                f fVar = new f();
                String l10 = Lang.l(Lang.T.SPHERIZE);
                b.a aVar3 = b.a.SLFloatSlider;
                C5.b bVar12 = new C5.b(fVar, l10, aVar3, 0.0f, 1.0f, 0.0f);
                ParticleEmitter particleEmitter12 = ParticleEmitter.this;
                entries.add(bVar12.d(particleEmitter12.f79250n, particleEmitter12, "spherizeRotation", cVar));
                C5.b bVar13 = new C5.b(new g(), Lang.l(Lang.T.RANDOMIZE), aVar3, 0.0f, 1.0f, 0.0f);
                ParticleEmitter particleEmitter13 = ParticleEmitter.this;
                entries.add(bVar13.d(particleEmitter13.f79250n, particleEmitter13, "randomizeRotation", cVar));
            }
            return entries;
        }
    }

    public class d implements c.o0 {

        public final Context f73977a;

        public class a implements D5.h {

            public class C1212a implements Runnable {

                public final Variable f73980b;

                public C1212a(final Variable val$variable) {
                    this.f73980b = val$variable;
                }

                @Override
                public void run() {
                    ParticleEmitter.this.setStartSpeed(this.f73980b.float_value);
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", ParticleEmitter.this.startSpeed + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.B(new C1212a(variable));
                }
            }
        }

        public class b implements D5.h {

            public class a implements Runnable {

                public final Variable f73983b;

                public a(final Variable val$variable) {
                    this.f73983b = val$variable;
                }

                @Override
                public void run() {
                    ParticleEmitter.this.setMaxSpeed(this.f73983b.float_value);
                }
            }

            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", ParticleEmitter.this.maxSpeed + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.B(new a(variable));
                }
            }
        }

        public class c implements D5.h {

            public class a implements Runnable {

                public final Variable f73986b;

                public a(final Variable val$variable) {
                    this.f73986b = val$variable;
                }

                @Override
                public void run() {
                    ParticleEmitter.this.setGravityMultiplier(this.f73986b.float_value);
                }
            }

            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", ParticleEmitter.this.gravityMultiplier + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.B(new a(variable));
                }
            }
        }

        public class C1213d extends c.n0<w> {
            public C1213d() {
            }

            @Override
            public void a() {
                ParticleEmitter.this.reloadInspector();
            }

            @Override
            public void set(w value) {
                ParticleEmitter.this.speedBased = value;
            }

            @Override
            public String c(w enumObject) {
                return enumObject.toString();
            }
        }

        public d(final Context val$context) {
            this.f73977a = val$context;
        }

        @Override
        public boolean a() {
            return true;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            a aVar = new a();
            String l10 = Lang.l(Lang.T.START_SPEED);
            b.a aVar2 = b.a.SLFloat;
            C5.b bVar = new C5.b(aVar, l10, aVar2);
            ParticleEmitter particleEmitter = ParticleEmitter.this;
            GameObject gameObject = particleEmitter.f79250n;
            com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
            entries.add(bVar.d(gameObject, particleEmitter, "startSpeed", cVar));
            C5.b bVar2 = new C5.b(new b(), "Max speed", aVar2);
            ParticleEmitter particleEmitter2 = ParticleEmitter.this;
            entries.add(bVar2.d(particleEmitter2.f79250n, particleEmitter2, "maxSpeed", cVar));
            C5.b bVar3 = new C5.b(new c(), Lang.l(Lang.T.GRAVITY_MULTIPLIER), aVar2);
            ParticleEmitter particleEmitter3 = ParticleEmitter.this;
            entries.add(bVar3.d(particleEmitter3.f79250n, particleEmitter3, "gravityMultiplier", cVar));
            entries.add(F5.c.i(Lang.l(Lang.T.SPEED_BASED), w.class, ParticleEmitter.this.speedBased, new C1213d()));
            ParticleEmitter particleEmitter4 = ParticleEmitter.this;
            if (particleEmitter4.speedBased == w.SpeedOverLifetime) {
                entries.add(J9.c.a("Speed over life time", particleEmitter4.speedOverLifeTimeCurve, this.f73977a));
            }
            return entries;
        }
    }

    public class e implements c.o0 {

        public class a implements D5.h {
            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", ParticleEmitter.this.rotateBasedDirection + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    ParticleEmitter.this.rotateBasedDirection = variable.booolean_value.booleanValue();
                }
            }
        }

        public e() {
        }

        @Override
        public boolean a() {
            return true;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            entries.add(new C5.b(new a(), "Rotation based direction", b.a.SLBoolean));
            return entries;
        }
    }

    public class f implements c.o0 {

        public class a implements D5.h {
            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", ParticleEmitter.this.receiveLight + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    ParticleEmitter.this.receiveLight = variable.booolean_value.booleanValue();
                }
            }
        }

        public class b implements D5.h {
            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", ParticleEmitter.this.castShadows + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    ParticleEmitter.this.castShadows = variable.booolean_value.booleanValue();
                }
            }
        }

        public class c implements D5.h {
            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", ParticleEmitter.this.receiveShadows + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    ParticleEmitter.this.receiveShadows = variable.booolean_value.booleanValue();
                }
            }
        }

        public f() {
        }

        @Override
        public boolean a() {
            return true;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            a aVar = new a();
            b.a aVar2 = b.a.SLBoolean;
            entries.add(new C5.b(aVar, "Receive light", aVar2));
            entries.add(new C5.b(new b(), "Cast shadows", aVar2));
            entries.add(new C5.b(new c(), "Receive shadows", aVar2));
            return entries;
        }
    }

    public class g implements c.o0 {

        public class a implements D5.h {

            public class C1214a implements Runnable {

                public final Variable f73997b;

                public C1214a(final Variable val$variable) {
                    this.f73997b = val$variable;
                }

                @Override
                public void run() {
                    ParticleEmitter.this.setLayer(this.f73997b.int_value);
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", ParticleEmitter.this.getLayer() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.B(new C1214a(variable));
                }
            }
        }

        public class b implements D5.h {
            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", ParticleEmitter.this.allowMergeV2 + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    ParticleEmitter.this.allowMergeV2 = variable.booolean_value.booleanValue();
                }
            }
        }

        public g() {
        }

        @Override
        public boolean a() {
            return true;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            C5.b bVar = new C5.b(new a(), Lang.l(Lang.T.LAYER), b.a.SLInt);
            ParticleEmitter particleEmitter = ParticleEmitter.this;
            entries.add(bVar.d(particleEmitter.f79250n, particleEmitter, "layer", com.itsmagic.engine.Engines.Engine.Animation.c.INT));
            entries.add(new C5.b(new b(), "High quality merge", b.a.SLBoolean));
            return entries;
        }
    }

    public class h extends AbstractC13203c {
        @Override
        public Class b() {
            return ParticleEmitter.f73878M2;
        }

        @Override
        public String c() {
            return ParticleEmitter.f73877L2;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.EFFECTS);
        }

        @Override
        public String f() {
            return Lang.l(Lang.T.PARTICLE_EMITTER);
        }
    }

    public class i implements InterfaceC13601h {
        public i() {
        }

        @Override
        public void a(com.itsmagic.engine.Engines.Engine.Vector.f globalMatrix) {
            ParticleEmitter.this.f73892M.l(globalMatrix);
            ParticleEmitter.this.f73894N.l(globalMatrix);
            ParticleEmitter.this.f73894N.E();
            ParticleEmitter.this.updateCachedSpawnTransform(globalMatrix);
            ParticleEmitter.this.updateRenderEmitterTransform();
        }
    }

    public class j extends GizmoObject {
        public j() {
            setColor(new Color(51, 163, 255));
            setRenderMode(GizmoElement.RenderMode.WireFrame);
        }
    }

    public class k extends c.n0<z> {
        public k() {
        }

        @Override
        public void a() {
            ParticleEmitter.this.reloadInspector();
        }

        @Override
        public void set(z value) {
            ParticleEmitter.this.worldSpace = value;
        }

        @Override
        public String c(z enumObject) {
            return enumObject.toString();
        }
    }

    public class l implements D5.h {

        public class a implements Runnable {

            public final Variable f74004b;

            public a(final Variable val$variable) {
                this.f74004b = val$variable;
            }

            @Override
            public void run() {
                ParticleEmitter.this.setMaxLifeSeconds(this.f74004b.float_value);
            }
        }

        public l() {
        }

        @Override
        public Variable get() {
            return new Variable("", ParticleEmitter.this.maxLifeSeconds + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.B(new a(variable));
            }
        }
    }

    public class m implements D5.h {
        public m() {
        }

        @Override
        public Variable get() {
            return new Variable("", ParticleEmitter.this.playOnStart + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                ParticleEmitter.this.playOnStart = variable.booolean_value.booleanValue();
            }
        }
    }

    public class n implements c.o0 {

        public final Context f74007a;

        public class a implements D5.h {

            public class C1215a implements Runnable {

                public final Variable f74010b;

                public C1215a(final Variable val$variable) {
                    this.f74010b = val$variable;
                }

                @Override
                public void run() {
                    t6.e S12 = t6.j.J1() ? t6.j.S1("ParticleEmitter - set texture file") : null;
                    try {
                        ParticleEmitter.this.setTextureFile(this.f74010b.str_value);
                    } finally {
                        t6.j.P1(S12);
                    }
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", ParticleEmitter.this.textureFile + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new C1215a(variable));
                }
            }
        }

        public class b extends c.n0<y> {
            public b() {
            }

            @Override
            public void a() {
                ParticleEmitter.this.reloadInspector();
            }

            @Override
            public void set(y value) {
                ParticleEmitter.this.transparencyBased = value;
            }

            @Override
            public String c(y enumObject) {
                int ordinal = enumObject.ordinal();
                return ordinal != 0 ? ordinal != 1 ? ordinal != 2 ? enumObject.toString() : Lang.l(Lang.T.GREY_SCALE) : Lang.l(Lang.T.ALPHA) : Lang.l(Lang.T.DISABLED);
            }
        }

        public class c implements D5.h {
            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", ParticleEmitter.this.fullWhite + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    ParticleEmitter.this.fullWhite = variable.booolean_value.booleanValue();
                }
            }
        }

        public n(final Context val$context) {
            this.f74007a = val$context;
        }

        @Override
        public boolean a() {
            return true;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            entries.add(new C5.b(new a(), Lang.l(Lang.T.TEXTURE), b.a.Texture, this.f74007a));
            entries.add(F5.c.i(Lang.l(Lang.T.TRANSPARENCY), y.class, ParticleEmitter.this.transparencyBased, new b()));
            if (ParticleEmitter.this.transparencyBased == y.GreyScale) {
                entries.add(new C5.b(new c(), "Full white", b.a.SLBoolean));
            }
            return entries;
        }
    }

    public class o implements c.o0 {

        public final Context f74014a;

        public class a extends c.n0<x> {
            public a() {
            }

            @Override
            public void a() {
                ParticleEmitter.this.reloadInspector();
            }

            @Override
            public void set(x value) {
                ParticleEmitter particleEmitter = ParticleEmitter.this;
                particleEmitter.spriteBased = value;
                particleEmitter.f73904V1 = true;
            }

            @Override
            public String c(x enumObject) {
                int ordinal = enumObject.ordinal();
                return ordinal != 1 ? ordinal != 2 ? Lang.l(Lang.T.CONSTANT) : "Index by speed" : "Index over lifetime";
            }
        }

        public class b implements D5.h {

            public class a implements Runnable {

                public final Variable f74018b;

                public a(final Variable val$variable) {
                    this.f74018b = val$variable;
                }

                @Override
                public void run() {
                    ParticleEmitter.this.setSpriteIndex(this.f74018b.int_value);
                }
            }

            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", ParticleEmitter.this.spriteIndex + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.B(new a(variable));
                }
            }
        }

        public o(final Context val$context) {
            this.f74014a = val$context;
        }

        @Override
        public boolean a() {
            return true;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            entries.add(F5.c.i("Sprite based", x.class, ParticleEmitter.this.spriteBased, new a()));
            entries.add(new C5.b(new b(), "Sprite index", b.a.SLInt));
            ParticleEmitter particleEmitter = ParticleEmitter.this;
            if (particleEmitter.spriteBased != x.Constant) {
                entries.add(J9.c.a("Sprite curve", particleEmitter.spriteCurve, this.f74014a));
            }
            return entries;
        }
    }

    public class p implements c.o0 {

        public final Context f74020a;

        public class a extends c.n0<s> {
            public a() {
            }

            @Override
            public void set(s value) {
                ParticleEmitter.this.colorMode = value;
            }
        }

        public class b extends c.n0<r> {
            public b() {
            }

            @Override
            public void a() {
                ParticleEmitter.this.reloadInspector();
            }

            @Override
            public void set(r value) {
                ParticleEmitter.this.colorBased = value;
            }

            @Override
            public String c(r enumObject) {
                int ordinal = enumObject.ordinal();
                return ordinal != 0 ? ordinal != 1 ? ordinal != 2 ? enumObject.toString() : Lang.l(Lang.T.BY_SPEED) : "Color over life time" : Lang.l(Lang.T.CONSTANT);
            }
        }

        public class c implements D5.h {
            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("temp", ParticleEmitter.this.color);
            }

            @Override
            public void set(Variable variable) {
                if (variable == null || variable.e()) {
                    return;
                }
                ParticleEmitter.this.color.intColor = variable.color_value.intColor;
            }
        }

        public class d extends c.n0<q> {
            public d() {
            }

            @Override
            public void a() {
                ParticleEmitter.this.reloadInspector();
            }

            @Override
            public void set(q value) {
                ParticleEmitter.this.alphaBased = value;
            }

            @Override
            public String c(q enumObject) {
                int ordinal = enumObject.ordinal();
                return ordinal != 0 ? ordinal != 1 ? ordinal != 2 ? enumObject.toString() : Lang.l(Lang.T.BY_SPEED) : Lang.l(Lang.T.ALPHA_OVER_LIFE_TIME) : Lang.l(Lang.T.NONE);
            }
        }

        public p(final Context val$context) {
            this.f74020a = val$context;
        }

        @Override
        public boolean a() {
            return true;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            entries.add(F5.c.i(Lang.l(Lang.T.COLOR_MODE), s.class, ParticleEmitter.this.colorMode, new a()));
            entries.add(F5.c.i(Lang.l(Lang.T.COLOR_BASED), r.class, ParticleEmitter.this.colorBased, new b()));
            int ordinal = ParticleEmitter.this.colorBased.ordinal();
            if (ordinal == 0) {
                C5.b bVar = new C5.b(new c(), Lang.l(Lang.T.COLOR), b.a.Color, this.f74020a);
                ParticleEmitter particleEmitter = ParticleEmitter.this;
                entries.add(bVar.d(particleEmitter.f79250n, particleEmitter, "color", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR));
            } else if (ordinal == 1 || ordinal == 2) {
                entries.add(N9.a.a(Lang.l(Lang.T.COLOR), ParticleEmitter.this.colorGradient, this.f74020a));
            }
            entries.add(F5.c.i(Lang.l(Lang.T.ALPHA_BASED), q.class, ParticleEmitter.this.alphaBased, new d()));
            if (ParticleEmitter.this.alphaBased == q.AlphaOverLifetime) {
                entries.add(J9.c.a(Lang.l(Lang.T.ALPHA_OVER_LIFE_TIME), ParticleEmitter.this.alphaOverLifeTimeCurve, this.f74020a));
            }
            return entries;
        }
    }

    public enum q {
        None,
        AlphaOverLifetime,
        BySpeed
    }

    public enum r {
        Constant,
        ColorOverLifetime,
        BySpeed
    }

    public enum s {
        Normal,
        Multiply,
        Additive,
        Fade
    }

    public enum t {
        Sphere,
        Cone,
        Rectangle
    }

    public enum u {
        Constant,
        EmissiveOverLifetime,
        BySpeed
    }

    public enum v {
        SizeOverLifetime,
        Constant,
        BySpeed
    }

    public enum w {
        Constant,
        SpeedOverLifetime
    }

    public enum x {
        Constant,
        IndexOverLifetime,
        IndexBySpeed
    }

    public enum y {
        Disabled,
        Alpha,
        GreyScale
    }

    public enum z {
        Global,
        Local
    }

    static {
        C13201a.b(new h());
    }

    public ParticleEmitter() {
        super(f73877L2);
        this.enableEmission = true;
        this.emissionPeriod = 0.0f;
        this.sizeBased = v.SizeOverLifetime;
        this.startSize = 1.0f;
        this.emissionShape = t.Cone;
        this.coneShapeOptions = new ParticleConeShapeOptions();
        this.sphereShapeOptions = new ParticleSphereShapeOptions();
        this.rectangleShapeOptions = new ParticleRectangleShapeOptions();
        this.startSpeed = 2.0f;
        this.speedBased = w.Constant;
        this.gravityMultiplier = 0.01f;
        this.worldSpace = z.Global;
        this.emissionsPerSecond = 10.0f;
        this.emitDelaySeconds = 0.1f;
        this.maxLifeSeconds = 5.0f;
        this.maxSpeed = 10.0f;
        this.layer = 0;
        this.spriteBased = x.Constant;
        this.spriteIndex = 0;
        this.transparencyBased = y.Alpha;
        this.fullWhite = false;
        this.receiveLight = false;
        this.castShadows = false;
        this.receiveShadows = false;
        this.colorMode = s.Normal;
        this.color = new ColorINT();
        this.colorGradient = new Gradient();
        this.colorBased = r.Constant;
        this.alphaBased = q.None;
        this.emissive = new ColorINT(0, 0, 0);
        this.emissiveGradient = new Gradient();
        this.emissiveBased = u.Constant;
        this.rotateBasedDirection = false;
        this.playOnStart = true;
        this.allowMergeV2 = false;
        this.f73882F = null;
        this.f73884G = false;
        this.f73887I = false;
        this.f73888J = new LinkedList();
        this.f73889K = new LinkedList();
        this.f73890L = new LinkedList();
        this.f73892M = new com.itsmagic.engine.Engines.Engine.Vector.f();
        this.f73894N = new com.itsmagic.engine.Engines.Engine.Vector.f();
        this.f73895O = new Object();
        this.f73896P = new Vector3();
        this.f73897Q = new Quaternion();
        this.f73898R = new Vector3(0.0f, 0.0f, 1.0f);
        this.f73900S = new Vector3(0.0f, 1.0f, 0.0f);
        this.f73901T = new Vector3(1.0f, 0.0f, 0.0f);
        this.f73902U = new i();
        this.f73903V = 0;
        this.f73905W = 0.1f;
        this.f73906X = 1;
        this.f73907Y = 0.0f;
        this.f73908Z = 0.0f;
        this.f73915q0 = new ParticleRenderBatchData(this);
        this.f73918v0 = new ParticleRenderPerParticleData(this);
        this.f73911i1 = new AABB();
        this.f73913m1 = new AABB();
        this.f73916q1 = new Vector3();
        this.f73891L1 = 0;
        this.f73893M1 = 0.2f;
        this.f73912i2 = false;
        this.f73914m2 = new j();
        Curve curve = new Curve(N7.c.t());
        this.sizeOverLifeTimeCurve = curve;
        curve.clear();
        this.sizeOverLifeTimeCurve.f(0.0f, 1.0f);
        this.sizeOverLifeTimeCurve.f(0.25f, 0.8f);
        this.sizeOverLifeTimeCurve.f(0.75f, 0.2f);
        this.sizeOverLifeTimeCurve.f(1.0f, 0.0f);
        this.sizeOverLifeTimeCurve.apply();
        Curve curve2 = new Curve(N7.c.t());
        this.alphaOverLifeTimeCurve = curve2;
        curve2.clear();
        this.alphaOverLifeTimeCurve.f(0.0f, 1.0f);
        this.alphaOverLifeTimeCurve.f(0.25f, 0.8f);
        this.alphaOverLifeTimeCurve.f(0.75f, 0.2f);
        this.alphaOverLifeTimeCurve.f(1.0f, 0.0f);
        this.alphaOverLifeTimeCurve.apply();
        Curve curve3 = new Curve(N7.c.t());
        this.speedOverLifeTimeCurve = curve3;
        curve3.clear();
        this.speedOverLifeTimeCurve.f(0.0f, 1.0f);
        this.speedOverLifeTimeCurve.f(0.25f, 0.8f);
        this.speedOverLifeTimeCurve.f(0.75f, 0.2f);
        this.speedOverLifeTimeCurve.f(1.0f, 0.0f);
        this.speedOverLifeTimeCurve.apply();
        Curve curve4 = new Curve(N7.c.t());
        this.emissionsOverPeriod = curve4;
        curve4.clear();
        this.emissionsOverPeriod.f(0.0f, 1.0f);
        this.emissionsOverPeriod.f(0.25f, 1.0f);
        this.emissionsOverPeriod.f(0.75f, 1.0f);
        this.emissionsOverPeriod.f(1.0f, 1.0f);
        this.emissionsOverPeriod.apply();
        Curve curve5 = new Curve(N7.c.t());
        this.spriteCurve = curve5;
        curve5.clear();
        this.spriteCurve.f(0.0f, 0.0f);
        this.spriteCurve.f(0.25f, 0.2f);
        this.spriteCurve.f(0.75f, 0.8f);
        this.spriteCurve.f(1.0f, 1.0f);
        this.spriteCurve.apply();
        this.colorGradient.n();
        this.emissiveGradient.n();
    }

    private static void applyParticleBoundingResult(float[] values, AABB target) {
        if (values == null || target == null || values.length < 10) {
            return;
        }
        target.f79831xn = values[0];
        target.yn = values[1];
        target.zn = values[2];
        target.f79830x = values[3];
        target.f79832y = values[4];
        target.f79833z = values[5];
        target.cx = values[6];
        target.cy = values[7];
        target.cz = values[8];
        target.radius = values[9];
    }

    private void destroyParticleBoundingBuffers() {
        NativeFloatBuffer nativeFloatBuffer = this.f73919v1;
        if (nativeFloatBuffer != null) {
            nativeFloatBuffer.destroyImmediate();
            this.f73919v1 = null;
        }
        NativeFloatBuffer nativeFloatBuffer2 = this.f73920y1;
        if (nativeFloatBuffer2 != null) {
            nativeFloatBuffer2.destroyImmediate();
            this.f73920y1 = null;
        }
        this.f73883F1 = null;
        this.f73886H1 = null;
        this.f73891L1 = 0;
        this.f73893M1 = 0.2f;
        resetParticleBoundingBoxes();
    }

    private void detachFromRenderer() {
        this.f73915q0.destroy();
        this.f73918v0.destroy();
        destroyParticleBoundingBuffers();
    }

    private com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.a emitParticle() {
        if ((!this.f73884G && !this.f73887I) || !this.enableEmission || this.f73889K.isEmpty()) {
            return null;
        }
        com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.a aVar = this.f73889K.get(0);
        this.f73889K.remove(aVar);
        this.f73888J.add(aVar);
        aVar.a(this);
        this.f73904V1 = true;
        return aVar;
    }

    private void ensureParticleBoundingBuffers() {
        int i10 = this.f73906X * 4;
        if (i10 <= 0) {
            destroyParticleBoundingBuffers();
            return;
        }
        NativeFloatBuffer nativeFloatBuffer = this.f73919v1;
        if (nativeFloatBuffer == null || nativeFloatBuffer.capacity() < i10) {
            NativeFloatBuffer nativeFloatBuffer2 = this.f73919v1;
            if (nativeFloatBuffer2 != null) {
                nativeFloatBuffer2.destroyImmediate();
            }
            this.f73919v1 = new NativeFloatBuffer(i10);
        }
        if (this.f73920y1 == null) {
            this.f73920y1 = new NativeFloatBuffer(10);
        }
        float[] fArr = this.f73883F1;
        if (fArr == null || fArr.length < i10) {
            this.f73883F1 = new float[i10];
        }
        float[] fArr2 = this.f73886H1;
        if (fArr2 == null || fArr2.length < 10) {
            this.f73886H1 = new float[10];
        }
    }

    private void fillParticleBoundingPositionsBuffer(boolean localizeGlobalParticles) {
        int i10 = 0;
        for (com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.a aVar : this.f73888J) {
            if (i10 >= this.f73906X) {
                break;
            }
            Vector3 vector3 = aVar.f74132b;
            if (localizeGlobalParticles && this.worldSpace == z.Global) {
                this.f73894N.p0(vector3, this.f73916q1);
                vector3 = this.f73916q1;
            }
            int i11 = i10 * 4;
            this.f73883F1[i11] = vector3.getX();
            this.f73883F1[i11 + 1] = vector3.getY();
            this.f73883F1[i11 + 2] = vector3.getZ();
            this.f73883F1[i11 + 3] = Math.abs(aVar.f74139i);
            i10++;
        }
        this.f73891L1 = i10;
        if (i10 > 0) {
            this.f73919v1.set(0, this.f73883F1, 0, i10 * 4);
        }
    }

    private static void resetAabb(AABB target) {
        if (target == null) {
            return;
        }
        target.f79830x = 0.0f;
        target.f79832y = 0.0f;
        target.f79833z = 0.0f;
        target.f79831xn = 0.0f;
        target.yn = 0.0f;
        target.zn = 0.0f;
        target.cx = 0.0f;
        target.cy = 0.0f;
        target.cz = 0.0f;
        target.radius = 0.0f;
    }

    private void resetParticleBoundingBoxes() {
        resetAabb(this.f73911i1);
        resetAabb(this.f73913m1);
    }

    private void updateAliveParticles(float deltaTime) {
        for (com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.a aVar : this.f73888J) {
            aVar.q(deltaTime, this);
            if (aVar.f74141k >= this.maxLifeSeconds) {
                this.f73890L.add(aVar);
            }
        }
    }

    public void updateCachedSpawnTransform(com.itsmagic.engine.Engines.Engine.Vector.f globalMatrix) {
        synchronized (this.f73895O) {
            globalMatrix.D1(this.f73896P);
            globalMatrix.r1(this.f73897Q);
            this.f73897Q.o0(0.0f, 0.0f, 1.0f, this.f73898R, true);
            this.f73897Q.o0(0.0f, 1.0f, 0.0f, this.f73900S, true);
            this.f73897Q.o0(1.0f, 0.0f, 0.0f, this.f73901T, true);
        }
    }

    private void updateParticleBoundingBuffers(float deltaTime) {
        if (this.f73906X <= 0 || this.f73888J.isEmpty()) {
            this.f73891L1 = 0;
            this.f73893M1 = 0.2f;
            resetParticleBoundingBoxes();
            return;
        }
        ensureParticleBoundingBuffers();
        if (this.f73919v1 == null || this.f73920y1 == null || this.f73883F1 == null || this.f73886H1 == null) {
            this.f73891L1 = 0;
            resetParticleBoundingBoxes();
            return;
        }
        float f10 = this.f73893M1 + deltaTime;
        this.f73893M1 = f10;
        if (f10 >= 0.2f || this.f73913m1.E()) {
            this.f73893M1 = 0.0f;
            fillParticleBoundingPositionsBuffer(false);
            ParticleNative.buildBoundingBox(this.f73919v1.getCriticalDirectCppPointer(), this.f73891L1, this.f73920y1.getCriticalDirectCppPointer(), 0.5f);
            this.f73920y1.get(this.f73886H1);
            applyParticleBoundingResult(this.f73886H1, this.f73911i1);
            if (this.worldSpace == z.Global) {
                fillParticleBoundingPositionsBuffer(true);
                ParticleNative.buildBoundingBox(this.f73919v1.getCriticalDirectCppPointer(), this.f73891L1, this.f73920y1.getCriticalDirectCppPointer(), 0.5f);
                this.f73920y1.get(this.f73886H1);
            }
            applyParticleBoundingResult(this.f73886H1, this.f73913m1);
        }
    }

    public void updateRenderEmitterTransform() {
        boolean z10 = this.worldSpace == z.Local;
        this.f73915q0.s(this.f73892M, this.f73894N, z10);
        this.f73918v0.r(this.f73892M, this.f73894N, z10);
    }

    public boolean bindSpriteTexture(FilamentMaterial material, String name, int spriteIndex) {
        ub.p pVar = this.f73909b1;
        float f10 = 0.0f;
        float f11 = 0.0f;
        float f12 = 1.0f;
        float f13 = 1.0f;
        if (!ub.p.L(pVar)) {
            if (material != null) {
                if (material.m(name + "Sprite")) {
                    material.E(name + "Sprite", 0.0f, 0.0f, 1.0f, 1.0f);
                }
                C16165b.f130161g.f(material, name);
            }
            return false;
        }
        if (hasSpriteTexture()) {
            TextureConfig u02 = ((ub.g) pVar).u0();
            Rect B10 = u02.v().B(Nc.b.F(0, spriteIndex, u02.v().C() - 1));
            f10 = B10.d();
            f11 = B10.e();
            f12 = B10.c();
            f13 = B10.b();
        }
        if (material != null) {
            if (material.m(name + "Sprite")) {
                material.E(name + "Sprite", f10, f11, f12, f13);
            }
        }
        if (material != null) {
            pVar.f(material, name);
        }
        return true;
    }

    public boolean bindTexture(FilamentMaterial material, String name) {
        if (material.m(name + "Sprite")) {
            material.E(name + "Sprite", 0.0f, 0.0f, 1.0f, 1.0f);
        }
        C16165b.f130161g.f(material, name);
        return false;
    }

    public boolean consumeRequestUpdateRender() {
        boolean z10 = this.f73904V1;
        this.f73904V1 = false;
        return z10;
    }

    public void copyCachedSpawnTransform(Vector3 position, Quaternion rotation, Vector3 forward, Vector3 up, Vector3 right) {
        synchronized (this.f73895O) {
            position.set(this.f73896P);
            rotation.u0(this.f73897Q);
            forward.set(this.f73898R);
            up.set(this.f73900S);
            right.set(this.f73901T);
        }
    }

    @Override
    public void disabledPreUpdate(GameObject gameObject, boolean isEditor) {
        super.disabledPreUpdate(gameObject, isEditor);
        detachFromRenderer();
    }

    public com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.a emit(Vector3 pos, Vector3 movement) {
        if ((!this.f73884G && !this.f73887I) || !this.enableEmission) {
            return null;
        }
        com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.a emitParticle = emitParticle();
        if (emitParticle == null) {
            com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.a aVar = null;
            for (com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.a aVar2 : this.f73888J) {
                if (aVar == null || aVar.c() <= aVar2.c()) {
                    aVar = aVar2;
                }
            }
            if (aVar != null) {
                aVar.a(this);
                emitParticle = aVar;
            }
        }
        if (emitParticle == null) {
            return null;
        }
        emitParticle.k(pos);
        emitParticle.j(movement);
        emitParticle.f74131a.set(pos);
        emitParticle.f74132b.set(pos);
        emitParticle.o(this);
        this.f73904V1 = true;
        return emitParticle;
    }

    public List<com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.a> getAliveParticles() {
        return this.f73888J;
    }

    @InterfaceC15237a
    public q getAlphaBased() {
        return this.alphaBased;
    }

    @InterfaceC15237a
    public Curve getAlphaOverLifeTimeCurve() {
        return this.alphaOverLifeTimeCurve;
    }

    public AABB getBounding() {
        return this.f73911i1;
    }

    @InterfaceC15237a
    public ColorINT getColor() {
        return this.color;
    }

    @InterfaceC15237a
    public r getColorBased() {
        return this.colorBased;
    }

    @InterfaceC15237a
    public Gradient getColorGradient() {
        return this.colorGradient;
    }

    @InterfaceC15237a
    public s getColorMode() {
        return this.colorMode;
    }

    @InterfaceC15237a
    public ParticleConeShapeOptions getConeShapeOptions() {
        return this.coneShapeOptions;
    }

    @Override
    public C2632k getDependencyFiles(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        c2632k.f9114a.add(this.textureFile);
        return c2632k;
    }

    @Override
    public String getDisplayableTitle() {
        return Lang.l(Lang.T.PARTICLE_EMITTER);
    }

    @InterfaceC15237a
    public float getEmissionPeriod() {
        return this.emissionPeriod;
    }

    @InterfaceC15237a
    public t getEmissionShape() {
        return this.emissionShape;
    }

    @InterfaceC15237a
    public Curve getEmissionsOverPeriod() {
        return this.emissionsOverPeriod;
    }

    @InterfaceC15237a
    public float getEmissionsPerSecond() {
        return this.emissionsPerSecond;
    }

    @InterfaceC15237a
    public ColorINT getEmissive() {
        return this.emissive;
    }

    @InterfaceC15237a
    public u getEmissiveBased() {
        return this.emissiveBased;
    }

    @InterfaceC15237a
    public Gradient getEmissiveGradient() {
        return this.emissiveGradient;
    }

    @InterfaceC15237a
    public float getGravityMultiplier() {
        return this.gravityMultiplier;
    }

    @Override
    public int getIconResource() {
        return R.drawable.particle;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        if (context == null) {
            return linkedList;
        }
        linkedList.add(F5.c.i(Lang.l(Lang.T.SPACE), z.class, this.worldSpace, new k()));
        linkedList.add(new C5.b(new l(), Lang.l(Lang.T.MAX_LIFE_SECONDS), b.a.SLFloat).d(this.f79250n, this, "maxLifeSeconds", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
        linkedList.add(new C5.b(new m(), Lang.l(Lang.T.PLAY_ON_START), b.a.SLBoolean));
        linkedList.add(F5.c.d(getInspectorMemory(), Lang.l(Lang.T.TEXTURE), new n(context)));
        linkedList.add(F5.c.d(getInspectorMemory(), "Sprite", new o(context)));
        linkedList.add(F5.c.d(getInspectorMemory(), Lang.l(Lang.T.COLOR), new p(context)));
        linkedList.add(F5.c.d(getInspectorMemory(), Lang.l(Lang.T.NOCODE_SLOT_EMISSIVE), new a(context)));
        linkedList.add(F5.c.d(getInspectorMemory(), Lang.l(Lang.T.SIZE), new b(context)));
        linkedList.add(F5.c.d(getInspectorMemory(), Lang.l(Lang.T.EMISSION), new c(context)));
        linkedList.add(F5.c.d(getInspectorMemory(), Lang.l(Lang.T.SPEED), new d(context)));
        linkedList.add(F5.c.d(getInspectorMemory(), Lang.l(Lang.T.ROTATION), new e()));
        linkedList.add(F5.c.d(getInspectorMemory(), Lang.l(Lang.T.LIGHT), new f()));
        linkedList.add(F5.c.d(getInspectorMemory(), Lang.l(Lang.T.OPTIONS), new g()));
        return linkedList;
    }

    @InterfaceC15237a
    public int getLayer() {
        return this.layer;
    }

    @InterfaceC15237a
    public float getMaxLifeSeconds() {
        return this.maxLifeSeconds;
    }

    public int getMaxParticles() {
        return this.f73906X;
    }

    @InterfaceC15237a
    public float getMaxSpeed() {
        return this.maxSpeed;
    }

    @InterfaceC15237a
    public ParticleRectangleShapeOptions getRectangleShapeOptions() {
        return this.rectangleShapeOptions;
    }

    @Override
    public float getRenderBounding() {
        AABB renderBoundingBox = getRenderBoundingBox();
        if (renderBoundingBox != null) {
            return renderBoundingBox.getRadius();
        }
        return 0.0f;
    }

    @Override
    public AABB getRenderBoundingBox() {
        if (this.f73913m1.E()) {
            return null;
        }
        return this.f73913m1;
    }

    @Override
    public Vector3 getRenderCenter() {
        AABB renderBoundingBox = getRenderBoundingBox();
        if (renderBoundingBox != null) {
            return renderBoundingBox.m();
        }
        return null;
    }

    @InterfaceC15237a
    public v getSizeBased() {
        return this.sizeBased;
    }

    @InterfaceC15237a
    public Curve getSizeOverLifeTimeCurve() {
        return this.sizeOverLifeTimeCurve;
    }

    @InterfaceC15237a
    public ParticleSphereShapeOptions getSphereShapeOptions() {
        return this.sphereShapeOptions;
    }

    public x getSpriteBased() {
        return this.spriteBased;
    }

    public Curve getSpriteCurve() {
        return this.spriteCurve;
    }

    public int getSpriteIndex() {
        return this.spriteIndex;
    }

    @InterfaceC15237a
    public float getStartSize() {
        return this.startSize;
    }

    @InterfaceC15237a
    public float getStartSpeed() {
        return this.startSpeed;
    }

    public String getTextureFile() {
        return this.textureFile;
    }

    @InterfaceC15237a
    public ub.p getTextureInstance() {
        return this.f73909b1;
    }

    @Override
    public String getTitle() {
        return f73877L2;
    }

    @InterfaceC15237a
    public y getTransparencyBased() {
        return this.transparencyBased;
    }

    @Override
    public Component.e getType() {
        return Component.e.ParticleEmitter;
    }

    @InterfaceC15237a
    public z getWorldSpace() {
        return this.worldSpace;
    }

    @Override
    public boolean hasRenderBounding() {
        return !this.f73913m1.E();
    }

    public boolean hasSpriteTexture() {
        TextureConfig u02;
        ub.p pVar = this.f73909b1;
        return (pVar instanceof ub.g) && (u02 = ((ub.g) pVar).u0()) != null && u02.type == TextureConfig.f.Sprite && u02.v() != null && u02.v().C() > 0;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    public boolean intercept(ParticleEmitter particleEmitter) {
        if (particleEmitter != null && particleEmitter != this && !this.f73888J.isEmpty() && !particleEmitter.f73888J.isEmpty()) {
            AABB bounding = getBounding();
            AABB bounding2 = particleEmitter.getBounding();
            if (!bounding.E() && !bounding2.E()) {
                z worldSpace = getWorldSpace();
                z zVar = z.Local;
                if (worldSpace == zVar) {
                    bounding = bounding.d(this.f79250n.transform.x1());
                }
                if (particleEmitter.getWorldSpace() == zVar) {
                    bounding2 = bounding2.d(particleEmitter.f79250n.transform.x1());
                }
                return bounding.J(bounding2);
            }
        }
        return false;
    }

    @InterfaceC15237a
    public boolean isAllowEmission() {
        return this.f73884G;
    }

    @InterfaceC15237a
    public boolean isCastShadows() {
        return this.castShadows;
    }

    @InterfaceC15237a
    public boolean isEnableEmission() {
        return this.enableEmission;
    }

    @InterfaceC15237a
    public boolean isFullWhite() {
        return this.fullWhite;
    }

    @InterfaceC15237a
    public boolean isReceiveLight() {
        return this.receiveLight;
    }

    @InterfaceC15237a
    public boolean isReceiveShadows() {
        return this.receiveShadows;
    }

    @Override
    public void lowTaskUpdate(GameObject gameObject, boolean isEditor) {
        super.lowTaskUpdate(gameObject, isEditor);
        if (this.f73880D0) {
            this.f73918v0.n();
        } else {
            this.f73915q0.o();
        }
    }

    @Override
    public void onAttach() {
        Transform transform;
        super.onAttach();
        GameObject gameObject = this.f79250n;
        if (gameObject == null || (transform = gameObject.transform) == null) {
            return;
        }
        transform.u(this.f73902U);
        this.f79250n.transform.p0(this.f73892M);
        this.f73894N.l(this.f73892M);
        this.f73894N.E();
        updateCachedSpawnTransform(this.f73892M);
        updateRenderEmitterTransform();
    }

    @Override
    public void onDeserialized() {
        super.onDeserialized();
        if (this.colorMode == null) {
            this.colorMode = s.Normal;
        }
        if (this.emissive == null) {
            this.emissive = new ColorINT();
        }
        if (this.emissiveGradient == null) {
            Gradient gradient = new Gradient();
            this.emissiveGradient = gradient;
            gradient.n();
        }
        if (this.emissiveBased == null) {
            this.emissiveBased = u.Constant;
        }
        if (this.spriteBased == null) {
            this.spriteBased = x.Constant;
        }
        if (this.spriteCurve == null) {
            Curve curve = new Curve(N7.c.t());
            this.spriteCurve = curve;
            curve.clear();
            this.spriteCurve.f(0.0f, 0.0f);
            this.spriteCurve.f(1.0f, 1.0f);
            this.spriteCurve.apply();
        }
        float f10 = this.emitDelaySeconds;
        if (f10 != 0.0f) {
            this.emissionsPerSecond = 1.0f / f10;
            this.emitDelaySeconds = 0.0f;
        }
    }

    @Override
    public void onDetach() {
        Transform transform;
        super.onDetach();
        GameObject gameObject = this.f79250n;
        if (gameObject != null && (transform = gameObject.transform) != null) {
            transform.O2(this.f73902U);
        }
        detachFromRenderer();
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:70:? A[RETURN, SYNTHETIC] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void parallelUpdate() {
        boolean z10;
        super.parallelUpdate();
        if (!this.f73912i2 && !this.f73911i1.E()) {
            return;
        }
        if (c8.b.k() && !this.f73885H) {
            if (this.playOnStart) {
                this.f73884G = true;
            }
            this.f73885H = true;
        }
        this.f73887I = false;
        if (!c8.b.k()) {
            if (c8.b.i() || !this.f79250n.b1()) {
                z10 = false;
                if (this.f73881E) {
                    this.f73887I = true;
                    z10 = true;
                }
                if (z10) {
                    return;
                }
                float b10 = K8.d.b();
                int i10 = this.f73906X;
                int i11 = this.f73903V;
                if (i11 != i10) {
                    int i12 = i10 - i11;
                    this.f73903V = i10;
                    if (i12 > 0) {
                        for (int i13 = 0; i13 < i12; i13++) {
                            this.f73889K.add(new com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.a());
                        }
                    } else {
                        for (int i14 = 0; i14 < Nc.b.l(i12); i14++) {
                            if (!this.f73888J.isEmpty()) {
                                List<com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.a> list = this.f73888J;
                                list.remove(list.get(0));
                            } else if (!this.f73889K.isEmpty()) {
                                List<com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.a> list2 = this.f73889K;
                                list2.remove(list2.get(list2.size() - 1));
                            }
                        }
                    }
                }
                float f10 = this.emissionPeriod;
                if (f10 > 0.0f) {
                    float f11 = this.f73907Y + b10;
                    this.f73907Y = f11;
                    if (f11 >= f10) {
                        this.f73907Y = f11 - f10;
                    }
                    float I10 = this.emissionsPerSecond * Nc.b.I(this.emissionsOverPeriod.p(Nc.b.I(this.f73907Y / f10)));
                    if (I10 > 0.0f) {
                        this.f73905W = 1.0f / I10;
                        this.f73908Z -= b10;
                        while (this.f73908Z <= 0.0f) {
                            emitParticle();
                            this.f73908Z += this.f73905W;
                        }
                    } else {
                        this.f73908Z = 0.0f;
                    }
                } else {
                    this.f73905W = 1.0f / this.emissionsPerSecond;
                    this.f73908Z -= b10;
                    while (this.f73908Z <= 0.0f) {
                        emitParticle();
                        this.f73908Z += this.f73905W;
                    }
                }
                updateAliveParticles(b10);
                if (!this.f73890L.isEmpty()) {
                    this.f73888J.removeAll(this.f73890L);
                    this.f73889K.addAll(this.f73890L);
                    this.f73890L.clear();
                }
                updateParticleBoundingBuffers(b10);
                this.f73904V1 = true;
                if (this.f73880D0) {
                    this.f73918v0.parallelUpdate();
                    return;
                } else {
                    this.f73915q0.parallelUpdate();
                    return;
                }
            }
            this.f73887I = true;
        }
        z10 = true;
        if (this.f73881E) {
        }
        if (z10) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x009d, code lost:
    
        r4.f73912i2 = true;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        boolean z10;
        super.preUpdate(gameObject, isEditor);
        if (!this.f73910b2) {
            this.f73910b2 = true;
            this.f73909b1 = Bb.c.a(this.textureFile, this.f73909b1);
        }
        int i10 = 0;
        if (this.allowMergeV2) {
            List<Component> h10 = R8.f.h(ParticleEmitter.class);
            for (int i11 = 0; i11 < h10.size(); i11++) {
                Component component = h10.get(i11);
                if (component != null && component != this && component.isHierarchyActive() && intercept((ParticleEmitter) component)) {
                    z10 = true;
                    break;
                }
            }
        }
        z10 = false;
        if (this.f73880D0 != z10) {
            this.f73880D0 = z10;
            if (z10) {
                this.f73915q0.destroy();
            } else {
                this.f73918v0.destroy();
            }
            this.f73904V1 = true;
        }
        this.f73906X = (int) Nc.b.D(this.emissionsPerSecond * this.maxLifeSeconds);
        if (this.f73880D0) {
            this.f73918v0.o();
        } else if (this.f73904V1) {
            this.f73915q0.p();
            this.f73904V1 = false;
        }
        this.f73912i2 = false;
        try {
            List<Component> h11 = R8.f.h(Camera.class);
            while (true) {
                if (i10 >= h11.size()) {
                    break;
                }
                Component component2 = h11.get(i10);
                if (component2.isHierarchyActive() && ((Camera) component2).isVisible(this)) {
                    break;
                } else {
                    i10++;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (this.f79250n.f1()) {
            int ordinal = this.emissionShape.ordinal();
            if (ordinal == 0) {
                C13046b c13046b = this.f73899R1;
                if (!(c13046b instanceof C13048d)) {
                    if (c13046b != null) {
                        c13046b.a(this);
                    }
                    C13048d c13048d = new C13048d();
                    this.f73899R1 = c13048d;
                    c13048d.c(this);
                }
                this.f73899R1.d(this, this.f73914m2);
            } else if (ordinal == 1) {
                C13046b c13046b2 = this.f73899R1;
                if (!(c13046b2 instanceof C13045a)) {
                    if (c13046b2 != null) {
                        c13046b2.a(this);
                    }
                    C13045a c13045a = new C13045a();
                    this.f73899R1 = c13045a;
                    c13045a.c(this);
                }
                this.f73899R1.d(this, this.f73914m2);
            } else if (ordinal == 2) {
                C13046b c13046b3 = this.f73899R1;
                if (!(c13046b3 instanceof C13047c)) {
                    if (c13046b3 != null) {
                        c13046b3.a(this);
                    }
                    C13047c c13047c = new C13047c();
                    this.f73899R1 = c13047c;
                    c13047c.c(this);
                }
                this.f73899R1.d(this, this.f73914m2);
            }
            C13046b c13046b4 = this.f73899R1;
            if (c13046b4 != null) {
                this.f73914m2.setVertex(c13046b4.b().x2());
                Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
                this.f79250n.transform.u0(vector3);
                this.f73914m2.setPosition(vector3.toJAVARuntime());
                JP.release(vector3);
                Ub.a.a(this.f73914m2);
            }
        }
    }

    @Override
    public void reloadFilesPaths(BuildDictionary dictionary) {
        BuildDicFile f10 = dictionary.f(this.textureFile);
        if (f10 != null) {
            dictionary.h("ParticleEmitter: REPLACING " + this.textureFile + " TO " + f10.b());
            this.textureFile = f10.b();
        }
    }

    public int resolveSpriteIndex(com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.a particle) {
        float j12;
        int i10;
        ub.p pVar = this.f73909b1;
        if (!hasSpriteTexture()) {
            return Math.max(0, this.spriteIndex);
        }
        int C10 = ((ub.g) pVar).u0().v().C();
        int ordinal = this.spriteBased.ordinal();
        float f10 = 0.0f;
        if (ordinal == 1) {
            if (particle != null && this.maxLifeSeconds > 0.0f) {
                f10 = Nc.b.I(particle.c() / this.maxLifeSeconds);
            }
            Curve curve = this.spriteCurve;
            if (curve != null) {
                f10 = curve.p(f10);
            }
            j12 = Nc.b.j1(Nc.b.I(f10) * (C10 - 1));
        } else {
            if (ordinal != 2) {
                i10 = this.spriteIndex;
                return Nc.b.F(0, i10, C10 - 1);
            }
            if (particle != null && this.maxSpeed > 0.0f) {
                f10 = Nc.b.I(particle.d().lengthF() / this.maxSpeed);
            }
            Curve curve2 = this.spriteCurve;
            if (curve2 != null) {
                f10 = curve2.p(f10);
            }
            j12 = Nc.b.j1(Nc.b.I(f10) * (C10 - 1));
        }
        i10 = (int) j12;
        return Nc.b.F(0, i10, C10 - 1);
    }

    @InterfaceC15237a
    public void setAllowEmission(boolean allowEmission) {
        this.f73884G = allowEmission;
    }

    @InterfaceC15237a
    public void setAlphaBased(q alphaBased) {
        this.alphaBased = alphaBased;
    }

    @InterfaceC15237a
    public void setAlphaOverLifeTimeCurve(Curve alphaOverLifeTimeCurve) {
        if (alphaOverLifeTimeCurve == null) {
            throw new NullPointerException("curve can't be null");
        }
        this.alphaOverLifeTimeCurve = alphaOverLifeTimeCurve;
    }

    @InterfaceC15237a
    public void setCastShadows(boolean castShadows) {
        this.castShadows = castShadows;
    }

    @InterfaceC15237a
    public void setColor(ColorINT color) {
        if (color == null) {
            throw new NullPointerException("Color can't be null");
        }
        this.color = color;
    }

    @InterfaceC15237a
    public void setColorBased(r colorBased) {
        this.colorBased = colorBased;
    }

    @InterfaceC15237a
    public void setColorGradient(Gradient colorGradient) {
        if (colorGradient == null) {
            throw new NullPointerException("Gradient can't be null");
        }
        this.colorGradient = colorGradient;
    }

    @InterfaceC15237a
    public void setColorMode(s colorMode) {
        this.colorMode = colorMode;
    }

    @InterfaceC15237a
    public void setEmissionPeriod(float emissionPeriod) {
        this.emissionPeriod = emissionPeriod;
    }

    @InterfaceC15237a
    public void setEmissionShape(t emissionShape) {
        this.emissionShape = emissionShape;
    }

    @InterfaceC15237a
    public void setEmissionsOverPeriod(Curve emissionsOverPeriod) {
        this.emissionsOverPeriod = emissionsOverPeriod;
    }

    @InterfaceC15237a
    public void setEmissionsPerSecond(float emissionsPerSecond) {
        this.emissionsPerSecond = emissionsPerSecond;
    }

    @InterfaceC15237a
    public void setEmissive(ColorINT emissive) {
        if (emissive == null) {
            throw new NullPointerException("Emissive can't be null");
        }
        this.emissive = emissive;
    }

    @InterfaceC15237a
    public void setEmissiveBased(u emissiveBased) {
        this.emissiveBased = emissiveBased;
    }

    @InterfaceC15237a
    public void setEmissiveGradient(Gradient emissiveGradient) {
        if (emissiveGradient == null) {
            throw new NullPointerException("Gradient can't be null");
        }
        this.emissiveGradient = emissiveGradient;
    }

    @InterfaceC15237a
    public void setEnableEmission(boolean enableEmission) {
        this.enableEmission = enableEmission;
    }

    @InterfaceC15237a
    public void setFullWhite(boolean fullWhite) {
        this.fullWhite = fullWhite;
    }

    @InterfaceC15237a
    public void setGravityMultiplier(float gravityMultiplier) {
        this.gravityMultiplier = gravityMultiplier;
    }

    @InterfaceC15237a
    public void setLayer(int layer) {
        this.layer = layer;
        this.f73904V1 = true;
    }

    @InterfaceC15237a
    public void setMaxLifeSeconds(float maxLifeSeconds) {
        this.maxLifeSeconds = maxLifeSeconds;
    }

    @InterfaceC15237a
    public void setMaxSpeed(float maxSpeed) {
        this.maxSpeed = maxSpeed;
    }

    @InterfaceC15237a
    public void setReceiveLight(boolean receiveLight) {
        this.receiveLight = receiveLight;
    }

    @InterfaceC15237a
    public void setReceiveShadows(boolean receiveShadows) {
        this.receiveShadows = receiveShadows;
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f73917q2 = run;
    }

    @InterfaceC15237a
    public void setSizeBased(v sizeBased) {
        this.sizeBased = sizeBased;
    }

    @InterfaceC15237a
    public void setSizeOverLifeTimeCurve(Curve sizeOverLifeTimeCurve) {
        if (sizeOverLifeTimeCurve == null) {
            throw new NullPointerException("curve can't be null");
        }
        this.sizeOverLifeTimeCurve = sizeOverLifeTimeCurve;
    }

    public void setSpriteBased(x spriteBased) {
        if (spriteBased == null) {
            spriteBased = x.Constant;
        }
        this.spriteBased = spriteBased;
        this.f73904V1 = true;
    }

    public void setSpriteCurve(Curve spriteCurve) {
        if (spriteCurve == null) {
            throw new NullPointerException("curve can't be null");
        }
        this.spriteCurve = spriteCurve;
        this.f73904V1 = true;
    }

    public void setSpriteIndex(int spriteIndex) {
        this.spriteIndex = Math.max(0, spriteIndex);
        this.f73904V1 = true;
    }

    @InterfaceC15237a
    public void setStartSize(float startSize) {
        this.startSize = startSize;
    }

    @InterfaceC15237a
    public void setStartSpeed(float startSpeed) {
        this.startSpeed = startSpeed;
    }

    public void setTextureFile(String textureFile) {
        this.textureFile = textureFile;
        this.f73909b1 = Bb.c.a(textureFile, this.f73909b1);
        this.f73904V1 = true;
    }

    @InterfaceC15239c
    @InterfaceC15237a
    public void setTextureInstance(ub.p texture) {
        this.f73909b1 = texture;
        if (texture instanceof ub.g) {
            this.textureFile = ((ub.g) texture).getFile();
        } else {
            this.textureFile = null;
        }
        this.f73904V1 = true;
    }

    @InterfaceC15237a
    public void setTransparencyBased(y transparencyBased) {
        this.transparencyBased = transparencyBased;
    }

    @InterfaceC15237a
    public void setWorldSpace(z worldSpace) {
        Transform transform;
        this.worldSpace = worldSpace;
        GameObject gameObject = this.f79250n;
        if (gameObject == null || (transform = gameObject.transform) == null) {
            return;
        }
        transform.p0(this.f73892M);
        this.f73894N.l(this.f73892M);
        this.f73894N.E();
        updateRenderEmitterTransform();
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f73917q2;
        if (component != null) {
            return component;
        }
        JAVARuntime.ParticleEmitter particleEmitter = new JAVARuntime.ParticleEmitter(this);
        this.f73917q2 = particleEmitter;
        return particleEmitter;
    }

    @Override
    public Component mo1248clone() {
        ParticleEmitter particleEmitter = new ParticleEmitter();
        particleEmitter.enableEmission = this.enableEmission;
        particleEmitter.emissionPeriod = this.emissionPeriod;
        particleEmitter.alphaOverLifeTimeCurve = this.alphaOverLifeTimeCurve.clone();
        particleEmitter.alphaBased = this.alphaBased;
        particleEmitter.colorBased = this.colorBased;
        particleEmitter.colorGradient = this.colorGradient.clone();
        particleEmitter.color = this.color.clone();
        particleEmitter.colorMode = this.colorMode;
        particleEmitter.emissiveBased = this.emissiveBased;
        particleEmitter.emissiveGradient = this.emissiveGradient.clone();
        particleEmitter.emissive = this.emissive.clone();
        particleEmitter.transparencyBased = this.transparencyBased;
        particleEmitter.textureFile = this.textureFile;
        particleEmitter.spriteBased = this.spriteBased;
        particleEmitter.spriteIndex = this.spriteIndex;
        Curve curve = this.spriteCurve;
        particleEmitter.spriteCurve = curve != null ? curve.clone() : null;
        particleEmitter.layer = this.layer;
        particleEmitter.maxLifeSeconds = this.maxLifeSeconds;
        particleEmitter.worldSpace = this.worldSpace;
        particleEmitter.gravityMultiplier = this.gravityMultiplier;
        particleEmitter.startSpeed = this.startSpeed;
        particleEmitter.emitDelaySeconds = this.emitDelaySeconds;
        particleEmitter.emissionsPerSecond = this.emissionsPerSecond;
        particleEmitter.allowMergeV2 = this.allowMergeV2;
        particleEmitter.receiveLight = this.receiveLight;
        particleEmitter.receiveShadows = this.receiveShadows;
        particleEmitter.castShadows = this.castShadows;
        particleEmitter.coneShapeOptions = this.coneShapeOptions.a();
        particleEmitter.rectangleShapeOptions = this.rectangleShapeOptions.a();
        particleEmitter.sphereShapeOptions = this.sphereShapeOptions.a();
        particleEmitter.emissionShape = this.emissionShape;
        particleEmitter.startSize = this.startSize;
        particleEmitter.sizeOverLifeTimeCurve = this.sizeOverLifeTimeCurve.clone();
        particleEmitter.sizeBased = this.sizeBased;
        particleEmitter.fullWhite = this.fullWhite;
        particleEmitter.speedBased = this.speedBased;
        particleEmitter.speedOverLifeTimeCurve = this.speedOverLifeTimeCurve.clone();
        particleEmitter.emissionsOverPeriod = this.emissionsOverPeriod.clone();
        particleEmitter.rotateBasedDirection = this.rotateBasedDirection;
        return particleEmitter;
    }

    public ParticleEmitter(boolean fromInit) {
        super(f73877L2);
        this.enableEmission = true;
        this.emissionPeriod = 0.0f;
        this.sizeBased = v.SizeOverLifetime;
        this.startSize = 1.0f;
        this.emissionShape = t.Cone;
        this.coneShapeOptions = new ParticleConeShapeOptions();
        this.sphereShapeOptions = new ParticleSphereShapeOptions();
        this.rectangleShapeOptions = new ParticleRectangleShapeOptions();
        this.startSpeed = 2.0f;
        this.speedBased = w.Constant;
        this.gravityMultiplier = 0.01f;
        this.worldSpace = z.Global;
        this.emissionsPerSecond = 10.0f;
        this.emitDelaySeconds = 0.1f;
        this.maxLifeSeconds = 5.0f;
        this.maxSpeed = 10.0f;
        this.layer = 0;
        this.spriteBased = x.Constant;
        this.spriteIndex = 0;
        this.transparencyBased = y.Alpha;
        this.fullWhite = false;
        this.receiveLight = false;
        this.castShadows = false;
        this.receiveShadows = false;
        this.colorMode = s.Normal;
        this.color = new ColorINT();
        this.colorGradient = new Gradient();
        this.colorBased = r.Constant;
        this.alphaBased = q.None;
        this.emissive = new ColorINT(0, 0, 0);
        this.emissiveGradient = new Gradient();
        this.emissiveBased = u.Constant;
        this.rotateBasedDirection = false;
        this.playOnStart = true;
        this.allowMergeV2 = false;
        this.f73882F = null;
        this.f73884G = false;
        this.f73887I = false;
        this.f73888J = new LinkedList();
        this.f73889K = new LinkedList();
        this.f73890L = new LinkedList();
        this.f73892M = new com.itsmagic.engine.Engines.Engine.Vector.f();
        this.f73894N = new com.itsmagic.engine.Engines.Engine.Vector.f();
        this.f73895O = new Object();
        this.f73896P = new Vector3();
        this.f73897Q = new Quaternion();
        this.f73898R = new Vector3(0.0f, 0.0f, 1.0f);
        this.f73900S = new Vector3(0.0f, 1.0f, 0.0f);
        this.f73901T = new Vector3(1.0f, 0.0f, 0.0f);
        this.f73902U = new i();
        this.f73903V = 0;
        this.f73905W = 0.1f;
        this.f73906X = 1;
        this.f73907Y = 0.0f;
        this.f73908Z = 0.0f;
        this.f73915q0 = new ParticleRenderBatchData(this);
        this.f73918v0 = new ParticleRenderPerParticleData(this);
        this.f73911i1 = new AABB();
        this.f73913m1 = new AABB();
        this.f73916q1 = new Vector3();
        this.f73891L1 = 0;
        this.f73893M1 = 0.2f;
        this.f73912i2 = false;
        this.f73914m2 = new j();
    }
}
