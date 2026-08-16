package com.itsmagic.engine.Engines.Engine.ComponentsV2.AStar;

import JAVARuntime.Color;
import JAVARuntime.Gizmo;
import android.content.Context;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.f;
import fb.AbstractC13203c;
import fb.C13201a;
import ib.InterfaceC13601h;
import java.util.LinkedList;
import java.util.List;

public class AStarWaypoint extends Component {

    public static final String f72836H = "AStarWaypoint";

    public static final Class f72837I = AStarWaypoint.class;

    public final long f72838E;

    public final InterfaceC13601h f72839F;

    public JAVARuntime.Component f72840G;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return AStarWaypoint.f72837I;
        }

        @Override
        public String c() {
            return AStarWaypoint.f72836H;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.NPC);
        }

        @Override
        public String f() {
            return AStarWaypoint.f72836H;
        }
    }

    public class b implements InterfaceC13601h {
        public b() {
        }

        @Override
        public void a(f globalMatrix) {
            AStarSceneController.f(AStarWaypoint.this);
        }
    }

    static {
        C13201a.b(new a());
    }

    public AStarWaypoint() {
        super(f72836H);
        this.f72838E = Tc.b.L().hashCode();
        this.f72839F = new b();
    }

    public long getGraphGuid() {
        return this.f72838E;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        return new LinkedList();
    }

    @Override
    public String getTitle() {
        return f72836H;
    }

    public boolean isActiveForGraph() {
        return this.f79250n != null && isHierarchyActive();
    }

    @Override
    public void onAttach() {
        super.onAttach();
        GameObject gameObject = this.f79250n;
        if (gameObject != null) {
            gameObject.transform.u(this.f72839F);
        }
        AStarSceneController.f(this);
    }

    @Override
    public void onDetach() {
        GameObject gameObject = this.f79250n;
        if (gameObject != null) {
            gameObject.transform.O2(this.f72839F);
        }
        AStarSceneController.d(this);
        super.onDetach();
    }

    @Override
    public void onHierarchyActiveChanged(boolean enabled) {
        super.onHierarchyActiveChanged(enabled);
        AStarSceneController.f(this);
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f72840G = run;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f72840G;
        if (component != null) {
            return component;
        }
        JAVARuntime.AStarWaypoint aStarWaypoint = new JAVARuntime.AStarWaypoint(this);
        this.f72840G = aStarWaypoint;
        return aStarWaypoint;
    }

    @Override
    public void updateOnSelectedHierarchy() {
        super.updateOnSelectedHierarchy();
        Gizmo.drawSphere(this.f79250n.transform.t0().toJAVARuntime(), 0.2f, new Color(149, 232, 252));
    }

    @Override
    public Component mo1248clone() {
        return new AStarWaypoint();
    }
}
