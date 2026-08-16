package aa;

import JAVARuntime.Gizmo;
import JAVARuntime.GizmoPath;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.Collider;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Pool.BasePool;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Settings.Physics.Layer;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Physics.DTOs.NativeHeightfieldCollisionShape;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.jme3.bullet.collision.PhysicsRayTestResult;
import com.jme3.bullet.collision.PhysicsSweepTestResult;
import com.jme3.bullet.collision.shapes.GImpactCollisionShape;
import com.jme3.bullet.collision.shapes.MeshCollisionShape;
import com.jme3.bullet.collision.shapes.SphereCollisionShape;
import com.jme3.bullet.collision.shapes.infos.ChildCollisionShape;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import h9.InterfaceC13435a;
import java.util.List;
import t3.C15377a;
import vc.q;

public class e extends K8.f {

    public static final ThreadLocal<Vector3> f31960g = new a();

    public static final ThreadLocal<Vector3f> f31961i = new b();

    public static final ThreadLocal<Vector3f> f31962j = new c();

    public static final ThreadLocal<com.itsmagic.engine.Engines.Engine.Vector.f> f31963k = new d();

    public static final ThreadLocal<com.itsmagic.engine.Engines.Engine.Vector.f> f31964l = new C0854e();

    public static final ThreadLocal<Vector2> f31965m = new f();

    public static final ThreadLocal<Vector2> f31966n = new g();

    public static final ThreadLocal<Vector2> f31967o = new h();

    public ColorINT f31968b = new ColorINT(255, 0, 0);

    public ColorINT f31969c = new ColorINT(0, 255, 0);

    public boolean f31970d = true;

    public boolean f31971e = true;

    public class a extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public class b extends ThreadLocal<Vector3f> {
        @Override
        public Vector3f initialValue() {
            return new Vector3f();
        }
    }

    public class c extends ThreadLocal<Vector3f> {
        @Override
        public Vector3f initialValue() {
            return new Vector3f();
        }
    }

    public class d extends ThreadLocal<com.itsmagic.engine.Engines.Engine.Vector.f> {
        @Override
        public com.itsmagic.engine.Engines.Engine.Vector.f initialValue() {
            return new com.itsmagic.engine.Engines.Engine.Vector.f();
        }
    }

    public class C0854e extends ThreadLocal<com.itsmagic.engine.Engines.Engine.Vector.f> {
        @Override
        public com.itsmagic.engine.Engines.Engine.Vector.f initialValue() {
            return new com.itsmagic.engine.Engines.Engine.Vector.f();
        }
    }

    public class f extends ThreadLocal<Vector2> {
        @Override
        public Vector2 initialValue() {
            return new Vector2();
        }
    }

    public class g extends ThreadLocal<Vector2> {
        @Override
        public Vector2 initialValue() {
            return new Vector2();
        }
    }

    public class h extends ThreadLocal<Vector2> {
        @Override
        public Vector2 initialValue() {
            return new Vector2();
        }
    }

    public class i implements Runnable {

        public final C3593a f31972b;

        public final C3595c f31973c;

        public i(final C3593a val$hit, final C3595c val$ray) {
            this.f31972b = val$hit;
            this.f31973c = val$ray;
        }

        @Override
        public void run() {
            GizmoPath gizmoPath = new GizmoPath();
            if (this.f31972b != null) {
                gizmoPath.setColor(e.this.f31968b.e0());
            } else {
                gizmoPath.setColor(e.this.f31969c.e0());
            }
            C3593a c3593a = this.f31972b;
            if (c3593a == null || c3593a.i() == null) {
                Vector3 vector3 = (Vector3) e.f31960g.get();
                vector3.set(this.f31973c.f31953b.f31958c);
                vector3.normalizeLocal();
                if (this.f31973c.f31954c > 0.0f) {
                    Vector3 vector32 = new Vector3();
                    vector32.set(this.f31973c.f31953b.f31957b);
                    vector32.addLocal(vector3, this.f31973c.f31954c);
                    gizmoPath.addLine(this.f31973c.f31953b.f31957b.toJAVARuntime(), vector32.toJAVARuntime());
                } else {
                    Vector3 vector33 = new Vector3();
                    vector33.set(this.f31973c.f31953b.f31957b);
                    vector33.addLocal(vector3, 999999.0f);
                    gizmoPath.addLine(this.f31973c.f31953b.f31957b.toJAVARuntime(), vector33.toJAVARuntime());
                }
            } else {
                gizmoPath.addLine(this.f31973c.f31953b.f31957b.toJAVARuntime(), this.f31972b.i().toJAVARuntime());
            }
            gizmoPath.apply();
            Ub.a.a(gizmoPath);
        }
    }

    public static C3593a G(GameObject parent, C3595c ray, boolean ignoreGizmo) {
        C3593a traceRay;
        if (!parent.isEnabled()) {
            return null;
        }
        for (int i10 = 0; i10 < parent.N(); i10++) {
            Component L10 = parent.L(i10);
            if ((L10 instanceof Terrain) && L10.isEnabled() && (traceRay = ((Terrain) L10).traceRay(ray.h(), ray.e(), ray.f31954c, ignoreGizmo)) != null) {
                return traceRay;
            }
        }
        for (int i11 = 0; i11 < parent.D(); i11++) {
            C3593a G10 = G(parent.C(i11), ray, ignoreGizmo);
            if (G10 != null) {
                return G10;
            }
        }
        return null;
    }

    public C3593a A(C3595c ray) {
        return B(ray, true);
    }

    public C3593a B(C3595c ray, boolean ignoreGizmo) {
        C3593a z10 = z(ray, ignoreGizmo);
        C3593a I10 = I(ray, ignoreGizmo);
        if (z10 != null && I10 != null) {
            return z10.getDistance() <= I10.getDistance() ? z10 : I10;
        }
        if (z10 != null) {
            return z10;
        }
        if (I10 != null) {
            return I10;
        }
        return null;
    }

