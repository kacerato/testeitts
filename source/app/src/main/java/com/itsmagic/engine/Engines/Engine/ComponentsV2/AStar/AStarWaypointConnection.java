package com.itsmagic.engine.Engines.Engine.ComponentsV2.AStar;

import D5.d;
import JAVARuntime.GizmoPath;
import android.content.Context;
import com.google.gson.JsonElement;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.ObjectReferencing.AdvObjectReference;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.LinkedList;
import java.util.List;

public class AStarWaypointConnection extends Component {

    public static final String f72842H = "AStarWaypointConnection";

    public static final Class f72843I = AStarWaypointConnection.class;

    public final long f72844E;

    public GizmoPath f72845F;

    public JAVARuntime.Component f72846G;

    @Expose
    private AdvObjectReference waypointAReference;

    @Expose
    private AdvObjectReference waypointBReference;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return AStarWaypointConnection.f72843I;
        }

        @Override
        public String c() {
            return AStarWaypointConnection.f72842H;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.NPC);
        }

        @Override
        public String f() {
            return AStarWaypointConnection.f72842H;
        }
    }

    public class b implements d {
        public b() {
        }

        @Override
        public boolean allowSelect() {
            return true;
        }

        @Override
        public Component get() {
            return AStarWaypointConnection.this.getWaypointA();
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
            AStarWaypoint waypointA;
            GameObject m10 = AStarWaypointConnection.this.waypointAReference.m();
            if (m10 == null && (waypointA = AStarWaypointConnection.this.getWaypointA()) != null) {
                m10 = waypointA.f79250n;
            }
            return m10 != null ? m10.getName() : "";
        }

        @Override
        public boolean match(Component component) {
            return component instanceof AStarWaypoint;
        }

        @Override
        public void set(Component component) {
            GameObject gameObject;
            if (component == null || (gameObject = component.f79250n) == null) {
                AStarWaypointConnection.this.setWaypointA(null);
            } else {
                AStarWaypointConnection.this.setWaypointA(gameObject);
            }
        }
    }

    public class c implements d {
        public c() {
        }

        @Override
        public boolean allowSelect() {
            return true;
        }

        @Override
        public Component get() {
            return AStarWaypointConnection.this.getWaypointB();
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
            AStarWaypoint waypointB;
            GameObject m10 = AStarWaypointConnection.this.waypointBReference.m();
            if (m10 == null && (waypointB = AStarWaypointConnection.this.getWaypointB()) != null) {
                m10 = waypointB.f79250n;
            }
            return m10 != null ? m10.getName() : "";
        }

        @Override
        public boolean match(Component component) {
            return component instanceof AStarWaypoint;
        }

        @Override
        public void set(Component component) {
            GameObject gameObject;
            if (component == null || (gameObject = component.f79250n) == null) {
                AStarWaypointConnection.this.setWaypointB(null);
            } else {
                AStarWaypointConnection.this.setWaypointB(gameObject);
            }
        }
    }

    static {
        C13201a.b(new a());
    }

    public AStarWaypointConnection() {
        super(f72842H);
        this.waypointAReference = new AdvObjectReference();
        this.waypointBReference = new AdvObjectReference();
        this.f72844E = Tc.b.L().hashCode();
    }

    private AStarWaypoint resolveWaypoint(AdvObjectReference reference) {
        GameObject k10;
        if (reference == null || (k10 = reference.k()) == null) {
            return null;
        }
        return (AStarWaypoint) k10.d0(AStarWaypoint.class);
    }

    private long resolveWaypointGuid(AdvObjectReference reference) {
        AStarWaypoint aStarWaypoint;
        if (reference == null) {
            return 0L;
        }
        GameObject m10 = reference.m();
        if (m10 == null) {
            m10 = reference.k();
        }
        if (m10 == null || (aStarWaypoint = (AStarWaypoint) m10.d0(AStarWaypoint.class)) == null) {
            return 0L;
        }
        return aStarWaypoint.getGraphGuid();
    }

    private void syncConnection() {
        if (this.f79250n == null) {
            return;
        }
        long waypointAGUID = getWaypointAGUID();
        long waypointBGUID = getWaypointBGUID();
        if (waypointAGUID == 0 || waypointBGUID == 0) {
            AStarSceneController.c(this);
        } else {
            AStarSceneController.e(this);
        }
    }

    public long getGraphGuid() {
        return this.f72844E;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        if (context == null) {
            return linkedList;
        }
        linkedList.add(new C5.b(new b(), "Waypoint A"));
        linkedList.add(new C5.b(new c(), "Waypoint B"));
        return linkedList;
    }

    @Override
    public String getTitle() {
        return f72842H;
    }

    public AStarWaypoint getWaypointA() {
        return resolveWaypoint(this.waypointAReference);
    }

    public long getWaypointAGUID() {
        return resolveWaypointGuid(this.waypointAReference);
    }

    public AStarWaypoint getWaypointB() {
        return resolveWaypoint(this.waypointBReference);
    }

    public long getWaypointBGUID() {
        return resolveWaypointGuid(this.waypointBReference);
    }

    @Override
    public void onAttach() {
        super.onAttach();
        this.waypointAReference.o(this.f79250n);
        this.waypointBReference.o(this.f79250n);
        syncConnection();
    }

    @Override
    public void onDetach() {
        AStarSceneController.c(this);
        super.onDetach();
    }

    @Override
    public void onHierarchyActiveChanged(boolean enabled) {
        super.onHierarchyActiveChanged(enabled);
        syncConnection();
    }

    @Override
    public JsonElement serialize(Context context) {
        AdvObjectReference advObjectReference = this.waypointAReference;
        if (advObjectReference != null && advObjectReference.m() != null) {
            this.waypointAReference.o(this.f79250n);
            this.waypointAReference.q();
        }
        AdvObjectReference advObjectReference2 = this.waypointBReference;
        if (advObjectReference2 != null && advObjectReference2.m() != null) {
            this.waypointBReference.o(this.f79250n);
            this.waypointBReference.q();
        }
        return super.serialize(context);
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f72846G = run;
    }

    public void setWaypointA(GameObject gameObject) {
        if (gameObject != null) {
            this.waypointAReference.p(gameObject);
            this.waypointAReference.o(this.f79250n);
        } else {
            this.waypointAReference = new AdvObjectReference();
        }
        reloadInspector();
        syncConnection();
    }

    public void setWaypointB(GameObject gameObject) {
        if (gameObject != null) {
            this.waypointBReference.p(gameObject);
            this.waypointBReference.o(this.f79250n);
        } else {
            this.waypointBReference = new AdvObjectReference();
        }
        reloadInspector();
        syncConnection();
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f72846G;
        if (component != null) {
            return component;
        }
        JAVARuntime.AStarWaypointConnection aStarWaypointConnection = new JAVARuntime.AStarWaypointConnection(this);
        this.f72846G = aStarWaypointConnection;
        return aStarWaypointConnection;
    }

    @Override
    public void updateOnSelectedHierarchy() {
        super.updateOnSelectedHierarchy();
        if (this.f72845F == null) {
            this.f72845F = new GizmoPath();
        }
        GameObject m10 = this.waypointAReference.m();
        GameObject m11 = this.waypointBReference.m();
        if (m10 == null || m11 == null) {
            return;
        }
        this.f72845F.clear();
        this.f72845F.addLine(m10.transform.t0().toJAVARuntime(), m11.transform.t0().toJAVARuntime());
        this.f72845F.apply();
        Ub.a.a(this.f72845F);
    }

    @Override
    public void updateOnUnselectedHierarchy() {
        super.updateOnUnselectedHierarchy();
        this.f72845F = null;
    }

    @Override
    public Component mo1248clone() {
        AStarWaypointConnection aStarWaypointConnection = new AStarWaypointConnection();
        aStarWaypointConnection.waypointAReference = AdvObjectReference.j(this.waypointAReference);
        aStarWaypointConnection.waypointBReference = AdvObjectReference.j(this.waypointBReference);
        return aStarWaypointConnection;
    }
}
