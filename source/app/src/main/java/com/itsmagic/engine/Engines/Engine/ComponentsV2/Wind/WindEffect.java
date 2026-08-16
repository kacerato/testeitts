package com.itsmagic.engine.Engines.Engine.ComponentsV2.Wind;

import C5.b;
import D5.h;
import JAVARuntime.Color;
import JAVARuntime.GizmoObject;
import JAVARuntime.GizmoPath;
import JAVARuntime.Texture;
import JAVARuntime.Vertex;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.f;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import da.C12894h;
import fb.AbstractC13203c;
import fb.C13201a;
import ib.InterfaceC13601h;
import java.util.LinkedList;
import java.util.List;
import s8.InterfaceC15237a;
import t6.e;
import t6.j;
import ub.g;
import yb.C16165b;

public class WindEffect extends Component {

    public static final String f77880O = "WindEffect";

    public static final Class f77881P = WindEffect.class;

    public static final I9.a f77882Q;

    public static final String f77883R = "@@ASSET@@Engine/Interface/Models/bilboard.obj";

    public static final String f77884S = "@@ASSET@@/Editor/Wind/wind.png";

    public static final float f77885T = 0.5f;

    public static final float f77886U = 0.05f;

    public int f77887E;

    public transient GizmoPath f77888F;

    public transient GizmoObject f77889G;

    public transient GizmoObject f77890H;

    public transient Vertex f77891I;

    public transient Vertex f77892J;

    public transient Texture f77893K;

    public transient Color f77894L;

    public final InterfaceC13601h f77895M;

    public JAVARuntime.Component f77896N;

