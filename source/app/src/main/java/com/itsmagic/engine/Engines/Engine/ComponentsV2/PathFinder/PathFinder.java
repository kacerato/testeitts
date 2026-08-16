package com.itsmagic.engine.Engines.Engine.ComponentsV2.PathFinder;

import C5.b;
import JAVARuntime.Color;
import JAVARuntime.GizmoPath;
import JAVARuntime.Runnable;
import android.content.Context;
import android.view.View;
import android.widget.Toast;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentUtils.ObjectReference;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.NavMesh.BakedNavMesh;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Prototyping.StandUp;
import com.itsmagic.engine.Engines.Engine.JavaPool.MiniJP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fa.C13200a;
import fb.AbstractC13203c;
import fb.C13201a;
import g9.C13301a;
import g9.InterfaceC13302b;
import gb.C13317e;
import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

public class PathFinder extends Component implements Serializable {

    public static final String f74315b1 = "PathFinder";

    public static final Class f74316i1 = PathFinder.class;

    public JAVARuntime.Component f74317D0;

    public GameObject f74318E;

    public GameObject f74319F;

    public GameObject f74320G;

    public float f74321H;

    public Quaternion f74322I;

    public StandUp f74323J;

    public int f74324K;

    public C13200a f74325L;

    public C13200a f74326M;

    public Vector3 f74327N;

    public final AtomicBoolean f74328O;

    public boolean f74329P;

    public final MiniJP f74330Q;

    public final Vector3 f74331R;

    public final Vector3 f74332S;

    public boolean f74333T;

    public BakedNavMesh f74334U;

    public final GizmoPath f74335V;

    public final Zc.a f74336W;

    public final ColorINT f74337X;

    public final float f74338Y;

    public boolean f74339Z;

    @Expose
    private ObjectReference bakeReference;

    @Expose
    @eb.f
    public float findTimeOutSeconds;

    @Expose
    public boolean ignoreY;

    @Expose
    @eb.f
    public float lookToLerp;

    @Expose
    @eb.f
    public float pointCaptureDistance;

    public boolean f74340q0;

    @Expose
    @eb.f
    public float refreshDistance;

    @Expose
    @eb.f
    public float searchDelay;

    @Expose
    private ObjectReference targetReference;

    public Vector3 f74341v0;

    public class a implements D5.h {
        public a() {
        }

