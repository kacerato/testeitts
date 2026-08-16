package com.itsmagic.engine.Engines.Engine.ComponentsV2.Prototyping;

import C5.b;
import D5.h;
import JAVARuntime.Runnable;
import K8.d;
import android.content.Context;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Utils.Variable;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.LinkedList;
import java.util.List;
import s8.InterfaceC15237a;
import t6.e;
import t6.j;

public class StandUp extends Component {

    public static final String f76333I = "StandUp";

    public static final Class f76334J = StandUp.class;

    public static final ThreadLocal<Quaternion> f76335K;

    public float f76336E;

    public float f76337F;

    public final Vector3 f76338G;

    public JAVARuntime.Component f76339H;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return StandUp.f76334J;
        }

        @Override
        public String c() {
            return StandUp.f76333I;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.PROTOTYPING);
        }

        @Override
        public String f() {
            return Lang.l(Lang.T.STAND_UP);
        }
    }

    public class b extends ThreadLocal<Quaternion> {
        @Override
        public Quaternion initialValue() {
            return new Quaternion();
        }
    }

    public class c implements h {

        public class a implements Runnable {

            public final Variable f76341b;

            public a(final Variable val$variable) {
                this.f76341b = val$variable;
            }

            @Override
            public void run() {
                e S12 = j.J1() ? j.S1("StandUp - set rotation") : null;
                try {
                    StandUp.this.f76336E = this.f76341b.float_value;
                } finally {
                    j.P1(S12);
                }
            }
        }

        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", StandUp.this.f76336E + "");
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
        f76335K = new b();
    }

    public StandUp() {
        super(f76333I);
        this.f76337F = 99999.0f;
        this.f76338G = new Vector3();
    }

    private void look() {
        if (isHierarchyActive()) {
            this.f76338G.setXZ(Nc.b.m1(this.f76336E), Nc.b.d0(this.f76336E));
            this.f79250n.transform.g2(this.f76338G);
        }
    }

    @Override
    public String getDisplayableTitle() {
        return Lang.l(Lang.T.STAND_UP);
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        GameObject gameObject = this.f79250n;
        C5.b bVar = new C5.b(new c(), Lang.l(Lang.T.ROTATION), b.a.SLFloat);
        if (gameObject != null) {
            bVar.d(gameObject, this, "rotationY", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
        }
        linkedList.add(bVar);
        return linkedList;
    }

    @InterfaceC15237a
    public float getRotationY() {
        return this.f76336E;
    }

    @Override
    public String getTitle() {
        return f76333I;
    }

    @Override
    public Component.e getType() {
        return Component.e.StandUp;
    }

    @Override
    public int iconPriority() {
        return super.iconPriority();
    }

    @InterfaceC15237a
    public void lerpLookTo(Vector3 position, float speed) {
        Quaternion h12 = this.f79250n.transform.h1();
        Quaternion quaternion = f76335K.get();
        Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
        try {
            this.f79250n.J0().u0(vector3);
            quaternion.Z(vector3, position);
            JP.release(vector3);
            h12.f(quaternion, speed);
            this.f76336E = h12.E();
            look();
        } catch (Throwable th2) {
            JP.release(vector3);
            throw th2;
        }
    }

    @InterfaceC15237a
    public void lookTo(Vector3 position) {
        this.f79250n.transform.lookTo(position);
        this.f76336E = this.f79250n.transform.getRotationY();
        look();
    }

    @Override
    public void posPhysics() {
        look();
    }

    @Override
    public void prePhysics() {
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        if (c8.b.k()) {
            return;
        }
        float f10 = this.f76337F;
        float f11 = this.f76336E;
        if (f10 != f11) {
            this.f76337F = f11;
            look();
            return;
        }
        float k12 = gameObject.transform.k1();
        if (this.f76337F != k12) {
            this.f76336E = k12;
            this.f76337F = k12;
            look();
        }
    }

    @InterfaceC15237a
    public void rotate(float rot) {
        this.f76336E += rot;
    }

    @InterfaceC15237a
    public void rotateInSeconds(float rot) {
        this.f76336E += rot * d.b();
    }

    @InterfaceC15237a
    public void setRotationY(float rotationY) {
        this.f76336E = rotationY;
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f76339H = run;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f76339H;
        if (component != null) {
            return component;
        }
        JAVARuntime.StandUp standUp = new JAVARuntime.StandUp(this);
        this.f76339H = standUp;
        return standUp;
    }

    @Override
    public Component mo1248clone() {
        return new StandUp();
    }
}