    @Expose
    private float intensity;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return WindEffect.f77881P;
        }

        @Override
        public String c() {
            return WindEffect.f77880O;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.SCENARIO);
        }

        @Override
        public String h(boolean translate) {
            return "Wind Thruster";
        }
    }

    public class b implements InterfaceC13601h {
        public b() {
        }

        @Override
        public void a(f globalMatrix) {
            int i10 = WindEffect.this.f77887E;
            WindEffect windEffect = WindEffect.this;
            windEffect.f77887E = windEffect.f79250n.transform.x4(null, windEffect.f77887E);
            if (i10 != WindEffect.this.f77887E) {
                WindEffect.this.emitWindEffect();
            }
        }
    }

    public class c implements h {

        public class a implements Runnable {

            public final Variable f77899b;

            public a(final Variable val$variable) {
                this.f77899b = val$variable;
            }

            @Override
            public void run() {
                e S12 = j.J1() ? j.S1("WindEffect - set intensity") : null;
                try {
                    WindEffect.this.setIntensity(this.f77899b.float_value);
                } finally {
                    j.P1(S12);
                }
            }
        }

        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", WindEffect.this.intensity + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    static {
        C13201a.b(new a());
        f77882Q = new I9.a();
    }

    public WindEffect() {
        super(f77880O);
        this.intensity = 1.0f;
        this.f77887E = -1;
        this.f77895M = new b();
    }

    private void bindTransformListener() {
        GameObject gameObject = this.f79250n;
        if (gameObject != null) {
            gameObject.transform.O2(this.f77895M);
            this.f79250n.transform.u(this.f77895M);
        }
    }

    private void drawWindGizmos() {
        if (this.f79250n == null) {
            return;
        }
        ensureWindGizmos();
        if (this.f77888F == null || this.f77889G == null) {
            return;
        }
        Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
        Vector3 vector32 = (Vector3) JP.acquire(Vector3.class);
        Vector3 vector33 = (Vector3) JP.acquire(Vector3.class);
        Vector3 vector34 = (Vector3) JP.acquire(Vector3.class);
        Quaternion quaternion = (Quaternion) JP.acquire(Quaternion.class);
        try {
            this.f79250n.transform.u0(vector3);
            this.f79250n.transform.a0(vector32);
            vector32.normalizeLocal();
            vector34.set(vector3);
            vector34.addLocal(vector32);
            this.f77888F.clear();
            this.f77888F.setColor(this.f77894L);
            this.f77888F.setWireFrameWidth(3);
            this.f77888F.setThickness(0.0f);
            this.f77888F.addLine(vector3.toJAVARuntime(), vector34.toJAVARuntime());
            this.f77888F.apply();
            Ub.a.a(this.f77888F);
            this.f77890H.setPosition(vector34.toJAVARuntime());
            this.f77890H.setScale(0.05f);
            this.f77890H.setColor(this.f77894L);
            Ub.a.a(this.f77890H);
            this.f77889G.setPosition(vector3.toJAVARuntime());
            Camera mainCameraAllowEditor = Camera.mainCameraAllowEditor();
            if (mainCameraAllowEditor != null && mainCameraAllowEditor.getRenderCameraPosition() != null) {
                vector33.set(mainCameraAllowEditor.getRenderCameraPosition());
                quaternion.Z(vector3, vector33);
                this.f77889G.setRotation(quaternion.N0());
            }
            this.f77889G.setScale(0.5f);
            this.f77889G.setEnableTransparency(true);
            this.f77889G.setDualFaceRender(true);
            Ub.a.a(this.f77889G);
            JP.release(vector3);
            JP.release(vector32);
            JP.release(vector33);
            JP.release(vector34);
            JP.release(quaternion);
        } catch (Throwable th2) {
            JP.release(vector3);
            JP.release(vector32);
            JP.release(vector33);
            JP.release(vector34);
            JP.release(quaternion);
            throw th2;
        }
    }

    public void emitWindEffect() {
        emitWindEffect(this);
    }

    private void ensureWindGizmos() {
        g u10;
        com.itsmagic.engine.Engines.Engine.Vertex.Vertex B12;
        com.itsmagic.engine.Engines.Engine.Vertex.Vertex C12;
        if (this.f77888F == null) {
            this.f77888F = new GizmoPath();
        }
        if (this.f77894L == null) {
            this.f77894L = new Color(255, 255, 255);
        }
        this.f77888F.setColor(this.f77894L);
        if (this.f77889G == null) {
            this.f77889G = new GizmoObject();
        }
        if (this.f77890H == null) {
            this.f77890H = new GizmoObject();
        }
        if (this.f77892J == null && (C12 = com.itsmagic.engine.Engines.Engine.Vertex.Vertex.C1(Vertex.v.SPHERE_LOWPOLY)) != null) {
            this.f77892J = C12.x2();
        }
        JAVARuntime.Vertex vertex = this.f77892J;
        if (vertex != null) {
            this.f77890H.setVertex(vertex);
        }
        this.f77890H.setColor(this.f77894L);
        if (this.f77891I == null && (B12 = com.itsmagic.engine.Engines.Engine.Vertex.Vertex.B1(f77883R, null)) != null) {
            this.f77891I = B12.x2();
        }
        JAVARuntime.Vertex vertex2 = this.f77891I;
        if (vertex2 != null) {
            this.f77889G.setVertex(vertex2);
        }
        if (this.f77893K == null && (u10 = C16165b.u(f77884S)) != null) {
            this.f77893K = u10.p0();
        }
        Texture texture = this.f77893K;
        if (texture != null) {
            this.f77889G.setTexture(texture);
        }
        this.f77889G.setColor(this.f77894L);
    }

    public static WindEffect getFirst() {
        try {
            List<Component> h10 = R8.f.h(WindEffect.class);
            for (int i10 = 0; i10 < h10.size(); i10++) {
                WindEffect windEffect = (WindEffect) h10.get(i10);
                if (windEffect.isHierarchyActive() && windEffect.f79250n != null) {
                    return windEffect;
                }
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private void unbindTransformListener() {
        GameObject gameObject = this.f79250n;
        if (gameObject != null) {
            gameObject.transform.O2(this.f77895M);
        }
    }

    @Override
    public int getIconResource() {
        return R.drawable.wind;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        if (context == null) {
            return linkedList;
        }
        linkedList.add(new C5.b(new c(), "Intensity", b.a.SLFloat));
        return linkedList;
    }

    @InterfaceC15237a
    public float getIntensity() {
        return this.intensity;
    }

    @Override
    public String getTitle() {
        return "WindThruster";
    }

    @Override
    public int iconPriority() {
        return 3;
    }

    @Override
    public void onAttach() {
        super.onAttach();
        if (isHierarchyActive()) {
            bindTransformListener();
            emitWindEffect();
        }
    }

    @Override
    public void onDetach() {
        super.onDetach();
        unbindTransformListener();
        WindEffect first = getFirst();
        if (first == this) {
            first = null;
        }
        emitWindEffect(first);
    }

    @Override
    public void onHierarchyActiveChanged(boolean enabled) {
        super.onHierarchyActiveChanged(enabled);
        if (enabled) {
            bindTransformListener();
            emitWindEffect();
            return;
        }
        unbindTransformListener();
        WindEffect first = getFirst();
        if (first == this) {
            first = null;
        }
        emitWindEffect(first);
    }

    @InterfaceC15237a
    public void setIntensity(float intensity) {
        this.intensity = intensity;
        emitWindEffect();
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f77896N = run;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f77896N;
        if (component != null) {
            return component;
        }
        JAVARuntime.WindEffect windEffect = new JAVARuntime.WindEffect(this);
        this.f77896N = windEffect;
        return windEffect;
    }

    @Override
    public void updateOnSelectedHierarchy() {
        super.updateOnSelectedHierarchy();
        drawWindGizmos();
    }

    private static void emitWindEffect(WindEffect windEffect) {
        I9.a aVar = f77882Q;
        aVar.b(windEffect);
        C12894h.g(aVar);
        I9.a aVar2 = new I9.a();
        aVar2.b(windEffect);
        com.itsmagic.engine.Engines.Engine.World.a.i(aVar2);
    }

    @Override
    public Component mo1248clone() {
        WindEffect windEffect = new WindEffect();
        windEffect.intensity = this.intensity;
        return windEffect;
    }
}
