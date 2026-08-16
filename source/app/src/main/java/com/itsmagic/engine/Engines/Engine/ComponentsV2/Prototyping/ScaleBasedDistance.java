package com.itsmagic.engine.Engines.Engine.ComponentsV2.Prototyping;

import C5.b;
import D5.h;
import android.content.Context;
import android.os.BatteryManager;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.Animation.c;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.Variable;
import eb.f;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.LinkedList;
import java.util.List;
import s8.InterfaceC15237a;
import t6.e;
import t6.j;

public class ScaleBasedDistance extends Component {

    public static final String f76241F = "ScaleBasedDistance";

    public static final Class f76242G = ScaleBasedDistance.class;

    public JAVARuntime.Component f76243E;

    @Expose
    @f
    private float scale;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return ScaleBasedDistance.f76242G;
        }

        @Override
        public String c() {
            return ScaleBasedDistance.f76241F;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.PROTOTYPING);
        }

        @Override
        public String f() {
            return ScaleBasedDistance.f76241F;
        }
    }

    public class b implements h {

        public class a implements Runnable {

            public final Variable f76245b;

            public a(final Variable val$variable) {
                this.f76245b = val$variable;
            }

            @Override
            public void run() {
                e S12 = j.J1() ? j.S1("ScaleBasedDistance - set scale") : null;
                try {
                    ScaleBasedDistance.this.setScale(this.f76245b.float_value);
                } finally {
                    j.P1(S12);
                }
            }
        }

        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", ScaleBasedDistance.this.scale + "");
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

    public ScaleBasedDistance() {
        super(f76241F);
        this.scale = 0.1f;
    }

    @Override
    public String getDisplayableTitle() {
        return Lang.l(Lang.T.SLIDE_ROTATE);
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        GameObject gameObject = this.f79250n;
        C5.b bVar = new C5.b(new b(), "Scale", b.a.SLFloat);
        bVar.d(gameObject, this, BatteryManager.EXTRA_SCALE, c.FLOAT);
        linkedList.add(bVar);
        return linkedList;
    }

    @InterfaceC15237a
    public float getScale() {
        return this.scale;
    }

    @Override
    public String getTitle() {
        return f76241F;
    }

    @Override
    public void parallelUpdate() {
        super.parallelUpdate();
        if (c8.b.k()) {
            try {
                R8.f.h(Camera.class);
                Camera mainCamera = Camera.mainCamera();
                if (mainCamera != null) {
                    this.f79250n.transform.setScale(this.f79250n.transform.C1(mainCamera.getRenderCameraPosition()) * this.scale);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f76243E = run;
    }

    @InterfaceC15237a
    public void setScale(float scale) {
        this.scale = scale;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f76243E;
        if (component != null) {
            return component;
        }
        JAVARuntime.ScaleBasedDistance scaleBasedDistance = new JAVARuntime.ScaleBasedDistance(this);
        this.f76243E = scaleBasedDistance;
        return scaleBasedDistance;
    }

    @Override
    public Component mo1248clone() {
        return new ScaleBasedDistance();
    }
}
