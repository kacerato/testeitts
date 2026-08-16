package com.itsmagic.engine.Engines.Engine.ComponentsV2.TrailSystem;

import C5.b;
import F5.c;
import Ic.C2629h;
import Ic.C2632k;
import JAVARuntime.Runnable;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDicFile;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.Curve.Curve;
import com.itsmagic.engine.Engines.Engine.Gradient.Gradient;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vector.AABB;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import s8.InterfaceC15237a;

public class TrailRenderer extends Component {

    public static final String f77309L1 = "TrailRenderer";

    public static final Class f77310M1 = TrailRenderer.class;

    public final Vector3 f77311D0;

    public ub.p f77312E;

    public boolean f77313F;

    public final Vector3 f77314F1;

    public final List<q> f77315G;

    public final AABB f77316H;

    public JAVARuntime.Component f77317H1;

    public final com.itsmagic.engine.Engines.Engine.Vector.d f77318I;

    public float f77319J;

    public float f77320K;

    public float f77321L;

    public int f77322M;

    public final TrailRenderData f77323N;

    public boolean f77324O;

    public final Vector3 f77325P;

    public final Vector3 f77326Q;

    public final Vector3 f77327R;

    public final Vector3 f77328S;

    public final Vector3 f77329T;

    public final Vector3 f77330U;

    public final Vector3 f77331V;

    public final Vector3 f77332W;

    public final Vector3 f77333X;

    public final Vector3 f77334Y;

    public final Vector3 f77335Z;

    @Expose
    private l alignment;

    @Expose
    private m alphaBased;

    @Expose
    private Curve alphaOverLifeTimeCurve;

    public final Vector3 f77336b1;

    @Expose
    private boolean castShadows;

    @Expose
    private ColorINT color;

    @Expose
    private n colorBased;

    @Expose
    private Gradient colorGradient;

    @Expose
    private o colorMode;

    @Expose
    private boolean enableEmission;

    @Expose
    private boolean fullWhite;

    public final Vector3 f77337i1;

    public final ColorINT f77338m1;

    @Expose
    @eb.f
    private float maxLength;

    @Expose
    @eb.f
    private float maxLifeSeconds;

    @Expose
    @eb.f
    private float maxSpeed;

    @Expose
    private float minPointDistance;

    @Expose
    @eb.f
    private float pointsPerSecond;

    public final Vector3 f77339q0;

    public final com.itsmagic.engine.Engines.Engine.Vector.f f77340q1;

    @Expose
    private boolean receiveLight;

    @Expose
    private boolean receiveShadows;

    @Expose
    private boolean rotateUV90;

    @Expose
    private p sizeBased;

    @Expose
    private Curve sizeOverLifeTimeCurve;

    @Expose
    @eb.f
    private float startSize;

    @Expose
    private String textureFile;

    @Expose
    private r transparencyBased;

    @Expose
    private s uvMode;

    public final Vector3 f77341v0;

    public final com.itsmagic.engine.Engines.Engine.Vector.f f77342v1;

    @Expose
    private t worldSpace;

    public final Vector3 f77343y1;

    public class a implements c.o0 {

        public final Context f77344a;

        public class C1282a implements D5.h {

            public class C1283a implements Runnable {

                public final Variable f77347b;

                public C1283a(final Variable val$variable) {
                    this.f77347b = val$variable;
                }

                @Override
                public void run() {
                    t6.e S12 = t6.j.J1() ? t6.j.S1("TrailRenderer - set texture file") : null;
                    try {
                        TrailRenderer.this.setTextureFile(this.f77347b.str_value);
                    } finally {
                        t6.j.P1(S12);
                    }
                }
            }

            public C1282a() {
            }

            @Override
            public Variable get() {
                return new Variable("", TrailRenderer.this.textureFile + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new C1283a(variable));
                }
            }
        }

        public class b extends c.n0<r> {
            public b() {
            }

            @Override
            public void a() {
                TrailRenderer.this.reloadInspector();
            }

            @Override
            public void set(r value) {
                TrailRenderer.this.transparencyBased = value;
                TrailRenderer.this.f77324O = true;
            }

            @Override
            public String c(r enumObject) {
                return enumObject.toString();
            }
        }

