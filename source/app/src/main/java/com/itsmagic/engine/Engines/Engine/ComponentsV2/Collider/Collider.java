package com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider;

import C5.b;
import Db.a;
import F5.c;
import Gb.c;
import Ic.C2629h;
import Ic.C2632k;
import Ic.C2633l;
import JAVARuntime.GizmoElement;
import JAVARuntime.GizmoObject;
import JAVARuntime.Runnable;
import android.content.Context;
import android.os.Handler;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDicFile;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.c;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.AreaTrigger;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.PhysicsComponent;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Settings.Physics.ExposableLayerReference;
import com.itsmagic.engine.Engines.Engine.Settings.Physics.Layer;
import com.itsmagic.engine.Engines.Engine.Vertex.Utils.ConvexHullModel;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import com.jme3.bullet.collision.shapes.BoxCollisionShape;
import com.jme3.bullet.collision.shapes.CapsuleCollisionShape;
import com.jme3.bullet.collision.shapes.CompoundCollisionShape;
import com.jme3.bullet.collision.shapes.HullCollisionShape;
import com.jme3.bullet.collision.shapes.SphereCollisionShape;
import com.jme3.bullet.collision.shapes.infos.ChildCollisionShape;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import fb.AbstractC13203c;
import fb.C13201a;
import gb.C13317e;
import h9.C13436b;
import h9.InterfaceC13435a;
import ib.InterfaceC13594a;
import ib.InterfaceC13601h;
import j9.C13813a;
import j9.C13814b;
import java.io.Serializable;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import rb.InterfaceC15168a;
import vhacd4.Vhacd4;
import vhacd4.Vhacd4Hull;
import vhacd4.Vhacd4Parameters;

public class Collider extends Component implements Serializable, InterfaceC13435a {

    public static final float f73195L2 = 0.01f;

    public static final float f73196M2 = 0.25f;

    public static final float f73197R2 = 0.005f;

    public static final boolean f73198V2 = true;

    public static final String f73199i3 = "Collider";

    public static final Class f73200m3 = Collider.class;

    public transient boolean f73201D0;

    public final com.itsmagic.engine.Engines.Engine.Vector.f f73202D2;

    public GizmoObject f73203E;

    public boolean f73204F;

    public transient boolean f73205F1;

    public final float[] f73206F2;

    public boolean f73207G;

    public final Transform f73208H;

    public transient boolean f73209H1;

    public JAVARuntime.Component f73210H2;

    public boolean f73211I;

    public final float[] f73212J;

    public final float[] f73213K;

    public final float[] f73214L;

    public transient boolean f73215L1;

    public Vertex f73216M;

    public transient List<W8.b> f73217M1;

    public boolean f73218N;

    public int f73219O;

    public Eb.a f73220P;

    public String f73221Q;

    public final c.a f73222R;

    public int f73223R1;

    public final float[] f73224S;

    public final float[] f73225T;

    public com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.a f73226U;

    public com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.b f73227V;

    public final InterfaceC13594a f73228V1;

    public boolean f73229W;

    public final C13814b f73230X;

    public transient C13436b f73231Y;

    public List<Dc.a> f73232Z;

    public transient boolean f73233b1;

    public final InterfaceC13601h f73234b2;

    @Expose
    @eb.f
    private float bounciness;

    @Expose
    @eb.f
    private float capsuleLength;

    @Expose
    @eb.f
    private float capsuleWidth;

    @Expose
    @eb.f
    private float decompositionQuality;

    @Expose
    @eb.f
    private float friction;

    public transient float f73235i1;

    public final Cb.a f73236i2;

    @Expose
    private ExposableLayerReference layerReference;

    public transient float f73237m1;

    public final Runnable f73238m2;

    @Expose
    @eb.f
    private int maxHulls;

    @Expose
    public String modelFile;

    @Expose
    public com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.c navMesh;

    public transient boolean f73239q0;

    public transient float f73240q1;

    public final com.itsmagic.engine.Engines.Engine.Vector.f f73241q2;

    @Expose
    public o shape;

    public transient boolean f73242v0;

    public transient GameObject f73243v1;

    public final com.itsmagic.engine.Engines.Engine.Vector.f f73244v2;

    public transient PhysicsComponent f73245y1;

    public class a extends AbstractC13203c {

        public class C1196a implements fb.d {
            public C1196a() {
            }

            @Override
            public Component a(GameObject destination) {
                C13317e.J(destination);
                return new Collider(o.Box);
            }

            @Override
            public String getTittle() {
                return Lang.l(Lang.T.BOX_COLLIDER);
            }
        }

        public class b implements fb.d {
            public b() {
            }

            @Override
            public Component a(GameObject destination) {
                C13317e.J(destination);
                return new Collider(o.Sphere);
            }

            @Override
            public String getTittle() {
                return Lang.l(Lang.T.SPHERE_COLLIDER);
            }
        }

        public class c implements fb.d {
            public c() {
            }

            @Override
            public Component a(GameObject destination) {
                C13317e.J(destination);
                return new Collider(o.Capsule);
            }

            @Override
            public String getTittle() {
                return "Capsule collider";
            }
        }

        public class d implements fb.d {
            public d() {
            }

            @Override
            public Component a(GameObject destination) {
                Collider.buildAllModelColliderFor(destination);
                return null;
            }

            @Override
            public String getTittle() {
                return Lang.l(Lang.T.MODEL_COLLIDER);
            }
        }

        public class e implements fb.d {
            public e() {
            }

            @Override
            public Component a(GameObject destination) {
                Collider.buildAllConvexColliderFor(destination);
                return null;
            }

            @Override
            public String getTittle() {
                return Lang.l(Lang.T.CONVEX_COLLIDER);
            }
        }

        @Override
        public Class b() {
            return Collider.f73200m3;
        }

        @Override
        public String c() {
            return Collider.f73199i3;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.PHYSICS);
        }

        @Override
        public String f() {
            return Lang.l(Lang.T.COLLIDER);
        }

