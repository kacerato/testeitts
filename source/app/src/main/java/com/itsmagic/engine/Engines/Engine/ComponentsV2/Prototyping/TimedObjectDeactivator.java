package com.itsmagic.engine.Engines.Engine.ComponentsV2.Prototyping;

import C5.b;
import D5.h;
import K8.d;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.Animation.c;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.Variable;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.LinkedList;
import java.util.List;
import s8.InterfaceC15237a;

public class TimedObjectDeactivator extends Component {

    public static String f76343G = "TimedObjectDeactivator";

    public static Class f76344H = TimedObjectDeactivator.class;

    public float f76345E;

    public JAVARuntime.Component f76346F;

    @Expose
    public float timer;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return TimedObjectDeactivator.f76344H;
        }

        @Override
        public String c() {
            return TimedObjectDeactivator.f76343G;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.PROTOTYPING);
        }

        @Override
        public String f() {
            return "TimedObjectDeactivator";
        }
    }

    public class b implements h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", TimedObjectDeactivator.this.timer + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                TimedObjectDeactivator.this.timer = Nc.b.M(0.1f, variable.float_value);
            }
        }
    }

    static {
        C13201a.b(new a());
    }

    public TimedObjectDeactivator() {
        super(f76343G);
        this.timer = 3.0f;
        this.f76345E = 0.0f;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        GameObject gameObject = this.f79250n;
        if (context == null) {
            return linkedList;
        }
        C5.b bVar = new C5.b(new b(), "Timer", b.a.SLFloat);
        if (gameObject != null) {
            bVar.d(gameObject, this, "timer", c.FLOAT);
        }
        linkedList.add(bVar);
        return linkedList;
    }

    @InterfaceC15237a
    public float getTimer() {
        return this.timer;
    }

    @Override
    public String getTitle() {
        return "TimedObjectDeactivator";
    }

    @Override
    public void parallelDisabledUpdate() {
        super.parallelDisabledUpdate();
        this.f76345E = 0.0f;
    }

    @Override
    public void parallelUpdate() {
        super.parallelUpdate();
        if (c8.b.k()) {
            float b10 = this.f76345E + d.b();
            this.f76345E = b10;
            if (b10 >= this.timer) {
                this.f79250n.setEnabled(false);
                this.f76345E = 0.0f;
            }
        }
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f76346F = run;
    }

    @InterfaceC15237a
    public void setTimer(float timer) {
        this.timer = timer;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f76346F;
        if (component != null) {
            return component;
        }
        JAVARuntime.TimedObjectDeactivator timedObjectDeactivator = new JAVARuntime.TimedObjectDeactivator(this);
        this.f76346F = timedObjectDeactivator;
        return timedObjectDeactivator;
    }

    @Override
    public Component mo1248clone() {
        TimedObjectDeactivator timedObjectDeactivator = new TimedObjectDeactivator();
        timedObjectDeactivator.timer = this.timer;
        return timedObjectDeactivator;
    }

    public TimedObjectDeactivator(float timer) {
        super(f76343G);
        this.f76345E = 0.0f;
        this.timer = timer;
    }
}
