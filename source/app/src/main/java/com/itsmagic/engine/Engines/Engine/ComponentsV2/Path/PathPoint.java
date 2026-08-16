package com.itsmagic.engine.Engines.Engine.ComponentsV2.Path;

import JAVARuntime.Color;
import JAVARuntime.Gizmo;
import JAVARuntime.GizmoObject;
import JAVARuntime.Random;
import JAVARuntime.Vertex;
import K8.d;
import aa.C3593a;
import aa.C3595c;
import android.content.Context;
import android.opengl.Matrix;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Axis.MousePicker.MousePicker;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components.EditorCamera;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentUtils.ObjectReference;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.f;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine2.R;
import f9.InterfaceC13197a;
import f9.InterfaceC13199c;
import fb.AbstractC13203c;
import fb.C13201a;
import ib.InterfaceC13594a;
import java.util.LinkedList;
import java.util.List;
import t6.e;
import t6.j;

public class PathPoint extends Component implements InterfaceC13197a {

    public static final String f74278U = "PathPoint";

    public static final Class f74279V = PathPoint.class;

    public static final float f74280W = 2.5f;

    public static final float f74281X = 3.0f;

    public float f74282E;

    public float f74283F;

    public ColorINT f74284G;

    public GizmoObject f74285H;

    public InterfaceC13199c f74286I;

    public boolean f74287J;

    public boolean f74288K;

    public PathPoint f74289L;

    public PathPoint f74290M;

    public float f74291N;

    public int f74292O;

    public final Vector3 f74293P;

    public final Vector3 f74294Q;

    public boolean f74295R;

    public final InterfaceC13594a f74296S;

    public JAVARuntime.Component f74297T;