        @Override
        public Variable get() {
            return new Variable("", PathFinder.this.ignoreY + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                PathFinder.this.ignoreY = variable.booolean_value.booleanValue();
            }
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", PathFinder.this.refreshDistance + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                PathFinder.this.refreshDistance = variable.float_value;
            }
        }
    }

    public class c extends AbstractC13203c {
        @Override
        public Class b() {
            return PathFinder.f74316i1;
        }

        @Override
        public String c() {
            return PathFinder.f74315b1;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.NPC);
        }

        @Override
        public String f() {
            return Lang.l(Lang.T.PATH_FINDER);
        }
    }

    public class d extends GizmoPath {

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("PathFinder - init gizmo path") : null;
                try {
                    d.this.setWireFrameWidth(Nc.b.k0(3.0f));
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public d() {
            K8.a.I(new a());
        }
    }

    public class e implements InterfaceC13302b {

        public final Vector3 f74346a;

        public final Vector3 f74347b;

        public class a implements Runnable {

            public final C13200a f74349b;

            public a(final C13200a val$path) {
                this.f74349b = val$path;
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("PathFinder - set pending path") : null;
                try {
                    PathFinder.this.f74326M = this.f74349b;
                    PathFinder.this.f74328O.set(false);
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public e(final Vector3 val$myPosition, final Vector3 val$targetPos) {
            this.f74346a = val$myPosition;
            this.f74347b = val$targetPos;
        }

        @Override
        public void run() {
            C13200a findEntirePath = PathFinder.this.f74334U.findEntirePath(this.f74346a, this.f74347b);
            if (findEntirePath != null) {
                K8.a.I(new a(findEntirePath));
            } else {
                PathFinder.this.f74328O.set(false);
            }
        }
    }

    public class f implements D5.b {
        public f() {
        }

        @Override
        public void a(View view) {
            GameObject e10 = G3.b.e("==NAV-MESH==", new Vector3());
            if (e10 != null) {
                PathFinder.this.bakeReference.h(e10);
                PathFinder.this.f74318E = e10;
            }
        }
    }

    public class g implements R8.e {
        public g() {
        }

        @Override
        public void a() {
            PathFinder.this.reloadInspector();
        }

        @Override
        public void b() {
            PathFinder.this.reloadInspector();
        }

        @Override
        public boolean c(GameObject gameObject) {
            return true;
        }
    }

    public class h implements R8.e {

        public final Context f74353a;

        public h(final Context val$context) {
            this.f74353a = val$context;
        }

        @Override
        public void a() {
            PathFinder.this.reloadInspector();
        }

        @Override
        public void b() {
            PathFinder.this.reloadInspector();
        }

        @Override
        public boolean c(GameObject gameObject) {
            if (gameObject == null || gameObject.c0(Component.e.BakedNavMesh) != null) {
                return true;
            }
            Toast.makeText(this.f74353a, "Please select an object with a NavMesh component", 0).show();
            return false;
        }
    }

    public class i implements D5.h {
        public i() {
        }

        @Override
        public Variable get() {
            return new Variable("", PathFinder.this.searchDelay + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                PathFinder.this.searchDelay = variable.float_value;
            }
        }
    }

    public class j implements D5.h {
        public j() {
        }

        @Override
        public Variable get() {
            return new Variable("", PathFinder.this.pointCaptureDistance + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                PathFinder.this.pointCaptureDistance = variable.float_value;
            }
        }
    }

    public class k implements D5.h {
        public k() {
        }

        @Override
        public Variable get() {
            return new Variable("", PathFinder.this.lookToLerp + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                PathFinder.this.lookToLerp = variable.float_value;
            }
        }
    }

    public enum l {
        Disabled,
        NavMesh,
        Path
    }

    static {
        C13201a.b(new c());
    }

    public PathFinder() {
        super(f74315b1);
        this.pointCaptureDistance = 0.5f;
        this.ignoreY = true;
        this.targetReference = new ObjectReference();
        this.bakeReference = new ObjectReference();
        this.lookToLerp = 10.0f;
        this.refreshDistance = 1.0f;
        this.searchDelay = 1.0f;
        this.findTimeOutSeconds = 10.0f;
        this.f74321H = 0.0f;
        this.f74322I = new Quaternion();
        this.f74325L = null;
        this.f74326M = null;
        this.f74328O = new AtomicBoolean();
        this.f74330Q = new MiniJP();
        this.f74331R = new Vector3();
        this.f74332S = new Vector3();
        this.f74335V = new d();
        this.f74336W = new Zc.a();
        this.f74337X = new ColorINT();
        this.f74338Y = 1.0f;
        this.f74339Z = false;
        this.f74340q0 = false;
        this.f74341v0 = new Vector3();
    }

    private void buildGizmoPath() {
        int i10 = 0;
        this.f74335V.setColor(new Color(0, 0, 255));
        this.f74335V.clear();
        if (this.f74325L.d() > 0) {
            this.f74335V.addLineUnsafe(this.f79250n.transform.u0((Vector3) this.f74330Q.acquire(Vector3.class)).toJAVARuntime(), this.f74325L.c(0).toJAVARuntime());
            while (i10 < this.f74325L.d() - 1) {
                Vector3 m1249clone = this.f74325L.c(i10).m1249clone();
                m1249clone.setY(m1249clone.getY() + 1.0f);
                i10++;
                Vector3 m1249clone2 = this.f74325L.c(i10).m1249clone();
                m1249clone2.setY(m1249clone2.getY() + 1.0f);
                this.f74335V.addLineUnsafe(m1249clone.toJAVARuntime(), m1249clone2.toJAVARuntime());
            }
            C13200a c13200a = this.f74325L;
            Vector3 m1249clone3 = c13200a.c(c13200a.d() - 1).m1249clone();
            m1249clone3.setY(m1249clone3.getY() + 1.0f);
            this.f74335V.addLineUnsafe(m1249clone3.toJAVARuntime(), this.f74319F.transform.u0((Vector3) this.f74330Q.acquire(Vector3.class)).toJAVARuntime());
        }
        this.f74335V.apply();
        this.f74339Z = true;
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

    private void checkPoints() {
        Vector3 vector3 = this.f74331R;
        while (this.f74325L.d() > 0) {
            float sqrtDistanceIgnoreY = vector3.sqrtDistanceIgnoreY(this.f74325L.c(0));
            float f10 = this.pointCaptureDistance;
            if (sqrtDistanceIgnoreY > f10 * f10) {
                return;
            } else {
                this.f74325L.e(0);
            }
        }
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

    private void lookTo(Vector3 position) {
        if (this.f74323J == null) {
            this.f74323J = (StandUp) this.f79250n.c0(Component.e.StandUp);
        }
        float E10 = Nc.b.E(0.0f, this.lookToLerp * K8.d.b(), 1.0f);
        Vector3 vector3 = (Vector3) this.f74330Q.acquire(Vector3.class);
        try {
            vector3.set(this.f74331R);
            if (this.ignoreY) {
                this.f74322I.f0(vector3, position);
            } else {
                this.f74322I.Z(vector3, position);
            }
            this.f74330Q.release(vector3);
            StandUp standUp = this.f74323J;
            if (standUp == null) {
                this.f79250n.transform.f2(this.f74322I, E10);
            } else {
                standUp.setRotationY(this.f74322I.E());
            }
            this.f74340q0 = true;
            this.f74341v0.set(position);
        } catch (Throwable th2) {
            this.f74330Q.release(vector3);
            throw th2;
        }
    }

    private void precacheGlobalPositions() {
        GameObject gameObject = this.f79250n;
        if (gameObject != null) {
            gameObject.transform.u0(this.f74331R);
        }
        if (!C13317e.J(this.f74319F)) {
            this.f74333T = false;
        } else {
            this.f74319F.transform.u0(this.f74332S);
            this.f74333T = true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0064, code lost:
    
        if (r2 >= (r5 * r5)) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0094, code lost:
    
        if (r0 < (r4 * r4)) goto L36;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void updatePath() {
        Vector3 vector3;
        GameObject gameObject = this.f74319F;
        this.f74320G = gameObject;
        if (C13317e.J(gameObject) && this.f74334U != null && this.f74333T && c8.b.k()) {
            Vector3 m1249clone = this.f74331R.m1249clone();
            Vector3 m1249clone2 = this.f74332S.m1249clone();
            C13200a c13200a = this.f74326M;
            Vector3 vector32 = null;
            if (c13200a != null) {
                this.f74329P = true;
                this.f74325L = c13200a;
                this.f74326M = null;
                c13200a.b(this.pointCaptureDistance * 1.2f);
            }
            if (!this.f74328O.get()) {
                float e10 = this.f74321H + K8.d.e();
                this.f74321H = e10;
                if (e10 >= this.searchDelay) {
                    this.f74321H = 0.0f;
                    if (this.f74325L != null && (vector3 = this.f74327N) != null) {
                        float sqrtDistance = m1249clone2.sqrtDistance(vector3);
                        float f10 = this.refreshDistance;
                    }
                    Vector3 vector33 = this.f74327N;
                    if (vector33 == null) {
                        this.f74327N = m1249clone2.m1249clone();
                    } else {
                        vector33.set(m1249clone2);
                    }
                    this.f74328O.set(true);
                    C13301a.b(new e(m1249clone, m1249clone2));
                }
            }
            if (this.f74325L != null) {
                Vector3 nextPoint = getNextPoint();
                if (nextPoint != null) {
                    float sqrtDistanceIgnoreY = m1249clone.sqrtDistanceIgnoreY(nextPoint);
                    float f11 = this.pointCaptureDistance;
                }
                vector32 = nextPoint;
                if (vector32 != null) {
                    lookTo(vector32);
                } else {
                    lookTo(m1249clone2);
                }
            }
        }
    }

    @Override
    public String getDisplayableTitle() {
        return Lang.l(Lang.T.PATH_FINDER);
    }

    @Override
    public int getIconResource() {
        return R.drawable.pathfinder;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_soundlistener;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        if (context == null) {
            return linkedList;
        }
        if (this.f74334U == null) {
            String l10 = Lang.l(Lang.T.NO_NAVMESH_BAKE_FOUND_CREATE_ONE);
            Ac.b bVar = Theme.T.ACCENT;
            linkedList.add(new C5.b(l10, Theme.i(bVar)));
            linkedList.add(new C5.b(new f(), "Bake", b.a.Button));
            linkedList.add(new C5.b(Lang.l(Lang.T.SEPARATOR_LINE_STRONG), Theme.i(bVar)));
        }
        linkedList.add(this.targetReference.d(Lang.l(Lang.T.TARGET), new g()));
        linkedList.add(this.bakeReference.d("Nav mesh", new h(context)));
        i iVar = new i();
        String l11 = Lang.l(Lang.T.SEARCH_DELAY);
        b.a aVar = b.a.SLFloat;
        C5.b bVar2 = new C5.b(iVar, l11, aVar);
        GameObject gameObject = this.f79250n;
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        linkedList.add(bVar2.d(gameObject, this, "searchDelay", cVar));
        linkedList.add(new C5.b(new j(), "Point capture distance", aVar).d(this.f79250n, this, "pointCaptureDistance", cVar));
        linkedList.add(new C5.b(new k(), Lang.l(Lang.T.LOOK_LERP), aVar).d(this.f79250n, this, "lookToLerp", cVar));
        linkedList.add(new C5.b(new a(), Lang.l(Lang.T.LOOK_IGNORE_Y), b.a.SLBoolean));
        linkedList.add(new C5.b(new b(), Lang.l(Lang.T.REFRESH_DISTANCE), aVar).d(this.f79250n, this, "refreshDistance", cVar));
        if (c8.b.k()) {
            if (!hasPath()) {
                linkedList.add(new C5.b(Lang.l(Lang.T.NO_CALCULATED_PATH_YET), 12, Theme.i(Theme.T.ACCENT)));
            }
            if (!hasTarget()) {
                linkedList.add(new C5.b(Lang.l(Lang.T.NO_TARGET_YET), 12, Theme.i(Theme.T.ACCENT)));
            }
        }
        return linkedList;
    }

    public Vector3 getNextPoint() {
        checkPoints();
        if (this.f74325L.d() > 0) {
            return this.f74325L.c(0);
        }
        return null;
    }

    public float getTargetDistance() {
        if (C13317e.J(this.f74320G)) {
            return this.f74332S.distance(this.f74331R);
        }
        return -1.0f;
    }

    public float getTargetPathDistance() {
        if (C13317e.J(this.f74320G)) {
            return this.f74332S.distanceIgnoreY(this.f74331R);
        }
        return -1.0f;
    }

    public float getTargetPathSqrtDistance() {
        if (C13317e.J(this.f74320G)) {
            return this.f74332S.sqrtDistanceIgnoreY(this.f74331R);
        }
        return -1.0f;
    }

    @Override
    public String getTitle() {
        return f74315b1;
    }

    @Override
    public Component.e getType() {
        return Component.e.PathFinder;
    }

    public boolean hasPath() {
        return this.f74325L != null;
    }

    public boolean hasTarget() {
        return this.f74319F != null;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @Override
    public void onDetach() {
    }

    @Override
    public void parallelUpdate() {
        super.parallelUpdate();
        this.f74330Q.startFrame();
        try {
            updatePath();
        } finally {
            this.f74330Q.endFrame();
        }
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        if (this.targetReference.f()) {
            this.f74319F = this.targetReference.e();
        } else {
            this.f74319F = null;
        }
        if (this.f74334U == null) {
            if (this.bakeReference.f()) {
                this.f74318E = this.bakeReference.e();
            } else {
                this.f74318E = null;
            }
            GameObject gameObject2 = this.f74318E;
            if (gameObject2 != null) {
                this.f74334U = (BakedNavMesh) gameObject2.c0(Component.e.BakedNavMesh);
            } else {
                this.f74334U = (BakedNavMesh) com.itsmagic.engine.Engines.Engine.World.a.j(Component.e.BakedNavMesh);
            }
        }
        precacheGlobalPositions();
        if (this.f74340q0) {
            if (gameObject.b1()) {
                this.f74335V.clear();
                this.f74335V.addLine(gameObject.transform.u0((Vector3) this.f74330Q.acquire(Vector3.class)).toJAVARuntime(), this.f74341v0.toJAVARuntime());
                this.f74335V.apply();
                Ub.a.a(this.f74335V);
            }
            this.f74340q0 = false;
        }
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f74317D0 = run;
    }

    public void setTarget(GameObject target) {
        if (this.f74319F != target) {
            this.f74319F = target;
            this.targetReference.h(target);
            reloadInspector();
        }
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f74317D0;
        if (component != null) {
            return component;
        }
        JAVARuntime.PathFinder pathFinder = new JAVARuntime.PathFinder(this);
        this.f74317D0 = pathFinder;
        return pathFinder;
    }

    @Override
    public Component mo1248clone() {
        PathFinder pathFinder = new PathFinder();
        pathFinder.searchDelay = this.searchDelay;
        pathFinder.ignoreY = this.ignoreY;
        pathFinder.targetReference = this.targetReference.clone();
        pathFinder.bakeReference = this.bakeReference.clone();
        pathFinder.f74319F = this.f74319F;
        return pathFinder;
    }

    public PathFinder(C13201a componentDictionary) {
        super(f74315b1);
        this.pointCaptureDistance = 0.5f;
        this.ignoreY = true;
        this.targetReference = new ObjectReference();
        this.bakeReference = new ObjectReference();
        this.lookToLerp = 10.0f;
        this.refreshDistance = 1.0f;
        this.searchDelay = 1.0f;
        this.findTimeOutSeconds = 10.0f;
        this.f74321H = 0.0f;
        this.f74322I = new Quaternion();
        this.f74325L = null;
        this.f74326M = null;
        this.f74328O = new AtomicBoolean();
        this.f74330Q = new MiniJP();
        this.f74331R = new Vector3();
        this.f74332S = new Vector3();
        this.f74335V = new d();
        this.f74336W = new Zc.a();
        this.f74337X = new ColorINT();
        this.f74338Y = 1.0f;
        this.f74339Z = false;
        this.f74340q0 = false;
        this.f74341v0 = new Vector3();
    }
}
