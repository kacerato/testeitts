package com.itsmagic.engine.Engines.Engine.ComponentsV2.Route;

import C5.b;
import D5.h;
import Lb.k;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Prototyping.StandUp;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import eb.f;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.LinkedList;
import java.util.List;

public class RouteFollower extends Component {

    public static final String f76360Q = "RouteFollower";

    public static final Class f76361R = RouteFollower.class;

    public GameObject f76362E;

    public GameObject f76363F;

    public Route f76364G;

    public int f76365H;

    public int f76366I;

    public boolean f76367J;

    public StandUp f76368K;

    public Quaternion f76369L;

    public boolean f76370M;

    public boolean f76371N;

    public boolean f76372O;

    public JAVARuntime.Component f76373P;

    @Expose
    public boolean ignoreY;

    @Expose
    @f
    public float lookToLerp;

    @Expose
    @f
    public float minimalPointDistance;

    @Expose
    private String targetGUID;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return RouteFollower.f76361R;
        }

        @Override
        public String c() {
            return RouteFollower.f76360Q;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.NPC);
        }

        @Override
        public String f() {
            return Lang.l(Lang.T.ROUTE_FOLLOWER);
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
            return RouteFollower.this.f76364G;
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
            return RouteFollower.this.f76362E != null ? RouteFollower.this.f76362E.getName() : "";
        }

        @Override
        public boolean match(Component component) {
            return component instanceof Route;
        }

        @Override
        public void set(Component component) {
            GameObject gameObject;
            if (component == null || (gameObject = component.f79250n) == null) {
                RouteFollower.this.setTarget((GameObject) null);
            } else {
                RouteFollower.this.setTarget(gameObject);
            }
        }
    }

    public class c implements h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", RouteFollower.this.minimalPointDistance + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                RouteFollower.this.minimalPointDistance = variable.float_value;
            }
        }
    }

    public class d implements h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", RouteFollower.this.lookToLerp + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                RouteFollower.this.lookToLerp = variable.float_value;
            }
        }
    }

    public class e implements h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", RouteFollower.this.ignoreY + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                RouteFollower.this.ignoreY = variable.booolean_value.booleanValue();
            }
        }
    }

    static {
        C13201a.b(new a());
    }

    public RouteFollower() {
        super(f76360Q);
        this.minimalPointDistance = 0.5f;
        this.lookToLerp = 10.0f;
        this.ignoreY = true;
        this.f76369L = new Quaternion();
        this.f76370M = false;
        this.f76372O = false;
    }

    private void lookTo(Vector3 position) {
        if (this.f76368K == null) {
            this.f76368K = (StandUp) this.f79250n.c0(Component.e.StandUp);
        }
        float E10 = Nc.b.E(0.0f, this.lookToLerp * K8.d.b(), 1.0f);
        Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
        try {
            this.f79250n.transform.u0(vector3);
            if (this.ignoreY) {
                this.f76369L.f0(vector3, position);
            } else {
                this.f76369L.Z(vector3, position);
            }
            JP.release(vector3);
            StandUp standUp = this.f76368K;
            if (standUp == null) {
                this.f79250n.transform.f2(this.f76369L, E10);
            } else {
                standUp.setRotationY(this.f76369L.E());
            }
        } catch (Throwable th2) {
            JP.release(vector3);
            throw th2;
        }
    }

    private void search() {
        String str;
        if (this.f76362E != null || this.f76366I >= 3 || (str = this.targetGUID) == null || str.isEmpty()) {
            return;
        }
        GameObject h10 = k.h(this.targetGUID, com.itsmagic.engine.Engines.Engine.World.a.f80030c);
        this.f76362E = h10;
        if (h10 != null) {
            this.f76364G = (Route) h10.c0(Component.e.Route);
        } else {
            this.f76364G = null;
        }
        this.f76366I++;
    }

    public int findNearestIndex() {
        return findNearestIndex(this.f76364G);
    }

    public Vector3 findNearestPoint() {
        Route route = this.f76364G;
        int findNearestIndex = findNearestIndex(route);
        if (findNearestIndex < 0 || route == null) {
            return null;
        }
        return route.pointAt(findNearestIndex);
    }

    @Override
    public String getDisplayableTitle() {
        return Lang.l(Lang.T.ROUTE_FOLLOWER);
    }

    @Override
    public int getIconResource() {
        return R.drawable.route;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_terrain;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        GameObject gameObject = this.f79250n;
        if (context == null) {
            return linkedList;
        }
        linkedList.add(new C5.b(new b(), Lang.l(Lang.T.ROUTE)));
        c cVar = new c();
        String l10 = Lang.l(Lang.T.MINIMAL_POINT_DISTANCE);
        b.a aVar = b.a.SLFloat;
        C5.b bVar = new C5.b(cVar, l10, aVar);
        if (gameObject != null) {
            bVar.d(gameObject, this, "minimalPointDistance", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
        }
        linkedList.add(bVar);
        C5.b bVar2 = new C5.b(new d(), Lang.l(Lang.T.LOOK_LERP), aVar);
        if (gameObject != null) {
            bVar2.d(gameObject, this, "lookToLerp", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
        }
        linkedList.add(bVar2);
        linkedList.add(new C5.b(new e(), Lang.l(Lang.T.LOOK_IGNORE_Y), b.a.SLBoolean));
        return linkedList;
    }

    public float getLookToLerp() {
        return this.lookToLerp;
    }

    public float getMinimalPointDistance() {
        return this.minimalPointDistance;
    }

    public Route getRoute() {
        return this.f76364G;
    }

    public String getTargetGUID() {
        return this.targetGUID;
    }

    @Override
    public String getTitle() {
        return f76360Q;
    }

    @Override
    public Component.e getType() {
        return Component.e.RouteFollower;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    public boolean isIgnoreY() {
        return this.ignoreY;
    }

    public boolean isPathFinished() {
        return this.f76372O;
    }

    public boolean isShouldWalk() {
        return this.f76370M;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x005f A[Catch: all -> 0x003c, TRY_LEAVE, TryCatch #0 {all -> 0x003c, blocks: (B:14:0x002b, B:16:0x0037, B:18:0x0041, B:20:0x0048, B:22:0x004c, B:24:0x0057, B:26:0x005f), top: B:13:0x002b }] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        if (gameObject == null) {
            return;
        }
        search();
        Route route = this.f76364G;
        if (route != null) {
            GameObject gameObject2 = this.f76363F;
            GameObject gameObject3 = this.f76362E;
            if (gameObject2 != gameObject3) {
                this.f76367J = true;
                this.f76372O = false;
            }
            this.f76363F = gameObject3;
            if (c8.b.k()) {
                this.f76370M = false;
                Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
                try {
                    gameObject.transform.u0(vector3);
                    int findNearestIndex = findNearestIndex(route);
                    Vector3 vector32 = null;
                    Vector3 pointAt = findNearestIndex >= 0 ? route.pointAt(findNearestIndex) : null;
                    if (findNearestIndex >= 0 && findNearestIndex == route.pointCount() - 1) {
                        this.f76371N = true;
                    }
                    if (pointAt != null) {
                        float sqrtDistanceIgnoreY = vector3.sqrtDistanceIgnoreY(pointAt);
                        float f10 = this.minimalPointDistance;
                        if (sqrtDistanceIgnoreY < f10 * f10) {
                            this.f76371N = false;
                            this.f76372O = true;
                            if (vector32 != null) {
                                lookTo(vector32);
                                this.f76370M = true;
                            }
                            JP.release(vector3);
                        }
                    }
                    vector32 = pointAt;
                    if (vector32 != null) {
                    }
                    JP.release(vector3);
                } catch (Throwable th2) {
                    JP.release(vector3);
                    throw th2;
                }
            }
        }
    }

    public void setIgnoreY(boolean ignoreY) {
        this.ignoreY = ignoreY;
    }

    public void setLookToLerp(float lookToLerp) {
        this.lookToLerp = lookToLerp;
    }

    public void setMinimalPointDistance(float minimalPointDistance) {
        this.minimalPointDistance = minimalPointDistance;
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f76373P = run;
    }

    public void setTarget(GameObject target) {
        if (this.f76362E != target) {
            this.f76362E = target;
            if (target != null) {
                this.targetGUID = target.getGuid().l();
            } else {
                this.targetGUID = null;
            }
            this.f76366I = 0;
            if (target != null) {
                this.f76364G = (Route) target.c0(Component.e.Route);
            } else {
                this.f76364G = null;
            }
            reloadInspector();
        }
    }

    public void setTargetGUID(String targetGUID) {
        this.targetGUID = targetGUID;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f76373P;
        if (component != null) {
            return component;
        }
        JAVARuntime.RouteFollower routeFollower = new JAVARuntime.RouteFollower(this);
        this.f76373P = routeFollower;
        return routeFollower;
    }

    private int findNearestIndex(Route currentRoute) {
        Vector3 pointAt;
        if (currentRoute == null || this.f79250n == null) {
            return -1;
        }
        Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
        Vector3 vector32 = (Vector3) JP.acquire(Vector3.class);
        try {
            this.f79250n.transform.u0(vector3);
            int pointCount = currentRoute.pointCount();
            if (pointCount <= 0) {
                return -1;
            }
            if (this.f76367J && (pointAt = currentRoute.pointAt(0)) != null) {
                float sqrtDistanceIgnoreY = vector3.sqrtDistanceIgnoreY(pointAt);
                float f10 = this.minimalPointDistance;
                if (sqrtDistanceIgnoreY > f10 * f10) {
                    return 0;
                }
                this.f76367J = false;
            }
            Vector3 vector33 = null;
            int i10 = -1;
            float f11 = 0.0f;
            for (int i11 = 0; i11 < pointCount; i11++) {
                Vector3 pointAt2 = currentRoute.pointAt(i11);
                if (pointAt2 != null) {
                    float sqrtDistanceIgnoreY2 = vector3.sqrtDistanceIgnoreY(pointAt2);
                    if (sqrtDistanceIgnoreY2 <= f11 || i10 < 0) {
                        vector32.set(pointAt2);
                        vector33 = vector32;
                        i10 = i11;
                        f11 = sqrtDistanceIgnoreY2;
                    }
                }
            }
            if (vector33 != null && i10 >= 0) {
                int i12 = i10 + 1;
                if (pointCount > i12) {
                    Vector3 pointAt3 = currentRoute.pointAt(i12);
                    if (pointAt3 != null) {
                        if (vector3.sub(vector33).normalize().dot(pointAt3.sub(vector33).normalize()) > 0.0f) {
                            i10 = i12;
                        }
                    }
                } else {
                    vector3 = (Vector3) JP.acquire(Vector3.class);
                    try {
                        this.f76363F.transform.u0(vector3);
                        int i13 = vector3.sub(vector33).normalize().dot(vector3.sub(vector33).normalize()) <= 0.0f ? i10 : -1;
                        JP.release(vector3);
                        i10 = i13;
                    } finally {
                        JP.release(vector3);
                    }
                }
            }
            return i10;
        } finally {
            JP.release(vector32);
        }
    }

    @Override
    public Component mo1248clone() {
        return new RouteFollower();
    }

    public void setTarget(Route route) {
        setTarget(route != null ? route.f79250n : null);
        this.f76364G = route;
    }
}