    @Expose
    private ObjectReference connectorReference;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return PathPoint.f74279V;
        }

        @Override
        public String c() {
            return PathPoint.f74278U;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.SCENARIO);
        }

        @Override
        public String f() {
            return PathPoint.f74278U;
        }
    }

    public class b implements InterfaceC13594a {
        public b() {
        }

        @Override
        public void a(f hierarchyMatrix) {
            PathPoint.this.updatePathSnapshot(hierarchyMatrix);
        }
    }

    public class c implements MousePicker.l.b {

        public int f74299a;

        public c() {
        }

        @Override
        public boolean a(GizmoObject gizmoObject) {
            e S12 = j.J1() ? j.S1("PathPoint - draw gizmo") : null;
            try {
                Gizmo.draw(gizmoObject);
                int i10 = this.f74299a + 1;
                this.f74299a = i10;
                if (i10 < 150) {
                    return true;
                }
                j.P1(S12);
                return false;
            } finally {
                j.P1(S12);
            }
        }
    }

    static {
        C13201a.b(new a());
    }

    public PathPoint() {
        super(f74278U);
        this.f74282E = 0.05f;
        this.f74283F = 0.05f;
        this.f74284G = new ColorINT(235, 91, 52);
        this.connectorReference = new ObjectReference();
        this.f74291N = 0.0f;
        this.f74292O = -1;
        this.f74293P = new Vector3();
        this.f74294Q = new Vector3(0.0f, 0.0f, 1.0f);
        this.f74296S = new b();
    }

    private void attachToParentCurve() {
        GameObject gameObject = this.f79250n;
        if (gameObject == null) {
            return;
        }
        CurvePath curvePath = (CurvePath) gameObject.i0(CurvePath.class);
        if (curvePath == null) {
            detachFromCurve();
            return;
        }
        InterfaceC13199c interfaceC13199c = this.f74286I;
        if (interfaceC13199c != null && interfaceC13199c != curvePath) {
            interfaceC13199c.unregisterPathPoint(this.f79250n, this);
        }
        curvePath.registerPathPoint(this.f79250n, this);
    }

    private void detachFromCurve() {
        InterfaceC13199c interfaceC13199c = this.f74286I;
        unregisterPathTransformListener();
        this.f74286I = null;
        if (interfaceC13199c != null) {
            interfaceC13199c.unregisterPathPoint(this.f79250n, this);
        }
    }

    private boolean isMasterOfConnection(GameObject connObject) {
        return this.f79250n.V() < connObject.V();
    }

    private void registerPathTransformListener() {
        InterfaceC13199c interfaceC13199c;
        GameObject gameObject = this.f79250n;
        if (gameObject == null || gameObject.transform == null || (interfaceC13199c = this.f74286I) == null || interfaceC13199c.getGameObject() == null || this.f74286I.getGameObject().transform == null) {
            this.f74295R = false;
        } else {
            this.f79250n.transform.r(this.f74286I.getGameObject().transform, this.f74296S, false, false, false, 1.0E-4f, 0.01f, 1.0E-4f);
        }
    }

    private void unregisterPathTransformListener() {
        Transform transform;
        GameObject gameObject = this.f79250n;
        if (gameObject == null || (transform = gameObject.transform) == null) {
            return;
        }
        transform.M2(this.f74296S);
    }

    public void updatePathSnapshot(f hierarchyMatrix) {
        boolean z10;
        InterfaceC13199c interfaceC13199c;
        if (hierarchyMatrix == null) {
            return;
        }
        boolean z11 = this.f74295R;
        Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
        Vector3 vector32 = (Vector3) JP.acquire(Vector3.class);
        try {
            vector3.set(this.f74293P);
            vector32.set(this.f74294Q);
            hierarchyMatrix.D1(this.f74293P);
            this.f74294Q.set(hierarchyMatrix.f79885d, hierarchyMatrix.f79889j, hierarchyMatrix.f79893n);
            if (this.f74294Q.lengthSquared() <= 1.0E-8f) {
                this.f74294Q.set(0.0f, 0.0f, 1.0f);
            } else {
                this.f74294Q.normalizeLocal();
            }
            if (z11 && vector3.equalsApprox(this.f74293P, 1.0E-4f) && vector32.equalsApprox(this.f74294Q, 1.0E-4f)) {
                z10 = false;
                this.f74295R = true;
                JP.release(vector32);
                JP.release(vector3);
                if (z10 || (interfaceC13199c = this.f74286I) == null) {
                }
                interfaceC13199c.scheduleReloadPoints();
                return;
            }
            z10 = true;
            this.f74295R = true;
            JP.release(vector32);
            JP.release(vector3);
            if (z10) {
            }
        } catch (Throwable th2) {
            JP.release(vector32);
            JP.release(vector3);
            throw th2;
        }
    }

    @Override
    public Vector3 calculateRoadPointForward() {
        Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
        vector3.set(this.f74294Q);
        return vector3;
    }

    @Override
    public Vector3 calculateRoadPointPosition() {
        Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
        vector3.set(this.f74293P);
        return vector3;
    }

    public void disconnect() {
        this.connectorReference.h(null);
    }

    @Override
    public String getDisplayableTitle() {
        return f74278U;
    }

    @Override
    public int getIconResource() {
        return R.drawable.road_point;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_terrain;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        return new LinkedList();
    }

    public PathPoint getNext() {
        return this.f74290M;
    }

    public PathPoint getPrevious() {
        return this.f74289L;
    }

    @Override
    public String getTitle() {
        return f74278U;
    }

    @Override
    public Component.e getType() {
        return Component.e.PathPoint;
    }

    @Override
    public int iconPriority() {
        return 2;
    }

    @Override
    public boolean isConnected() {
        return this.connectorReference.f();
    }

    public boolean isConnectedTo(PointConnector connector) {
        return this.connectorReference.f() && this.connectorReference.e() == connector.f79250n;
    }

    public boolean isFirst() {
        return this.f74288K;
    }

    public boolean isLast() {
        return this.f74287J;
    }

    @Override
    public void mousePick(C3595c ray, MousePicker.k listener) {
        GizmoObject gizmoObject;
        GameObject gameObject = this.f79250n;
        Transform transform = gameObject.transform;
        MousePicker.g b10 = listener.b();
        MousePicker.h config = listener.getConfig();
        EditorCamera camera = listener.getCamera();
        Vector3 vector3 = b10.f71441a;
        Vector3 vector32 = b10.f71442b;
        float[] fArr = b10.f71443c;
        Vertex vertex = b10.f71444d;
        boolean z10 = config.f71445a;
        if (listener.getCamera().isPointVisible(transform.u0((Vector3) JP.acquire(Vector3.class)))) {
            transform.u0(vector3);
            vector32.set(this.f74283F * camera.f79250n.transform.C1(vector3));
            Matrix.setIdentityM(fArr, 0);
            Matrix.translateM(fArr, 0, vector3.getX(), vector3.getY(), vector3.getZ());
            Nc.c.q(fArr, vector32);
            if (z10) {
                gizmoObject = new GizmoObject(vertex.x2());
                gizmoObject.setPosition(vector3.toJAVARuntime().copy());
                gizmoObject.setScale(vector32.toJAVARuntime().copy());
                gizmoObject.setColor(new Color(Random.range(0.0f, 0.9f), 0.0f, Random.range(0.0f, 0.1f)));
            } else {
                gizmoObject = null;
            }
            C3593a I22 = vertex.I2(fArr, ray, Vertex.RayMode.FirstHit, true);
            if (I22 != null) {
                I22.setGameObject(gameObject);
                listener.c(new MousePicker.j(I22, gizmoObject, this));
            }
            if (z10) {
                MousePicker.l lVar = new MousePicker.l(gizmoObject, new c());
                listener.a(lVar);
                K8.a.J(lVar);
            }
        }
    }

    @Override
    public void onAttach() {
        super.onAttach();
        attachToParentCurve();
    }

    @Override
    public void onDetach() {
        detachFromCurve();
        super.onDetach();
    }

    @Override
    public void onParentChanged() {
        super.onParentChanged();
        attachToParentCurve();
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean z10) {
        Component z11;
        GameObject gameObject2;
        float E12;
        Component component;
        super.preUpdate(gameObject, z10);
        if (gameObject == null || gameObject.isGarbage()) {
            return;
        }
        Component component2 = null;
        if (this.f74286I == null) {
            this.connectorReference.h(null);
            return;
        }
        if (!this.f74288K && !this.f74287J) {
            this.connectorReference.h(null);
            return;
        }
        if (!this.connectorReference.f()) {
            float d10 = this.f74291N + d.d();
            this.f74291N = d10;
            if (d10 >= 1.0f) {
                this.f74291N = d10 - 1.0f;
                int A10 = R8.f.A();
                float f10 = Float.POSITIVE_INFINITY;
                for (int i10 = 0; i10 < A10; i10++) {
                    try {
                        z11 = R8.f.z(i10);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    if (z11 instanceof PointConnector) {
                        PointConnector pointConnector = (PointConnector) z11;
                        GameObject gameObject3 = pointConnector.f79250n;
                        if (gameObject3 != null && gameObject3 != gameObject) {
                            E12 = gameObject3.transform.E1(gameObject);
                            component = pointConnector;
                            if (E12 <= 6.25f) {
                                if (component2 != null) {
                                    component = pointConnector;
                                    if (f10 <= E12) {
                                    }
                                }
                            }
                        }
                    } else {
                        if (z11 instanceof PathPoint) {
                            PathPoint pathPoint = (PathPoint) z11;
                            if ((pathPoint.isFirst() || pathPoint.isLast()) && (gameObject2 = pathPoint.f79250n) != null && gameObject2 != gameObject) {
                                E12 = gameObject2.transform.E1(gameObject);
                                component = pathPoint;
                                if (E12 <= 6.25f) {
                                    if (component2 != null) {
                                        component = pathPoint;
                                        if (f10 <= E12) {
                                        }
                                    }
                                }
                            }
                        }
                    }
                    component2 = component;
                    f10 = E12;
                }
                if (component2 != null) {
                    this.connectorReference.h(component2.f79250n);
                    this.f74286I.scheduleReloadPoints();
                    return;
                }
                return;
            }
            return;
        }
        GameObject e11 = this.connectorReference.e();
        if (e11.transform.A1(gameObject) > 3.0f) {
            this.connectorReference.h(null);
            this.f74286I.scheduleReloadPoints();
            return;
        }
        int i11 = this.f74292O;
        int x42 = gameObject.transform.x4(null, i11);
        this.f74292O = x42;
        if (i11 != x42) {
            this.f74286I.scheduleReloadPoints();
        }
        PathPoint pathPoint2 = (PathPoint) e11.d0(PathPoint.class);
        if (pathPoint2 == null || !pathPoint2.isConnectedTo(gameObject)) {
            Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
            Vector3 vector32 = (Vector3) JP.acquire(Vector3.class);
            Vector3 vector33 = (Vector3) JP.acquire(Vector3.class);
            Vector3 vector34 = (Vector3) JP.acquire(Vector3.class);
            try {
                e11.J0().u0(vector3);
                gameObject.transform.h3(vector3);
                gameObject.transform.u0(vector34);
                e11.J0().u0(vector32);
                e11.J0().a0(vector33);
                vector32.add(vector33);
                gameObject.transform.o2(vector32);
                return;
            } finally {
            }
        }
        if (!isMasterOfConnection(e11)) {
            Vector3 vector35 = (Vector3) JP.acquire(Vector3.class);
            Vector3 vector36 = (Vector3) JP.acquire(Vector3.class);
            Vector3 vector37 = (Vector3) JP.acquire(Vector3.class);
            Vector3 vector38 = (Vector3) JP.acquire(Vector3.class);
            try {
                e11.J0().u0(vector35);
                gameObject.transform.h3(vector35);
                gameObject.transform.u0(vector38);
                e11.J0().u0(vector36);
                e11.J0().B(vector37);
                vector36.add(vector37);
                gameObject.transform.o2(vector36);
                return;
            } finally {
            }
        }
        if (this.f74287J && this.f74289L != null) {
            Vector3 vector39 = (Vector3) JP.acquire(Vector3.class);
            Vector3 vector310 = (Vector3) JP.acquire(Vector3.class);
            Vector3 vector311 = (Vector3) JP.acquire(Vector3.class);
            try {
                gameObject.transform.u0(vector39);
                this.f74289L.f79250n.transform.u0(vector310);
                vector39.sub(vector310);
                vector39.negateLocal();
                gameObject.transform.u0(vector311);
                vector311.add(vector39);
                gameObject.transform.o2(vector311);
            } finally {
            }
        }
        if (!this.f74288K || this.f74290M == null) {
            return;
        }
        Vector3 vector312 = (Vector3) JP.acquire(Vector3.class);
        Vector3 vector313 = (Vector3) JP.acquire(Vector3.class);
        Vector3 vector314 = (Vector3) JP.acquire(Vector3.class);
        try {
            gameObject.transform.u0(vector312);
            this.f74290M.f79250n.transform.u0(vector313);
            vector312.sub(vector313);
            vector312.negateLocal();
            gameObject.transform.u0(vector314);
            vector314.add(vector312);
            gameObject.transform.o2(vector314);
        } finally {
        }
    }

    @Override
    public void setFirst(boolean first) {
        this.f74288K = first;
    }

    @Override
    public void setLast(boolean last) {
        this.f74287J = last;
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f74297T = run;
    }

    @Override
    public void setSequencials(InterfaceC13197a previous, InterfaceC13197a next) {
        if (previous instanceof PathPoint) {
            this.f74289L = (PathPoint) previous;
        } else {
            this.f74289L = null;
        }
        if (next instanceof PathPoint) {
            this.f74290M = (PathPoint) next;
        } else {
            this.f74290M = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void setUsageComponent(Component component) {
        unregisterPathTransformListener();
        if (!(component instanceof InterfaceC13199c)) {
            this.f74286I = null;
        } else {
            this.f74286I = (InterfaceC13199c) component;
            registerPathTransformListener();
        }
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f74297T;
        if (component != null) {
            return component;
        }
        JAVARuntime.PathPoint pathPoint = new JAVARuntime.PathPoint(this);
        this.f74297T = pathPoint;
        return pathPoint;
    }

    @Override
    public Component mo1248clone() {
        PathPoint pathPoint = new PathPoint();
        pathPoint.connectorReference = this.connectorReference.clone();
        return pathPoint;
    }

    public boolean isConnectedTo(GameObject connector) {
        return this.connectorReference.f() && this.connectorReference.e() == connector;
    }
}
