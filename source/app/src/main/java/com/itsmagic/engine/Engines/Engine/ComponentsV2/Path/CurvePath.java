package com.itsmagic.engine.Engines.Engine.ComponentsV2.Path;

import C5.b;
import F5.c;
import JAVARuntime.Color;
import JAVARuntime.GizmoObject;
import JAVARuntime.GizmoPath;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.StickToTerrain;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import db.C12902b;
import f9.C13198b;
import f9.InterfaceC13197a;
import f9.InterfaceC13199c;
import fb.AbstractC13203c;
import fb.C13201a;
import ib.C13600g;
import ib.InterfaceC13601h;
import java.util.LinkedList;
import java.util.List;
import ub.p;
import y9.C16154b;

public class CurvePath extends Component implements InterfaceC13199c {

    public static final Class f74159F1 = CurvePath.class;

    public static final String f74160y1 = "CurvePath";

    public final List<GizmoObject> f74161D0;

    public h f74162E;

    public boolean f74163F;

    public boolean f74164G;

    public boolean f74165H;

    public final Vector3 f74166I;

    public final Vector3 f74167J;

    public int f74168K;

    public final com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Roads.a f74169L;

    public final List<C16154b> f74170M;

    public final List<C16154b> f74171N;

    public float f74172O;

    public float f74173P;

    public float f74174Q;

    public final Object f74175R;

    public final List<PointReference> f74176S;

    public final List<PointReference> f74177T;

    public boolean f74178U;

    public GameObject f74179V;

    public GameObject f74180W;

    public int f74181X;

    public volatile boolean f74182Y;

    public volatile boolean f74183Z;

    public Vertex f74184b1;

    @Expose
    @eb.f
    private h curveType;

    public p f74185i1;

    public final GizmoPath f74186m1;

    public volatile boolean f74187q0;

    public final C13198b f74188q1;

    @Expose
    @eb.f
    private boolean stickToTerrain;

    public final InterfaceC13601h f74189v0;

