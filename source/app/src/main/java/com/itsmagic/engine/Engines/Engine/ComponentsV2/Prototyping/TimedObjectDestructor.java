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
import eb.f;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.LinkedList;
import java.util.List;
import s8.InterfaceC15237a;

public class TimedObjectDestructor extends Component {

    public static String f76348F = "TimedObjectDestructor";

    public static Class f76349G = TimedObjectDestructor.class;

    public float f76350E;

    @Expose
    @f
    public float timer;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return TimedObjectDestructor.f76349G;
        }

        @Override
        public String c() {
            return TimedObjectDestructor.f76348F;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.PROTOTYPING);
        }

        @Override
        public String f() {
            return Lang.l(Lang.T.SMOOTH_CAMERA_FOLLOW);
        }
    }

    public class b implements h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", TimedObjectDestructor.this.timer + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                TimedObjectDestructor.this.timer = Nc.b.M(0.1f, variable.float_value);
            }
        }
    }

    static {
        C13201a.b(new a());
    }

    public TimedObjectDestructor() {
        super(f76348F);
        this.timer = 3.0f;
        this.f76350E = 0.0f;
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
        return "TimedObjectDestructor";
    }

    @Override
    public void parallelUpdate() {
        super.parallelUpdate();
        if (c8.b.k()) {
            float b10 = this.f76350E + d.b();
            this.f76350E = b10;
            if (b10 >= this.timer) {
                this.f79250n.destroy();
                this.f76350E = 0.0f;
            }
        }
    }

    @InterfaceC15237a
    public void setTimer(float timer) {
        this.timer = timer;
    }

    @Override
    public Component mo1248clone() {
        TimedObjectDestructor timedObjectDestructor = new TimedObjectDestructor();
        timedObjectDestructor.timer = this.timer;
        return timedObjectDestructor;
    }

    public TimedObjectDestructor(float timer) {
        super(f76348F);
        this.f76350E = 0.0f;
        this.timer = timer;
    }
}
