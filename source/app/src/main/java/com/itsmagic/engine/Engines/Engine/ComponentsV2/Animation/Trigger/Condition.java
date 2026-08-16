package com.itsmagic.engine.Engines.Engine.ComponentsV2.Animation.Trigger;

import C5.b;
import F5.c;
import JAVARuntime.AnimationTrigger;
import JAVARuntime.Runnable;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Animation.Trigger.AnimationTrigger;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.InspectorEditor;
import com.itsmagic.engine.Engines.Utils.Variable;
import java.util.LinkedList;
import java.util.List;
import s8.InterfaceC15237a;

public class Condition {

    public transient boolean f73054a;

    public transient float f73055b;

    public AnimationTrigger.Condition f73056c;

    @Expose
    private String eventName;

    @Expose
    private AnimationTrigger.o trigger = AnimationTrigger.o.MovementSpeed;

    @Expose
    private AnimationTrigger.n type = AnimationTrigger.n.BiggerOrEqual;

    @Expose
    @eb.f
    private float compareFloat = 1.0f;

    @Expose
    @eb.f
    private float delay = 0.0f;

    @Expose
    private boolean absValue = false;

    @Expose
    private boolean immediateStop = false;

    @Expose
    private boolean exclusive = false;

    @Expose
    private boolean emitEvent = false;

    @Expose
    private String emitEventName = "";

    @Expose
    public InspectorEditor editor = new InspectorEditor();

    public class a implements D5.h {

        public final l f73057a;