        public class c implements D5.h {
            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", TrailRenderer.this.fullWhite + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    TrailRenderer.this.fullWhite = variable.booolean_value.booleanValue();
                    TrailRenderer.this.f77324O = true;
                }
            }
        }

        public a(final Context val$context) {
            this.f77344a = val$context;
        }

        @Override
        public boolean a() {
            return true;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            entries.add(new C5.b(new C1282a(), Lang.l(Lang.T.TEXTURE), b.a.Texture, this.f77344a));
            entries.add(F5.c.i(Lang.l(Lang.T.TRANSPARENCY), r.class, TrailRenderer.this.transparencyBased, new b()));
            entries.add(new C5.b(new c(), "Full White", b.a.SLBoolean));
            return entries;
        }
    }

    public class b implements c.o0 {

        public class a implements D5.h {
            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", TrailRenderer.this.receiveLight + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    TrailRenderer.this.receiveLight = variable.booolean_value.booleanValue();
                }
            }
        }

        public class C1284b implements D5.h {
            public C1284b() {
            }

            @Override
            public Variable get() {
                return new Variable("", TrailRenderer.this.castShadows + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    TrailRenderer.this.castShadows = variable.booolean_value.booleanValue();
                }
            }
        }

        public class c implements D5.h {
            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", TrailRenderer.this.receiveShadows + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    TrailRenderer.this.receiveShadows = variable.booolean_value.booleanValue();
                }
            }
        }

        public b() {
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
            entries.add(new C5.b(new C1284b(), "Cast shadows", aVar2));
            entries.add(new C5.b(new c(), "Receive shadows", aVar2));
            return entries;
        }
    }

    public class c extends AbstractC13203c {
        @Override
        public Class b() {
            return TrailRenderer.f77310M1;
        }

        @Override
        public String c() {
            return TrailRenderer.f77309L1;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.EFFECTS);
        }

        @Override
        public String f() {
            return "Trail Renderer";
        }
    }

    public class d extends c.n0<t> {
        public d() {
        }

        @Override
        public void a() {
            TrailRenderer.this.reloadInspector();
        }

        @Override
        public void set(t value) {
            TrailRenderer.this.worldSpace = value;
        }

        @Override
        public String c(t enumObject) {
            return enumObject.toString();
        }
    }

    public class e extends c.n0<l> {
        public e() {
        }

        @Override
        public void a() {
            TrailRenderer.this.reloadInspector();
        }

        @Override
        public void set(l value) {
            TrailRenderer.this.alignment = value;
            TrailRenderer.this.f77324O = true;
        }

        @Override
        public String c(l enumObject) {
            return enumObject.toString();
        }
    }

    public class f extends c.n0<s> {
        public f() {
        }

        @Override
        public void a() {
            TrailRenderer.this.reloadInspector();
        }

        @Override
        public void set(s value) {
            TrailRenderer.this.uvMode = value;
            TrailRenderer.this.f77324O = true;
        }

        @Override
        public String c(s enumObject) {
            return enumObject.toString();
        }
    }

    public class g implements D5.h {
        public g() {
        }

        @Override
        public Variable get() {
            return new Variable("", TrailRenderer.this.rotateUV90 + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                TrailRenderer.this.rotateUV90 = variable.booolean_value.booleanValue();
                TrailRenderer.this.f77324O = true;
            }
        }
    }

    public class h implements D5.h {
        public h() {
        }

        @Override
        public Variable get() {
            return new Variable("", TrailRenderer.this.enableEmission + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                TrailRenderer.this.enableEmission = variable.booolean_value.booleanValue();
            }
        }
    }

    public class i implements c.o0 {

        public class a implements D5.h {
            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", TrailRenderer.this.pointsPerSecond + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    TrailRenderer.this.pointsPerSecond = Nc.b.M(1.0f, variable.float_value);
                }
            }
        }

        public class b implements D5.h {
            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", TrailRenderer.this.minPointDistance + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    TrailRenderer.this.minPointDistance = Nc.b.M(0.001f, variable.float_value);
                }
            }
        }

        public class c implements D5.h {
            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", TrailRenderer.this.maxLifeSeconds + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    TrailRenderer.this.maxLifeSeconds = Nc.b.M(0.01f, variable.float_value);
                }
            }
        }

        public class d implements D5.h {
            public d() {
            }

            @Override
            public Variable get() {
                return new Variable("", TrailRenderer.this.maxLength + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    TrailRenderer.this.maxLength = Nc.b.M(0.01f, variable.float_value);
                }
            }
        }

        public class e implements D5.h {
            public e() {
            }

            @Override
            public Variable get() {
                return new Variable("", TrailRenderer.this.maxSpeed + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    TrailRenderer.this.maxSpeed = Nc.b.M(0.01f, variable.float_value);
                }
            }
        }

        public i() {
        }

        @Override
        public boolean a() {
            return true;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            a aVar = new a();
            b.a aVar2 = b.a.SLFloat;
            entries.add(new C5.b(aVar, "Points Per Second", aVar2));
            entries.add(new C5.b(new b(), "Min Point Distance", aVar2));
            entries.add(new C5.b(new c(), Lang.l(Lang.T.MAX_LIFE_SECONDS), aVar2));
            entries.add(new C5.b(new d(), "Max Length", aVar2));
            entries.add(new C5.b(new e(), "Max Speed", aVar2));
            return entries;
        }
    }

    public class j implements c.o0 {

        public final Context f77366a;

        public class a extends c.n0<p> {
            public a() {
            }

            @Override
            public void a() {
                TrailRenderer.this.reloadInspector();
            }

            @Override
            public void set(p value) {
                TrailRenderer.this.sizeBased = value;
            }

            @Override
            public String c(p enumObject) {
                return enumObject.toString();
            }
        }

        public class b implements D5.h {
            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", TrailRenderer.this.startSize + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    TrailRenderer.this.startSize = variable.float_value;
                }
            }
        }

        public j(final Context val$context) {
            this.f77366a = val$context;
        }

        @Override
        public boolean a() {
            return true;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            entries.add(F5.c.i(Lang.l(Lang.T.SIZE_BASED), p.class, TrailRenderer.this.sizeBased, new a()));
            if (TrailRenderer.this.sizeBased == p.SizeOverLifetime) {
                entries.add(J9.c.a(Lang.l(Lang.T.SIZE_OVER_LIFE_TIME), TrailRenderer.this.sizeOverLifeTimeCurve, this.f77366a));
            }
            entries.add(new C5.b(new b(), Lang.l(Lang.T.START_SIZE), b.a.SLFloat));
            return entries;
        }
    }

    public class k implements c.o0 {

        public final Context f77370a;

        public class a extends c.n0<o> {
            public a() {
            }

            @Override
            public void a() {
                TrailRenderer.this.reloadInspector();
            }

            @Override
            public void set(o value) {
                TrailRenderer.this.colorMode = value;
                TrailRenderer.this.f77324O = true;
            }

            @Override
            public String c(o enumObject) {
                return enumObject.toString();
            }
        }

        public class b extends c.n0<n> {
            public b() {
            }

            @Override
            public void a() {
                TrailRenderer.this.reloadInspector();
            }

            @Override
            public void set(n value) {
                TrailRenderer.this.colorBased = value;
            }

            @Override
            public String c(n enumObject) {
                return enumObject.toString();
            }
        }

        public class c implements D5.h {
            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("temp", TrailRenderer.this.color);
            }

            @Override
            public void set(Variable variable) {
                if (variable == null || variable.e()) {
                    return;
                }
                TrailRenderer.this.color.intColor = variable.color_value.intColor;
            }
        }

        public class d extends c.n0<m> {
            public d() {
            }

            @Override
            public void a() {
                TrailRenderer.this.reloadInspector();
            }

            @Override
            public void set(m value) {
                TrailRenderer.this.alphaBased = value;
            }

            @Override
            public String c(m enumObject) {
                return enumObject.toString();
            }
        }

        public k(final Context val$context) {
            this.f77370a = val$context;
        }

        @Override
        public boolean a() {
            return true;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            entries.add(F5.c.i(Lang.l(Lang.T.COLOR_MODE), o.class, TrailRenderer.this.colorMode, new a()));
            entries.add(F5.c.i(Lang.l(Lang.T.COLOR_BASED), n.class, TrailRenderer.this.colorBased, new b()));
            int ordinal = TrailRenderer.this.colorBased.ordinal();
            if (ordinal == 0) {
                entries.add(new C5.b(new c(), Lang.l(Lang.T.COLOR), b.a.Color, this.f77370a));
            } else if (ordinal == 1 || ordinal == 2) {
                entries.add(N9.a.a(Lang.l(Lang.T.COLOR), TrailRenderer.this.colorGradient, this.f77370a));
            }
            entries.add(F5.c.i(Lang.l(Lang.T.ALPHA_BASED), m.class, TrailRenderer.this.alphaBased, new d()));
            if (TrailRenderer.this.alphaBased == m.AlphaOverLifetime) {
                entries.add(J9.c.a(Lang.l(Lang.T.ALPHA_OVER_LIFE_TIME), TrailRenderer.this.alphaOverLifeTimeCurve, this.f77370a));
            }
            return entries;
        }
    }

    public enum l {
        Billboard,
        Movement
    }

    public enum m {
        None,
        AlphaOverLifetime,
        BySpeed
    }

    public enum n {
        Constant,
        ColorOverLifetime,
        BySpeed
    }

    public enum o {
        Normal,
        Multiply,
        Additive,
        Fade
    }

    public enum p {
        SizeOverLifetime,
        Constant,
        BySpeed
    }

    public enum r {
        Disabled,
        Alpha,
        GreyScale
    }

    public enum s {
        LengthBased,
        PointBased
    }

    public enum t {
        Global,
        Local
    }

    static {
        C13201a.b(new c());
    }

    public TrailRenderer() {
        super(f77309L1);
        this.enableEmission = true;
        this.pointsPerSecond = 60.0f;
        this.minPointDistance = 0.05f;
        this.maxLifeSeconds = 1.5f;
        this.maxLength = 6.0f;
        this.maxSpeed = 10.0f;
        this.startSize = 0.35f;
        this.sizeBased = p.SizeOverLifetime;
        this.alphaBased = m.AlphaOverLifetime;
        this.colorBased = n.Constant;
        this.colorMode = o.Normal;
        this.color = new ColorINT();
        this.colorGradient = new Gradient();
        this.transparencyBased = r.Alpha;
        this.fullWhite = false;
        this.receiveLight = false;
        this.castShadows = false;
        this.receiveShadows = false;
        this.alignment = l.Billboard;
        this.uvMode = s.LengthBased;
        this.rotateUV90 = false;
        this.worldSpace = t.Global;
        this.f77315G = new LinkedList();
        this.f77316H = new AABB();
        this.f77318I = new com.itsmagic.engine.Engines.Engine.Vector.d();
        this.f77322M = 0;
        this.f77323N = new TrailRenderData(this);
        this.f77325P = new Vector3();
        this.f77326Q = new Vector3();
        this.f77327R = new Vector3();
        this.f77328S = new Vector3();
        this.f77329T = new Vector3();
        this.f77330U = new Vector3();
        this.f77331V = new Vector3();
        this.f77332W = new Vector3();
        this.f77333X = new Vector3();
        this.f77334Y = new Vector3();
        this.f77335Z = new Vector3();
        this.f77339q0 = new Vector3();
        this.f77341v0 = new Vector3();
        this.f77311D0 = new Vector3();
        this.f77336b1 = new Vector3();
        this.f77337i1 = new Vector3();
        this.f77338m1 = new ColorINT();
        this.f77340q1 = new com.itsmagic.engine.Engines.Engine.Vector.f();
        this.f77342v1 = new com.itsmagic.engine.Engines.Engine.Vector.f();
        this.f77343y1 = new Vector3();
        this.f77314F1 = new Vector3(0.0f, 1.0f, 0.0f);
        Curve curve = new Curve(N7.c.t());
        this.sizeOverLifeTimeCurve = curve;
        curve.clear();
        this.sizeOverLifeTimeCurve.f(0.0f, 1.0f);
        this.sizeOverLifeTimeCurve.f(0.25f, 0.85f);
        this.sizeOverLifeTimeCurve.f(0.75f, 0.25f);
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
        this.colorGradient.n();
    }

    private void addPoint(float deltaTime) {
        float distance;
        float distance2;
        if (this.f79250n == null) {
            return;
        }
        this.f77331V.set(this.f77343y1);
        t tVar = this.worldSpace;
        t tVar2 = t.Local;
        if (tVar == tVar2) {
            this.f77342v1.P(this.f77331V, this.f77325P);
        } else {
            this.f77325P.set(this.f77331V);
        }
        if (!this.f77315G.isEmpty()) {
            q qVar = this.f77315G.get(r0.size() - 1);
            if (this.worldSpace == tVar2) {
                this.f77340q1.P(qVar.f77376a, this.f77332W);
                distance2 = this.f77332W.distance(this.f77331V);
            } else {
                distance2 = qVar.f77376a.distance(this.f77331V);
            }
            if (distance2 < this.minPointDistance) {
                return;
            }
        }
        q qVar2 = new q(null);
        qVar2.f77376a.set(this.f77325P);
        qVar2.f77379d = 0.0f;
        if (this.f77315G.isEmpty()) {
            qVar2.f77380e = 0.0f;
            qVar2.f77381f = 0.0f;
        } else {
            q qVar3 = this.f77315G.get(r3.size() - 1);
            if (this.worldSpace == tVar2) {
                this.f77340q1.P(qVar3.f77376a, this.f77332W);
                distance = this.f77332W.distance(this.f77331V);
            } else {
                distance = qVar3.f77376a.distance(this.f77331V);
            }
            qVar2.f77380e = distance;
            this.f77319J += distance;
            qVar2.f77381f = deltaTime > 0.0f ? distance / deltaTime : 0.0f;
        }
        this.f77315G.add(qVar2);
    }

    private void buildMesh() {
        float f10;
        if (this.f77323N.l()) {
            int size = this.f77315G.size();
            this.f77323N.p();
            float f11 = 1.0f;
            if (size < 2) {
                this.f77331V.set(this.f77343y1);
                this.f77338m1.K(this.color);
                this.f77338m1.N(0.0f);
                float f12 = this.rotateUV90 ? 1.0f : 0.0f;
                float f13 = f12;
                TrailRenderData trailRenderData = this.f77323N;
                Vector3 vector3 = this.f77331V;
                trailRenderData.j(0, vector3, vector3, 0.0f, f12, f13, 1.0f, this.f77338m1);
                this.f77316H.K();
                return;
            }
            Camera mainCameraAllowEditor = Camera.mainCameraAllowEditor();
            if (mainCameraAllowEditor != null) {
                this.f77334Y.set(mainCameraAllowEditor.getRenderCameraPosition());
                this.f77335Z.set(mainCameraAllowEditor.getRenderCameraDirection());
            } else {
                this.f77334Y.set(0.0f);
                this.f77335Z.set(0.0f, 0.0f, 1.0f);
            }
            float f14 = this.f77319J;
            if (f14 <= 0.0f) {
                f14 = 1.0f;
            }
            ColorINT colorINT = this.color;
            this.f77318I.u();
            Vector3 vector32 = this.f77327R;
            int i10 = 0;
            float f15 = 1.0f;
            float f16 = 0.0f;
            float f17 = 0.0f;
            float f18 = 0.0f;
            float f19 = 0.0f;
            float f20 = 0.0f;
            boolean z10 = false;
            while (i10 < size) {
                q qVar = this.f77315G.get(i10);
                t tVar = this.worldSpace;
                t tVar2 = t.Local;
                if (tVar == tVar2) {
                    this.f77340q1.P(qVar.f77376a, this.f77331V);
                } else {
                    this.f77331V.set(qVar.f77376a);
                }
                if (i10 == 0) {
                    q qVar2 = this.f77315G.get(i10 + 1);
                    if (this.worldSpace == tVar2) {
                        this.f77340q1.P(qVar.f77376a, this.f77332W);
                        this.f77340q1.P(qVar2.f77376a, this.f77333X);
                    } else {
                        this.f77332W.set(qVar.f77376a);
                        this.f77333X.set(qVar2.f77376a);
                    }
                } else if (i10 == size - 1) {
                    q qVar3 = this.f77315G.get(i10 - 1);
                    if (this.worldSpace == tVar2) {
                        this.f77340q1.P(qVar3.f77376a, this.f77332W);
                        this.f77340q1.P(qVar.f77376a, this.f77333X);
                    } else {
                        this.f77332W.set(qVar3.f77376a);
                        this.f77333X.set(qVar.f77376a);
                    }
                } else {
                    q qVar4 = this.f77315G.get(i10 - 1);
                    q qVar5 = this.f77315G.get(i10 + 1);
                    if (this.worldSpace == tVar2) {
                        this.f77340q1.P(qVar4.f77376a, this.f77332W);
                        this.f77340q1.P(qVar5.f77376a, this.f77333X);
                    } else {
                        this.f77332W.set(qVar4.f77376a);
                        this.f77333X.set(qVar5.f77376a);
                    }
                }
                this.f77328S.set(this.f77333X).subLocal(this.f77332W);
                if (this.f77328S.lengthF() <= 1.0E-4f) {
                    this.f77328S.set(0.0f, 0.0f, f11);
                } else {
                    this.f77328S.normalizeLocal();
                }
                if (this.alignment == l.Billboard) {
                    this.f77329T.set(this.f77334Y).subLocal(this.f77331V);
                    if (this.f77329T.lengthF() <= 1.0E-4f) {
                        this.f77329T.set(this.f77335Z);
                    } else {
                        this.f77329T.normalizeLocal();
                    }
                    Vector3 vector33 = this.f77329T;
                    vector33.cross(this.f77328S, vector33);
                } else {
                    if (i10 != 0) {
                        q qVar6 = this.f77315G.get(i10 - 1);
                        if (qVar6.f77378c.lengthF() > 1.0E-4f) {
                            this.f77339q0.set(qVar6.f77378c);
                        } else {
                            this.f77339q0.set(this.f77314F1);
                        }
                    } else if (qVar.f77378c.lengthF() > 1.0E-4f) {
                        this.f77339q0.set(qVar.f77378c);
                    } else {
                        this.f77339q0.set(this.f77314F1);
                    }
                    this.f77339q0.subLocal(this.f77328S, this.f77339q0.dot(this.f77328S));
                    if (this.f77339q0.lengthF() <= 1.0E-4f) {
                        this.f77339q0.set(this.f77314F1);
                    }
                    this.f77339q0.normalizeLocal();
                    if (z10) {
                        this.f77341v0.set(vector32);
                        Vector3 vector34 = this.f77341v0;
                        vector34.cross(this.f77328S, vector34);
                        if (this.f77341v0.lengthF() > 1.0E-4f) {
                            this.f77341v0.normalizeLocal();
                            this.f77341v0.cross(this.f77328S, this.f77311D0);
                            if (this.f77311D0.lengthF() > 1.0E-4f) {
                                float f21 = this.maxSpeed;
                                this.f77339q0.blendLocal(this.f77311D0.normalizeLocal(), f21 > 0.0f ? Nc.b.I(qVar.f77381f / f21) : 0.0f);
                            }
                        }
                    }
                    qVar.f77378c.set(this.f77339q0);
                    this.f77329T.set(this.f77339q0);
                    Vector3 vector35 = this.f77329T;
                    vector35.cross(this.f77328S, vector35);
                }
                if (this.f77329T.lengthF() <= 1.0E-4f) {
                    this.f77329T.set(f11, 0.0f, 0.0f);
                } else {
                    this.f77329T.normalizeLocal();
                }
                float f22 = qVar.f77382g;
                if (f22 > f20) {
                    f20 = f22;
                }
                this.f77330U.set(this.f77329T).mulLocal(f22 * 0.5f);
                Vector3 add = this.f77331V.add(this.f77330U, this.f77325P);
                Vector3 sub = this.f77331V.sub(this.f77330U, this.f77326Q);
                if (i10 > 0) {
                    f16 += qVar.f77380e;
                }
                float f23 = this.uvMode == s.PointBased ? size > 1 ? i10 / (size - 1) : 0.0f : f16 / f14;
                if (this.rotateUV90) {
                    f10 = f11;
                    f11 -= f23;
                    f18 = f11;
                    f23 = 0.0f;
                } else {
                    f18 = 0.0f;
                    f10 = f23;
                }
                this.f77323N.n(add, f23, f18, qVar.f77377b);
                this.f77323N.n(sub, f10, f11, qVar.f77377b);
                this.f77336b1.set(add);
                this.f77337i1.set(sub);
                colorINT = qVar.f77377b;
                this.f77318I.y(add);
                this.f77318I.y(sub);
                vector32.set(this.f77328S);
                i10++;
                f15 = f11;
                f17 = f23;
                f19 = f10;
                f11 = 1.0f;
                z10 = true;
            }
            this.f77338m1.K(colorINT);
            this.f77338m1.N(0.0f);
            this.f77323N.j(size * 2, this.f77336b1, this.f77337i1, f17, f18, f19, f15, this.f77338m1);
            this.f77318I.d();
            this.f77316H.r(this.f77318I);
            AABB aabb = this.f77316H;
            aabb.f79831xn -= f20;
            aabb.yn -= f20;
            aabb.zn -= f20;
            aabb.f79830x -= f20;
            aabb.f79832y -= f20;
            aabb.f79833z -= f20;
        }
    }

    private void cacheTransformData(GameObject gameObject) {
        Transform transform;
        if (gameObject == null || (transform = gameObject.transform) == null) {
            this.f77340q1.G();
            this.f77342v1.G();
            this.f77343y1.set(0.0f);
            this.f77314F1.set(0.0f, 1.0f, 0.0f);
            return;
        }
        transform.p0(this.f77340q1);
        this.f77342v1.s0(this.f77340q1).E();
        this.f77340q1.P(this.f77331V.set(0.0f, 0.0f, 0.0f), this.f77343y1);
        this.f77340q1.g0(this.f77339q0.set(0.0f, 1.0f, 0.0f), this.f77314F1);
        if (this.f77314F1.lengthF() <= 1.0E-4f) {
            this.f77314F1.set(0.0f, 1.0f, 0.0f);
        } else {
            this.f77314F1.normalizeLocal();
        }
    }

    private void detachFromRenderer() {
        this.f77323N.destroy();
    }

    private void ensureMaxPoints() {
        int max = Math.max(2, Math.min(((int) Nc.b.D(this.pointsPerSecond * this.maxLifeSeconds)) + 1, ((int) Nc.b.D(this.maxLength / Nc.b.M(0.001f, this.minPointDistance))) + 1));
        if (max > 32767) {
            max = 32767;
        }
        if (this.f77322M != max) {
            this.f77322M = max;
            this.f77324O = true;
        }
    }

    private void removeFirstPoint() {
        if (this.f77315G.isEmpty()) {
            return;
        }
        this.f77315G.remove(0);
        if (this.f77315G.isEmpty()) {
            this.f77319J = 0.0f;
            return;
        }
        q qVar = this.f77315G.get(0);
        this.f77319J -= qVar.f77380e;
        qVar.f77380e = 0.0f;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00af A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x009d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x005d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void updatePointProperties() {
        float f10;
        int ordinal;
        int ordinal2;
        int ordinal3;
        float f11 = 0.0f;
        boolean z10 = true;
        for (q qVar : this.f77315G) {
            if (z10) {
                z10 = false;
            } else {
                f11 += qVar.f77380e;
            }
            float f12 = this.maxLifeSeconds;
            float I10 = Nc.b.I(f12 > 0.0f ? qVar.f77379d / f12 : 1.0f);
            float f13 = this.maxLength;
            if (f13 > 0.0f) {
                float f14 = this.f77319J;
                if (f14 > 0.0f) {
                    f10 = Nc.b.I((f14 - f11) / f13);
                    float max = Math.max(I10, f10);
                    ordinal = this.sizeBased.ordinal();
                    if (ordinal != 0) {
                        qVar.f77382g = Nc.b.I(this.sizeOverLifeTimeCurve.p(max)) * this.startSize;
                    } else if (ordinal != 2) {
                        qVar.f77382g = this.startSize;
                    } else {
                        qVar.f77382g = this.startSize * qVar.f77381f;
                    }
                    ordinal2 = this.colorBased.ordinal();
                    if (ordinal2 != 0) {
                        qVar.f77377b.K(this.color);
                    } else if (ordinal2 == 1) {
                        this.colorGradient.l(max, qVar.f77377b);
                    } else if (ordinal2 == 2) {
                        this.colorGradient.l(qVar.f77381f / this.maxSpeed, qVar.f77377b);
                    }
                    ordinal3 = this.alphaBased.ordinal();
                    if (ordinal3 != 1) {
                        float I11 = Nc.b.I(this.alphaOverLifeTimeCurve.p(max));
                        ColorINT colorINT = qVar.f77377b;
                        colorINT.N(I11 * colorINT.r());
                    } else if (ordinal3 == 2) {
                        ColorINT colorINT2 = qVar.f77377b;
                        colorINT2.N(qVar.f77381f * colorINT2.r());
                    }
                }
            }
            f10 = 0.0f;
            float max2 = Math.max(I10, f10);
            ordinal = this.sizeBased.ordinal();
            if (ordinal != 0) {
            }
            ordinal2 = this.colorBased.ordinal();
            if (ordinal2 != 0) {
            }
            ordinal3 = this.alphaBased.ordinal();
            if (ordinal3 != 1) {
            }
        }
    }

    private void updateTrail(float deltaTime) {
        if (deltaTime <= 0.0f) {
            return;
        }
        this.f77321L += deltaTime;
        if (!this.f77315G.isEmpty()) {
            Iterator<q> it = this.f77315G.iterator();
            while (it.hasNext()) {
                it.next().f77379d += deltaTime;
            }
            while (!this.f77315G.isEmpty() && this.f77315G.get(0).f77379d >= this.maxLifeSeconds) {
                removeFirstPoint();
            }
        }
        if (this.enableEmission) {
            float M10 = 1.0f / Nc.b.M(1.0f, this.pointsPerSecond);
            this.f77320K -= deltaTime;
            while (this.f77320K <= 0.0f) {
                addPoint(this.f77321L);
                this.f77320K += M10;
                this.f77321L = 0.0f;
            }
        } else {
            this.f77320K = 0.0f;
        }
        float M11 = Nc.b.M(0.001f, this.maxLength);
        while (this.f77315G.size() > 1 && this.f77319J > M11) {
            removeFirstPoint();
        }
        while (this.f77315G.size() > this.f77322M) {
            removeFirstPoint();
        }
        updatePointProperties();
    }

    @Override
    public void disabledPreUpdate(GameObject gameObject, boolean isEditor) {
        super.disabledPreUpdate(gameObject, isEditor);
        detachFromRenderer();
    }

    @InterfaceC15237a
    public l getAlignment() {
        return this.alignment;
    }

    @InterfaceC15237a
    public m getAlphaBased() {
        return this.alphaBased;
    }

    @InterfaceC15237a
    public Curve getAlphaOverLifeTimeCurve() {
        return this.alphaOverLifeTimeCurve;
    }

    @InterfaceC15237a
    public AABB getBounding() {
        return this.f77316H;
    }

    @InterfaceC15237a
    public ColorINT getColor() {
        return this.color;
    }

    @InterfaceC15237a
    public n getColorBased() {
        return this.colorBased;
    }

    @InterfaceC15237a
    public Gradient getColorGradient() {
        return this.colorGradient;
    }

    @InterfaceC15237a
    public o getColorMode() {
        return this.colorMode;
    }

    @Override
    public C2632k getDependencyFiles(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        c2632k.f9114a.add(this.textureFile);
        return c2632k;
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
        linkedList.add(F5.c.i(Lang.l(Lang.T.SPACE), t.class, this.worldSpace, new d()));
        linkedList.add(F5.c.i(Lang.l(Lang.T.ALIGNMENT), l.class, this.alignment, new e()));
        linkedList.add(F5.c.i(Lang.l(Lang.T.UV_MODE), s.class, this.uvMode, new f()));
        g gVar = new g();
        b.a aVar = b.a.SLBoolean;
        linkedList.add(new C5.b(gVar, "Rotate UV", aVar));
        linkedList.add(new C5.b(new h(), "Enable Emission", aVar));
        linkedList.add(F5.c.d(getInspectorMemory(), Lang.l(Lang.T.EMISSION), new i()));
        linkedList.add(F5.c.d(getInspectorMemory(), Lang.l(Lang.T.SIZE), new j(context)));
        linkedList.add(F5.c.d(getInspectorMemory(), Lang.l(Lang.T.COLOR), new k(context)));
        linkedList.add(F5.c.d(getInspectorMemory(), Lang.l(Lang.T.TEXTURE), new a(context)));
        linkedList.add(F5.c.d(getInspectorMemory(), Lang.l(Lang.T.LIGHT), new b()));
        return linkedList;
    }

    @InterfaceC15237a
    public float getMaxLength() {
        return this.maxLength;
    }

    @InterfaceC15237a
    public float getMaxLifeSeconds() {
        return this.maxLifeSeconds;
    }

    public int getMaxPoints() {
        return this.f77322M;
    }

    @InterfaceC15237a
    public float getMaxSpeed() {
        return this.maxSpeed;
    }

    @InterfaceC15237a
    public float getMinPointDistance() {
        return this.minPointDistance;
    }

    @InterfaceC15237a
    public float getPointsPerSecond() {
        return this.pointsPerSecond;
    }

    @InterfaceC15237a
    public p getSizeBased() {
        return this.sizeBased;
    }

    @InterfaceC15237a
    public Curve getSizeOverLifeTimeCurve() {
        return this.sizeOverLifeTimeCurve;
    }

    @InterfaceC15237a
    public float getStartSize() {
        return this.startSize;
    }

    @InterfaceC15237a
    public String getTextureFile() {
        return this.textureFile;
    }

    @InterfaceC15237a
    public ub.p getTextureInstance() {
        return this.f77312E;
    }

    @Override
    public String getTitle() {
        return f77309L1;
    }

    @InterfaceC15237a
    public r getTransparencyBased() {
        return this.transparencyBased;
    }

    @Override
    public Component.e getType() {
        return Component.e.TrailRenderer;
    }

    @InterfaceC15237a
    public s getUvMode() {
        return this.uvMode;
    }

    @InterfaceC15237a
    public t getWorldSpace() {
        return this.worldSpace;
    }

    @Override
    public int iconPriority() {
        return 1;
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

    @InterfaceC15237a
    public boolean isRotateUV90() {
        return this.rotateUV90;
    }

    @Override
    public void onDetach() {
        super.onDetach();
        detachFromRenderer();
    }

    @Override
    public void parallelUpdate() {
        super.parallelUpdate();
        try {
            List<Component> h10 = R8.f.h(Camera.class);
            for (int i10 = 0; i10 < h10.size(); i10++) {
                Component component = h10.get(i10);
                if (component.isHierarchyActive() && ((Camera) component).isVisible(this.f77316H)) {
                    break;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (!this.f77316H.E()) {
            return;
        }
        if (!c8.b.k() && (c8.b.i() || !this.f79250n.b1())) {
            return;
        }
        updateTrail(K8.d.b());
        buildMesh();
        this.f77324O = true;
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        cacheTransformData(gameObject);
        ensureMaxPoints();
        if (!this.f77313F) {
            this.f77313F = true;
            this.f77312E = Bb.c.a(this.textureFile, this.f77312E);
        }
        if (this.f77324O) {
            this.f77323N.m();
            this.f77324O = false;
        }
    }

    @Override
    public void reloadFilesPaths(BuildDictionary dictionary) {
        BuildDicFile f10 = dictionary.f(this.textureFile);
        if (f10 != null) {
            dictionary.h("TrailRenderer: REPLACING " + this.textureFile + " TO " + f10.b());
            this.textureFile = f10.b();
        }
    }

    @InterfaceC15237a
    public void setAlignment(l alignment) {
        this.alignment = alignment;
    }

    @InterfaceC15237a
    public void setAlphaBased(m alphaBased) {
        this.alphaBased = alphaBased;
    }

    @InterfaceC15237a
    public void setAlphaOverLifeTimeCurve(Curve alphaOverLifeTimeCurve) {
        this.alphaOverLifeTimeCurve = alphaOverLifeTimeCurve;
    }

    @InterfaceC15237a
    public void setCastShadows(boolean castShadows) {
        this.castShadows = castShadows;
    }

    @InterfaceC15237a
    public void setColor(ColorINT color) {
        if (color == null) {
            throw new NullPointerException("color can't be null");
        }
        this.color = color;
    }

    @InterfaceC15237a
    public void setColorBased(n colorBased) {
        this.colorBased = colorBased;
    }

    @InterfaceC15237a
    public void setColorGradient(Gradient colorGradient) {
        if (colorGradient == null) {
            throw new NullPointerException("colorGradient can't be null");
        }
        this.colorGradient = colorGradient;
    }

    @InterfaceC15237a
    public void setColorMode(o colorMode) {
        this.colorMode = colorMode;
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
    public void setMaxLength(float maxLength) {
        this.maxLength = Nc.b.M(0.01f, maxLength);
    }

    @InterfaceC15237a
    public void setMaxLifeSeconds(float maxLifeSeconds) {
        this.maxLifeSeconds = Nc.b.M(0.01f, maxLifeSeconds);
    }

    @InterfaceC15237a
    public void setMaxSpeed(float maxSpeed) {
        this.maxSpeed = Nc.b.M(0.01f, maxSpeed);
    }

    @InterfaceC15237a
    public void setMinPointDistance(float minPointDistance) {
        this.minPointDistance = Nc.b.M(0.001f, minPointDistance);
    }

    @InterfaceC15237a
    public void setPointsPerSecond(float pointsPerSecond) {
        this.pointsPerSecond = Nc.b.M(1.0f, pointsPerSecond);
    }

    @InterfaceC15237a
    public void setReceiveLight(boolean receiveLight) {
        this.receiveLight = receiveLight;
    }

    @InterfaceC15237a
    public void setReceiveShadows(boolean receiveShadows) {
        this.receiveShadows = receiveShadows;
    }

    @InterfaceC15237a
    public void setRotateUV90(boolean rotateUV90) {
        this.rotateUV90 = rotateUV90;
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f77317H1 = run;
    }

    @InterfaceC15237a
    public void setSizeBased(p sizeBased) {
        this.sizeBased = sizeBased;
    }

    @InterfaceC15237a
    public void setSizeOverLifeTimeCurve(Curve sizeOverLifeTimeCurve) {
        this.sizeOverLifeTimeCurve = sizeOverLifeTimeCurve;
    }

    @InterfaceC15237a
    public void setStartSize(float startSize) {
        this.startSize = startSize;
    }

    @InterfaceC15237a
    public void setTextureFile(String textureFile) {
        this.textureFile = textureFile;
        this.f77312E = Bb.c.a(textureFile, this.f77312E);
    }

    public void setTextureInstance(ub.p textureInstance) {
        this.f77312E = textureInstance;
    }

    @InterfaceC15237a
    public void setTransparencyBased(r transparencyBased) {
        this.transparencyBased = transparencyBased;
    }

    @InterfaceC15237a
    public void setUvMode(s uvMode) {
        if (uvMode == null) {
            throw new NullPointerException("uvMode can't be null");
        }
        this.uvMode = uvMode;
    }

    @InterfaceC15237a
    public void setWorldSpace(t worldSpace) {
        this.worldSpace = worldSpace;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f77317H1;
        if (component != null) {
            return component;
        }
        JAVARuntime.TrailRenderer trailRenderer = new JAVARuntime.TrailRenderer(this);
        this.f77317H1 = trailRenderer;
        return trailRenderer;
    }

    @Override
    public Component mo1248clone() {
        TrailRenderer trailRenderer = new TrailRenderer();
        trailRenderer.enableEmission = this.enableEmission;
        trailRenderer.pointsPerSecond = this.pointsPerSecond;
        trailRenderer.minPointDistance = this.minPointDistance;
        trailRenderer.maxLifeSeconds = this.maxLifeSeconds;
        trailRenderer.maxLength = this.maxLength;
        trailRenderer.maxSpeed = this.maxSpeed;
        trailRenderer.startSize = this.startSize;
        trailRenderer.sizeBased = this.sizeBased;
        trailRenderer.sizeOverLifeTimeCurve = this.sizeOverLifeTimeCurve;
        trailRenderer.alphaBased = this.alphaBased;
        trailRenderer.alphaOverLifeTimeCurve = this.alphaOverLifeTimeCurve;
        trailRenderer.colorBased = this.colorBased;
        trailRenderer.colorMode = this.colorMode;
        trailRenderer.color = ColorINT.k(this.color);
        trailRenderer.colorGradient = this.colorGradient;
        trailRenderer.transparencyBased = this.transparencyBased;
        trailRenderer.fullWhite = this.fullWhite;
        trailRenderer.receiveLight = this.receiveLight;
        trailRenderer.castShadows = this.castShadows;
        trailRenderer.receiveShadows = this.receiveShadows;
        trailRenderer.alignment = this.alignment;
        trailRenderer.uvMode = this.uvMode;
        trailRenderer.rotateUV90 = this.rotateUV90;
        trailRenderer.worldSpace = this.worldSpace;
        trailRenderer.textureFile = this.textureFile;
        return trailRenderer;
    }

    public static class q {

        public final Vector3 f77376a;

        public final ColorINT f77377b;

        public final Vector3 f77378c;

        public float f77379d;

        public float f77380e;

        public float f77381f;

        public float f77382g;

        public q() {
            this.f77376a = new Vector3();
            this.f77377b = new ColorINT();
            this.f77378c = new Vector3();
            this.f77379d = 0.0f;
            this.f77380e = 0.0f;
            this.f77381f = 0.0f;
            this.f77382g = 1.0f;
        }

        public q(c cVar) {
            this();
        }
    }
}
