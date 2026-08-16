package com.itsmagic.engine.Engines.Engine.ComponentsV2.Light;

import C5.b;
import D5.h;
import K8.d;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;
import s8.InterfaceC15237a;
import t6.e;
import t6.j;

public class DayNightCycle extends Component implements Serializable {

    public static final String f73476I = "DayNightCycle";

    public static final Class f73477J = DayNightCycle.class;

    public transient float f73478E;

    public transient Quaternion f73479F;

    public transient boolean f73480G;

    public JAVARuntime.Component f73481H;

    @Expose
    private float longitude;

    @Expose
    private float speed;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return DayNightCycle.f73477J;
        }

        @Override
        public String c() {
            return DayNightCycle.f73476I;
        }

        @Override
        public String e() {
            return "Light";
        }

        @Override
        public String f() {
            return DayNightCycle.f73476I;
        }
    }

    public class b implements h {

        public class a implements Runnable {

            public final Variable f73483b;

            public a(final Variable val$variable) {
                this.f73483b = val$variable;
            }

            @Override
            public void run() {
                e S12 = j.J1() ? j.S1("DayNightCycle - set speed") : null;
                try {
                    DayNightCycle.this.setSpeed(this.f73483b.float_value);
                } finally {
                    j.P1(S12);
                }
            }
        }

        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", DayNightCycle.this.speed + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class c implements h {

        public class a implements Runnable {

            public final Variable f73486b;

            public a(final Variable val$variable) {
                this.f73486b = val$variable;
            }

            @Override
            public void run() {
                e S12 = j.J1() ? j.S1("DayNightCycle - set longitude") : null;
                try {
                    DayNightCycle.this.setLongitude(this.f73486b.float_value);
                } finally {
                    j.P1(S12);
                }
            }
        }

        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", DayNightCycle.this.longitude + "");
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
    }

    public DayNightCycle() {
        super(f73476I);
        this.speed = 1.0f;
        this.longitude = 0.0f;
        this.f73478E = 12.0f;
    }

    private void ensureInitialized(SunLight sunLight) {
        Transform transform;
        if (this.f73480G) {
            return;
        }
        GameObject gameObject = sunLight.f79250n;
        Vector3 vector3 = (gameObject == null || (transform = gameObject.transform) == null) ? new Vector3(0.0f, -1.0f, 0.0f) : transform.a0(new Vector3());
        Quaternion c10 = Z8.a.c(vector3, this.longitude, new Quaternion());
        this.f73479F = c10;
        this.f73478E = Z8.a.e(vector3, this.longitude, c10);
        this.f73480G = true;
    }

    public SunLight findSunLight() {
        GameObject gameObject = this.f79250n;
        if (gameObject == null) {
            return null;
        }
        return (SunLight) gameObject.d0(SunLight.class);
    }

    public float getCurrentTimeOfDay() {
        SunLight findSunLight = findSunLight();
        if (findSunLight != null) {
            ensureInitialized(findSunLight);
            this.f73478E = Z8.a.e(findSunLight.f79250n.transform.a0(new Vector3()), this.longitude, this.f73479F);
        }
        return this.f73478E;
    }

    @Override
    public int getIconResource() {
        return R.drawable.wo_light;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_light;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        if (context == null) {
            return linkedList;
        }
        linkedList.add(new C5.b(new b(), "Speed", b.a.SLFloat));
        linkedList.add(new C5.b(new c(), "Longitude", b.a.SLFloat01));
        return linkedList;
    }

    public float getLongitude() {
        return this.longitude;
    }

    public Quaternion getOrientationOffset() {
        Quaternion quaternion = this.f73479F;
        if (quaternion == null) {
            return null;
        }
        return quaternion.clone();
    }

    public float getSpeed() {
        return this.speed;
    }

    @Override
    public String getTitle() {
        return f73476I;
    }

    @Override
    public void onAttach() {
        super.onAttach();
        this.f73480G = false;
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        SunLight findSunLight = findSunLight();
        if (findSunLight != null && c8.b.k()) {
            ensureInitialized(findSunLight);
            float h10 = Z8.a.h(this.f73478E + (d.b() * Z8.a.f(this.speed)));
            this.f73478E = h10;
            Z8.a.a(findSunLight, h10, this.longitude, this.f73479F);
        }
    }

    @InterfaceC15237a
    public void setCurrentTimeOfDay(float hourOfDay) {
        SunLight findSunLight = findSunLight();
        if (findSunLight == null) {
            this.f73478E = Z8.a.h(hourOfDay);
            return;
        }
        ensureInitialized(findSunLight);
        float h10 = Z8.a.h(hourOfDay);
        this.f73478E = h10;
        Z8.a.a(findSunLight, h10, this.longitude, this.f73479F);
    }

    public void setLongitude(float longitude) {
        this.longitude = Z8.a.d(longitude);
        SunLight findSunLight = findSunLight();
        if (findSunLight != null) {
            ensureInitialized(findSunLight);
            Z8.a.a(findSunLight, this.f73478E, this.longitude, this.f73479F);
        }
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f73481H = run;
    }

    public void setSpeed(float speed) {
        this.speed = speed;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        if (this.f73481H == null) {
            this.f73481H = new JAVARuntime.DayNightCycle(this);
        }
        return this.f73481H;
    }

    @Override
    public Component mo1248clone() {
        DayNightCycle dayNightCycle = new DayNightCycle();
        dayNightCycle.speed = this.speed;
        dayNightCycle.longitude = this.longitude;
        return dayNightCycle;
    }
}