        public a(final l val$listener) {
            this.f73057a = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", Condition.this.exclusive + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Condition.this.exclusive = variable.booolean_value.booleanValue();
                this.f73057a.a();
            }
        }
    }

    public static class b {

        public static final int[] f73059a;

        static {
            int[] iArr = new int[AnimationTrigger.o.values().length];
            f73059a = iArr;
            try {
                iArr[AnimationTrigger.o.MovementLength.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f73059a[AnimationTrigger.o.ForwardSpeed.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f73059a[AnimationTrigger.o.ForwardLength.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f73059a[AnimationTrigger.o.SideSpeed.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f73059a[AnimationTrigger.o.SideLength.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f73059a[AnimationTrigger.o.GlobalPositionX.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f73059a[AnimationTrigger.o.GlobalPositionY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f73059a[AnimationTrigger.o.GlobalPositionZ.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f73059a[AnimationTrigger.o.MovementSpeed.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f73059a[AnimationTrigger.o.IsGrounded.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f73059a[AnimationTrigger.o.OnEvent.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public class c extends c.n0<AnimationTrigger.o> {

        public final l f73060a;

        public c(final l val$listener) {
            this.f73060a = val$listener;
        }

        @Override
        public void set(AnimationTrigger.o value) {
            Condition.this.trigger = value;
            this.f73060a.a();
        }
    }

    public class d extends c.n0<AnimationTrigger.n> {

        public final l f73062a;

        public d(final l val$listener) {
            this.f73062a = val$listener;
        }

        @Override
        public boolean b(AnimationTrigger.n v10) {
            return AnimationTrigger.filterTypeByTrigger(Condition.this.trigger, v10);
        }

        @Override
        public void set(AnimationTrigger.n value) {
            Condition.this.type = value;
            this.f73062a.a();
        }
    }

    public class e implements D5.h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", Condition.this.compareFloat + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Condition.this.compareFloat = variable.float_value;
            }
        }
    }

    public class f implements D5.h {
        public f() {
        }

        @Override
        public Variable get() {
            return new Variable("", Condition.this.absValue + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Condition.this.absValue = variable.booolean_value.booleanValue();
            }
        }
    }

    public class g implements D5.h {
        public g() {
        }

        @Override
        public Variable get() {
            return new Variable("", Condition.this.eventName + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Condition.this.eventName = variable.str_value;
            }
        }
    }

    public class h implements D5.h {

        public final l f73067a;

        public h(final l val$listener) {
            this.f73067a = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", Condition.this.emitEvent + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Condition.this.emitEvent = variable.booolean_value.booleanValue();
                this.f73067a.a();
            }
        }
    }

    public class i implements D5.h {
        public i() {
        }

        @Override
        public Variable get() {
            return new Variable("", Condition.this.emitEventName + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Condition.this.emitEventName = variable.str_value;
            }
        }
    }

    public class j implements D5.h {

        public class a implements Runnable {

            public final Variable f73071b;

            public a(final Variable val$variable) {
                this.f73071b = val$variable;
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("Condition - set delay") : null;
                try {
                    Condition.this.delay = this.f73071b.float_value;
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public j() {
        }

        @Override
        public Variable get() {
            return new Variable("", Condition.this.delay + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class k implements D5.h {

        public final l f73073a;

        public k(final l val$listener) {
            this.f73073a = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", Condition.this.immediateStop + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Condition.this.immediateStop = variable.booolean_value.booleanValue();
                this.f73073a.a();
            }
        }
    }

    public interface l {
        void a();
    }

    @InterfaceC15237a
    public AnimationTrigger.n A() {
        return this.type;
    }

    @InterfaceC15237a
    public boolean B() {
        return this.absValue;
    }

    @InterfaceC15237a
    public boolean C() {
        return this.emitEvent;
    }

    @InterfaceC15237a
    public boolean D() {
        return this.exclusive;
    }

    @InterfaceC15237a
    public boolean E() {
        return this.immediateStop;
    }

    @InterfaceC15237a
    public void F(boolean absValue) {
        this.absValue = absValue;
    }

    @InterfaceC15237a
    public void G(float compareFloat) {
        this.compareFloat = compareFloat;
    }

    @InterfaceC15237a
    public void H(float delay) {
        this.delay = delay;
    }

    @InterfaceC15237a
    public void I(boolean emitEvent) {
        this.emitEvent = emitEvent;
    }

    @InterfaceC15237a
    public void J(String emitEventName) {
        this.emitEventName = emitEventName;
    }

    @InterfaceC15237a
    public void K(String eventName) {
        this.eventName = eventName;
    }

    @InterfaceC15237a
    public void L(boolean exclusive) {
        this.exclusive = exclusive;
    }

    @InterfaceC15237a
    public void M(boolean immediateStop) {
        this.immediateStop = immediateStop;
    }

    public void N(AnimationTrigger.Condition run) {
        this.f73056c = run;
    }

    @InterfaceC15237a
    public void O(AnimationTrigger.o trigger) {
        this.trigger = trigger;
    }

    @InterfaceC15237a
    public void P(AnimationTrigger.n type) {
        this.type = type;
    }

    public AnimationTrigger.Condition Q() {
        AnimationTrigger.Condition condition = this.f73056c;
        if (condition != null) {
            return condition;
        }
        AnimationTrigger.Condition condition2 = new AnimationTrigger.Condition(this);
        this.f73056c = condition2;
        return condition2;
    }

    public Condition t() {
        Condition condition = new Condition();
        condition.trigger = this.trigger;
        condition.type = this.type;
        condition.compareFloat = this.compareFloat;
        condition.eventName = this.eventName;
        condition.delay = this.delay;
        condition.absValue = this.absValue;
        condition.emitEvent = this.emitEvent;
        condition.emitEventName = this.emitEventName;
        condition.immediateStop = this.immediateStop;
        condition.exclusive = this.exclusive;
        return condition;
    }

    @InterfaceC15237a
    public float u() {
        return this.compareFloat;
    }

    @InterfaceC15237a
    public float v() {
        return this.delay;
    }

    @InterfaceC15237a
    public String w() {
        return this.emitEventName;
    }

    @InterfaceC15237a
    public String x() {
        return this.eventName;
    }

    public List<C5.b> y(Context context, boolean enterOrExit, l listener) {
        LinkedList linkedList = new LinkedList();
        if (context == null) {
            return linkedList;
        }
        linkedList.add(F5.c.i(Lang.l(Lang.T.TRIGGER), AnimationTrigger.o.class, this.trigger, new c(listener)));
        linkedList.add(F5.c.i(Lang.l(Lang.T.CONDITION), AnimationTrigger.n.class, this.type, new d(listener)));
        switch (b.f73059a[this.trigger.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                linkedList.add(new C5.b(new e(), "Compare value", b.a.SLFloat));
                linkedList.add(new C5.b(new f(), "ABS Value", b.a.SLBoolean));
                break;
            case 11:
                linkedList.add(new C5.b(new g(), "Event name", b.a.SLString));
                break;
        }
        h hVar = new h(listener);
        b.a aVar = b.a.SLBoolean;
        linkedList.add(new C5.b(hVar, "Emit event once active", aVar));
        linkedList.add(new C5.b(new i(), "Emit event name", b.a.SLString));
        linkedList.add(new C5.b(new j(), "Delay", b.a.SLFloat));
        if (!enterOrExit) {
            linkedList.add(new C5.b(new k(listener), "Immediate stop", aVar));
        }
        linkedList.add(new C5.b(new a(listener), "Exclusive", aVar));
        return linkedList;
    }

    @InterfaceC15237a
    public AnimationTrigger.o z() {
        return this.trigger;
    }
}
