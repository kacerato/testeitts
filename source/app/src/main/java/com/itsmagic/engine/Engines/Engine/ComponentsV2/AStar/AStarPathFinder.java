package com.itsmagic.engine.Engines.Engine.ComponentsV2.AStar;

import C5.b;
import D5.h;
import android.content.Context;
import com.google.gson.JsonElement;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Prototyping.StandUp;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Utils.ObjectReferencing.AdvObjectReference;
import com.itsmagic.engine.Engines.Utils.Variable;
import eb.f;
import fb.AbstractC13203c;
import fb.C13201a;
import gb.C13317e;
import java.util.LinkedList;
import java.util.List;

public class AStarPathFinder extends Component {

    public static final String f72822M = "AStarPathFinder";

    public static final Class f72823N = AStarPathFinder.class;

    public GameObject f72824E;

    public GameObject f72825F;

    public final List<Vector3> f72826G;

    public int f72827H;

    public boolean f72828I;

    public final Quaternion f72829J;

    public StandUp f72830K;

    public JAVARuntime.Component f72831L;

    @Expose
    public boolean ignoreY;

    @Expose
    @f
    public float lookToLerp;

    @Expose
    @f
    public float pointCaptureDistance;

    @Expose
    private AdvObjectReference targetReference;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return AStarPathFinder.f72823N;
        }

        @Override
        public String c() {
            return AStarPathFinder.f72822M;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.NPC);
        }

        @Override
        public String f() {
            return AStarPathFinder.f72822M;
        }
    }

    public class b implements D5.d {
        public b() {
        }

        @Override
        public boolean allowSelect() {
            return true;
        }

        @Override
        public Component get() {
            GameObject gameObject = AStarPathFinder.this.f72824E;
            if (gameObject == null && AStarPathFinder.this.targetReference != null && (gameObject = AStarPathFinder.this.targetReference.m()) == null) {
                gameObject = AStarPathFinder.this.targetReference.k();
            }
            if (gameObject == null) {
                return null;
            }
            return gameObject.d0(AStarWaypoint.class);
        }

        @Override
        public GameObject getAllowObject() {
            return null;
        }

        @Override
        public String getExtraTittle() {
            return "";
        }

        @Override
        public String getTittle() {
            GameObject gameObject = AStarPathFinder.this.f72824E;
            if (gameObject == null && AStarPathFinder.this.targetReference != null && (gameObject = AStarPathFinder.this.targetReference.m()) == null) {
                gameObject = AStarPathFinder.this.targetReference.k();
            }
            return gameObject != null ? gameObject.getName() : "";
        }

        @Override
        public boolean match(Component component) {
            return component instanceof AStarWaypoint;
        }

        @Override
        public void set(Component component) {
            GameObject gameObject;
            if (component == null || (gameObject = component.f79250n) == null) {
                AStarPathFinder.this.setTarget(null);
            } else {
                AStarPathFinder.this.setTarget(gameObject);
            }
        }
    }

    public class c implements h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", AStarPathFinder.this.pointCaptureDistance + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                AStarPathFinder.this.pointCaptureDistance = Math.max(0.01f, variable.float_value);
            }
        }
    }

    public class d implements h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", AStarPathFinder.this.lookToLerp + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                AStarPathFinder.this.lookToLerp = variable.float_value;
            }
        }
    }

    public class e implements h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", AStarPathFinder.this.ignoreY + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                AStarPathFinder.this.ignoreY = variable.booolean_value.booleanValue();
            }
        }
    }

    static {
        C13201a.b(new a());
    }

    public AStarPathFinder() {
        super(f72822M);
        this.pointCaptureDistance = 0.5f;
        this.lookToLerp = 10.0f;
        this.ignoreY = true;
        this.targetReference = new AdvObjectReference();
        this.f72826G = new LinkedList();
        this.f72829J = new Quaternion();
    }

    private void clearCurrentPath() {
        this.f72826G.clear();
        this.f72827H = 0;
        this.f72828I = false;
    }

    private AStarWaypoint getTargetWaypoint() {
        GameObject gameObject = this.f72824E;
        if (gameObject == null) {
            return null;
        }
        return (AStarWaypoint) gameObject.d0(AStarWaypoint.class);
    }

    private void lookTo(Vector3 position) {
        if (this.f72830K == null) {
            this.f72830K = (StandUp) this.f79250n.c0(Component.e.StandUp);
        }
        float E10 = Nc.b.E(0.0f, this.lookToLerp * K8.d.b(), 1.0f);
        Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
        try {
            this.f79250n.transform.u0(vector3);
            if (this.ignoreY) {
                this.f72829J.f0(vector3, position);
            } else {
                this.f72829J.Z(vector3, position);
            }
            JP.release(vector3);
            StandUp standUp = this.f72830K;
            if (standUp == null) {
                this.f79250n.transform.f2(this.f72829J, E10);
            } else {
                standUp.setRotationY(this.f72829J.E());
            }
        } catch (Throwable th2) {
            JP.release(vector3);
            throw th2;
        }
    }

    private boolean samePath(List<Vector3> a10, List<Vector3> b10) {
        if (a10 == b10) {
            return true;
        }
        if (a10 == null || b10 == null || a10.size() != b10.size()) {
            return false;
        }
        for (int i10 = 0; i10 < a10.size(); i10++) {
            if (!samePoint(a10.get(i10), b10.get(i10))) {
                return false;
            }
        }
        return true;
    }

    private boolean samePoint(Vector3 a10, Vector3 b10) {
        if (a10 == b10) {
            return true;
        }
        if (a10 == null || b10 == null) {
            return false;
        }
        return Math.abs(a10.getX() - b10.getX()) <= 1.0E-4f && Math.abs(a10.getY() - b10.getY()) <= 1.0E-4f && Math.abs(a10.getZ() - b10.getZ()) <= 1.0E-4f;
    }

    private void searchTarget() {
        if (C13317e.J(this.f72824E)) {
            return;
        }
        this.f72824E = null;
        AdvObjectReference advObjectReference = this.targetReference;
        if (advObjectReference != null) {
            GameObject k10 = advObjectReference.k();
            this.f72824E = k10;
            C13317e.J(k10);
        }
    }

    @Override
    public void disabledPreUpdate(GameObject gameObject, boolean isEditor) {
        super.disabledPreUpdate(gameObject, isEditor);
        this.targetReference.o(gameObject);
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        if (context == null) {
            return linkedList;
        }
        linkedList.add(new C5.b(new b(), Lang.l(Lang.T.TARGET)));
        c cVar = new c();
        b.a aVar = b.a.SLFloat;
        linkedList.add(new C5.b(cVar, "Point capture", aVar));
        linkedList.add(new C5.b(new d(), "Look lerp", aVar));
        linkedList.add(new C5.b(new e(), "Ignore Y", b.a.SLBoolean));
        return linkedList;
    }

    @Override
    public String getTitle() {
        return f72822M;
    }

    public boolean isPathFinished() {
        return this.f72828I;
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        if (gameObject == null) {
            return;
        }
        this.targetReference.o(gameObject);
        searchTarget();
        GameObject gameObject2 = this.f72825F;
        GameObject gameObject3 = this.f72824E;
        boolean z10 = gameObject2 != gameObject3;
        this.f72825F = gameObject3;
        if (z10) {
            clearCurrentPath();
        }
        if (c8.b.k()) {
            AStarWaypoint targetWaypoint = getTargetWaypoint();
            if (targetWaypoint == null) {
                clearCurrentPath();
                return;
            }
            List<Vector3> a10 = AStarSceneController.a(gameObject, targetWaypoint, this.ignoreY);
            if (a10.isEmpty()) {
                clearCurrentPath();
                return;
            }
            if (z10 || !samePath(this.f72826G, a10)) {
                this.f72826G.clear();
                this.f72826G.addAll(a10);
                this.f72827H = 0;
                this.f72828I = false;
            }
            if (this.f72826G.isEmpty()) {
                return;
            }
            Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
            try {
                gameObject.transform.u0(vector3);
                if (this.f72827H < 0) {
                    this.f72827H = 0;
                }
                if (this.f72827H >= this.f72826G.size()) {
                    this.f72827H = this.f72826G.size() - 1;
                }
                Vector3 vector32 = this.f72826G.get(this.f72827H);
                float sqrtDistanceIgnoreY = this.ignoreY ? vector3.sqrtDistanceIgnoreY(vector32) : vector3.sqrtDistance(vector32);
                float f10 = this.pointCaptureDistance;
                if (sqrtDistanceIgnoreY <= f10 * f10) {
                    if (this.f72827H < this.f72826G.size() - 1) {
                        this.f72827H++;
                        this.f72828I = false;
                    } else {
                        this.f72828I = true;
                    }
                }
                int i10 = this.f72827H;
                if (i10 >= 0 && i10 < this.f72826G.size()) {
                    lookTo(this.f72826G.get(this.f72827H));
                }
                JP.release(vector3);
            } catch (Throwable th2) {
                JP.release(vector3);
                throw th2;
            }
        }
    }

    @Override
    public JsonElement serialize(Context context) {
        this.targetReference.o(this.f79250n);
        GameObject gameObject = this.f72824E;
        if (gameObject != null) {
            this.targetReference.p(gameObject);
        }
        if (this.targetReference.m() != null) {
            this.targetReference.q();
        }
        return super.serialize(context);
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f72831L = run;
    }

    public void setTarget(GameObject target) {
        if (this.f72824E != target) {
            this.f72824E = target;
            if (target != null) {
                this.targetReference.p(target);
                this.targetReference.o(this.f79250n);
            } else {
                this.targetReference = new AdvObjectReference();
            }
            clearCurrentPath();
            reloadInspector();
        }
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f72831L;
        if (component != null) {
            return component;
        }
        JAVARuntime.AStarPathFinder aStarPathFinder = new JAVARuntime.AStarPathFinder(this);
        this.f72831L = aStarPathFinder;
        return aStarPathFinder;
    }

    @Override
    public Component mo1248clone() {
        AStarPathFinder aStarPathFinder = new AStarPathFinder();
        aStarPathFinder.pointCaptureDistance = this.pointCaptureDistance;
        aStarPathFinder.lookToLerp = this.lookToLerp;
        aStarPathFinder.ignoreY = this.ignoreY;
        aStarPathFinder.targetReference = AdvObjectReference.j(this.targetReference);
        return aStarPathFinder;
    }
}