    public final C3593a C(C3595c ray) {
        int i10;
        int i11;
        InterfaceC13435a interfaceC13435a;
        if (ray == null) {
            J4.d.b2("Trying to ray a null ray");
            return null;
        }
        Cc.c cVar = K8.a.f10984o;
        if (cVar.f2506c == null) {
            J4.d.b2("Trying to ray a null world");
            return null;
        }
        Vector3 vector3 = f31960g.get();
        vector3.set(ray.f31953b.f31958c);
        vector3.normalizeLocal();
        float f10 = ray.f31954c;
        if (f10 > 0.0f) {
            vector3.mulLocal(f10);
        } else {
            vector3.mulLocal(100000.0f);
        }
        Vector3f vector3f = f31961i.get();
        vector3f.set(ray.f31953b.f31957b.getX(), ray.f31953b.f31957b.getY(), ray.f31953b.f31957b.getZ());
        Vector3f vector3f2 = f31962j.get();
        vector3f2.set(vector3f.f81611x + vector3.getX(), vector3f.f81612y + vector3.getY(), vector3f.f81613z + vector3.getZ());
        Layer f11 = ray.f31955d != null ? ray.f() : K8.a.m(N7.c.t()).g().i(0);
        if (f11 != null) {
            int i12 = f11.f79542b;
            i11 = 1 << i12;
            i10 = Cc.d.a(i12);
        } else {
            i10 = 0;
            i11 = 0;
        }
        synchronized (Cc.c.f2503k) {
            List<PhysicsRayTestResult> rayTest = cVar.f2506c.rayTest(vector3f, vector3f2);
            if (rayTest.isEmpty()) {
                return null;
            }
            try {
                int size = rayTest.size();
                for (int i13 = 0; i13 < size; i13++) {
                    PhysicsRayTestResult physicsRayTestResult = rayTest.get(i13);
                    if (physicsRayTestResult != null) {
                        int collisionGroup = physicsRayTestResult.getCollisionObject().getCollisionGroup();
                        if ((physicsRayTestResult.getCollisionObject().getCollideWithGroups() & i11) != 0 && (collisionGroup & i10) != 0 && (interfaceC13435a = (InterfaceC13435a) physicsRayTestResult.getCollisionObject().getUserObject()) != null) {
                            return h(ray, interfaceC13435a, physicsRayTestResult, vector3f, vector3f2, vector3);
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            return null;
        }
    }

    public C3593a D(C3595c ray, float radius) {
        return E(ray, radius, true);
    }

    public C3593a E(C3595c ray, float radius, boolean ignoreGizmo) {
        if (ray == null || ray.f31953b == null) {
            return null;
        }
        C3593a F10 = F(ray, radius);
        if (!ignoreGizmo && Camera.isAnyEditorCameraRendering()) {
            GizmoPath gizmoPath = new GizmoPath();
            if (F10 != null) {
                gizmoPath.setColor(this.f31968b.e0());
            } else {
                gizmoPath.setColor(this.f31969c.e0());
            }
            if (F10 == null || F10.i() == null) {
                Vector3 vector3 = f31960g.get();
                vector3.set(ray.f31953b.f31958c);
                vector3.normalizeLocal();
                if (ray.f31954c > 0.0f) {
                    Vector3 vector32 = new Vector3();
                    vector32.set(ray.f31953b.f31957b);
                    vector32.addLocal(vector3, ray.f31954c);
                    gizmoPath.addLine(ray.f31953b.f31957b.toJAVARuntime(), vector32.toJAVARuntime());
                } else {
                    Vector3 vector33 = new Vector3();
                    vector33.set(ray.f31953b.f31957b);
                    vector33.addLocal(vector3, 999999.0f);
                    gizmoPath.addLine(ray.f31953b.f31957b.toJAVARuntime(), vector33.toJAVARuntime());
                }
            } else {
                gizmoPath.addLine(ray.f31953b.f31957b.toJAVARuntime(), F10.i().toJAVARuntime());
            }
            gizmoPath.apply();
            Gizmo.drawEngine(gizmoPath);
        }
        return F10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C3593a F(C3595c ray, float radius) {
        int i10;
        int i11;
        InterfaceC13435a interfaceC13435a;
        if (ray == null) {
            J4.d.b2("Trying to ray a null ray");
            return null;
        }
        Cc.c cVar = K8.a.f10984o;
        if (cVar.f2506c == null) {
            J4.d.b2("Trying to ray a null world");
            return null;
        }
        Vector3 vector3 = f31960g.get();
        vector3.set(ray.f31953b.f31958c);
        vector3.normalizeLocal();
        float f10 = ray.f31954c;
        if (f10 > 0.0f) {
            vector3.mulLocal(f10);
        } else {
            vector3.mulLocal(100000.0f);
        }
        Vector3f vector3f = f31961i.get();
        vector3f.set(ray.f31953b.f31957b.getX(), ray.f31953b.f31957b.getY(), ray.f31953b.f31957b.getZ());
        Vector3f vector3f2 = f31962j.get();
        vector3f2.set(vector3f.f81611x + vector3.getX(), vector3f.f81612y + vector3.getY(), vector3f.f81613z + vector3.getZ());
        Layer f11 = ray.f31955d != null ? ray.f() : K8.a.m(N7.c.t()).g().i(0);
        if (f11 != null) {
            int i12 = f11.f79542b;
            i11 = 1 << i12;
            i10 = Cc.d.a(i12);
        } else {
            i10 = 0;
            i11 = 0;
        }
        if (radius <= 0.0f) {
            radius = 0.05f;
        }
        SphereCollisionShape sphereCollisionShape = new SphereCollisionShape(radius);
        Transform transform = new Transform();
        Transform transform2 = new Transform();
        transform.loadIdentity();
        transform2.loadIdentity();
        transform.setTranslation(vector3f);
        transform2.setTranslation(vector3f2);
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        synchronized (Cc.c.f2503k) {
            cVar.f2506c.sweepTest(sphereCollisionShape, transform, transform2, steppedArrayList);
            if (steppedArrayList.isEmpty()) {
                return null;
            }
            try {
                int size = steppedArrayList.size();
                for (int i13 = 0; i13 < size; i13++) {
                    PhysicsSweepTestResult physicsSweepTestResult = (PhysicsSweepTestResult) steppedArrayList.get(i13);
                    if (physicsSweepTestResult != null) {
                        int collisionGroup = physicsSweepTestResult.getCollisionObject().getCollisionGroup();
                        if ((physicsSweepTestResult.getCollisionObject().getCollideWithGroups() & i11) != 0 && (collisionGroup & i10) != 0 && (interfaceC13435a = (InterfaceC13435a) physicsSweepTestResult.getCollisionObject().getUserObject()) != null) {
                            return i(ray, interfaceC13435a, physicsSweepTestResult, vector3f, vector3f2, vector3);
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            return null;
        }
    }

    public C3593a H(C3595c ray) {
        return I(ray, true);
    }

    public C3593a I(C3595c ray, boolean ignoreGizmo) {
        C3593a c3593a = null;
        if (ray != null && ray.f31953b != null) {
            if (com.itsmagic.engine.Engines.Engine.World.a.f80030c != null) {
                int i10 = 0;
                while (true) {
                    if (i10 >= com.itsmagic.engine.Engines.Engine.World.a.f80030c.f80011b.size()) {
                        break;
                    }
                    C3593a G10 = G(com.itsmagic.engine.Engines.Engine.World.a.f80030c.f80011b.get(i10), ray, ignoreGizmo);
                    if (G10 != null) {
                        c3593a = G10;
                        break;
                    }
                    i10++;
                }
            }
            if (!ignoreGizmo && Camera.isAnyEditorCameraRendering()) {
                GizmoPath gizmoPath = new GizmoPath();
                if (c3593a != null) {
                    gizmoPath.setColor(this.f31968b.e0());
                } else {
                    gizmoPath.setColor(this.f31969c.e0());
                }
                if (c3593a == null || c3593a.i() == null) {
                    Vector3 vector3 = f31960g.get();
                    vector3.set(ray.f31953b.f31958c);
                    vector3.normalizeLocal();
                    if (ray.f31954c > 0.0f) {
                        Vector3 vector32 = new Vector3();
                        vector32.set(ray.f31953b.f31957b);
                        vector32.addLocal(vector3, ray.f31954c);
                        gizmoPath.addLine(ray.f31953b.f31957b.toJAVARuntime(), vector32.toJAVARuntime());
                    } else {
                        Vector3 vector33 = new Vector3();
                        vector33.set(ray.f31953b.f31957b);
                        vector33.addLocal(vector3, 999999.0f);
                        gizmoPath.addLine(ray.f31953b.f31957b.toJAVARuntime(), vector33.toJAVARuntime());
                    }
                } else {
                    gizmoPath.addLine(ray.f31953b.f31957b.toJAVARuntime(), c3593a.i().toJAVARuntime());
                }
                gizmoPath.apply();
                Gizmo.drawEngine(gizmoPath);
            }
        }
        return c3593a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x03cc  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x03e2  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x03cf  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0306  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x032f A[Catch: Exception -> 0x03c3, TRY_LEAVE, TryCatch #14 {Exception -> 0x03c3, blocks: (B:74:0x030e, B:76:0x0316, B:78:0x031c, B:80:0x0320, B:82:0x032f, B:95:0x03bf, B:84:0x0371, B:86:0x0377, B:88:0x0383, B:90:0x0387, B:92:0x038b), top: B:73:0x030e, inners: #6 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C3593a h(C3595c c3595c, InterfaceC13435a interfaceC13435a, PhysicsRayTestResult physicsRayTestResult, Vector3f vector3f, Vector3f vector3f2, Vector3 vector3) {
        GameObject gameObject;
        Vector3f vector3f3;
        boolean z10;
        int i10;
        Vector2 vector2;
        Collider collider;
        Collider collider2;
        boolean z11;
        boolean z12;
        Vertex collisionVertex;
        int capacity;
        int i11;
        int i12;
        boolean z13;
        Collider collider3;
        int i13;
        int i14;
        ChildCollisionShape[] childCollisionShapeArr;
        Vertex collisionVertex2;
        Vector3 h10;
        q qVar;
        com.itsmagic.engine.Engines.Engine.Vector.f fVar;
        com.itsmagic.engine.Engines.Engine.Vector.f fVar2;
        Vector2 vector22;
        int capacity2;
        int i15;
        ChildCollisionShape childCollisionShape;
        C3593a c3593a = new C3593a();
        c3593a.f31932r = this.f31971e;
        GameObject gameObjectForPhysics = interfaceC13435a.getGameObjectForPhysics();
        GameObject gameObject2 = gameObjectForPhysics.f79295l;
        if (gameObject2 == null) {
            gameObject2 = gameObjectForPhysics;
        }
        float hitFraction = physicsRayTestResult.getHitFraction();
        Vector3f vector3f4 = new Vector3f();
        vector3f4.interpolateLocal(vector3f, vector3f2, hitFraction);
        Vector3 vector32 = new Vector3(vector3f4);
        if (interfaceC13435a.getBulletShape() != null) {
            Vector2 vector23 = new Vector2();
            if (this.f31970d || this.f31971e) {
                ChildCollisionShape[] bulletShapeChildren = interfaceC13435a.getBulletShapeChildren();
                int i16 = 0;
                boolean z14 = true;
                int i17 = -1;
                try {
                    if (bulletShapeChildren.length != 1 || (childCollisionShape = bulletShapeChildren[0]) == null || childCollisionShape.getShape() == null) {
                        i12 = -1;
                        z13 = false;
                        collider3 = null;
                    } else {
                        collider = interfaceC13435a.findColliderFromHash(childCollisionShape.getShape().userIndex());
                        try {
                            i12 = physicsRayTestResult.triangleIndex();
                            collider3 = collider;
                            z13 = true;
                        } catch (IndexOutOfBoundsException e10) {
                            e = e10;
                            gameObject = gameObject2;
                            vector3f3 = vector3f4;
                            z10 = true;
                            i10 = 0;
                            vector2 = vector23;
                            e.printStackTrace();
                            z11 = i10 == true ? 1 : 0;
                            collider2 = collider;
                            z12 = i10;
                            if (!z11) {
                            }
                            c3593a.q(collider2);
                            c3593a.r(collider2 != null ? collider2.f79250n : null);
                            c3593a.D(vector2);
                            if (interfaceC13435a instanceof BasePool.K) {
                            }
                            c3593a.v(new Vector3(vector3f3));
                            c3593a.u(new Vector3(vector3).normalizeLocal());
                            c3593a.s(new Vector3(physicsRayTestResult.getHitNormalLocal()).normalizeLocal());
                            c3593a.setGameObject(gameObject);
                            c3593a.setDistance(c3593a.i().distance(c3595c.f31953b.f31957b));
                            c3593a.z(0.0f);
                            return c3593a;
                        }
                    }
                    if (!z13) {
                        boolean z15 = true;
                        int i18 = 0;
                        while (i18 < bulletShapeChildren.length) {
                            try {
                                ChildCollisionShape childCollisionShape2 = bulletShapeChildren[i18];
                                if (!(childCollisionShape2.getShape() instanceof GImpactCollisionShape) && !(childCollisionShape2.getShape() instanceof MeshCollisionShape) && !(childCollisionShape2.getShape() instanceof Dc.b) && !(childCollisionShape2.getShape() instanceof NativeHeightfieldCollisionShape) && !(childCollisionShape2.getShape() instanceof Dc.c)) {
                                    i18++;
                                    z15 = z15;
                                }
                                z15 = false;
                                i18++;
                                z15 = z15;
                            } catch (IndexOutOfBoundsException e11) {
                                e = e11;
                                gameObject = gameObject2;
                                vector3f3 = vector3f4;
                                z10 = true;
                                i13 = 0;
                                vector2 = vector23;
                            }
                        }
                        if (z15) {
                            ChildCollisionShape childCollisionShape3 = bulletShapeChildren[physicsRayTestResult.triangleIndex()];
                            if (childCollisionShape3 != null && childCollisionShape3.getShape() != null) {
                                collider = interfaceC13435a.findColliderFromHash(childCollisionShape3.getShape().userIndex());
                                try {
                                    i12 = physicsRayTestResult.triangleIndex();
                                    collider3 = collider;
                                } catch (IndexOutOfBoundsException e12) {
                                    e = e12;
                                    gameObject = gameObject2;
                                    vector3f3 = vector3f4;
                                    z10 = true;
                                    i10 = 0;
                                    vector2 = vector23;
                                    i17 = i12;
                                    e.printStackTrace();
                                    z11 = i10 == true ? 1 : 0;
                                    collider2 = collider;
                                    z12 = i10;
                                    if (!z11) {
                                        try {
                                            if (collider2.getShape() == Collider.o.Model) {
                                                q qVar2 = new q(collisionVertex.i1());
                                                if (collisionVertex.W0() > i17) {
                                                }
                                            }
                                        } catch (Exception e13) {
                                            e13.printStackTrace();
                                        }
                                    }
                                    c3593a.q(collider2);
                                    c3593a.r(collider2 != null ? collider2.f79250n : null);
                                    c3593a.D(vector2);
                                    if (interfaceC13435a instanceof BasePool.K) {
                                    }
                                    c3593a.v(new Vector3(vector3f3));
                                    c3593a.u(new Vector3(vector3).normalizeLocal());
                                    c3593a.s(new Vector3(physicsRayTestResult.getHitNormalLocal()).normalizeLocal());
                                    c3593a.setGameObject(gameObject);
                                    c3593a.setDistance(c3593a.i().distance(c3595c.f31953b.f31957b));
                                    c3593a.z(0.0f);
                                    return c3593a;
                                }
                            }
                        } else {
                            int i19 = 0;
                            while (i19 < bulletShapeChildren.length) {
                                ChildCollisionShape childCollisionShape4 = bulletShapeChildren[i19];
                                if (!(childCollisionShape4.getShape() instanceof GImpactCollisionShape)) {
                                    if (!(childCollisionShape4.getShape() instanceof MeshCollisionShape)) {
                                        if (!(childCollisionShape4.getShape() instanceof Dc.b)) {
                                            if (!(childCollisionShape4.getShape() instanceof NativeHeightfieldCollisionShape)) {
                                                if (childCollisionShape4.getShape() instanceof Dc.c) {
                                                }
                                                gameObject = gameObject2;
                                                vector3f3 = vector3f4;
                                                i14 = i19;
                                                z10 = z14;
                                                i13 = i16;
                                                childCollisionShapeArr = bulletShapeChildren;
                                                vector2 = vector23;
                                                i19 = i14 + 1;
                                                vector23 = vector2;
                                                i16 = i13;
                                                z14 = z10;
                                                vector3f4 = vector3f3;
                                                bulletShapeChildren = childCollisionShapeArr;
                                                gameObject2 = gameObject;
                                            }
                                        }
                                    }
                                }
                                Collider findColliderFromHash = interfaceC13435a.findColliderFromHash(childCollisionShape4.getShape().userIndex());
                                if (findColliderFromHash != null) {
                                    try {
                                        if (findColliderFromHash.getShape() == Collider.o.Model && (collisionVertex2 = findColliderFromHash.getCollisionVertex()) != null && findColliderFromHash.f79250n != null) {
                                            q qVar3 = new q(collisionVertex2.i1());
                                            int i20 = i16;
                                            while (i20 < collisionVertex2.W0()) {
                                                com.itsmagic.engine.Engines.Engine.Vector.h I02 = collisionVertex2.I0(i20);
                                                try {
                                                    Vector3 h11 = qVar3.h(I02.f79903b);
                                                    try {
                                                        Vector3 h12 = qVar3.h(I02.f79904c);
                                                        i14 = i19;
                                                        try {
                                                            h10 = qVar3.h(I02.f79905d);
                                                            qVar = qVar3;
                                                            fVar = f31964l.get();
                                                            childCollisionShapeArr = bulletShapeChildren;
                                                            try {
                                                                fVar.y0(findColliderFromHash.getOnPhysicsMatrix());
                                                                fVar2 = f31963k.get();
                                                                vector22 = vector23;
                                                            } catch (Exception e14) {
                                                                e = e14;
                                                                gameObject = gameObject2;
                                                                vector3f3 = vector3f4;
                                                                vector2 = vector23;
                                                                i13 = 0;
                                                                z10 = true;
                                                                try {
                                                                    e.printStackTrace();
                                                                    i19 = i14 + 1;
                                                                    vector23 = vector2;
                                                                    i16 = i13;
                                                                    z14 = z10;
                                                                    vector3f4 = vector3f3;
                                                                    bulletShapeChildren = childCollisionShapeArr;
                                                                    gameObject2 = gameObject;
                                                                } catch (IndexOutOfBoundsException e15) {
                                                                    e = e15;
                                                                    i17 = i12;
                                                                    collider = collider3;
                                                                    i10 = i13;
                                                                    e.printStackTrace();
                                                                    z11 = i10 == true ? 1 : 0;
                                                                    collider2 = collider;
                                                                    z12 = i10;
                                                                    if (!z11) {
                                                                    }
                                                                    c3593a.q(collider2);
                                                                    c3593a.r(collider2 != null ? collider2.f79250n : null);
                                                                    c3593a.D(vector2);
                                                                    if (interfaceC13435a instanceof BasePool.K) {
                                                                    }
                                                                    c3593a.v(new Vector3(vector3f3));
                                                                    c3593a.u(new Vector3(vector3).normalizeLocal());
                                                                    c3593a.s(new Vector3(physicsRayTestResult.getHitNormalLocal()).normalizeLocal());
                                                                    c3593a.setGameObject(gameObject);
                                                                    c3593a.setDistance(c3593a.i().distance(c3595c.f31953b.f31957b));
                                                                    c3593a.z(0.0f);
                                                                    return c3593a;
                                                                }
                                                            }
                                                        } catch (Exception e16) {
                                                            e = e16;
                                                            gameObject = gameObject2;
                                                            vector3f3 = vector3f4;
                                                            childCollisionShapeArr = bulletShapeChildren;
                                                            vector2 = vector23;
                                                            i13 = 0;
                                                            z10 = true;
                                                            e.printStackTrace();
                                                            i19 = i14 + 1;
                                                            vector23 = vector2;
                                                            i16 = i13;
                                                            z14 = z10;
                                                            vector3f4 = vector3f3;
                                                            bulletShapeChildren = childCollisionShapeArr;
                                                            gameObject2 = gameObject;
                                                        }
                                                        try {
                                                            gameObject = gameObject2;
                                                            vector3f3 = vector3f4;
                                                            i13 = 0;
                                                            i13 = 0;
                                                            z12 = 0;
                                                            z10 = true;
                                                            try {
                                                                fVar2.Q0(findColliderFromHash.getAttachedPhysicsObject().transform, true, true, false);
                                                                fVar2.d0(fVar);
                                                                fVar2.p0(h11, h11);
                                                                fVar2.p0(h12, h12);
                                                                fVar2.p0(h10, h10);
                                                                Vector3 sub = h12.sub(h11);
                                                                Vector3 sub2 = h10.sub(h11);
                                                                Vector3 sub3 = vector32.sub(h11);
                                                                float dot = sub2.dot(sub2);
                                                                float dot2 = sub2.dot(sub);
                                                                float dot3 = sub2.dot(sub3);
                                                                float dot4 = sub.dot(sub);
                                                                float dot5 = sub.dot(sub3);
                                                                float f10 = (dot * dot4) - (dot2 * dot2);
                                                                if (f10 != 0.0f) {
                                                                    float f11 = 1.0f / f10;
                                                                    float f12 = ((dot4 * dot3) - (dot2 * dot5)) * f11;
                                                                    float f13 = ((dot * dot5) - (dot2 * dot3)) * f11;
                                                                    if (f12 >= 0.0f && f13 >= 0.0f && f12 + f13 <= 1.0f) {
                                                                        if (this.f31971e) {
                                                                            try {
                                                                            } catch (Exception e17) {
                                                                                e = e17;
                                                                                collider2 = findColliderFromHash;
                                                                                vector2 = vector22;
                                                                            }
                                                                            if (collisionVertex2.a1() != null && (capacity2 = collisionVertex2.a1().getCapacity()) > (i15 = I02.f79903b) && capacity2 > I02.f79904c && capacity2 > I02.f79905d) {
                                                                                Vector2 Z02 = collisionVertex2.Z0(i15, f31965m.get());
                                                                                Vector2 Z03 = collisionVertex2.Z0(I02.f79904c, f31966n.get());
                                                                                Vector2 Z04 = collisionVertex2.Z0(I02.f79905d, f31967o.get());
                                                                                collider2 = findColliderFromHash;
                                                                                vector2 = vector22;
                                                                                try {
                                                                                    C3594b.b(h11, h12, h10, vector32, Z02, Z03, Z04, vector2);
                                                                                } catch (Exception e18) {
                                                                                    e = e18;
                                                                                    try {
                                                                                        e.printStackTrace();
                                                                                        z11 = true;
                                                                                        i17 = i12;
                                                                                        if (!z11) {
                                                                                        }
                                                                                        c3593a.q(collider2);
                                                                                        c3593a.r(collider2 != null ? collider2.f79250n : null);
                                                                                        c3593a.D(vector2);
                                                                                        if (interfaceC13435a instanceof BasePool.K) {
                                                                                        }
                                                                                        c3593a.v(new Vector3(vector3f3));
                                                                                        c3593a.u(new Vector3(vector3).normalizeLocal());
                                                                                        c3593a.s(new Vector3(physicsRayTestResult.getHitNormalLocal()).normalizeLocal());
                                                                                        c3593a.setGameObject(gameObject);
                                                                                        c3593a.setDistance(c3593a.i().distance(c3595c.f31953b.f31957b));
                                                                                        c3593a.z(0.0f);
                                                                                        return c3593a;
                                                                                    } catch (Exception e19) {
                                                                                        e = e19;
                                                                                        e.printStackTrace();
                                                                                        i19 = i14 + 1;
                                                                                        vector23 = vector2;
                                                                                        i16 = i13;
                                                                                        z14 = z10;
                                                                                        vector3f4 = vector3f3;
                                                                                        bulletShapeChildren = childCollisionShapeArr;
                                                                                        gameObject2 = gameObject;
                                                                                    }
                                                                                }
                                                                                z11 = true;
                                                                                i17 = i12;
                                                                                break;
                                                                            }
                                                                        }
                                                                        collider2 = findColliderFromHash;
                                                                        vector2 = vector22;
                                                                        z11 = true;
                                                                        i17 = i12;
                                                                        break;
                                                                    }
                                                                }
                                                                i20++;
                                                                vector23 = vector22;
                                                                i16 = 0;
                                                                z14 = true;
                                                                findColliderFromHash = findColliderFromHash;
                                                                vector3f4 = vector3f3;
                                                                i19 = i14;
                                                                bulletShapeChildren = childCollisionShapeArr;
                                                                qVar3 = qVar;
                                                                gameObject2 = gameObject;
                                                            } catch (Exception e20) {
                                                                e = e20;
                                                                vector2 = vector22;
                                                            }
                                                        } catch (Exception e21) {
                                                            e = e21;
                                                            gameObject = gameObject2;
                                                            vector3f3 = vector3f4;
                                                            vector2 = vector22;
                                                            i13 = 0;
                                                            z10 = true;
                                                            e.printStackTrace();
                                                            i19 = i14 + 1;
                                                            vector23 = vector2;
                                                            i16 = i13;
                                                            z14 = z10;
                                                            vector3f4 = vector3f3;
                                                            bulletShapeChildren = childCollisionShapeArr;
                                                            gameObject2 = gameObject;
                                                        }
                                                    } catch (Exception e22) {
                                                        e = e22;
                                                        gameObject = gameObject2;
                                                        vector3f3 = vector3f4;
                                                        i14 = i19;
                                                    }
                                                } catch (Exception e23) {
                                                    e = e23;
                                                    gameObject = gameObject2;
                                                    vector3f3 = vector3f4;
                                                    i14 = i19;
                                                    i13 = i16;
                                                    childCollisionShapeArr = bulletShapeChildren;
                                                    vector2 = vector23;
                                                }
                                            }
                                        }
                                    } catch (Exception e24) {
                                        e = e24;
                                        gameObject = gameObject2;
                                        vector3f3 = vector3f4;
                                        i14 = i19;
                                        z10 = z14;
                                        i13 = i16;
                                        childCollisionShapeArr = bulletShapeChildren;
                                        vector2 = vector23;
                                    }
                                }
                                gameObject = gameObject2;
                                vector3f3 = vector3f4;
                                i14 = i19;
                                z10 = z14;
                                i13 = i16;
                                childCollisionShapeArr = bulletShapeChildren;
                                vector2 = vector23;
                                i19 = i14 + 1;
                                vector23 = vector2;
                                i16 = i13;
                                z14 = z10;
                                vector3f4 = vector3f3;
                                bulletShapeChildren = childCollisionShapeArr;
                                gameObject2 = gameObject;
                            }
                        }
                    }
                    gameObject = gameObject2;
                    vector3f3 = vector3f4;
                    z10 = z14;
                    int i21 = i16;
                    vector2 = vector23;
                    z11 = i21 == true ? 1 : 0;
                    i17 = i12;
                    collider2 = collider3;
                    z12 = i21;
                } catch (IndexOutOfBoundsException e25) {
                    e = e25;
                    gameObject = gameObject2;
                    vector3f3 = vector3f4;
                    z10 = true;
                    i10 = 0;
                    vector2 = vector23;
                    collider = null;
                }
                if (!z11 && this.f31971e && i17 >= 0 && collider2 != null) {
                    if (collider2.getShape() == Collider.o.Model && (collisionVertex = collider2.getCollisionVertex()) != null && collider2.f79250n != null) {
                        q qVar22 = new q(collisionVertex.i1());
                        if (collisionVertex.W0() > i17) {
                            com.itsmagic.engine.Engines.Engine.Vector.h I03 = collisionVertex.I0(i17);
                            Vector3 h13 = qVar22.h(I03.f79903b);
                            Vector3 h14 = qVar22.h(I03.f79904c);
                            Vector3 h15 = qVar22.h(I03.f79905d);
                            com.itsmagic.engine.Engines.Engine.Vector.f fVar3 = f31964l.get();
                            fVar3.y0(collider2.getOnPhysicsMatrix());
                            com.itsmagic.engine.Engines.Engine.Vector.f fVar4 = f31963k.get();
                            fVar4.Q0(collider2.getAttachedPhysicsObject().transform, z10, z10, z12);
                            fVar4.d0(fVar3);
                            fVar4.p0(h13, h13);
                            fVar4.p0(h14, h14);
                            fVar4.p0(h15, h15);
                            try {
                                if (collisionVertex.a1() != null && (capacity = collisionVertex.a1().getCapacity()) > (i11 = I03.f79903b) && capacity > I03.f79904c && capacity > I03.f79905d) {
                                    C3594b.b(h13, h14, h15, vector32, collisionVertex.Z0(i11, f31965m.get()), collisionVertex.Z0(I03.f79904c, f31966n.get()), collisionVertex.Z0(I03.f79905d, f31967o.get()), vector2);
                                }
                            } catch (Exception e26) {
                                e26.printStackTrace();
                            }
                        }
                    }
                }
            } else {
                gameObject = gameObject2;
                vector3f3 = vector3f4;
                vector2 = vector23;
                collider2 = null;
            }
            c3593a.q(collider2);
            c3593a.r(collider2 != null ? collider2.f79250n : null);
            c3593a.D(vector2);
        } else {
            gameObject = gameObject2;
            vector3f3 = vector3f4;
        }
        if (interfaceC13435a instanceof BasePool.K) {
            BasePool.K k10 = (BasePool.K) interfaceC13435a;
            c3593a.w(k10.b());
            c3593a.x(k10.c());
        }
        c3593a.v(new Vector3(vector3f3));
        c3593a.u(new Vector3(vector3).normalizeLocal());
        c3593a.s(new Vector3(physicsRayTestResult.getHitNormalLocal()).normalizeLocal());
        c3593a.setGameObject(gameObject);
        c3593a.setDistance(c3593a.i().distance(c3595c.f31953b.f31957b));
        c3593a.z(0.0f);
        return c3593a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x03cb  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x03ce  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x02b6  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x02df A[Catch: Exception -> 0x0372, TRY_LEAVE, TryCatch #9 {Exception -> 0x0372, blocks: (B:68:0x02be, B:70:0x02c6, B:72:0x02cc, B:74:0x02d0, B:76:0x02df, B:89:0x036e, B:78:0x0321, B:80:0x0327, B:82:0x0333, B:84:0x0337, B:86:0x033b), top: B:67:0x02be, inners: #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C3593a i(C3595c c3595c, InterfaceC13435a interfaceC13435a, PhysicsSweepTestResult physicsSweepTestResult, Vector3f vector3f, Vector3f vector3f2, Vector3 vector3) {
        GameObject gameObject;
        boolean z10;
        int i10;
        Collider collider;
        Collider collider2;
        boolean z11;
        boolean z12;
        Vertex collisionVertex;
        int capacity;
        int i11;
        int i12;
        boolean z13;
        Collider collider3;
        int i13;
        int i14;
        ChildCollisionShape[] childCollisionShapeArr;
        Vertex collisionVertex2;
        int capacity2;
        int i15;
        ChildCollisionShape childCollisionShape;
        InterfaceC13435a interfaceC13435a2 = interfaceC13435a;
        GameObject gameObjectForPhysics = interfaceC13435a.getGameObjectForPhysics();
        GameObject gameObject2 = gameObjectForPhysics.f79295l;
        if (gameObject2 == null) {
            gameObject2 = gameObjectForPhysics;
        }
        float hitFraction = physicsSweepTestResult.getHitFraction();
        Vector3f vector3f3 = new Vector3f();
        vector3f3.interpolateLocal(vector3f, vector3f2, hitFraction);
        Vector3 vector32 = new Vector3(vector3f3);
        Vector2 vector2 = new Vector2();
        if (this.f31970d || this.f31971e) {
            ChildCollisionShape[] bulletShapeChildren = interfaceC13435a.getBulletShapeChildren();
            int i16 = 0;
            boolean z14 = true;
            int i17 = -1;
            try {
                if (bulletShapeChildren.length != 1 || (childCollisionShape = bulletShapeChildren[0]) == null || childCollisionShape.getShape() == null) {
                    i12 = -1;
                    z13 = false;
                    collider3 = null;
                } else {
                    collider = interfaceC13435a2.findColliderFromHash(childCollisionShape.getShape().userIndex());
                    try {
                        i12 = physicsSweepTestResult.triangleIndex();
                        collider3 = collider;
                        z13 = true;
                    } catch (IndexOutOfBoundsException e10) {
                        e = e10;
                        gameObject = gameObject2;
                        z10 = true;
                        i10 = 0;
                        e.printStackTrace();
                        z11 = i10 == true ? 1 : 0;
                        collider2 = collider;
                        z12 = i10;
                        if (!z11) {
                        }
                        C3593a c3593a = new C3593a();
                        c3593a.f31932r = this.f31971e;
                        c3593a.v(new Vector3(vector3f3));
                        c3593a.u(new Vector3(vector3).normalizeLocal());
                        c3593a.s(new Vector3(physicsSweepTestResult.getHitNormalLocal(new Vector3f())).normalizeLocal());
                        c3593a.setGameObject(gameObject);
                        c3593a.setDistance(c3593a.i().distance(c3595c.f31953b.f31957b));
                        c3593a.z(0.0f);
                        c3593a.q(collider2);
                        c3593a.r(collider2 != null ? collider2.f79250n : null);
                        c3593a.D(vector2);
                        return c3593a;
                    }
                }
                if (!z13) {
                    boolean z15 = true;
                    int i18 = 0;
                    while (i18 < bulletShapeChildren.length) {
                        try {
                            ChildCollisionShape childCollisionShape2 = bulletShapeChildren[i18];
                            if (!(childCollisionShape2.getShape() instanceof GImpactCollisionShape) && !(childCollisionShape2.getShape() instanceof MeshCollisionShape) && !(childCollisionShape2.getShape() instanceof Dc.b) && !(childCollisionShape2.getShape() instanceof NativeHeightfieldCollisionShape) && !(childCollisionShape2.getShape() instanceof Dc.c)) {
                                i18++;
                                z15 = z15;
                            }
                            z15 = false;
                            i18++;
                            z15 = z15;
                        } catch (IndexOutOfBoundsException e11) {
                            e = e11;
                            gameObject = gameObject2;
                            z10 = true;
                            i13 = 0;
                        }
                    }
                    if (z15) {
                        ChildCollisionShape childCollisionShape3 = bulletShapeChildren[physicsSweepTestResult.triangleIndex()];
                        if (childCollisionShape3 != null && childCollisionShape3.getShape() != null) {
                            collider = interfaceC13435a2.findColliderFromHash(childCollisionShape3.getShape().userIndex());
                            try {
                                i12 = physicsSweepTestResult.triangleIndex();
                                collider3 = collider;
                            } catch (IndexOutOfBoundsException e12) {
                                e = e12;
                                gameObject = gameObject2;
                                z10 = true;
                                i10 = 0;
                                i17 = i12;
                                e.printStackTrace();
                                z11 = i10 == true ? 1 : 0;
                                collider2 = collider;
                                z12 = i10;
                                if (!z11) {
                                }
                                C3593a c3593a2 = new C3593a();
                                c3593a2.f31932r = this.f31971e;
                                c3593a2.v(new Vector3(vector3f3));
                                c3593a2.u(new Vector3(vector3).normalizeLocal());
                                c3593a2.s(new Vector3(physicsSweepTestResult.getHitNormalLocal(new Vector3f())).normalizeLocal());
                                c3593a2.setGameObject(gameObject);
                                c3593a2.setDistance(c3593a2.i().distance(c3595c.f31953b.f31957b));
                                c3593a2.z(0.0f);
                                c3593a2.q(collider2);
                                c3593a2.r(collider2 != null ? collider2.f79250n : null);
                                c3593a2.D(vector2);
                                return c3593a2;
                            }
                        }
                    } else {
                        int i19 = 0;
                        while (i19 < bulletShapeChildren.length) {
                            ChildCollisionShape childCollisionShape4 = bulletShapeChildren[i19];
                            if (!(childCollisionShape4.getShape() instanceof GImpactCollisionShape)) {
                                if (!(childCollisionShape4.getShape() instanceof MeshCollisionShape)) {
                                    if (!(childCollisionShape4.getShape() instanceof Dc.b)) {
                                        if (!(childCollisionShape4.getShape() instanceof NativeHeightfieldCollisionShape)) {
                                            if (childCollisionShape4.getShape() instanceof Dc.c) {
                                            }
                                            gameObject = gameObject2;
                                            i14 = i19;
                                            z10 = z14;
                                            i13 = i16;
                                            childCollisionShapeArr = bulletShapeChildren;
                                            i19 = i14 + 1;
                                            i16 = i13;
                                            z14 = z10;
                                            gameObject2 = gameObject;
                                            bulletShapeChildren = childCollisionShapeArr;
                                            interfaceC13435a2 = interfaceC13435a;
                                        }
                                    }
                                }
                            }
                            Collider findColliderFromHash = interfaceC13435a2.findColliderFromHash(childCollisionShape4.getShape().userIndex());
                            if (findColliderFromHash != null) {
                                try {
                                    if (findColliderFromHash.getShape() == Collider.o.Model && (collisionVertex2 = findColliderFromHash.getCollisionVertex()) != null && findColliderFromHash.f79250n != null) {
                                        q qVar = new q(collisionVertex2.i1());
                                        int i20 = i16;
                                        while (i20 < collisionVertex2.W0()) {
                                            com.itsmagic.engine.Engines.Engine.Vector.h I02 = collisionVertex2.I0(i20);
                                            Vector3 h10 = qVar.h(I02.f79903b);
                                            try {
                                                Vector3 h11 = qVar.h(I02.f79904c);
                                                try {
                                                    Vector3 h12 = qVar.h(I02.f79905d);
                                                    com.itsmagic.engine.Engines.Engine.Vector.f fVar = f31964l.get();
                                                    q qVar2 = qVar;
                                                    fVar.y0(findColliderFromHash.getOnPhysicsMatrix());
                                                    com.itsmagic.engine.Engines.Engine.Vector.f fVar2 = f31963k.get();
                                                    i14 = i19;
                                                    try {
                                                        gameObject = gameObject2;
                                                        ChildCollisionShape[] childCollisionShapeArr2 = bulletShapeChildren;
                                                        z10 = true;
                                                        try {
                                                            fVar2.Q0(findColliderFromHash.getAttachedPhysicsObject().transform, true, true, false);
                                                            fVar2.d0(fVar);
                                                            fVar2.p0(h10, h10);
                                                            fVar2.p0(h11, h11);
                                                            fVar2.p0(h12, h12);
                                                            Vector3 sub = h11.sub(h10);
                                                            Vector3 sub2 = h12.sub(h10);
                                                            Vector3 sub3 = vector32.sub(h10);
                                                            float dot = sub2.dot(sub2);
                                                            float dot2 = sub2.dot(sub);
                                                            float dot3 = sub2.dot(sub3);
                                                            float dot4 = sub.dot(sub);
                                                            float dot5 = sub.dot(sub3);
                                                            float f10 = (dot * dot4) - (dot2 * dot2);
                                                            if (f10 != 0.0f) {
                                                                float f11 = 1.0f / f10;
                                                                float f12 = ((dot4 * dot3) - (dot2 * dot5)) * f11;
                                                                float f13 = ((dot * dot5) - (dot2 * dot3)) * f11;
                                                                if (f12 >= 0.0f && f13 >= 0.0f && f12 + f13 <= 1.0f) {
                                                                    if (this.f31971e) {
                                                                        try {
                                                                        } catch (Exception e13) {
                                                                            e = e13;
                                                                            collider2 = findColliderFromHash;
                                                                            i13 = 0;
                                                                            childCollisionShapeArr = childCollisionShapeArr2;
                                                                        }
                                                                        if (collisionVertex2.a1() != null && (capacity2 = collisionVertex2.a1().getCapacity()) > (i15 = I02.f79903b) && capacity2 > I02.f79904c && capacity2 > I02.f79905d) {
                                                                            Vector2 Z02 = collisionVertex2.Z0(i15, f31965m.get());
                                                                            Vector2 Z03 = collisionVertex2.Z0(I02.f79904c, f31966n.get());
                                                                            Vector2 Z04 = collisionVertex2.Z0(I02.f79905d, f31967o.get());
                                                                            collider2 = findColliderFromHash;
                                                                            childCollisionShapeArr = childCollisionShapeArr2;
                                                                            i13 = 0;
                                                                            try {
                                                                                C3594b.b(h10, h11, h12, vector32, Z02, Z03, Z04, vector2);
                                                                            } catch (Exception e14) {
                                                                                e = e14;
                                                                                try {
                                                                                    e.printStackTrace();
                                                                                    z11 = true;
                                                                                    i17 = i12;
                                                                                    z12 = i13;
                                                                                    if (!z11) {
                                                                                    }
                                                                                    C3593a c3593a22 = new C3593a();
                                                                                    c3593a22.f31932r = this.f31971e;
                                                                                    c3593a22.v(new Vector3(vector3f3));
                                                                                    c3593a22.u(new Vector3(vector3).normalizeLocal());
                                                                                    c3593a22.s(new Vector3(physicsSweepTestResult.getHitNormalLocal(new Vector3f())).normalizeLocal());
                                                                                    c3593a22.setGameObject(gameObject);
                                                                                    c3593a22.setDistance(c3593a22.i().distance(c3595c.f31953b.f31957b));
                                                                                    c3593a22.z(0.0f);
                                                                                    c3593a22.q(collider2);
                                                                                    c3593a22.r(collider2 != null ? collider2.f79250n : null);
                                                                                    c3593a22.D(vector2);
                                                                                    return c3593a22;
                                                                                } catch (Exception e15) {
                                                                                    e = e15;
                                                                                    try {
                                                                                        e.printStackTrace();
                                                                                        i19 = i14 + 1;
                                                                                        i16 = i13;
                                                                                        z14 = z10;
                                                                                        gameObject2 = gameObject;
                                                                                        bulletShapeChildren = childCollisionShapeArr;
                                                                                        interfaceC13435a2 = interfaceC13435a;
                                                                                    } catch (IndexOutOfBoundsException e16) {
                                                                                        e = e16;
                                                                                        i17 = i12;
                                                                                        collider = collider3;
                                                                                        i10 = i13;
                                                                                        e.printStackTrace();
                                                                                        z11 = i10 == true ? 1 : 0;
                                                                                        collider2 = collider;
                                                                                        z12 = i10;
                                                                                        if (!z11) {
                                                                                            try {
                                                                                                if (collider2.getShape() == Collider.o.Model) {
                                                                                                    q qVar3 = new q(collisionVertex.i1());
                                                                                                    if (collisionVertex.W0() > i17) {
                                                                                                    }
                                                                                                }
                                                                                            } catch (Exception e17) {
                                                                                                e17.printStackTrace();
                                                                                            }
                                                                                        }
                                                                                        C3593a c3593a222 = new C3593a();
                                                                                        c3593a222.f31932r = this.f31971e;
                                                                                        c3593a222.v(new Vector3(vector3f3));
                                                                                        c3593a222.u(new Vector3(vector3).normalizeLocal());
                                                                                        c3593a222.s(new Vector3(physicsSweepTestResult.getHitNormalLocal(new Vector3f())).normalizeLocal());
                                                                                        c3593a222.setGameObject(gameObject);
                                                                                        c3593a222.setDistance(c3593a222.i().distance(c3595c.f31953b.f31957b));
                                                                                        c3593a222.z(0.0f);
                                                                                        c3593a222.q(collider2);
                                                                                        c3593a222.r(collider2 != null ? collider2.f79250n : null);
                                                                                        c3593a222.D(vector2);
                                                                                        return c3593a222;
                                                                                    }
                                                                                }
                                                                            }
                                                                            z11 = true;
                                                                            i17 = i12;
                                                                            z12 = i13;
                                                                            break;
                                                                        }
                                                                    }
                                                                    collider2 = findColliderFromHash;
                                                                    i13 = 0;
                                                                    z11 = true;
                                                                    i17 = i12;
                                                                    z12 = i13;
                                                                    break;
                                                                }
                                                            }
                                                            i20++;
                                                            i16 = 0;
                                                            z14 = true;
                                                            findColliderFromHash = findColliderFromHash;
                                                            gameObject2 = gameObject;
                                                            bulletShapeChildren = childCollisionShapeArr2;
                                                            qVar = qVar2;
                                                            i19 = i14;
                                                        } catch (Exception e18) {
                                                            e = e18;
                                                            i13 = 0;
                                                            childCollisionShapeArr = childCollisionShapeArr2;
                                                        }
                                                    } catch (Exception e19) {
                                                        e = e19;
                                                        gameObject = gameObject2;
                                                        childCollisionShapeArr = bulletShapeChildren;
                                                        i13 = 0;
                                                        z10 = true;
                                                        e.printStackTrace();
                                                        i19 = i14 + 1;
                                                        i16 = i13;
                                                        z14 = z10;
                                                        gameObject2 = gameObject;
                                                        bulletShapeChildren = childCollisionShapeArr;
                                                        interfaceC13435a2 = interfaceC13435a;
                                                    }
                                                } catch (Exception e20) {
                                                    e = e20;
                                                    gameObject = gameObject2;
                                                    i14 = i19;
                                                }
                                            } catch (Exception e21) {
                                                e = e21;
                                                gameObject = gameObject2;
                                                i14 = i19;
                                                i13 = i16;
                                                childCollisionShapeArr = bulletShapeChildren;
                                            }
                                        }
                                    }
                                } catch (Exception e22) {
                                    e = e22;
                                    gameObject = gameObject2;
                                    i14 = i19;
                                    z10 = z14;
                                    i13 = i16;
                                    childCollisionShapeArr = bulletShapeChildren;
                                }
                            }
                            gameObject = gameObject2;
                            i14 = i19;
                            z10 = z14;
                            i13 = i16;
                            childCollisionShapeArr = bulletShapeChildren;
                            i19 = i14 + 1;
                            i16 = i13;
                            z14 = z10;
                            gameObject2 = gameObject;
                            bulletShapeChildren = childCollisionShapeArr;
                            interfaceC13435a2 = interfaceC13435a;
                        }
                    }
                }
                gameObject = gameObject2;
                z10 = z14;
                int i21 = i16;
                z11 = i21 == true ? 1 : 0;
                i17 = i12;
                collider2 = collider3;
                z12 = i21;
            } catch (IndexOutOfBoundsException e23) {
                e = e23;
                gameObject = gameObject2;
                z10 = true;
                i10 = 0;
                collider = null;
            }
            if (!z11 && this.f31971e && i17 >= 0 && collider2 != null) {
                if (collider2.getShape() == Collider.o.Model && (collisionVertex = collider2.getCollisionVertex()) != null && collider2.f79250n != null) {
                    q qVar32 = new q(collisionVertex.i1());
                    if (collisionVertex.W0() > i17) {
                        com.itsmagic.engine.Engines.Engine.Vector.h I03 = collisionVertex.I0(i17);
                        Vector3 h13 = qVar32.h(I03.f79903b);
                        Vector3 h14 = qVar32.h(I03.f79904c);
                        Vector3 h15 = qVar32.h(I03.f79905d);
                        com.itsmagic.engine.Engines.Engine.Vector.f fVar3 = f31964l.get();
                        fVar3.y0(collider2.getOnPhysicsMatrix());
                        com.itsmagic.engine.Engines.Engine.Vector.f fVar4 = f31963k.get();
                        fVar4.Q0(collider2.getAttachedPhysicsObject().transform, z10, z10, z12);
                        fVar4.d0(fVar3);
                        fVar4.p0(h13, h13);
                        fVar4.p0(h14, h14);
                        fVar4.p0(h15, h15);
                        try {
                            if (collisionVertex.a1() != null && (capacity = collisionVertex.a1().getCapacity()) > (i11 = I03.f79903b) && capacity > I03.f79904c && capacity > I03.f79905d) {
                                C3594b.b(h13, h14, h15, vector32, collisionVertex.Z0(i11, f31965m.get()), collisionVertex.Z0(I03.f79904c, f31966n.get()), collisionVertex.Z0(I03.f79905d, f31967o.get()), vector2);
                            }
                        } catch (Exception e24) {
                            e24.printStackTrace();
                        }
                    }
                }
            }
        } else {
            gameObject = gameObject2;
            collider2 = null;
        }
        C3593a c3593a2222 = new C3593a();
        c3593a2222.f31932r = this.f31971e;
        c3593a2222.v(new Vector3(vector3f3));
        c3593a2222.u(new Vector3(vector3).normalizeLocal());
        c3593a2222.s(new Vector3(physicsSweepTestResult.getHitNormalLocal(new Vector3f())).normalizeLocal());
        c3593a2222.setGameObject(gameObject);
        c3593a2222.setDistance(c3593a2222.i().distance(c3595c.f31953b.f31957b));
        c3593a2222.z(0.0f);
        c3593a2222.q(collider2);
        c3593a2222.r(collider2 != null ? collider2.f79250n : null);
        c3593a2222.D(vector2);
        return c3593a2222;
    }

    public ColorINT j() {
        return this.f31968b;
    }

    public ColorINT k() {
        return this.f31969c;
    }

    public boolean l() {
        return this.f31971e;
    }

    public boolean m() {
        return this.f31970d;
    }

    public void n(boolean calculateFaceUV) {
        this.f31971e = calculateFaceUV;
    }

    public void o(boolean determineHitCollider) {
        this.f31970d = determineHitCollider;
    }

    public void p(ColorINT HIT_COLOR) {
        this.f31968b = HIT_COLOR;
    }

    public void q(ColorINT NO_HIT_COLOR) {
        this.f31969c = NO_HIT_COLOR;
    }

    public List<C3593a> r(C3595c ray) {
        return s(ray, true);
    }

    public List<C3593a> s(C3595c ray, boolean ignoreGizmo) {
        if (ray == null || ray.f31953b == null) {
            return null;
        }
        List<C3593a> u10 = u(ray);
        if (!ignoreGizmo && Camera.isAnyEditorCameraRendering()) {
            GizmoPath gizmoPath = new GizmoPath();
            if (u10 == null || u10.isEmpty()) {
                gizmoPath.setColor(this.f31969c.e0());
            } else {
                gizmoPath.setColor(this.f31968b.e0());
            }
            if (u10 == null || u10.isEmpty()) {
                Vector3 vector3 = f31960g.get();
                vector3.set(ray.f31953b.f31958c);
                vector3.normalizeLocal();
                if (ray.f31954c > 0.0f) {
                    Vector3 vector32 = new Vector3();
                    vector32.set(ray.f31953b.f31957b);
                    vector32.addLocal(vector3, ray.f31954c);
                    gizmoPath.addLine(ray.f31953b.f31957b.toJAVARuntime(), vector32.toJAVARuntime());
                } else {
                    Vector3 vector33 = new Vector3();
                    vector33.set(ray.f31953b.f31957b);
                    vector33.addLocal(vector3, 999999.0f);
                    gizmoPath.addLine(ray.f31953b.f31957b.toJAVARuntime(), vector33.toJAVARuntime());
                }
            }
            gizmoPath.apply();
            Gizmo.drawEngine(gizmoPath);
        }
        return u10;
    }

    public final List<C3593a> u(C3595c ray) {
        int i10;
        int i11;
        int i12;
        int i13;
        InterfaceC13435a interfaceC13435a;
        if (ray == null) {
            J4.d.b2("Trying to ray a null ray");
            return null;
        }
        Cc.c cVar = K8.a.f10984o;
        if (cVar.f2506c == null) {
            J4.d.b2("Trying to ray a null world");
            return null;
        }
        Vector3 vector3 = f31960g.get();
        vector3.set(ray.f31953b.f31958c);
        vector3.normalizeLocal();
        float f10 = ray.f31954c;
        if (f10 > 0.0f) {
            vector3.mulLocal(f10);
        } else {
            vector3.mulLocal(100000.0f);
        }
        Vector3f vector3f = f31961i.get();
        vector3f.set(ray.f31953b.f31957b.getX(), ray.f31953b.f31957b.getY(), ray.f31953b.f31957b.getZ());
        Vector3f vector3f2 = f31962j.get();
        vector3f2.set(vector3f.f81611x + vector3.getX(), vector3f.f81612y + vector3.getY(), vector3f.f81613z + vector3.getZ());
        Layer f11 = ray.f31955d != null ? ray.f() : K8.a.m(N7.c.t()).g().i(0);
        if (f11 != null) {
            int i14 = f11.f79542b;
            i10 = Cc.d.a(i14);
            i11 = 1 << i14;
        } else {
            i10 = 0;
            i11 = 0;
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        synchronized (Cc.c.f2503k) {
            List<PhysicsRayTestResult> rayTest = cVar.f2506c.rayTest(vector3f, vector3f2);
            try {
                int size = rayTest.size();
                int i15 = 0;
                while (i15 < size) {
                    PhysicsRayTestResult physicsRayTestResult = rayTest.get(i15);
                    if (physicsRayTestResult != null) {
                        int collisionGroup = physicsRayTestResult.getCollisionObject().getCollisionGroup();
                        if ((physicsRayTestResult.getCollisionObject().getCollideWithGroups() & i11) != 0 && (collisionGroup & i10) != 0 && (interfaceC13435a = (InterfaceC13435a) physicsRayTestResult.getCollisionObject().getUserObject()) != null) {
                            i12 = i15;
                            i13 = size;
                            steppedArrayList.add(h(ray, interfaceC13435a, physicsRayTestResult, vector3f, vector3f2, vector3));
                            i15 = i12 + 1;
                            size = i13;
                        }
                    }
                    i12 = i15;
                    i13 = size;
                    i15 = i12 + 1;
                    size = i13;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return steppedArrayList;
    }

    public List<C3593a> v(C3595c ray, float radius) {
        return w(ray, radius, true);
    }

    public List<C3593a> w(C3595c ray, float radius, boolean ignoreGizmo) {
        if (ray == null || ray.f31953b == null) {
            return null;
        }
        List<C3593a> x10 = x(ray, radius);
        if (!ignoreGizmo && Camera.isAnyEditorCameraRendering()) {
            GizmoPath gizmoPath = new GizmoPath();
            if (x10 == null || x10.isEmpty()) {
                gizmoPath.setColor(this.f31969c.e0());
            } else {
                gizmoPath.setColor(this.f31968b.e0());
            }
            if (x10 == null || x10.isEmpty()) {
                Vector3 vector3 = f31960g.get();
                vector3.set(ray.f31953b.f31958c);
                vector3.normalizeLocal();
                if (ray.f31954c > 0.0f) {
                    Vector3 vector32 = new Vector3();
                    vector32.set(ray.f31953b.f31957b);
                    vector32.addLocal(vector3, ray.f31954c);
                    gizmoPath.addLine(ray.f31953b.f31957b.toJAVARuntime(), vector32.toJAVARuntime());
                } else {
                    Vector3 vector33 = new Vector3();
                    vector33.set(ray.f31953b.f31957b);
                    vector33.addLocal(vector3, 999999.0f);
                    gizmoPath.addLine(ray.f31953b.f31957b.toJAVARuntime(), vector33.toJAVARuntime());
                }
            }
            gizmoPath.apply();
            Gizmo.drawEngine(gizmoPath);
        }
        return x10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final List<C3593a> x(C3595c ray, float radius) {
        int i10;
        int i11;
        int i12;
        int i13;
        InterfaceC13435a interfaceC13435a;
        if (ray == null) {
            J4.d.b2("Trying to ray a null ray");
            return null;
        }
        Cc.c cVar = K8.a.f10984o;
        if (cVar.f2506c == null) {
            J4.d.b2("Trying to ray a null world");
            return null;
        }
        Vector3 vector3 = f31960g.get();
        vector3.set(ray.f31953b.f31958c);
        vector3.normalizeLocal();
        float f10 = ray.f31954c;
        if (f10 > 0.0f) {
            vector3.mulLocal(f10);
        } else {
            vector3.mulLocal(100000.0f);
        }
        Vector3f vector3f = f31961i.get();
        vector3f.set(ray.f31953b.f31957b.getX(), ray.f31953b.f31957b.getY(), ray.f31953b.f31957b.getZ());
        Vector3f vector3f2 = f31962j.get();
        vector3f2.set(vector3f.f81611x + vector3.getX(), vector3f.f81612y + vector3.getY(), vector3f.f81613z + vector3.getZ());
        Layer f11 = ray.f31955d != null ? ray.f() : K8.a.m(N7.c.t()).g().i(0);
        if (f11 != null) {
            int i14 = f11.f79542b;
            i10 = Cc.d.a(i14);
            i11 = 1 << i14;
        } else {
            i10 = 0;
            i11 = 0;
        }
        SphereCollisionShape sphereCollisionShape = new SphereCollisionShape(radius > 0.0f ? radius : 0.05f);
        Transform transform = new Transform();
        Transform transform2 = new Transform();
        transform.loadIdentity();
        transform2.loadIdentity();
        transform.setTranslation(vector3f);
        transform2.setTranslation(vector3f2);
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
        synchronized (Cc.c.f2503k) {
            cVar.f2506c.sweepTest(sphereCollisionShape, transform, transform2, steppedArrayList2);
            try {
                int size = steppedArrayList2.size();
                int i15 = 0;
                while (i15 < size) {
                    PhysicsSweepTestResult physicsSweepTestResult = (PhysicsSweepTestResult) steppedArrayList2.get(i15);
                    if (physicsSweepTestResult != null) {
                        int collisionGroup = physicsSweepTestResult.getCollisionObject().getCollisionGroup();
                        if ((physicsSweepTestResult.getCollisionObject().getCollideWithGroups() & i11) != 0 && (collisionGroup & i10) != 0 && (interfaceC13435a = (InterfaceC13435a) physicsSweepTestResult.getCollisionObject().getUserObject()) != null) {
                            i12 = i15;
                            i13 = size;
                            steppedArrayList.add(i(ray, interfaceC13435a, physicsSweepTestResult, vector3f, vector3f2, vector3));
                            i15 = i12 + 1;
                            size = i13;
                        }
                    }
                    i12 = i15;
                    i13 = size;
                    i15 = i12 + 1;
                    size = i13;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return steppedArrayList;
    }

    public C3593a y(C3595c ray) {
        return z(ray, true);
    }

    public C3593a z(C3595c ray, boolean ignoreGizmo) {
        if (!C15377a.f109719g.booleanValue() && this.f31971e && !K8.a.r()) {
            throw new RuntimeException("Cannot trace a ray with 'calculateFaceUV' true from async threads");
        }
        if (ray == null || ray.f31953b == null) {
            return null;
        }
        C3593a C10 = C(ray);
        if (!ignoreGizmo && Camera.isAnyEditorCameraRendering()) {
            K8.a.I(new i(C10, ray));
        }
        return C10;
    }
}