    public JAVARuntime.Component f74190v1;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return CurvePath.f74159F1;
        }

        @Override
        public String c() {
            return CurvePath.f74160y1;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.SCENARIO);
        }

        @Override
        public String f() {
            return CurvePath.f74160y1;
        }
    }

    public class b implements InterfaceC13601h {
        public b() {
        }

        @Override
        public void a(com.itsmagic.engine.Engines.Engine.Vector.f globalMatrix) {
            CurvePath.this.f74164G = true;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override
        public void run() {
            CurvePath.this.f74182Y = false;
            CurvePath.this.updateUsageRootTransformListener();
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override
        public void run() {
            CurvePath.this.f74183Z = false;
            CurvePath.this.updatePathPointUsageComponents();
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override
        public void run() {
            CurvePath.this.f74187q0 = false;
            CurvePath.this.rebuildPointReferencesFromChildren();
        }
    }

    public class f extends c.n0<h> {
        public f() {
        }

        @Override
        public void set(h value) {
            if (value != null) {
                CurvePath.this.curveType = value;
                CurvePath.this.scheduleReloadPoints();
            }
        }
    }

    public class g implements D5.h {
        public g() {
        }

        @Override
        public Variable get() {
            return new Variable("", CurvePath.this.stickToTerrain + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                CurvePath.this.stickToTerrain = variable.booolean_value.booleanValue();
                CurvePath.this.f74164G = true;
            }
        }
    }

    public enum h {
        Bezier,
        Knee,
        CatmullRom
    }

    static {
        C13201a.b(new a());
    }

    public CurvePath() {
        super(f74160y1);
        this.curveType = h.CatmullRom;
        this.stickToTerrain = true;
        this.f74162E = null;
        this.f74163F = false;
        this.f74164G = true;
        this.f74166I = new Vector3();
        this.f74167J = new Vector3();
        this.f74168K = -1;
        this.f74169L = new com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Roads.a();
        this.f74170M = new SteppedArrayList();
        this.f74171N = new SteppedArrayList();
        this.f74172O = 1.0f;
        this.f74173P = 0.0f;
        this.f74174Q = 1.0f;
        this.f74175R = new Object();
        this.f74176S = new SteppedArrayList();
        this.f74177T = new SteppedArrayList();
        this.f74181X = 0;
        this.f74189v0 = new b();
        this.f74161D0 = new SteppedArrayList();
        this.f74184b1 = null;
        this.f74185i1 = null;
        GizmoPath gizmoPath = new GizmoPath();
        this.f74186m1 = gizmoPath;
        gizmoPath.setColor(new Color("#ff7300"));
        this.f74188q1 = new C13198b(this);
    }

    private void addCatmullPoint(Vector3 position, Vector3 direction) {
        Vector3 vector3 = new Vector3(direction);
        if (vector3.lengthSquared() <= 1.0E-8f) {
            vector3.set(0.0f, 0.0f, 1.0f);
        } else {
            vector3.normalizeLocal();
        }
        Vector3 vector32 = new Vector3(0.0f, 1.0f, 0.0f);
        if (Math.abs(vector3.dot(vector32)) > 0.999f) {
            vector32.set(1.0f, 0.0f, 0.0f);
        }
        Vector3 normalizeLocal = vector32.cross(vector3, new Vector3()).normalizeLocal();
        vector32.set(vector3).crossLocal(normalizeLocal).normalizeLocal();
        this.f74171N.add(new C16154b(new C12902b(position.m1249clone(), vector3.m1249clone(), normalizeLocal.m1249clone(), vector32.m1249clone())));
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0082 A[Catch: all -> 0x004d, TryCatch #0 {all -> 0x004d, blocks: (B:11:0x002b, B:13:0x0034, B:15:0x003a, B:17:0x0042, B:18:0x0068, B:20:0x0050, B:22:0x0056, B:24:0x005e, B:25:0x006a, B:27:0x0073, B:33:0x0082, B:35:0x009c, B:37:0x00a0, B:39:0x00be, B:42:0x00c3, B:43:0x00ce, B:44:0x00d4, B:46:0x00da, B:49:0x00df, B:50:0x00ee, B:53:0x00f8, B:55:0x0113, B:58:0x0118, B:59:0x0123, B:61:0x012b, B:63:0x01a0, B:65:0x013d, B:67:0x0159, B:69:0x015d, B:71:0x0179, B:73:0x00e8, B:75:0x01a4, B:78:0x01ac, B:80:0x01b2, B:81:0x01d1, B:83:0x01bb, B:86:0x01c3, B:88:0x01c9, B:89:0x007a), top: B:10:0x002b }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x012b A[Catch: all -> 0x004d, TryCatch #0 {all -> 0x004d, blocks: (B:11:0x002b, B:13:0x0034, B:15:0x003a, B:17:0x0042, B:18:0x0068, B:20:0x0050, B:22:0x0056, B:24:0x005e, B:25:0x006a, B:27:0x0073, B:33:0x0082, B:35:0x009c, B:37:0x00a0, B:39:0x00be, B:42:0x00c3, B:43:0x00ce, B:44:0x00d4, B:46:0x00da, B:49:0x00df, B:50:0x00ee, B:53:0x00f8, B:55:0x0113, B:58:0x0118, B:59:0x0123, B:61:0x012b, B:63:0x01a0, B:65:0x013d, B:67:0x0159, B:69:0x015d, B:71:0x0179, B:73:0x00e8, B:75:0x01a4, B:78:0x01ac, B:80:0x01b2, B:81:0x01d1, B:83:0x01bb, B:86:0x01c3, B:88:0x01c9, B:89:0x007a), top: B:10:0x002b }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x013b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void addPointsToCurve() {
        SteppedArrayList steppedArrayList;
        int i10;
        Vector3 add;
        Vector3 add2;
        h hVar;
        if (this.f74178U) {
            this.f74178U = false;
            h hVar2 = this.curveType;
            if (hVar2 == h.Bezier) {
                this.f74169L.l();
                this.f74169L.M();
            } else if (hVar2 == h.Knee) {
                this.f74170M.clear();
            } else {
                this.f74171N.clear();
            }
            synchronized (this.f74175R) {
                try {
                    int size = this.f74176S.size();
                    if (size == 0) {
                        if (this.curveType == h.Knee && !this.f74170M.isEmpty()) {
                            this.f74170M.clear();
                            this.f74181X++;
                        } else if (this.curveType == h.CatmullRom && !this.f74171N.isEmpty()) {
                            this.f74171N.clear();
                            this.f74181X++;
                        }
                        return;
                    }
                    float f10 = this.f74174Q;
                    h hVar3 = this.curveType;
                    if (hVar3 != h.Knee && hVar3 != h.CatmullRom) {
                        steppedArrayList = null;
                        for (i10 = 0; i10 < size; i10++) {
                            PointReference pointReference = this.f74176S.get(i10);
                            cachePointSnapshot(pointReference);
                            Vector3 vector3 = pointReference.f74313e;
                            pointReference.f74309a = false;
                            if (pointReference.component.isConnected() && i10 == size - 1) {
                                pointReference.f74309a = true;
                                Vector3 add3 = vector3.add(pointReference.f74314f.mul(f10));
                                Vector3 add4 = vector3.add(pointReference.f74314f.mul(f10 * 0.4f));
                                h hVar4 = this.curveType;
                                if (hVar4 != h.Knee && hVar4 != h.CatmullRom) {
                                    this.f74169L.a(add3);
                                    this.f74169L.a(add4);
                                }
                                steppedArrayList.add(add3);
                                steppedArrayList.add(add4);
                            }
                            h hVar5 = this.curveType;
                            h hVar6 = h.Knee;
                            if (hVar5 != hVar6 && hVar5 != h.CatmullRom) {
                                pointReference.f74310b = this.f74169L.a(vector3);
                                if (pointReference.component.isConnected() && i10 == 0) {
                                    pointReference.f74309a = true;
                                    add = vector3.add(pointReference.f74314f.mul(0.4f * f10));
                                    add2 = vector3.add(pointReference.f74314f.mul(f10));
                                    hVar = this.curveType;
                                    if (hVar != hVar6 && hVar != h.CatmullRom) {
                                        this.f74169L.a(add);
                                        this.f74169L.a(add2);
                                    }
                                    steppedArrayList.add(add);
                                    steppedArrayList.add(add2);
                                }
                                if (size != 1) {
                                    pointReference.component.setSequencials(null, null);
                                    pointReference.component.setFirst(true);
                                    pointReference.component.setLast(true);
                                } else if (i10 == 0) {
                                    pointReference.component.setSequencials(null, this.f74176S.get(i10 + 1).component);
                                    pointReference.component.setFirst(true);
                                    pointReference.component.setLast(false);
                                } else if (i10 == size - 1) {
                                    pointReference.component.setSequencials(this.f74176S.get(i10 - 1).component, null);
                                    pointReference.component.setFirst(false);
                                    pointReference.component.setLast(true);
                                } else {
                                    pointReference.component.setSequencials(this.f74176S.get(i10 - 1).component, this.f74176S.get(i10 + 1).component);
                                    pointReference.component.setFirst(false);
                                    pointReference.component.setLast(false);
                                }
                            }
                            steppedArrayList.add(vector3);
                            pointReference.f74310b = -1;
                            if (pointReference.component.isConnected()) {
                                pointReference.f74309a = true;
                                add = vector3.add(pointReference.f74314f.mul(0.4f * f10));
                                add2 = vector3.add(pointReference.f74314f.mul(f10));
                                hVar = this.curveType;
                                if (hVar != hVar6) {
                                    this.f74169L.a(add);
                                    this.f74169L.a(add2);
                                }
                                steppedArrayList.add(add);
                                steppedArrayList.add(add2);
                            }
                            if (size != 1) {
                            }
                        }
                        if (this.curveType != h.Knee && steppedArrayList != null && !steppedArrayList.isEmpty()) {
                            rebuildKneePath(steppedArrayList);
                            this.f74181X++;
                        } else if (this.curveType == h.CatmullRom && steppedArrayList != null && !steppedArrayList.isEmpty()) {
                            rebuildCatmullPath(steppedArrayList);
                            this.f74181X++;
                        }
                    }
                    steppedArrayList = new SteppedArrayList();
                    while (i10 < size) {
                    }
                    if (this.curveType != h.Knee) {
                    }
                    if (this.curveType == h.CatmullRom) {
                        rebuildCatmullPath(steppedArrayList);
                        this.f74181X++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    private boolean applyStickToTerrainToPath() {
        List<C16154b> path;
        List<Component> h10;
        C12902b c12902b;
        Vector3 c10;
        GameObject gameObject = getGameObject();
        if (gameObject == null || (path = getPath()) == null || path.isEmpty() || (h10 = R8.f.h(Terrain.class)) == null || h10.isEmpty()) {
            return false;
        }
        com.itsmagic.engine.Engines.Engine.Vector.f fVar = new com.itsmagic.engine.Engines.Engine.Vector.f();
        com.itsmagic.engine.Engines.Engine.Vector.f fVar2 = new com.itsmagic.engine.Engines.Engine.Vector.f();
        C13600g.b(gameObject, fVar);
        fVar2.s0(fVar);
        fVar2.E();
        boolean z10 = false;
        for (int i10 = 0; i10 < path.size(); i10++) {
            C16154b c16154b = path.get(i10);
            if (c16154b != null && (c12902b = c16154b.f130087g) != null && (c10 = c12902b.c()) != null) {
                fVar.P(c10, this.f74166I);
                float x10 = this.f74166I.getX();
                float z11 = this.f74166I.getZ();
                float f10 = -3.4028235E38f;
                boolean z12 = false;
                for (int i11 = 0; i11 < h10.size(); i11++) {
                    try {
                        Component component = h10.get(i11);
                        if (component instanceof Terrain) {
                            Terrain terrain = (Terrain) component;
                            if (terrain.isEnabled() && terrain.isDataLoaded() && terrain.isInsideTerrain(x10, z11)) {
                                try {
                                    float worldY = terrain.getWorldY(x10, z11);
                                    if (!z12 || worldY > f10) {
                                        f10 = worldY;
                                        z12 = true;
                                    }
                                } catch (Exception unused) {
                                }
                            }
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
                if (z12 && Math.abs(this.f74166I.getY() - f10) > 1.0E-4f) {
                    this.f74166I.setY(f10);
                    fVar2.P(this.f74166I, this.f74167J);
                    if (!c10.equalsApprox(this.f74167J, 1.0E-4f)) {
                        c10.set(this.f74167J);
                        z10 = true;
                    }
                }
            }
        }
        return z10;
    }

    private void cachePointSnapshot(PointReference reference) {
        InterfaceC13197a interfaceC13197a;
        if (reference == null || reference.gameObject == null || (interfaceC13197a = reference.component) == null) {
            return;
        }
        Vector3 calculateRoadPointPosition = interfaceC13197a.calculateRoadPointPosition();
        Vector3 calculateRoadPointForward = reference.component.calculateRoadPointForward();
        reference.f74312d.set(calculateRoadPointPosition);
        reference.f74313e.set(calculateRoadPointPosition);
        reference.f74314f.set(calculateRoadPointForward);
        JP.release(calculateRoadPointForward);
        JP.release(calculateRoadPointPosition);
    }

    private void catmullRomPoint(Vector3 p02, Vector3 p12, Vector3 p22, Vector3 p32, float t10, Vector3 out) {
        float f10 = t10 * t10;
        float f11 = f10 * t10;
        out.set(((p12.getX() * 2.0f) + (((-p02.getX()) + p22.getX()) * t10) + (((((p02.getX() * 2.0f) - (p12.getX() * 5.0f)) + (p22.getX() * 4.0f)) - p32.getX()) * f10) + (((((-p02.getX()) + (p12.getX() * 3.0f)) - (p22.getX() * 3.0f)) + p32.getX()) * f11)) * 0.5f, ((p12.getY() * 2.0f) + (((-p02.getY()) + p22.getY()) * t10) + (((((p02.getY() * 2.0f) - (p12.getY() * 5.0f)) + (p22.getY() * 4.0f)) - p32.getY()) * f10) + (((((-p02.getY()) + (p12.getY() * 3.0f)) - (p22.getY() * 3.0f)) + p32.getY()) * f11)) * 0.5f, ((p12.getZ() * 2.0f) + (((-p02.getZ()) + p22.getZ()) * t10) + (((((p02.getZ() * 2.0f) - (p12.getZ() * 5.0f)) + (p22.getZ() * 4.0f)) - p32.getZ()) * f10) + (((((-p02.getZ()) + (p12.getZ() * 3.0f)) - (p22.getZ() * 3.0f)) + p32.getZ()) * f11)) * 0.5f);
    }

    private void catmullRomTangent(Vector3 p02, Vector3 p12, Vector3 p22, Vector3 p32, float t10, Vector3 out) {
        float f10 = t10 * t10;
        out.set(((-p02.getX()) + p22.getX() + (((((p02.getX() * 2.0f) - (p12.getX() * 5.0f)) + (p22.getX() * 4.0f)) - p32.getX()) * 2.0f * t10) + (((((-p02.getX()) + (p12.getX() * 3.0f)) - (p22.getX() * 3.0f)) + p32.getX()) * 3.0f * f10)) * 0.5f, ((-p02.getY()) + p22.getY() + (((((p02.getY() * 2.0f) - (p12.getY() * 5.0f)) + (p22.getY() * 4.0f)) - p32.getY()) * 2.0f * t10) + (((((-p02.getY()) + (p12.getY() * 3.0f)) - (p22.getY() * 3.0f)) + p32.getY()) * 3.0f * f10)) * 0.5f, ((-p02.getZ()) + p22.getZ() + (((((p02.getZ() * 2.0f) - (p12.getZ() * 5.0f)) + (p22.getZ() * 4.0f)) - p32.getZ()) * 2.0f * t10) + (((((-p02.getZ()) + (p12.getZ() * 3.0f)) - (p22.getZ() * 3.0f)) + p32.getZ()) * 3.0f * f10)) * 0.5f);
    }

    private void drawGizmo() {
        int i10;
        GameObject gameObject;
        GameObject gameObject2 = getGameObject();
        if (gameObject2 == null) {
            this.f74186m1.clear();
            return;
        }
        if (this.f74184b1 == null) {
            this.f74184b1 = Vertex.C1(Vertex.v.SPHERE_LOWPOLY);
        }
        List<PointReference> pointReferencesSnapshot = getPointReferencesSnapshot();
        int size = pointReferencesSnapshot.size();
        while (this.f74161D0.size() < size) {
            GizmoObject gizmoObject = new GizmoObject(this.f74184b1.x2());
            gizmoObject.setScaleBasedCamera(true);
            gizmoObject.setScale(0.2f);
            gizmoObject.setColor(new Color(235, 113, 52));
            this.f74161D0.add(gizmoObject);
        }
        while (true) {
            if (this.f74161D0.size() <= size) {
                break;
            } else {
                this.f74161D0.remove(0);
            }
        }
        Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
        for (int i11 = 0; i11 < size; i11++) {
            GizmoObject gizmoObject2 = this.f74161D0.get(i11);
            PointReference pointReference = pointReferencesSnapshot.get(i11);
            if (pointReference != null && (gameObject = pointReference.gameObject) != null) {
                gameObject.transform.u0(vector3);
                gizmoObject2.setPosition(vector3.toJAVARuntime());
            }
            Ub.a.a(gizmoObject2);
        }
        JP.release(vector3);
        List<C16154b> pathSnapshotForGizmo = getPathSnapshotForGizmo();
        int size2 = pathSnapshotForGizmo.size();
        this.f74186m1.clear();
        Vector3 vector32 = (Vector3) JP.acquire(Vector3.class);
        Vector3 vector33 = null;
        for (i10 = 0; i10 < size2; i10++) {
            C16154b c16154b = pathSnapshotForGizmo.get(i10);
            if (c16154b != null) {
                gameObject2.transform.n4(c16154b.c(), vector32);
                if (vector33 == null) {
                    vector33 = new Vector3();
                    vector33.set(vector32);
                } else {
                    this.f74186m1.addLine(vector33.toJAVARuntime(), vector32.toJAVARuntime());
                    vector33.set(vector32);
                }
            }
        }
        JP.release(vector32);
        Ub.a.a(this.f74186m1);
    }

    private void emitPathChanged() {
        GameObject gameObject = this.f74179V;
        if (gameObject == null) {
            gameObject = this.f79250n;
        }
        if (gameObject != null) {
            this.f74188q1.d(this.f74181X);
            gameObject.Y(this.f74188q1);
        }
    }

    private List<C16154b> getPathSnapshotForGizmo() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        List<C16154b> path = getPath();
        if (path == null) {
            return steppedArrayList;
        }
        try {
            int size = path.size();
            for (int i10 = 0; i10 < size; i10++) {
                steppedArrayList.add(path.get(i10));
            }
        } catch (RuntimeException unused) {
            steppedArrayList.clear();
        }
        return steppedArrayList;
    }

    private void rebuildCatmullPath(List<Vector3> positions) {
        float f10;
        int i10;
        int i11;
        int i12;
        Vector3 vector3;
        Vector3 vector32;
        Vector3 vector33;
        Vector3 vector34;
        this.f74171N.clear();
        if (positions == null || positions.isEmpty()) {
            return;
        }
        int i13 = 0;
        if (positions.size() == 1) {
            addCatmullPoint(positions.get(0), new Vector3(0.0f, 0.0f, 1.0f));
            return;
        }
        float M10 = Nc.b.M(0.01f, this.f74172O);
        int size = positions.size();
        Vector3 vector35 = new Vector3();
        Vector3 vector36 = new Vector3();
        Vector3 vector37 = new Vector3();
        Vector3 vector38 = new Vector3();
        Vector3 vector39 = new Vector3();
        Vector3 vector310 = new Vector3();
        int i14 = 0;
        while (true) {
            int i15 = size - 1;
            if (i14 >= i15) {
                return;
            }
            vector35.set(positions.get(Math.max(i14 - 1, i13)));
            vector36.set(positions.get(i14));
            int i16 = i14 + 1;
            vector37.set(positions.get(i16));
            vector38.set(positions.get(Math.min(i14 + 2, i15)));
            boolean z10 = true;
            int max = Math.max(1, (int) Math.ceil(vector36.distance(vector37) / M10));
            int i17 = 0;
            while (i17 <= max) {
                if (i14 <= 0 || i17 != 0) {
                    if (max == 0) {
                        i10 = i17;
                        f10 = 0.0f;
                    } else {
                        f10 = i17 / max;
                        i10 = i17;
                    }
                    i11 = i16;
                    i12 = i14;
                    Vector3 vector311 = vector310;
                    Vector3 vector312 = vector39;
                    Vector3 vector313 = vector38;
                    vector3 = vector38;
                    float f11 = f10;
                    vector32 = vector37;
                    catmullRomPoint(vector35, vector36, vector37, vector313, f11, vector312);
                    catmullRomTangent(vector35, vector36, vector32, vector3, f11, vector311);
                    vector33 = vector311;
                    vector34 = vector312;
                    addCatmullPoint(vector34, vector33);
                } else {
                    i10 = i17;
                    i11 = i16;
                    i12 = i14;
                    vector33 = vector310;
                    vector34 = vector39;
                    vector3 = vector38;
                    vector32 = vector37;
                }
                vector39 = vector34;
                vector310 = vector33;
                i17 = i10 + 1;
                i16 = i11;
                i14 = i12;
                vector38 = vector3;
                vector37 = vector32;
                z10 = true;
            }
            i14 = i16;
            i13 = 0;
        }
    }

    private void rebuildKneePath(List<Vector3> positions) {
        this.f74170M.clear();
        if (positions == null || positions.isEmpty()) {
            return;
        }
        for (int i10 = 0; i10 < positions.size(); i10++) {
            Vector3 vector3 = positions.get(i10);
            Vector3 vector32 = new Vector3();
            if (positions.size() == 1) {
                vector32.set(0.0f, 0.0f, 1.0f);
            } else if (i10 == 0) {
                vector32.set(positions.get(i10 + 1)).subLocal(vector3);
            } else if (i10 == positions.size() - 1) {
                vector32.set(vector3).subLocal(positions.get(i10 - 1));
            } else {
                vector32.set(positions.get(i10 + 1)).subLocal(positions.get(i10 - 1));
            }
            if (vector32.lengthSquared() <= 1.0E-8f) {
                vector32.set(0.0f, 0.0f, 1.0f);
            } else {
                vector32.normalizeLocal();
            }
            Vector3 vector33 = new Vector3(0.0f, 1.0f, 0.0f);
            if (Math.abs(vector32.dot(vector33)) > 0.999f) {
                vector33.set(1.0f, 0.0f, 0.0f);
            }
            Vector3 normalizeLocal = vector33.cross(vector32, new Vector3()).normalizeLocal();
            vector33.set(vector32).crossLocal(normalizeLocal).normalizeLocal();
            this.f74170M.add(new C16154b(new C12902b(vector3.m1249clone(), vector32.m1249clone(), normalizeLocal.m1249clone(), vector33.m1249clone())));
        }
    }

    public void rebuildPointReferencesFromChildren() {
        if (this.f79250n == null) {
            return;
        }
        synchronized (this.f74175R) {
            try {
                int size = this.f74176S.size();
                this.f74177T.clear();
                this.f74177T.addAll(this.f74176S);
                this.f74176S.clear();
                for (int i10 = 0; i10 < this.f79250n.D(); i10++) {
                    searchPointsOnChild(this.f79250n.C(i10));
                }
                if (size != this.f74176S.size()) {
                    scheduleReloadPoints();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void resolveUsageRoot() {
        GameObject gameObject;
        Component h02;
        if (this.f74179V != null || (gameObject = this.f79250n) == null || (h02 = gameObject.h0(Component.e.MeshCurve)) == null) {
            return;
        }
        this.f74179V = h02.f79250n;
    }

    private void schedulePathPointUsageComponentsUpdate() {
        if (this.f74183Z) {
            return;
        }
        this.f74183Z = true;
        K8.a.I(new d());
    }

    private void schedulePointReferenceRebuild() {
        if (K8.a.r()) {
            rebuildPointReferencesFromChildren();
        } else {
            if (this.f74187q0) {
                return;
            }
            this.f74187q0 = true;
            K8.a.I(new e());
        }
    }

    private void scheduleUsageRootTransformListenerUpdate() {
        if (this.f74182Y) {
            return;
        }
        this.f74182Y = true;
        K8.a.I(new c());
    }

    private void searchPointsOnChild(GameObject gameObject) {
        if (gameObject.isEnabled()) {
            InterfaceC13197a interfaceC13197a = (InterfaceC13197a) gameObject.d0(PathPoint.class);
            if (interfaceC13197a != null && interfaceC13197a.isEnabled()) {
                int i10 = 0;
                while (true) {
                    if (i10 >= this.f74177T.size()) {
                        this.f74176S.add(new PointReference(gameObject, interfaceC13197a));
                        interfaceC13197a.setUsageComponent(this);
                        break;
                    }
                    PointReference pointReference = this.f74177T.get(i10);
                    if (pointReference.gameObject == gameObject) {
                        this.f74176S.add(pointReference);
                        this.f74177T.remove(i10);
                        interfaceC13197a.setUsageComponent(this);
                        break;
                    }
                    i10++;
                }
                if (this.stickToTerrain && gameObject.d0(StickToTerrain.class) == null) {
                    gameObject.r(new StickToTerrain());
                }
            }
            if (!this.stickToTerrain) {
                Component d02 = gameObject.d0(StickToTerrain.class);
                while (d02 != null) {
                    d02.destroyComponent();
                    d02 = gameObject.d0(StickToTerrain.class);
                }
            }
            for (int i11 = 0; i11 < gameObject.D(); i11++) {
                searchPointsOnChild(gameObject.C(i11));
            }
        }
    }

    private void unregisterUsageRootTransformListener() {
        Transform transform;
        GameObject gameObject = this.f74180W;
        if (gameObject != null && (transform = gameObject.transform) != null) {
            transform.O2(this.f74189v0);
        }
        this.f74180W = null;
    }

    public void updatePathPointUsageComponents() {
        InterfaceC13197a interfaceC13197a;
        if (!K8.a.r()) {
            schedulePathPointUsageComponentsUpdate();
            return;
        }
        GameObject gameObject = this.f79250n;
        if (gameObject == null || gameObject.isGarbage()) {
            return;
        }
        synchronized (this.f74175R) {
            for (int i10 = 0; i10 < this.f74176S.size(); i10++) {
                try {
                    PointReference pointReference = this.f74176S.get(i10);
                    if (pointReference != null && (interfaceC13197a = pointReference.component) != null) {
                        interfaceC13197a.setUsageComponent(this);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public void updateUsageRootTransformListener() {
        Transform transform;
        if (!K8.a.r()) {
            scheduleUsageRootTransformListenerUpdate();
            return;
        }
        GameObject gameObject = this.f79250n;
        if (gameObject == null || gameObject.isGarbage()) {
            unregisterUsageRootTransformListener();
            return;
        }
        GameObject gameObject2 = getGameObject();
        if (this.f74180W == gameObject2) {
            return;
        }
        unregisterUsageRootTransformListener();
        this.f74180W = gameObject2;
        if (gameObject2 == null || (transform = gameObject2.transform) == null) {
            return;
        }
        transform.u(this.f74189v0);
        this.f74164G = true;
    }

    @Override
    public String getDisplayableTitle() {
        return f74160y1;
    }

    @Override
    public GameObject getGameObject() {
        GameObject gameObject = this.f74179V;
        return gameObject != null ? gameObject : this.f79250n;
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
        LinkedList linkedList = new LinkedList();
        if (context == null) {
            return linkedList;
        }
        linkedList.add(F5.c.i("Curve Type", h.class, this.curveType, new f()));
        linkedList.add(new C5.b(new g(), "Stick To Terrain", b.a.SLBoolean));
        return linkedList;
    }

    public List<C16154b> getPath() {
        h hVar = this.curveType;
        return hVar == h.Knee ? this.f74170M : hVar == h.CatmullRom ? this.f74171N : this.f74169L.s();
    }

    public int getPathVersion() {
        return this.f74181X;
    }

    public List<PointReference> getPointReferencesSnapshot() {
        SteppedArrayList steppedArrayList;
        synchronized (this.f74175R) {
            steppedArrayList = new SteppedArrayList(this.f74176S);
        }
        return steppedArrayList;
    }

    @Override
    public String getTitle() {
        return f74160y1;
    }

    @Override
    public int iconPriority() {
        return 2;
    }

    public boolean isStickToTerrain() {
        return this.stickToTerrain;
    }

    @Override
    public void lowTaskUpdate(GameObject gameObject, boolean isEditor) {
        boolean z10;
        boolean z11;
        super.lowTaskUpdate(gameObject, isEditor);
        if (gameObject == null) {
            return;
        }
        updateUsageRootTransformListener();
        h hVar = this.f74162E;
        h hVar2 = this.curveType;
        if (hVar != hVar2) {
            this.f74162E = hVar2;
            scheduleReloadPoints();
        }
        if (this.f74163F && !this.stickToTerrain) {
            scheduleReloadPoints();
            this.f74164G = false;
        }
        this.f74163F = this.stickToTerrain;
        synchronized (this.f74175R) {
            try {
                z10 = true;
                if (this.f74178U) {
                    addPointsToCurve();
                    z11 = true;
                } else {
                    z11 = false;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (this.curveType == h.Bezier) {
            this.f74169L.Z(1.0f);
            this.f74169L.P(this.f74172O);
            this.f74169L.U(this.f74173P);
            if (this.f74169L.I(getGameObject())) {
                this.f74181X++;
                z11 = true;
            }
        }
        int i10 = this.f74181X;
        boolean z12 = i10 != this.f74168K;
        this.f74168K = i10;
        boolean z13 = this.stickToTerrain;
        if (z13 && (this.f74164G || z12)) {
            this.f74165H = true;
        } else if (!z13) {
            this.f74165H = false;
        }
        if (this.f74165H && z13) {
            this.f74165H = false;
            if (applyStickToTerrainToPath()) {
                this.f74181X++;
            } else {
                z10 = z11;
            }
            this.f74164G = false;
            z11 = z10;
        }
        if (z11) {
            emitPathChanged();
        }
    }

    @Override
    public void onAttach() {
        super.onAttach();
        resolveUsageRoot();
        updateUsageRootTransformListener();
        rebuildPointReferencesFromChildren();
        this.f74162E = this.curveType;
        this.f74163F = this.stickToTerrain;
        scheduleReloadPoints();
    }

    @Override
    public void onDetach() {
        InterfaceC13197a interfaceC13197a;
        unregisterUsageRootTransformListener();
        synchronized (this.f74175R) {
            for (int i10 = 0; i10 < this.f74176S.size(); i10++) {
                try {
                    PointReference pointReference = this.f74176S.get(i10);
                    if (pointReference != null && (interfaceC13197a = pointReference.component) != null) {
                        interfaceC13197a.setUsageComponent(null);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        super.onDetach();
    }

    @Override
    public void onParentChanged() {
        super.onParentChanged();
        resolveUsageRoot();
        updateUsageRootTransformListener();
        rebuildPointReferencesFromChildren();
        scheduleReloadPoints();
    }

    @Override
    public void registerPathPoint(GameObject pointObject, InterfaceC13197a component) {
        if (pointObject == null || component == null) {
            return;
        }
        synchronized (this.f74175R) {
            for (int i10 = 0; i10 < this.f74176S.size(); i10++) {
                try {
                    PointReference pointReference = this.f74176S.get(i10);
                    if (pointReference.gameObject == pointObject && pointReference.component == component) {
                        component.setUsageComponent(this);
                        return;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            this.f74176S.add(new PointReference(pointObject, component));
            component.setUsageComponent(this);
            scheduleReloadPoints();
        }
    }

    @Override
    public void scheduleReloadPoints() {
        this.f74178U = true;
    }

    public void setEndCapDistance(float endCapDistance) {
        float M10 = Nc.b.M(0.01f, endCapDistance);
        if (this.f74174Q != M10) {
            this.f74174Q = M10;
            scheduleReloadPoints();
        }
    }

    public void setResolution(float resolution) {
        float M10 = Nc.b.M(0.1f, resolution);
        if (this.f74172O != M10) {
            this.f74172O = M10;
            scheduleReloadPoints();
        }
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f74190v1 = run;
    }

    public void setSimplifyAngle(float simplifyAngle) {
        float M10 = Nc.b.M(0.0f, simplifyAngle);
        if (this.f74173P != M10) {
            this.f74173P = M10;
            scheduleReloadPoints();
        }
    }

    public void setStickToTerrain(boolean stickToTerrain) {
        boolean z10 = this.stickToTerrain != stickToTerrain;
        this.stickToTerrain = stickToTerrain;
        this.f74164G = true;
        if (z10) {
            schedulePointReferenceRebuild();
            scheduleReloadPoints();
        }
    }

    public void setUsageRoot(GameObject usageRoot) {
        if (this.f74179V != usageRoot) {
            this.f74179V = usageRoot;
            updateUsageRootTransformListener();
            updatePathPointUsageComponents();
            scheduleReloadPoints();
        }
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f74190v1;
        if (component != null) {
            return component;
        }
        JAVARuntime.CurvePath curvePath = new JAVARuntime.CurvePath(this);
        this.f74190v1 = curvePath;
        return curvePath;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0022, code lost:
    
        if (r2.component != r6) goto L27;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void unregisterPathPoint(GameObject pointObject, InterfaceC13197a component) {
        synchronized (this.f74175R) {
            try {
                for (int size = this.f74176S.size() - 1; size >= 0; size--) {
                    PointReference pointReference = this.f74176S.get(size);
                    if (pointObject != null && pointReference.gameObject != pointObject) {
                    }
                    this.f74176S.remove(size);
                    scheduleReloadPoints();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void updateOnSelectedHierarchy() {
        super.updateOnSelectedHierarchy();
        drawGizmo();
    }

    @Override
    public Component mo1248clone() {
        CurvePath curvePath = new CurvePath();
        curvePath.curveType = this.curveType;
        curvePath.stickToTerrain = this.stickToTerrain;
        curvePath.f74172O = this.f74172O;
        curvePath.f74173P = this.f74173P;
        curvePath.f74174Q = this.f74174Q;
        return curvePath;
    }
}