        @Override
        public List<fb.d> i() {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            steppedArrayList.add(null);
            steppedArrayList.add(new C1196a());
            steppedArrayList.add(new b());
            steppedArrayList.add(new c());
            steppedArrayList.add(new d());
            steppedArrayList.add(new e());
            steppedArrayList.add(null);
            return steppedArrayList;
        }
    }

    public class b implements D5.h {

        public class a implements Runnable {

            public final Variable f73252b;

            public a(final Variable val$variable) {
                this.f73252b = val$variable;
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("Collider - set capsule width") : null;
                try {
                    Collider.this.setCapsuleWidth(this.f73252b.float_value);
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", Collider.this.capsuleWidth + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class c implements D5.h {

        public class a implements Runnable {

            public final Variable f73255b;

            public a(final Variable val$variable) {
                this.f73255b = val$variable;
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("Collider - set decomposition quality") : null;
                try {
                    Collider.this.setDecompositionQuality(this.f73255b.float_value);
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", Collider.this.decompositionQuality + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class d implements D5.h {

        public class a implements Runnable {

            public final Variable f73258b;

            public a(final Variable val$variable) {
                this.f73258b = val$variable;
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("Collider - set max hulls") : null;
                try {
                    Collider.this.setMaxHulls(this.f73258b.int_value);
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", Collider.this.maxHulls + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class e implements c.o0 {

        public final Context f73260a;

        public class a implements D5.h {
            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", Collider.this.bounciness + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    Collider.this.setBounciness(variable.float_value);
                }
            }
        }

        public class b implements D5.h {
            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", Collider.this.friction + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    Collider.this.setFriction(variable.float_value);
                }
            }
        }

        public class c implements InterfaceC15168a {
            public c() {
            }

            @Override
            public void a(Layer newLayer) {
                if (Collider.this.f73227V != null) {
                    Collider.this.f73227V.k(Collider.this.layerReference);
                }
            }
        }

        public e(final Context val$context) {
            this.f73260a = val$context;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            a aVar = new a();
            b.a aVar2 = b.a.SLFloat;
            C5.b bVar = new C5.b(aVar, "Bounciness", aVar2);
            Collider collider = Collider.this;
            GameObject gameObject = collider.f79250n;
            com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
            bVar.d(gameObject, collider, "bounciness", cVar);
            entries.add(bVar);
            C5.b bVar2 = new C5.b(new b(), Lang.l(Lang.T.FRICTION), aVar2);
            Collider collider2 = Collider.this;
            bVar2.d(collider2.f79250n, collider2, "friction", cVar);
            entries.add(bVar2);
            entries.add(Collider.this.layerReference.d(Lang.l(Lang.T.LAYER), this.f73260a, new c()));
            return entries;
        }
    }

    public class f implements D5.h {

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                A5.a.x1(Collider.this);
            }
        }

        public f() {
        }

        @Override
        public Variable get() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Collider.this.navMesh != null);
            sb2.append("");
            return new Variable("", sb2.toString());
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                if (variable.booolean_value.booleanValue()) {
                    Collider collider = Collider.this;
                    if (collider.navMesh == null) {
                        collider.enablePathfinder();
                        new Handler().postDelayed(new a(), 50L);
                    }
                }
                if (variable.booolean_value.booleanValue()) {
                    return;
                }
                Collider collider2 = Collider.this;
                if (collider2.navMesh != null) {
                    collider2.disablePathfinder();
                }
            }
        }
    }

    public class g implements c.a {
        public g() {
        }

        @Override
        public Vertex a() {
            Collider collider = Collider.this;
            o oVar = collider.shape;
            if (oVar == o.ConvexModel) {
                if (collider.f73220P != null) {
                    return Collider.this.f73220P.a();
                }
                return null;
            }
            if (oVar != o.Decomposition) {
                return collider.getCollisionVertex();
            }
            if (collider.f73220P != null) {
                return Collider.this.f73220P.a();
            }
            return null;
        }

        @Override
        public String getError() {
            o oVar = Collider.this.shape;
            if (oVar == o.Model || oVar == o.ConvexModel) {
                return null;
            }
            return "Collider shape type " + ((Object) Collider.this.shape) + " is not supported yet!";
        }

        @Override
        public float[] getMatrix() {
            Collider.this.calculateNavMeshMatrix();
            return Collider.this.f73213K;
        }

        @Override
        public boolean isActive() {
            o oVar = Collider.this.shape;
            return oVar == o.Model || oVar == o.ConvexModel;
        }
    }

    public class h implements InterfaceC13594a {
        public h() {
        }

        @Override
        public void a(com.itsmagic.engine.Engines.Engine.Vector.f hierarchyMatrix) {
            if (!C13317e.J(Collider.this.f73243v1)) {
                GameObject gameObject = Collider.this.f79250n;
            }
            Collider collider = Collider.this;
            collider.refreshHierarchyMatrixFor(hierarchyMatrix, collider.f73218N);
            Collider collider2 = Collider.this;
            collider2.f73223R1 = collider2.f79250n.transform.k0();
        }
    }

    public class i implements InterfaceC13601h {
        public i() {
        }

        @Override
        public void a(com.itsmagic.engine.Engines.Engine.Vector.f globalMatrix) {
            if (C13317e.J(Collider.this.f79250n)) {
                Collider collider = Collider.this;
                collider.refreshHierarchyMatrixFor(globalMatrix, collider.f73218N);
                if (Collider.this.f73227V != null) {
                    Collider.this.f73227V.a(Collider.this.f79250n);
                }
                Collider collider2 = Collider.this;
                collider2.f73223R1 = collider2.f79250n.transform.k0();
            }
        }
    }

    public class j implements Cb.a {
        public j() {
        }

        @Override
        public void a() {
            Collider collider;
            Vertex vertex;
            if (!C13317e.J(Collider.this.f79250n) || (vertex = (collider = Collider.this).f73216M) == null) {
                return;
            }
            collider.f73219O = vertex.f0();
            Collider.this.f73204F = true;
            Collider.this.requestColliderRefresh();
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override
        public void run() {
            Collider.this.f73215L1 = false;
            if (C13317e.J(Collider.this.f79250n)) {
                if (Collider.this.f73209H1 || Collider.this.f73204F) {
                    Collider.this.reconcilePhysicsAttachment();
                }
                Collider collider = Collider.this;
                com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.c cVar = collider.navMesh;
                if (cVar != null) {
                    cVar.e(collider.f79250n, collider.f73222R);
                }
            }
        }
    }

    public class l implements D5.h {

        public class a implements Runnable {

            public final Variable f73273b;

            public a(final Variable val$variable) {
                this.f73273b = val$variable;
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("Collider - set shape") : null;
                try {
                    int i10 = this.f73273b.int_value;
                    if (i10 == 0) {
                        Collider.this.setShape(o.Box);
                        Collider.this.setModelFile("");
                    } else if (i10 == 1) {
                        Collider.this.setShape(o.Sphere);
                        Collider.this.setModelFile("");
                    } else if (i10 == 2) {
                        Collider.this.setShape(o.Capsule);
                        Collider.this.setModelFile("");
                    } else if (i10 == 3) {
                        Collider.this.setShape(o.Model);
                    } else if (i10 == 4) {
                        Collider.this.setShape(o.ConvexModel);
                    } else if (i10 == 5) {
                        Collider.this.setShape(o.Decomposition);
                    }
                    Collider.this.f73203E = null;
                    Collider.this.reloadInspector();
                    t6.j.P1(S12);
                } catch (Throwable th2) {
                    t6.j.P1(S12);
                    throw th2;
                }
            }
        }

        public l() {
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class m implements D5.h {

        public class a implements Runnable {

            public final Variable f73276b;

            public a(final Variable val$variable) {
                this.f73276b = val$variable;
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("Collider - set model file") : null;
                try {
                    Collider.this.setModelFile(this.f73276b.str_value);
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public m() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", Collider.this.modelFile + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class n implements D5.h {

        public class a implements Runnable {

            public final Variable f73279b;

            public a(final Variable val$variable) {
                this.f73279b = val$variable;
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("Collider - set capsule length") : null;
                try {
                    Collider.this.setCapsuleLength(this.f73279b.float_value);
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public n() {
        }

        @Override
        public Variable get() {
            return new Variable("", Collider.this.capsuleLength + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public enum o {
        Box,
        Sphere,
        Capsule,
        Model,
        ConvexModel,
        Decomposition
    }

    static {
        C13201a.b(new a());
    }

    public Collider() {
        super(f73199i3);
        this.shape = o.Box;
        this.capsuleLength = 2.0f;
        this.capsuleWidth = 0.5f;
        this.decompositionQuality = 0.2f;
        this.maxHulls = 12;
        this.layerReference = new ExposableLayerReference();
        this.bounciness = 0.0f;
        this.friction = 0.5f;
        this.f73204F = false;
        this.f73207G = false;
        this.f73208H = new Transform();
        this.f73211I = false;
        this.f73212J = new float[16];
        this.f73213K = new float[16];
        this.f73214L = new float[16];
        this.f73218N = false;
        this.f73222R = new g();
        this.f73224S = new float[16];
        this.f73225T = new float[16];
        this.f73229W = true;
        this.f73230X = new C13814b(this);
        this.f73201D0 = true;
        this.f73233b1 = true;
        this.f73235i1 = 0.01f;
        this.f73237m1 = 0.25f;
        this.f73240q1 = 0.005f;
        this.f73228V1 = new h();
        this.f73234b2 = new i();
        this.f73236i2 = new j();
        this.f73238m2 = new k();
        this.f73241q2 = new com.itsmagic.engine.Engines.Engine.Vector.f();
        this.f73244v2 = new com.itsmagic.engine.Engines.Engine.Vector.f();
        this.f73202D2 = new com.itsmagic.engine.Engines.Engine.Vector.f();
        this.f73206F2 = new float[16];
    }

    private void applyCollisionVertex(Vertex vertex) {
        Vertex vertex2 = this.f73216M;
        if (vertex2 == vertex) {
            return;
        }
        if (vertex2 != null) {
            vertex2.L1(this.f73236i2);
        }
        this.f73216M = vertex;
        this.f73219O = vertex != null ? vertex.f0() : 0;
        Vertex vertex3 = this.f73216M;
        if (vertex3 != null) {
            vertex3.v(this.f73236i2);
        }
        this.f73220P = null;
        this.f73203E = null;
        markShapeDirty();
    }

    private boolean areHierarchyListenerPropertiesOutdated(boolean normalizeLikeColliderShape) {
        return (this.f73201D0 && this.f73242v0 == normalizeLikeColliderShape && this.f73233b1 && this.f73235i1 == 0.01f && this.f73237m1 == 0.25f && this.f73240q1 == 0.005f) ? false : true;
    }

    private void attachComponent(CompoundCollisionShape compoundShape, PhysicsComponent pc2) {
        com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.a aVar = this.f73226U;
        if (aVar != null) {
            PhysicsComponent c10 = aVar.c();
            if (compoundShape != this.f73226U.d() || pc2 != c10) {
                detachFromComponent();
            }
        }
        if (isOnPhysics()) {
            if (this.f79250n.transform.w1() != Transform.G.STATIC && !Nc.c.c(this.f73212J, this.f73214L)) {
                Nc.c.b(this.f73212J, this.f73214L);
                this.f73204F = true;
            }
            if (this.f73204F) {
                detachFromComponent();
                pc2.onColliderChanged();
                this.f73204F = false;
            } else {
                com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.c cVar = this.navMesh;
                if (cVar != null) {
                    cVar.e(this.f79250n, this.f73222R);
                }
            }
        }
        if (isOnPhysics()) {
            return;
        }
        com.itsmagic.engine.Engines.Engine.Vector.f fVar = new com.itsmagic.engine.Engines.Engine.Vector.f(this.f73212J);
        List<W8.b> generateCollisionList = generateCollisionList(fVar, pc2.isDynamic());
        com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.c cVar2 = this.navMesh;
        if (cVar2 != null) {
            cVar2.c(this.f79250n, this.f73222R);
        }
        detachFromComponent();
        if (!generateCollisionList.isEmpty()) {
            Nc.c.b(this.f73212J, this.f73214L);
            this.f73208H.setTranslation(fVar.C1().toVector3f());
            this.f73208H.setRotation(fVar.q1().Q0());
            this.f73226U = new com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.a(this.shape, compoundShape, pc2, generateCollisionList, fVar, this.f73208H, this);
            pc2.onColliderChanged();
        }
        this.f73204F = false;
    }

    private void attachLocal() {
        if (isOnPhysics()) {
            if (this.f79250n.transform.w1() != Transform.G.STATIC && !Nc.c.c(this.f73212J, this.f73214L)) {
                Nc.c.b(this.f73212J, this.f73214L);
                this.f73204F = true;
            }
            if (this.f73204F) {
                detachFromLocalStaticbody();
                this.f73204F = false;
            } else {
                com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.c cVar = this.navMesh;
                if (cVar != null) {
                    cVar.e(this.f79250n, this.f73222R);
                }
            }
        }
        if (isOnPhysics()) {
            return;
        }
        com.itsmagic.engine.Engines.Engine.Vector.f fVar = new com.itsmagic.engine.Engines.Engine.Vector.f(this.f73212J);
        List<W8.b> generateCollisionList = generateCollisionList(fVar, false);
        com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.c cVar2 = this.navMesh;
        if (cVar2 != null) {
            cVar2.c(this.f79250n, this.f73222R);
        }
        detachFromLocalStaticbody();
        if (!generateCollisionList.isEmpty()) {
            Nc.c.b(this.f73212J, this.f73214L);
            this.f73208H.setTranslation(fVar.C1().toVector3f());
            this.f73208H.setRotation(fVar.q1().Q0());
            com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.b bVar = new com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.b(this.shape, generateCollisionList, fVar, this.f73208H, this);
            this.f73227V = bVar;
            bVar.k(this.layerReference);
            this.f73227V.i(this.bounciness);
            this.f73227V.j(this.friction);
            this.f73227V.l(this.f79250n);
            reloadInspector();
        }
        this.f73204F = false;
    }

    public static void buildAllConvexColliderFor(GameObject destination) {
        if (C13317e.J(destination)) {
            Iterator<Component> it = destination.n0(Component.e.ModelRenderer).iterator();
            while (it.hasNext()) {
                ModelRenderer modelRenderer = (ModelRenderer) it.next();
                if (modelRenderer != null) {
                    destination.r(new Collider(o.ConvexModel, modelRenderer.getMeshFile(), true));
                }
            }
        }
    }

    public static void buildAllModelColliderFor(GameObject destination) {
        if (C13317e.J(destination)) {
            Iterator<Component> it = destination.n0(Component.e.ModelRenderer).iterator();
            while (it.hasNext()) {
                ModelRenderer modelRenderer = (ModelRenderer) it.next();
                if (modelRenderer != null) {
                    destination.r(new Collider(o.Model, modelRenderer.getMeshFile(), true));
                }
            }
        }
    }

    public static List<W8.b> buildModelShapeCandidates(Vertex vertex, com.itsmagic.engine.Engines.Engine.Vector.f matrix4, boolean isDynamic) {
        return buildModelShapeCandidates(vertex, matrix4, isDynamic, null);
    }

    private boolean calculateGizmoHierarchyMatrixFor(GameObject physicsObject) {
        com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform transform;
        if (!this.f73218N) {
            refreshHierarchyMatrixListenerBinding();
            if (!this.f73218N) {
                return false;
            }
        }
        GameObject gameObject = this.f79250n;
        if (gameObject != null && gameObject.transform != null) {
            if (!C13317e.J(physicsObject)) {
                physicsObject = this.f79250n;
            }
            if (physicsObject != null && (transform = physicsObject.transform) != null) {
                if (this.f73243v1 == null) {
                    Nc.c.b(this.f73212J, this.f73206F2);
                } else {
                    this.f73244v2.Q0(transform, true, true, false);
                    this.f73202D2.x0(this.f73212J);
                    com.itsmagic.engine.Engines.Engine.Vector.f fVar = this.f73244v2;
                    fVar.L(this.f73202D2, fVar);
                    this.f73244v2.o(this.f73206F2);
                }
                return true;
            }
        }
        return false;
    }

    private boolean calculateParent(GameObject o10, GameObject c10) {
        if (o10 == null) {
            return false;
        }
        if (o10 == c10) {
            return true;
        }
        return calculateParent(o10.f79294k, c10);
    }

    private void detachFromComponent() {
        com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.a aVar = this.f73226U;
        if (aVar != null) {
            aVar.b();
            this.f73226U = null;
            invalidateBulletShapeChildrenCache();
            com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.c cVar = this.navMesh;
            if (cVar != null) {
                cVar.c(this.f79250n, this.f73222R);
            }
        }
    }

    private void detachFromLocalStaticbody() {
        com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.b bVar = this.f73227V;
        if (bVar != null) {
            bVar.b();
            this.f73227V = null;
            reloadInspector();
            invalidateBulletShapeChildrenCache();
            com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.c cVar = this.navMesh;
            if (cVar != null) {
                cVar.c(this.f79250n, this.f73222R);
            }
        }
    }

    private void directVertexSet(Vertex vertex) {
        this.f73221Q = null;
        applyCollisionVertex(vertex);
    }

    private void drawGizmo() {
        try {
            if (!this.f73211I && !isSelectedAParent()) {
                return;
            }
            if (this.f73203E == null) {
                try {
                    GizmoObject gizmoObject = new GizmoObject();
                    this.f73203E = gizmoObject;
                    if (this.f73211I) {
                        gizmoObject.setColor(new ColorINT(122, 255, 72, 0).e0());
                        this.f73203E.setEnableTransparency(true);
                    } else {
                        gizmoObject.setColor(new ColorINT(255, 40, 252, 30).e0());
                    }
                    o oVar = this.shape;
                    if (oVar == o.Capsule) {
                        try {
                            float f10 = this.capsuleLength;
                            float f11 = this.capsuleWidth;
                            Vertex j10 = Ib.k.j(new Gb.c(f10 + f11, f11 / 2.0f, 4, 8, c.a.VERTICAL).a());
                            j10.G();
                            this.f73203E.setVertex(j10.x2());
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    } else if (oVar == o.Box) {
                        this.f73203E.setVertex(Vertex.E1(Vertex.v.CUBE, null).x2());
                    } else if (oVar == o.Sphere) {
                        this.f73203E.setVertex(W7.b.f27306f.f2458a.f4947j.c().x2());
                    } else if (oVar != o.Model && oVar != o.ConvexModel) {
                        o oVar2 = o.Decomposition;
                    }
                    if (getCollisionVertex() != null) {
                        o oVar3 = this.shape;
                        if (oVar3 == o.Model) {
                            this.f73203E.setVertex(Db.b.a(getCollisionVertex()).l(getCollisionVertex()).x2());
                        } else if (oVar3 == o.ConvexModel || oVar3 == o.Decomposition) {
                            Eb.a aVar = this.f73220P;
                            if (aVar != null) {
                                this.f73203E.setVertex(aVar.c().x2());
                            } else {
                                this.f73203E = null;
                            }
                        }
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                    this.f73203E = null;
                }
            }
            if (this.f73203E == null || !calculateGizmoHierarchyMatrixFor(this.f73243v1)) {
                return;
            }
            this.f73203E.setRenderMode(GizmoElement.RenderMode.WireFrame);
            this.f73203E.setMatrix(this.f73206F2);
            Ub.a.a(this.f73203E);
        } catch (Exception e12) {
            e12.printStackTrace();
        }
    }

    private C13436b getBulletShapeChildrenCache() {
        if (this.f73231Y == null) {
            this.f73231Y = new C13436b();
        }
        return this.f73231Y;
    }

    private boolean isOnPhysics() {
        return (this.f73226U == null && this.f73227V == null) ? false : true;
    }

    private boolean isSelectedAParent() {
        GameObject gameObject;
        GameObject gameObject2 = W7.b.f27309i.f31909a.f31910a;
        GameObject gameObject3 = this.f79250n;
        if (gameObject2 == gameObject3) {
            return true;
        }
        if (gameObject3 == null || (gameObject = gameObject3.f79294k) == null) {
            return false;
        }
        return calculateParent(gameObject, gameObject2);
    }

    private Vertex loadVertexFromModelFile(String modelFile) {
        if (modelFile != null && !modelFile.isEmpty()) {
            boolean startsWith = modelFile.startsWith("@@ASSET@@");
            if (C2633l.b(modelFile, ".mesh")) {
                try {
                    return Fb.c.o(modelFile, startsWith, false, new Fb.a().a(false).b(false), null);
                } catch (OutOfMemoryError e10) {
                    e10.printStackTrace();
                    return null;
                }
            }
            if (startsWith && C2633l.b(modelFile, ".obj")) {
                try {
                    return Vertex.B1(modelFile, new Fb.a().a(false).b(false));
                } catch (OutOfMemoryError e11) {
                    e11.printStackTrace();
                }
            }
        }
        return null;
    }

    private void markShapeDirty() {
        this.f73204F = true;
        GameObject gameObject = this.f79250n;
        if (gameObject != null) {
            gameObject.l1();
        }
        requestColliderRefresh();
    }

    private void normalizeShapeMatrix(com.itsmagic.engine.Engines.Engine.Vector.f matrix) {
        o oVar = this.shape;
        if (oVar == o.Sphere || oVar == o.Capsule) {
            float X02 = Nc.b.X0(Nc.b.X0(matrix.f79883b, matrix.f79888i), matrix.f79893n);
            matrix.f79893n = X02;
            matrix.f79888i = X02;
            matrix.f79883b = X02;
        }
    }

    public void reconcilePhysicsAttachment() {
        CompoundCollisionShape bulletShape;
        this.f73209H1 = false;
        if (!isHierarchyActive() || this.f73207G) {
            removeFromPhysics();
            return;
        }
        if (!this.f73218N) {
            refreshHierarchyMatrixListenerBinding();
        }
        PhysicsComponent sanitizeHostPhysicsComponent = sanitizeHostPhysicsComponent(this.f73245y1);
        this.f73245y1 = sanitizeHostPhysicsComponent;
        if (sanitizeHostPhysicsComponent == null || (bulletShape = sanitizeHostPhysicsComponent.getBulletShape()) == null) {
            detachFromComponent();
            attachLocal();
        } else {
            detachFromLocalStaticbody();
            attachComponent(bulletShape, sanitizeHostPhysicsComponent);
        }
    }

    public void refreshHierarchyMatrixFor(com.itsmagic.engine.Engines.Engine.Vector.f hierarchyMatrix, boolean scheduleChangeOnDifference) {
        GameObject gameObject = this.f79250n;
        if (gameObject == null || gameObject.transform == null) {
            return;
        }
        this.f73241q2.l(hierarchyMatrix);
        normalizeShapeMatrix(this.f73241q2);
        this.f73241q2.o(this.f73224S);
        if (this.f73218N && scheduleChangeOnDifference) {
            this.f73204F = true;
            requestColliderRefresh();
        }
        Nc.c.b(this.f73224S, this.f73212J);
        this.f73218N = true;
    }

    private void refreshHierarchyMatrixListenerBinding() {
        GameObject gameObject;
        GameObject gameObject2;
        GameObject gameObject3 = this.f79250n;
        if (gameObject3 == null || gameObject3.transform == null) {
            return;
        }
        PhysicsComponent sanitizeHostPhysicsComponent = sanitizeHostPhysicsComponent(this.f73245y1);
        if (this.f73245y1 != sanitizeHostPhysicsComponent) {
            this.f73245y1 = sanitizeHostPhysicsComponent;
        }
        PhysicsComponent physicsComponent = this.f73245y1;
        if (physicsComponent == null || (gameObject = physicsComponent.f79250n) == null || gameObject.transform == null) {
            removeHierarchyMatrixListeners();
            if (!this.f73205F1) {
                this.f79250n.transform.u(this.f73234b2);
                this.f73205F1 = true;
            }
            this.f79250n.transform.p0(this.f73241q2);
            refreshHierarchyMatrixFor(this.f73241q2, false);
            return;
        }
        boolean shouldNormalizeHierarchyListenerLikeColliderShape = shouldNormalizeHierarchyListenerLikeColliderShape();
        if (this.f73205F1) {
            this.f79250n.transform.O2(this.f73234b2);
            this.f73205F1 = false;
        }
        GameObject gameObject4 = this.f73243v1;
        if (gameObject4 != gameObject) {
            if (this.f73239q0) {
                this.f79250n.transform.M2(this.f73228V1);
                this.f73239q0 = false;
            }
            this.f73243v1 = gameObject;
            if (gameObject != null && gameObject.transform != null) {
                saveHierarchyListenerProperties(shouldNormalizeHierarchyListenerLikeColliderShape);
                this.f79250n.transform.r(this.f73243v1.transform, this.f73228V1, true, shouldNormalizeHierarchyListenerLikeColliderShape, true, 0.01f, 0.25f, 0.005f);
                this.f73239q0 = true;
            }
        } else if (this.f73239q0 && gameObject4 != null && gameObject4.transform != null && areHierarchyListenerPropertiesOutdated(shouldNormalizeHierarchyListenerLikeColliderShape)) {
            updateHierarchyListenerProperties(shouldNormalizeHierarchyListenerLikeColliderShape);
        }
        if (this.f73218N) {
            return;
        }
        boolean z10 = this.f73239q0;
        if (!z10 && (gameObject2 = this.f73243v1) != null && gameObject2.transform != null) {
            saveHierarchyListenerProperties(shouldNormalizeHierarchyListenerLikeColliderShape);
            this.f79250n.transform.r(this.f73243v1.transform, this.f73228V1, true, shouldNormalizeHierarchyListenerLikeColliderShape, true, 0.01f, 0.25f, 0.005f);
            this.f73239q0 = true;
            return;
        }
        GameObject gameObject5 = this.f73243v1;
        if (gameObject5 == null || gameObject5.transform == null) {
            return;
        }
        if (z10 && areHierarchyListenerPropertiesOutdated(shouldNormalizeHierarchyListenerLikeColliderShape)) {
            updateHierarchyListenerProperties(shouldNormalizeHierarchyListenerLikeColliderShape);
        }
        this.f79250n.transform.Q0(this.f73243v1.transform, this.f73241q2);
        refreshHierarchyMatrixFor(this.f73241q2, false);
    }

    private void releasePreparedShapeCandidates() {
        if (this.f73217M1 == null) {
            return;
        }
        for (int i10 = 0; i10 < this.f73217M1.size(); i10++) {
            W8.b bVar = this.f73217M1.get(i10);
            if (bVar != null) {
                bVar.e();
            }
        }
        this.f73217M1.clear();
        this.f73217M1 = null;
    }

    private void removeFromPhysics() {
        detachFromComponent();
        detachFromLocalStaticbody();
        com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.c cVar = this.navMesh;
        if (cVar != null) {
            cVar.c(this.f79250n, this.f73222R);
        }
    }

    private void removeHierarchyMatrixListeners() {
        com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform transform;
        com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform transform2;
        GameObject gameObject = this.f79250n;
        if (gameObject != null && (transform2 = gameObject.transform) != null && this.f73239q0) {
            transform2.M2(this.f73228V1);
        }
        GameObject gameObject2 = this.f79250n;
        if (gameObject2 != null && (transform = gameObject2.transform) != null && this.f73205F1) {
            transform.O2(this.f73234b2);
        }
        this.f73239q0 = false;
        this.f73205F1 = false;
        this.f73201D0 = true;
        this.f73242v0 = false;
        this.f73233b1 = true;
        this.f73235i1 = 0.01f;
        this.f73237m1 = 0.25f;
        this.f73240q1 = 0.005f;
        this.f73243v1 = null;
    }

    private void replaceCollisionVertexReference(Vertex vertex) {
        Vertex vertex2 = this.f73216M;
        if (vertex2 == vertex) {
            return;
        }
        if (vertex2 != null) {
            vertex2.L1(this.f73236i2);
        }
        this.f73216M = vertex;
        this.f73219O = vertex != null ? vertex.f0() : 0;
        Vertex vertex3 = this.f73216M;
        if (vertex3 != null) {
            vertex3.v(this.f73236i2);
        }
        this.f73220P = null;
        this.f73203E = null;
    }

    public void requestColliderRefresh() {
        if (this.f73215L1) {
            return;
        }
        this.f73215L1 = true;
        K8.a.B(this.f73238m2);
    }

    private GameObject resolveHierarchyPhysicsObject() {
        GameObject gameObject;
        PhysicsComponent physicsComponent = this.f73245y1;
        if (physicsComponent != null && (gameObject = physicsComponent.f79250n) != null) {
            return gameObject;
        }
        GameObject gameObject2 = this.f79250n;
        if (gameObject2 == null) {
            return null;
        }
        return gameObject2;
    }

    private PhysicsComponent resolveReadyHostPhysicsComponent() {
        PhysicsComponent physicsComponent;
        GameObject gameObject = this.f79250n;
        if (gameObject == null || (physicsComponent = (PhysicsComponent) gameObject.i0(PhysicsComponent.class)) == null || !physicsComponent.acceptColliders() || physicsComponent.getBulletShape() == null) {
            return null;
        }
        return physicsComponent;
    }

    private PhysicsComponent sanitizeHostPhysicsComponent(PhysicsComponent physicsComponent) {
        if (physicsComponent == null || !physicsComponent.acceptColliders()) {
            return null;
        }
        return physicsComponent;
    }

    private void saveHierarchyListenerProperties(boolean normalizeLikeColliderShape) {
        this.f73201D0 = true;
        this.f73242v0 = normalizeLikeColliderShape;
        this.f73233b1 = true;
        this.f73235i1 = 0.01f;
        this.f73237m1 = 0.25f;
        this.f73240q1 = 0.005f;
    }

    private void setNavMesh(com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.c navMesh) {
        com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.c cVar = this.navMesh;
        if (cVar == navMesh) {
            return;
        }
        this.navMesh = navMesh;
        if (cVar != null) {
            cVar.c(this.f79250n, this.f73222R);
        }
        if (this.navMesh != null) {
            requestColliderRefresh();
        }
    }

    private boolean shouldNormalizeHierarchyListenerLikeColliderShape() {
        o oVar = this.shape;
        return oVar == o.Sphere || oVar == o.Capsule;
    }

    private void syncModelFileState() {
        String str = this.modelFile;
        if (str == null || str.isEmpty()) {
            if (this.f73221Q != null) {
                this.f73221Q = null;
                applyCollisionVertex(null);
                return;
            }
            return;
        }
        if (this.modelFile.equals(this.f73221Q)) {
            return;
        }
        String str2 = this.modelFile;
        this.f73221Q = str2;
        applyCollisionVertex(loadVertexFromModelFile(str2));
    }

    private void updateAreaTriggerState(PhysicsComponent physicsComponent) {
        boolean z10 = physicsComponent instanceof AreaTrigger;
        if (z10 != this.f73211I) {
            this.f73211I = z10;
            this.f73203E = null;
        }
    }

    private void updateHierarchyListenerProperties(boolean normalizeLikeColliderShape) {
        com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform transform;
        GameObject gameObject = this.f73243v1;
        if (gameObject == null || (transform = gameObject.transform) == null || !this.f79250n.transform.w4(transform, this.f73228V1, true, normalizeLikeColliderShape, true, 0.01f, 0.25f, 0.005f)) {
            return;
        }
        saveHierarchyListenerProperties(normalizeLikeColliderShape);
    }

    @Override
    public void addCollision(C13813a collision) {
        try {
            this.f73230X.a(collision);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override
    public void beforeCollisionEvents() {
        this.f73230X.j(this.f79250n);
    }

    public void calculateNavMeshMatrix() {
        this.f79250n.transform.r0(this.f73213K);
    }

    public boolean colliderWith(String name) {
        if (this.f73227V != null) {
            return this.f73230X.b(name);
        }
        PhysicsComponent physicsComponent = (PhysicsComponent) this.f79250n.i0(PhysicsComponent.class);
        if (physicsComponent != null) {
            return physicsComponent.colliderWith(name);
        }
        return false;
    }

    public C13813a collisionAt(int i10) {
        if (this.f73227V != null) {
            return this.f73230X.c(i10);
        }
        PhysicsComponent physicsComponent = (PhysicsComponent) this.f79250n.i0(PhysicsComponent.class);
        if (physicsComponent != null) {
            return physicsComponent.collisionAt(i10);
        }
        return null;
    }

    public int collisionCount() {
        if (this.f73227V != null) {
            return this.f73230X.d();
        }
        PhysicsComponent physicsComponent = (PhysicsComponent) this.f79250n.i0(PhysicsComponent.class);
        if (physicsComponent != null) {
            return physicsComponent.collisionCount();
        }
        return 0;
    }

    @Override
    public int countAsync() {
        return this.shape == o.Model ? 1 : 0;
    }

    public void disablePathfinder() {
        if (this.navMesh != null) {
            setNavMesh(null);
        }
    }

    @Override
    public void disabledUpdatePhysics() {
        com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.b bVar = this.f73227V;
        if (bVar != null) {
            bVar.c(this.f79250n);
        }
    }

    @Override
    public boolean enableCollisionEvents() {
        return this.f73229W;
    }

    public void enablePathfinder() {
        if (this.navMesh == null) {
            setNavMesh(new com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.c());
        }
    }

    @Override
    public Collider findColliderFromHash(int hash) {
        return this;
    }

    @Override
    public C13813a findCollision(GameObject other) {
        return this.f73230X.f(other);
    }

    public List<W8.b> generateCollisionList(com.itsmagic.engine.Engines.Engine.Vector.f matrix4, boolean isDynamic) {
        Vertex collisionVertex;
        List<W8.b> list = this.f73217M1;
        if (list != null) {
            this.f73217M1 = null;
            return list;
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        if (!this.f73207G && C13317e.J(this.f79250n)) {
            o oVar = this.shape;
            if (oVar == o.Box) {
                this.f73220P = null;
                steppedArrayList.add(new W8.b(new BoxCollisionShape(new Vector3f(0.5f, 0.5f, 0.5f))));
            } else if (oVar == o.Sphere) {
                this.f73220P = null;
                steppedArrayList.add(new W8.b(new SphereCollisionShape(0.5f)));
            } else if (oVar == o.Capsule) {
                this.f73220P = null;
                if (this.capsuleLength <= 0.1f) {
                    this.capsuleLength = 0.1f;
                }
                if (this.capsuleWidth <= 0.1f) {
                    this.capsuleWidth = 0.1f;
                }
                steppedArrayList.add(new W8.b(new CapsuleCollisionShape(this.capsuleWidth / 2.0f, this.capsuleLength)));
            } else {
                int i10 = 0;
                if (oVar == o.ConvexModel) {
                    Vertex collisionVertex2 = getCollisionVertex();
                    if (collisionVertex2 != null) {
                        if (this.f73220P == null) {
                            this.f73220P = Eb.b.a(collisionVertex2);
                        }
                        if (this.f73220P != null) {
                            while (i10 < this.f73220P.b().size()) {
                                steppedArrayList.add(new W8.b(this.f73220P.b().get(i10)));
                                i10++;
                            }
                        }
                        this.f73203E = null;
                    }
                } else if (oVar == o.Model) {
                    this.f73220P = null;
                    Vertex collisionVertex3 = getCollisionVertex();
                    if (collisionVertex3 != null && collisionVertex3.j1() > 0 && collisionVertex3.W0() > 0) {
                        try {
                            steppedArrayList.addAll(buildModelShapeCandidates(collisionVertex3, matrix4, isDynamic, this.f73232Z));
                            this.f73219O = collisionVertex3.f0();
                            this.f73232Z = null;
                            this.f73203E = null;
                        } catch (Error | Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                } else if (oVar == o.Decomposition && (collisionVertex = getCollisionVertex()) != null && collisionVertex.j1() > 0 && collisionVertex.W0() > 0) {
                    if (this.f73220P == null) {
                        try {
                            NativeFloatBuffer i12 = collisionVertex.i1();
                            NativeIntBuffer V02 = collisionVertex.V0();
                            float[] array = i12.toArray();
                            int[] array2 = V02.toArray();
                            Vhacd4Parameters vhacd4Parameters = new Vhacd4Parameters();
                            vhacd4Parameters.setMaxHulls(Nc.b.F(1, this.maxHulls, 1024));
                            float f10 = this.decompositionQuality;
                            vhacd4Parameters.setMaxVerticesPerHull((int) Nc.b.E(4.0f, f10 * 2048.0f, 2048.0f));
                            vhacd4Parameters.setMaxRecursion((int) Nc.b.E(2.0f, f10 * 64.0f, 64.0f));
                            vhacd4Parameters.setVoxelResolution((int) Nc.b.E(10000.0f, f10 * 300000.0f, 300000.0f));
                            Vertex vertex = new Vertex();
                            Eb.a aVar = new Eb.a();
                            this.f73220P = aVar;
                            aVar.d(vertex);
                            this.f73220P.e(new SteppedArrayList());
                            for (Vhacd4Hull vhacd4Hull : Vhacd4.compute(array, array2, vhacd4Parameters)) {
                                float[] clonePositions = vhacd4Hull.clonePositions();
                                Vector3f[] vector3fArr = new Vector3f[clonePositions.length / 3];
                                int i11 = 0;
                                for (int i13 = 0; i13 < clonePositions.length; i13 += 3) {
                                    vector3fArr[i11] = new Vector3f(clonePositions[i13], clonePositions[i13 + 1], clonePositions[i13 + 2]);
                                    i11++;
                                }
                                HullCollisionShape hullCollisionShape = new HullCollisionShape(vector3fArr);
                                this.f73220P.b().add(hullCollisionShape);
                                steppedArrayList.add(new W8.b(hullCollisionShape));
                                vertex.w(ConvexHullModel.b(vhacd4Hull));
                                this.f73203E = null;
                            }
                        } catch (Error e11) {
                            e = e11;
                            e.printStackTrace();
                            return steppedArrayList;
                        } catch (Exception e12) {
                            e = e12;
                            e.printStackTrace();
                            return steppedArrayList;
                        }
                    } else {
                        while (i10 < this.f73220P.b().size()) {
                            steppedArrayList.add(new W8.b(this.f73220P.b().get(i10)));
                            i10++;
                        }
                        this.f73203E = null;
                    }
                }
            }
        }
        return steppedArrayList;
    }

    public GameObject getAttachedPhysicsObject() {
        com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.a aVar = this.f73226U;
        return aVar != null ? aVar.c().f79250n : this.f79250n;
    }

    public float getBounciness() {
        return this.bounciness;
    }

    @Override
    public CompoundCollisionShape getBulletShape() {
        com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.b bVar = this.f73227V;
        if (bVar != null) {
            return bVar.e();
        }
        return null;
    }

    @Override
    public ChildCollisionShape[] getBulletShapeChildren() {
        return getBulletShapeChildrenCache().b(getBulletShape());
    }

    public float getCapsuleLength() {
        return this.capsuleLength;
    }

    public float getCapsuleWidth() {
        return this.capsuleWidth;
    }

    public Vertex getCollisionVertex() {
        syncModelFileState();
        return this.f73216M;
    }

    public Vertex getConvexVertex() {
        Eb.a aVar = this.f73220P;
        if (aVar != null) {
            return aVar.a();
        }
        return null;
    }

    public float getDecompositionQuality() {
        return this.decompositionQuality;
    }

    @Override
    public C2632k getDependencyFiles(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        String str = this.modelFile;
        if (str != null && !str.isEmpty()) {
            c2632k.f9114a.add(this.modelFile);
        }
        return c2632k;
    }

    @Override
    public String getDisplayableTitle() {
        return Lang.l(Lang.T.COLLIDER);
    }

    public int getEffectiveGlobalTransformFrameID() {
        return this.f73223R1;
    }

    public float getFriction() {
        return this.friction;
    }

    @Override
    public GameObject getGameObjectForPhysics() {
        return this.f79250n;
    }

    @Override
    public int getIconResource() {
        return R.drawable.wo_collider2;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_collider;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        GameObject gameObject = this.f79250n;
        if (context == null) {
            return linkedList;
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(Lang.l(Lang.T.CUBE));
        steppedArrayList.add(Lang.l(Lang.T.SPHERE));
        steppedArrayList.add("Capsule");
        Ac.b bVar = Lang.T.MODEL;
        steppedArrayList.add(Lang.l(bVar));
        steppedArrayList.add(Lang.l(Lang.T.CONVEX_MODEL));
        steppedArrayList.add("Decomposition");
        linkedList.add(new C5.b(new l(), getTypeName(steppedArrayList), steppedArrayList, b.a.SLDropdown, Lang.l(Lang.T.SHAPE)));
        o oVar = this.shape;
        if (oVar == o.ConvexModel || oVar == o.Model || oVar == o.Decomposition) {
            linkedList.add(new C5.b(new m(), Lang.l(bVar), b.a.InputFile, ".mesh"));
        }
        if (this.shape == o.Capsule) {
            n nVar = new n();
            b.a aVar = b.a.SLFloat;
            C5.b bVar2 = new C5.b(nVar, "Length", aVar);
            com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
            linkedList.add(bVar2.d(gameObject, this, "capsuleLength", cVar));
            C5.b bVar3 = new C5.b(new b(), F2.d.f6276t1, aVar);
            bVar3.d(gameObject, this, "capsuleWidth", cVar);
            linkedList.add(bVar3);
        }
        if (this.shape == o.Decomposition) {
            C5.b bVar4 = new C5.b(new c(), "Quality", b.a.SLFloatSlider, 0.0f, 1.0f, 0.0f);
            bVar4.d(gameObject, this, "decompositionQuality", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            linkedList.add(bVar4);
            C5.b bVar5 = new C5.b(new d(), "Max hulls", b.a.SLInt);
            bVar5.d(gameObject, this, "maxHulls", com.itsmagic.engine.Engines.Engine.Animation.c.INT);
            linkedList.add(bVar5);
        }
        if (this.shape == o.Model) {
            linkedList.addAll(getPathFinderInspector(context));
        }
        if (this.f73227V != null) {
            linkedList.add(F5.c.d(getInspectorMemory(), "Staticbody physics", new e(context)));
        }
        return linkedList;
    }

    public int getMaxHulls() {
        return this.maxHulls;
    }

    public com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.c getNavMesh() {
        return this.navMesh;
    }

    public float[] getOnPhysicsMatrix() {
        return this.f73214L;
    }

    public List<C5.b> getPathFinderInspector(Context context) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(new C5.b(new f(), Lang.l(Lang.T.PATH_FINDER_COLLIDER), b.a.SLBoolean));
        com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.c cVar = this.navMesh;
        if (cVar != null) {
            linkedList.addAll(cVar.d(context));
        }
        return linkedList;
    }

    public o getShape() {
        return this.shape;
    }

    @Override
    public String getTitle() {
        return f73199i3;
    }

    @Override
    public Component.e getType() {
        return Component.e.Collider;
    }

    public String getTypeName(List<String> types) {
        String str = types.get(0);
        o oVar = this.shape;
        return oVar == o.Sphere ? types.get(1) : oVar == o.Capsule ? types.get(2) : oVar == o.Model ? types.get(3) : oVar == o.ConvexModel ? types.get(4) : oVar == o.Decomposition ? types.get(5) : str;
    }

    @Override
    public int iconPriority() {
        return 2;
    }

    @Override
    public void invalidateBulletShapeChildrenCache() {
        getBulletShapeChildrenCache().c();
    }

    @Override
    public boolean isActiveForPhysics() {
        return isHierarchyActive();
    }

    public boolean isColliding() {
        if (this.f73227V != null) {
            return this.f73230X.g();
        }
        PhysicsComponent physicsComponent = (PhysicsComponent) this.f79250n.i0(PhysicsComponent.class);
        if (physicsComponent != null) {
            return physicsComponent.isColliding();
        }
        return false;
    }

    public boolean isSuppressCollision() {
        return this.f73207G;
    }

    @Override
    public void loadAsync(Lb.a listener) {
        o oVar = this.shape;
        if (oVar == o.Model) {
            listener.b("(" + this.f79250n.getName() + "),(Collider),(Collision),(" + this.modelFile + ")");
            syncModelFileState();
            Vertex collisionVertex = getCollisionVertex();
            if (collisionVertex != null && collisionVertex.j1() > 0 && collisionVertex.W0() > 0) {
                try {
                    this.f73232Z = Db.b.a(collisionVertex).j();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            this.f73204F = false;
            listener.e();
            return;
        }
        if (oVar == o.ConvexModel) {
            listener.b("(" + this.f79250n.getName() + "),(Collider),(Collision),(" + this.modelFile + ")");
            syncModelFileState();
            Vertex collisionVertex2 = getCollisionVertex();
            if (collisionVertex2 != null && collisionVertex2.j1() > 0 && collisionVertex2.W0() > 0) {
                try {
                    this.f73220P = Eb.b.a(collisionVertex2);
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
            this.f73204F = false;
            listener.e();
        }
    }

    @Override
    public void onAttach() {
        super.onAttach();
        this.f73245y1 = resolveReadyHostPhysicsComponent();
        syncModelFileState();
        Vertex vertex = this.f73216M;
        if (vertex != null) {
            vertex.L1(this.f73236i2);
            this.f73216M.v(this.f73236i2);
        }
        refreshHierarchyMatrixListenerBinding();
        updateAreaTriggerState(this.f73245y1);
        boolean isHierarchyActive = isHierarchyActive();
        this.f73209H1 = isHierarchyActive;
        if (isHierarchyActive || this.f73204F) {
            requestColliderRefresh();
        }
        this.f73223R1 = this.f79250n.transform.k0();
    }

    @Override
    public void onDeserialized() {
        super.onDeserialized();
    }

    @Override
    public void onDetach() {
        removeHierarchyMatrixListeners();
        Vertex vertex = this.f73216M;
        if (vertex != null) {
            vertex.L1(this.f73236i2);
        }
        releasePreparedShapeCandidates();
        removeFromPhysics();
        this.f73245y1 = null;
        this.f73209H1 = false;
        this.f73215L1 = false;
        this.shape = null;
        this.f73203E = null;
        super.onDetach();
    }

    @Override
    public void onHierarchyActiveChanged(boolean enabled) {
        super.onHierarchyActiveChanged(enabled);
        if (enabled) {
            refreshHierarchyMatrixListenerBinding();
            updateAreaTriggerState(this.f73245y1);
            this.f73209H1 = true;
            requestColliderRefresh();
            return;
        }
        removeFromPhysics();
        this.f73209H1 = false;
        com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.c cVar = this.navMesh;
        if (cVar != null) {
            cVar.c(this.f79250n, this.f73222R);
        }
    }

    @Override
    public void onHostPhysicsEntityChanged(PhysicsComponent physicsComponent) {
        super.onHostPhysicsEntityChanged(physicsComponent);
        this.f73245y1 = sanitizeHostPhysicsComponent(physicsComponent);
        refreshHierarchyMatrixListenerBinding();
        updateAreaTriggerState(this.f73245y1);
        if (isHierarchyActive()) {
            this.f73209H1 = true;
            requestColliderRefresh();
            return;
        }
        removeFromPhysics();
        this.f73209H1 = false;
        com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.c cVar = this.navMesh;
        if (cVar != null) {
            cVar.c(this.f79250n, this.f73222R);
        }
    }

    @Override
    public void onParentChanged() {
        super.onParentChanged();
        this.f73245y1 = resolveReadyHostPhysicsComponent();
        refreshHierarchyMatrixListenerBinding();
        updateAreaTriggerState(this.f73245y1);
        boolean isHierarchyActive = isHierarchyActive();
        this.f73209H1 = isHierarchyActive;
        if (isHierarchyActive || this.f73204F) {
            requestColliderRefresh();
        }
    }

    @Override
    public void onPhysicsGetTransformations() {
        this.f73230X.h(this.f79250n);
    }

    @Override
    public void reloadFilesPaths(BuildDictionary dictionary) {
        BuildDicFile f10;
        String str = this.modelFile;
        if (str == null || str.isEmpty() || (f10 = dictionary.f(this.modelFile)) == null) {
            return;
        }
        dictionary.h("Collider: REPLACING " + this.modelFile + " TO " + f10.b());
        this.modelFile = f10.b();
    }

    @Override
    public void resyncOnFrame() {
        this.f73230X.i(this.f79250n);
    }

    public void setBounciness(float bounciness) {
        if (this.bounciness == bounciness) {
            return;
        }
        this.bounciness = bounciness;
        com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.b bVar = this.f73227V;
        if (bVar != null) {
            bVar.i(bounciness);
        }
    }

    public void setCapsuleLength(float capsuleLength) {
        boolean z10 = this.capsuleLength != capsuleLength;
        this.capsuleLength = capsuleLength;
        if (z10) {
            markShapeDirty();
            this.f73203E = null;
        }
    }

    public void setCapsuleWidth(float capsuleWidth) {
        boolean z10 = this.capsuleWidth != capsuleWidth;
        this.capsuleWidth = capsuleWidth;
        if (z10) {
            markShapeDirty();
            this.f73203E = null;
        }
    }

    public void setConvexVertex(Vertex vertex) {
        directVertexSet(vertex);
        this.modelFile = null;
        setShape(o.ConvexModel);
    }

    public void setDecompositionQuality(float decompositionQuality) {
        float E10 = Nc.b.E(0.01f, decompositionQuality, 1.0f);
        if (this.decompositionQuality != E10) {
            this.decompositionQuality = E10;
            markShapeDirty();
        }
    }

    public void setFriction(float friction) {
        if (this.friction == friction) {
            return;
        }
        this.friction = friction;
        com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.b bVar = this.f73227V;
        if (bVar != null) {
            bVar.j(friction);
        }
    }

    public void setMaxHulls(int maxHulls) {
        int F10 = Nc.b.F(1, maxHulls, 1024);
        if (this.maxHulls != F10) {
            this.maxHulls = F10;
            markShapeDirty();
        }
    }

    public void setModelFile(String modelFile) {
        if (modelFile != null && modelFile.isEmpty()) {
            modelFile = "";
        }
        String str = this.modelFile;
        if (str == null) {
            if (modelFile == null) {
                return;
            }
        } else if (str.equals(modelFile)) {
            return;
        }
        this.modelFile = modelFile;
        syncModelFileState();
    }

    public void setPreparedShapeCandidates(o shape, Vertex sourceVertex, List<W8.b> shapeCandidates) {
        releasePreparedShapeCandidates();
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        this.f73217M1 = steppedArrayList;
        if (shapeCandidates != null) {
            steppedArrayList.addAll(shapeCandidates);
        }
        this.f73221Q = null;
        this.modelFile = null;
        replaceCollisionVertexReference(sourceVertex);
        boolean z10 = this.shape != shape;
        this.shape = shape;
        if (z10) {
            reloadInspector();
        }
        markShapeDirty();
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f73210H2 = run;
    }

    public void setShape(o shape) {
        boolean z10 = this.shape != null;
        this.shape = shape;
        if (z10) {
            reloadInspector();
            markShapeDirty();
        }
    }

    public void setSuppressCollision(boolean suppressCollision) {
        if (this.f73207G != suppressCollision) {
            this.f73207G = suppressCollision;
            if (suppressCollision) {
                removeFromPhysics();
            } else {
                markShapeDirty();
            }
        }
    }

    public void setVertex(Vertex vertex) {
        directVertexSet(vertex);
        this.modelFile = null;
        setShape(o.Model);
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f73210H2;
        if (component != null) {
            return component;
        }
        JAVARuntime.Collider collider = new JAVARuntime.Collider(this);
        this.f73210H2 = collider;
        return collider;
    }

    @Override
    public void updateOnSelectedHierarchy() {
        super.updateOnSelectedHierarchy();
        drawGizmo();
    }

    @Override
    public void updatePhysics() {
        com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.b bVar = this.f73227V;
        if (bVar != null) {
            bVar.l(this.f79250n);
        }
    }

    private static List<W8.b> buildModelShapeCandidates(Vertex vertex, com.itsmagic.engine.Engines.Engine.Vector.f matrix4, boolean isDynamic, List<Dc.a> prebuiltMeshes) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        if (vertex != null && vertex.j1() > 0 && vertex.W0() > 0) {
            try {
                Db.a a10 = Db.b.a(vertex);
                if (prebuiltMeshes == null) {
                    prebuiltMeshes = a10.j();
                }
                if (prebuiltMeshes == null) {
                    return steppedArrayList;
                }
                float w12 = matrix4.w1();
                float y12 = matrix4.y1();
                float A12 = matrix4.A1();
                int i10 = 0;
                if (isDynamic) {
                    while (i10 < prebuiltMeshes.size()) {
                        steppedArrayList.add(new W8.b(new Dc.b(prebuiltMeshes.get(i10))));
                        i10++;
                    }
                } else {
                    a.c d10 = a10.d(w12, y12, A12);
                    if (d10 != null) {
                        int c10 = d10.c();
                        while (i10 < c10) {
                            steppedArrayList.add(d10.b(i10));
                            i10++;
                        }
                    }
                }
            } catch (Error e10) {
                e = e10;
                e.printStackTrace();
                return steppedArrayList;
            } catch (Exception e11) {
                e = e11;
                e.printStackTrace();
                return steppedArrayList;
            }
        }
        return steppedArrayList;
    }

    @Override
    public Component mo1248clone() {
        Collider collider = new Collider();
        collider.shape = this.shape;
        collider.modelFile = this.modelFile;
        collider.decompositionQuality = this.decompositionQuality;
        collider.maxHulls = this.maxHulls;
        collider.navMesh = com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.c.b(this.navMesh);
        collider.capsuleLength = this.capsuleLength;
        collider.capsuleWidth = this.capsuleWidth;
        collider.bounciness = this.bounciness;
        collider.friction = this.friction;
        collider.layerReference = ExposableLayerReference.c(this.layerReference);
        return collider;
    }

    public Collider(o shape) {
        super(f73199i3);
        this.shape = o.Box;
        this.capsuleLength = 2.0f;
        this.capsuleWidth = 0.5f;
        this.decompositionQuality = 0.2f;
        this.maxHulls = 12;
        this.layerReference = new ExposableLayerReference();
        this.bounciness = 0.0f;
        this.friction = 0.5f;
        this.f73204F = false;
        this.f73207G = false;
        this.f73208H = new com.jme3.math.Transform();
        this.f73211I = false;
        this.f73212J = new float[16];
        this.f73213K = new float[16];
        this.f73214L = new float[16];
        this.f73218N = false;
        this.f73222R = new g();
        this.f73224S = new float[16];
        this.f73225T = new float[16];
        this.f73229W = true;
        this.f73230X = new C13814b(this);
        this.f73201D0 = true;
        this.f73233b1 = true;
        this.f73235i1 = 0.01f;
        this.f73237m1 = 0.25f;
        this.f73240q1 = 0.005f;
        this.f73228V1 = new h();
        this.f73234b2 = new i();
        this.f73236i2 = new j();
        this.f73238m2 = new k();
        this.f73241q2 = new com.itsmagic.engine.Engines.Engine.Vector.f();
        this.f73244v2 = new com.itsmagic.engine.Engines.Engine.Vector.f();
        this.f73202D2 = new com.itsmagic.engine.Engines.Engine.Vector.f();
        this.f73206F2 = new float[16];
        this.shape = shape;
    }

    public Collider(o shape, String modelFile, boolean showGizmo) {
        super(f73199i3);
        this.shape = o.Box;
        this.capsuleLength = 2.0f;
        this.capsuleWidth = 0.5f;
        this.decompositionQuality = 0.2f;
        this.maxHulls = 12;
        this.layerReference = new ExposableLayerReference();
        this.bounciness = 0.0f;
        this.friction = 0.5f;
        this.f73204F = false;
        this.f73207G = false;
        this.f73208H = new com.jme3.math.Transform();
        this.f73211I = false;
        this.f73212J = new float[16];
        this.f73213K = new float[16];
        this.f73214L = new float[16];
        this.f73218N = false;
        this.f73222R = new g();
        this.f73224S = new float[16];
        this.f73225T = new float[16];
        this.f73229W = true;
        this.f73230X = new C13814b(this);
        this.f73201D0 = true;
        this.f73233b1 = true;
        this.f73235i1 = 0.01f;
        this.f73237m1 = 0.25f;
        this.f73240q1 = 0.005f;
        this.f73228V1 = new h();
        this.f73234b2 = new i();
        this.f73236i2 = new j();
        this.f73238m2 = new k();
        this.f73241q2 = new com.itsmagic.engine.Engines.Engine.Vector.f();
        this.f73244v2 = new com.itsmagic.engine.Engines.Engine.Vector.f();
        this.f73202D2 = new com.itsmagic.engine.Engines.Engine.Vector.f();
        this.f73206F2 = new float[16];
        this.shape = shape;
        this.modelFile = modelFile;
    }
}
