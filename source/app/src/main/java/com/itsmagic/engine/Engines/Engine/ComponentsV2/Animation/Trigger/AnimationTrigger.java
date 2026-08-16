package com.itsmagic.engine.Engines.Engine.ComponentsV2.Animation.Trigger;

import C5.b;
import F5.c;
import JAVARuntime.Runnable;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Animation.AnimationEntry;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Animation.AnimationPlayer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Animation.Trigger.Condition;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.Characterbody;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.InspectorEditor;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;
import s8.InterfaceC15237a;

public class AnimationTrigger extends Component implements Serializable {

    public static final String f73026M = "AnimationTrigger";

    public static final Class f73027N = AnimationTrigger.class;

    public Vector3 f73028E;

    public Vector3 f73029F;

    public float f73030G;

    public float f73031H;

    public boolean f73032I;

    public boolean f73033J;

    public final List<String> f73034K;

    public JAVARuntime.Component f73035L;

    @Expose
    private String animName;

    @Expose
    @eb.f
    private float animSpeed;

    @Expose
    private m animSpeedFrom;

    @Expose
    private final List<Condition> enterConditions;

    @Expose
    public InspectorEditor enterConditionsEditor;

    @Expose
    private final List<Condition> exitConditions;

    @Expose
    public InspectorEditor exitConditionsEditor;

    @Expose
    private boolean loopOnce;

    @Expose
    private String maskFile;

    @Expose
    @eb.f
    private float maxWeight;

    @Expose
    private String onActiveEventName;

    @Expose
    @eb.f
    private float transitionDelay;

    public class a implements D5.h {

        public class C1195a implements Runnable {
            public C1195a() {
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("AnimationTrigger - add enter condition") : null;
                try {
                    AnimationTrigger.this.enterConditions.add(new Condition());
                    AnimationTrigger.this.reloadInspector();
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public a() {
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            K8.a.I(new C1195a());
        }
    }

    public class b implements Condition.l {
        public b() {
        }

        @Override
        public void a() {
            AnimationTrigger.this.reloadInspector();
        }
    }

    public class c implements D5.h {

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("AnimationTrigger - add exit condition") : null;
                try {
                    AnimationTrigger.this.exitConditions.add(new Condition());
                    AnimationTrigger.this.reloadInspector();
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public c() {
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            K8.a.I(new a());
        }
    }

    public class d extends AbstractC13203c {
        @Override
        public Class b() {
            return AnimationTrigger.f73027N;
        }

        @Override
        public String c() {
            return AnimationTrigger.f73026M;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.ANIMATION);
        }

        @Override
        public String f() {
            return "Animation trigger";
        }
    }

    public class e implements D5.h {

        public final List f73041a;

        public class a implements Runnable {

            public final String f73043b;

            public a(final String val$enumValue) {
                this.f73043b = val$enumValue;
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("AnimationTrigger - set anim name") : null;
                try {
                    AnimationTrigger.this.setAnimName(this.f73043b);
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public e(final List val$types) {
            this.f73041a = val$types;
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                try {
                    K8.a.I(new a((String) this.f73041a.get(variable.int_value)));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    public class f implements D5.h {
        public f() {
        }

        @Override
        public Variable get() {
            return new Variable("", AnimationTrigger.this.transitionDelay + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                AnimationTrigger.this.transitionDelay = variable.float_value;
            }
        }
    }

    public class g implements D5.h {
        public g() {
        }

        @Override
        public Variable get() {
            return new Variable("", AnimationTrigger.this.maxWeight + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                AnimationTrigger.this.maxWeight = variable.float_value;
            }
        }
    }

    public class h extends c.n0<m> {
        public h() {
        }

        @Override
        public void set(m value) {
            AnimationTrigger.this.animSpeedFrom = value;
        }
    }

    public class i implements D5.h {
        public i() {
        }

        @Override
        public Variable get() {
            return new Variable("", AnimationTrigger.this.animSpeed + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                AnimationTrigger.this.animSpeed = variable.float_value;
            }
        }
    }

    public class j implements D5.h {
        public j() {
        }

        @Override
        public Variable get() {
            return new Variable("", AnimationTrigger.this.loopOnce + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                AnimationTrigger.this.loopOnce = variable.booolean_value.booleanValue();
                AnimationTrigger.this.reloadInspector();
            }
        }
    }

    public class k implements D5.h {

        public class a implements Runnable {

            public final Variable f73051b;

            public a(final Variable val$variable) {
                this.f73051b = val$variable;
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("AnimationTrigger - set active event") : null;
                try {
                    AnimationTrigger.this.onActiveEventName = this.f73051b.str_value;
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public k() {
        }

        @Override
        public Variable get() {
            return new Variable("", AnimationTrigger.this.onActiveEventName + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class l implements Condition.l {
        public l() {
        }

        @Override
        public void a() {
            AnimationTrigger.this.reloadInspector();
        }
    }

    public enum m {
        Constant,
        MovementSpeed,
        ForwardSpeed,
        SideSpeed
    }

    public enum n {
        Equals,
        BiggerThan,
        LessThan,
        BiggerOrEqual,
        LesserOrEqual,
        IsOn,
        IsOff
    }

    public enum o {
        MovementSpeed,
        MovementLength,
        ForwardSpeed,
        ForwardLength,
        SideSpeed,
        SideLength,
        IsGrounded,
        OnEvent,
        GlobalPositionX,
        GlobalPositionY,
        GlobalPositionZ
    }

    static {
        C13201a.b(new d());
    }

    public AnimationTrigger() {
        super(f73026M);
        this.animSpeedFrom = m.Constant;
        this.transitionDelay = 0.5f;
        this.maxWeight = 1.0f;
        this.animSpeed = 1.0f;
        this.loopOnce = false;
        this.enterConditions = new SteppedArrayList();
        this.exitConditions = new SteppedArrayList();
        this.enterConditionsEditor = new InspectorEditor();
        this.exitConditionsEditor = new InspectorEditor();
        this.f73029F = new Vector3();
        this.f73032I = false;
        this.f73033J = false;
        this.f73034K = new SteppedArrayList(10);
    }

    private boolean compare(float v10, float compare, n type, o logTriggerType) {
        int ordinal = type.ordinal();
        if (ordinal == 0) {
            return v10 == compare;
        }
        if (ordinal == 1) {
            return v10 > compare;
        }
        if (ordinal == 2) {
            return v10 < compare;
        }
        if (ordinal == 3) {
            return v10 >= compare;
        }
        if (ordinal == 4) {
            return v10 <= compare;
        }
        J4.d.E1();
        J4.d.b2("Condition type [" + type.name() + "] on AnimationTrigger[" + this.f79250n.V0(this) + "] of " + this.f79250n.P0() + " cannot be used on trigger type [" + logTriggerType.name() + "]");
        return false;
    }

    public static boolean filterTypeByTrigger(o trigger, n conditionType) {
        switch (trigger) {
            case MovementSpeed:
            case MovementLength:
            case ForwardSpeed:
            case ForwardLength:
            case SideSpeed:
            case SideLength:
            case GlobalPositionX:
            case GlobalPositionY:
            case GlobalPositionZ:
                int ordinal = conditionType.ordinal();
                return ordinal == 0 || ordinal == 1 || ordinal == 2 || ordinal == 3 || ordinal == 4;
            case IsGrounded:
            case OnEvent:
                int ordinal2 = conditionType.ordinal();
                return ordinal2 == 5 || ordinal2 == 6;
            default:
                throw new RuntimeException("Invalid trigger:" + trigger.name());
        }
    }

    public static n getDefaultTypeByTrigger(o trigger) {
        switch (trigger) {
            case MovementSpeed:
            case MovementLength:
            case ForwardSpeed:
            case ForwardLength:
            case SideSpeed:
            case SideLength:
            case GlobalPositionX:
            case GlobalPositionY:
            case GlobalPositionZ:
                return n.BiggerThan;
            case IsGrounded:
            case OnEvent:
                return n.IsOn;
            default:
                throw new RuntimeException("Invalid trigger:" + trigger.name());
        }
    }

    private float getForwardFrameDistance() {
        Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
        try {
            this.f79250n.transform.a0(vector3);
            return this.f73029F.dot(vector3);
        } finally {
            JP.release(vector3);
        }
    }

    private float getSideFrameDistance() {
        Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
        try {
            this.f79250n.transform.S2(vector3);
            return this.f73029F.dot(vector3);
        } finally {
            JP.release(vector3);
        }
    }

    private boolean solve(Condition condition) {
        if (!filterTypeByTrigger(condition.z(), condition.A())) {
            condition.P(getDefaultTypeByTrigger(condition.z()));
        }
        boolean z10 = false;
        switch (condition.z()) {
            case MovementSpeed:
                float f10 = this.f73031H;
                if (condition.B()) {
                    f10 = Nc.b.k(f10);
                }
                return compare(f10, condition.u(), condition.A(), condition.z());
            case MovementLength:
                float f11 = this.f73030G;
                if (condition.B()) {
                    f11 = Nc.b.k(f11);
                }
                return compare(f11, condition.u(), condition.A(), condition.z());
            case ForwardSpeed:
                float forwardFrameDistance = getForwardFrameDistance() / K8.d.b();
                if (condition.B()) {
                    forwardFrameDistance = Nc.b.k(forwardFrameDistance);
                }
                return compare(forwardFrameDistance, condition.u(), condition.A(), condition.z());
            case ForwardLength:
                float forwardFrameDistance2 = getForwardFrameDistance();
                if (condition.B()) {
                    forwardFrameDistance2 = Nc.b.k(forwardFrameDistance2);
                }
                return compare(forwardFrameDistance2, condition.u(), condition.A(), condition.z());
            case SideSpeed:
                float sideFrameDistance = getSideFrameDistance() / K8.d.b();
                if (condition.B()) {
                    sideFrameDistance = Nc.b.k(sideFrameDistance);
                }
                return compare(sideFrameDistance, condition.u(), condition.A(), condition.z());
            case SideLength:
                float sideFrameDistance2 = getSideFrameDistance();
                if (condition.B()) {
                    sideFrameDistance2 = Nc.b.k(sideFrameDistance2);
                }
                return compare(sideFrameDistance2, condition.u(), condition.A(), condition.z());
            case IsGrounded:
                Characterbody characterbody = (Characterbody) this.f79250n.i0(Characterbody.class);
                if (characterbody != null) {
                    return compare(characterbody.isGrounded(), condition.A(), condition.z());
                }
                J4.d.E1();
                J4.d.b2("Trigger type " + o.IsGrounded.name() + " needs to be attached to a Characterbody object");
                return false;
            case OnEvent:
                if (condition.x() != null) {
                    int i10 = 0;
                    while (true) {
                        if (i10 < this.f73034K.size()) {
                            if (this.f73034K.get(i10).equalsIgnoreCase(condition.x())) {
                                z10 = true;
                            } else {
                                i10++;
                            }
                        }
                    }
                }
                return compare(z10, condition.A(), condition.z());
            case GlobalPositionX:
                return compare(this.f79250n.transform.w0(), condition.u(), condition.A(), condition.z());
            case GlobalPositionY:
                return compare(this.f79250n.transform.x0(), condition.u(), condition.A(), condition.z());
            case GlobalPositionZ:
                return compare(this.f79250n.transform.y0(), condition.u(), condition.A(), condition.z());
            default:
                throw new RuntimeException("Implement:" + condition.z().name());
        }
    }

    @InterfaceC15237a
    public void addEnterCondition(Condition condition) {
        this.enterConditions.add(condition);
    }

    @InterfaceC15237a
    public void addExitCondition(Condition condition) {
        this.exitConditions.add(condition);
    }

    @Override
    public void callFunction(String functionName, Object... args) {
        super.callFunction(functionName, args);
        this.f73034K.add(functionName);
    }

    @Override
    public void disabledPreUpdate(GameObject gameObject, boolean isEditor) {
        com.itsmagic.engine.Engines.Engine.Animation.d findAnimation;
        super.disabledPreUpdate(gameObject, isEditor);
        AnimationPlayer animationPlayer = (AnimationPlayer) gameObject.d0(AnimationPlayer.class);
        if (animationPlayer != null && (findAnimation = animationPlayer.findAnimation(this.animName)) != null) {
            findAnimation.n();
            findAnimation.setWeight(0.0f);
        }
        if (this.f73033J) {
            reloadInspector();
            this.f73033J = false;
        }
    }

    @InterfaceC15237a
    public Condition enterConditionAt(int x10) {
        return this.enterConditions.get(x10);
    }

    @InterfaceC15237a
    public int enterConditionCount() {
        return this.enterConditions.size();
    }

    @InterfaceC15237a
    public Condition exitConditionAt(int x10) {
        return this.exitConditions.get(x10);
    }

    @InterfaceC15237a
    public int exitConditionCount() {
        return this.exitConditions.size();
    }

    @InterfaceC15237a
    public String getAnimName() {
        return this.animName;
    }

    @InterfaceC15237a
    public float getAnimSpeed() {
        return this.animSpeed;
    }

    @InterfaceC15237a
    public m getAnimSpeedFrom() {
        return this.animSpeedFrom;
    }

    @Override
    public int getInspectorColorV2(Context context) {
        if (isRunning()) {
            return R.color.inspector_active_trigger;
        }
        return 0;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        if (context == null) {
            return linkedList;
        }
        AnimationPlayer animationPlayer = (AnimationPlayer) this.f79250n.c0(Component.e.AnimationPlayer);
        if (animationPlayer != null) {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            for (int i10 = 0; i10 < animationPlayer.getEntriesList().size(); i10++) {
                try {
                    AnimationEntry animationEntry = animationPlayer.getEntriesList().get(i10);
                    if (animationEntry.getFile() != null) {
                        steppedArrayList.add(Tc.b.w(animationEntry.getFile(), true));
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            String str = this.animName;
            if (str == null) {
                str = "";
            }
            linkedList.add(new C5.b(new e(steppedArrayList), str, steppedArrayList, b.a.SLDropdown, "Animation"));
        } else {
            linkedList.add(new C5.b(Lang.l(Lang.T.MISSING_ANIMATION_PLAYER), 12, Theme.i(Theme.T.ACCENT)));
        }
        f fVar = new f();
        b.a aVar = b.a.SLFloat;
        C5.b bVar = new C5.b(fVar, "Transition delay", aVar);
        GameObject gameObject = this.f79250n;
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        linkedList.add(bVar.d(gameObject, this, "transitionDelay", cVar));
        linkedList.add(new C5.b(new g(), "Max weight", aVar).d(this.f79250n, this, "maxWeight", cVar));
        linkedList.add(F5.c.i(Lang.l(Lang.T.ANIMATION_SPEED), m.class, this.animSpeedFrom, new h()));
        linkedList.add(new C5.b(new i(), "Anim speed", aVar).d(this.f79250n, this, "animSpeed", cVar));
        linkedList.add(new C5.b(new j(), "Loop once", b.a.SLBoolean));
        linkedList.add(new C5.b(new k(), "On active event", b.a.SLString));
        C5.b bVar2 = new C5.b(new C5.a(Lang.l(Lang.T.ENTER_CONDITIONS), true, this.enterConditionsEditor));
        linkedList.add(bVar2);
        for (int i11 = 0; i11 < this.enterConditions.size(); i11++) {
            Condition condition = this.enterConditions.get(i11);
            List<C5.b> y10 = condition.y(context, true, new l());
            C5.b bVar3 = new C5.b(new C5.a(Lang.l(Lang.T.CONDITION) + " " + i11, true, condition.editor));
            bVar2.f2064Q.f2042o.add(bVar3);
            bVar3.f2064Q.f2042o.addAll(y10);
        }
        bVar2.f2064Q.f2042o.add(new C5.b(new a(), "Add condition", b.a.Button));
        if (!this.loopOnce) {
            C5.b bVar4 = new C5.b(new C5.a(Lang.l(Lang.T.EXIT_CONDITIONS), true, this.exitConditionsEditor));
            linkedList.add(bVar4);
            for (int i12 = 0; i12 < this.exitConditions.size(); i12++) {
                Condition condition2 = this.exitConditions.get(i12);
                List<C5.b> y11 = condition2.y(context, false, new b());
                C5.b bVar5 = new C5.b(new C5.a(Lang.l(Lang.T.CONDITION) + " " + i12, true, condition2.editor));
                bVar4.f2064Q.f2042o.add(bVar5);
                bVar5.f2064Q.f2042o.addAll(y11);
            }
            bVar4.f2064Q.f2042o.add(new C5.b(new c(), "Add condition", b.a.Button));
        }
        return linkedList;
    }

    @InterfaceC15237a
    public String getOnActiveEventName() {
        return this.onActiveEventName;
    }

    @Override
    public String getTitle() {
        String str = this.animName;
        if (str == null || str.isEmpty()) {
            return f73026M;
        }
        return "AT-" + this.animName;
    }

    @InterfaceC15237a
    public float getTransitionDelay() {
        return this.transitionDelay;
    }

    @InterfaceC15237a
    public boolean isLoopOnce() {
        return this.loopOnce;
    }

    @InterfaceC15237a
    public boolean isRunning() {
        return this.f73032I;
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        com.itsmagic.engine.Engines.Engine.Animation.d findAnimation;
        com.itsmagic.engine.Engines.Engine.Animation.d findAnimation2;
        boolean z10;
        AnimationPlayer animationPlayer;
        com.itsmagic.engine.Engines.Engine.Animation.d findAnimation3;
        boolean z11;
        super.preUpdate(gameObject, isEditor);
        if (c8.b.k()) {
            Vector3 vector3 = this.f73028E;
            if (vector3 == null) {
                Vector3 vector32 = new Vector3();
                this.f73028E = vector32;
                gameObject.transform.u0(vector32);
            } else {
                float C12 = gameObject.transform.C1(vector3);
                this.f73030G = C12;
                this.f73031H = C12 / K8.d.b();
                gameObject.transform.u0(this.f73029F);
                this.f73029F.subLocal(this.f73028E);
                gameObject.transform.u0(this.f73028E);
            }
            if (!this.f73032I) {
                int i10 = 0;
                while (true) {
                    if (i10 >= this.enterConditions.size()) {
                        z11 = false;
                        break;
                    } else {
                        if (!this.enterConditions.get(i10).D()) {
                            z11 = true;
                            break;
                        }
                        i10++;
                    }
                }
                for (int i11 = 0; i11 < this.enterConditions.size(); i11++) {
                    Condition condition = this.enterConditions.get(i11);
                    if (!condition.f73054a && solve(condition)) {
                        if (condition.C() && condition.w() != null && !condition.w().isEmpty()) {
                            gameObject.callFunction(condition.w());
                        }
                        condition.f73054a = true;
                    }
                    if (condition.f73054a) {
                        float b10 = condition.f73055b + K8.d.b();
                        condition.f73055b = b10;
                        if (b10 >= condition.v()) {
                            condition.f73055b = 0.0f;
                            condition.f73054a = false;
                            if (condition.D()) {
                                this.f73032I = true;
                            }
                        }
                    }
                    if (!condition.D()) {
                        z11 = false;
                    }
                }
                if (z11) {
                    this.f73032I = true;
                }
            }
            if (!this.loopOnce && this.f73032I) {
                int i12 = 0;
                while (true) {
                    if (i12 >= this.exitConditions.size()) {
                        z10 = false;
                        break;
                    } else {
                        if (!this.exitConditions.get(i12).D()) {
                            z10 = true;
                            break;
                        }
                        i12++;
                    }
                }
                for (int i13 = 0; i13 < this.exitConditions.size(); i13++) {
                    Condition condition2 = this.exitConditions.get(i13);
                    if (!condition2.f73054a && solve(condition2)) {
                        if (condition2.C() && condition2.w() != null && !condition2.w().isEmpty()) {
                            gameObject.callFunction(condition2.w());
                        }
                        condition2.f73054a = true;
                    }
                    if (condition2.f73054a) {
                        float b11 = condition2.f73055b + K8.d.b();
                        condition2.f73055b = b11;
                        if (b11 >= condition2.v()) {
                            condition2.f73055b = 0.0f;
                            condition2.f73054a = false;
                            if (condition2.E() && (animationPlayer = (AnimationPlayer) gameObject.d0(AnimationPlayer.class)) != null && (findAnimation3 = animationPlayer.findAnimation(this.animName)) != null && findAnimation3.isPlaying()) {
                                findAnimation3.stop();
                                findAnimation3.setWeight(0.0f);
                            }
                            if (condition2.D()) {
                                this.f73032I = false;
                            }
                        }
                    }
                    if (!condition2.D()) {
                        z10 = false;
                    }
                }
                if (z10) {
                    this.f73032I = false;
                }
            }
            AnimationPlayer animationPlayer2 = (AnimationPlayer) gameObject.d0(AnimationPlayer.class);
            if (animationPlayer2 != null && (findAnimation2 = animationPlayer2.findAnimation(this.animName)) != null) {
                if (findAnimation2.isPlaying()) {
                    String str = this.onActiveEventName;
                    if (str != null && !str.isEmpty()) {
                        gameObject.callFunction(this.onActiveEventName);
                    }
                    if (this.f73032I) {
                        findAnimation2.setWeight(Nc.b.z(findAnimation2.getWeight(), this.maxWeight, (1.0f / this.transitionDelay) * K8.d.b()));
                        double weight = findAnimation2.getWeight();
                        float f10 = this.maxWeight;
                        if (weight >= f10 - 0.05d) {
                            findAnimation2.setWeight(f10);
                        }
                    } else {
                        findAnimation2.setWeight(Nc.b.z(findAnimation2.getWeight(), 0.0f, (1.0f / this.transitionDelay) * K8.d.b()));
                        if (findAnimation2.getWeight() <= 0.05d) {
                            findAnimation2.n();
                            findAnimation2.setWeight(0.0f);
                        }
                    }
                } else if (this.f73032I) {
                    String str2 = this.onActiveEventName;
                    if (str2 != null && !str2.isEmpty()) {
                        gameObject.callFunction(this.onActiveEventName);
                    }
                    if (this.transitionDelay > 0.0f) {
                        findAnimation2.setWeight(0.0f);
                        if (this.loopOnce) {
                            findAnimation2.play();
                            this.f73032I = false;
                        } else {
                            findAnimation2.playInLoop();
                        }
                    } else if (this.loopOnce) {
                        findAnimation2.play();
                        this.f73032I = false;
                    } else {
                        findAnimation2.playInLoop();
                    }
                }
            }
            this.f73034K.clear();
            if (animationPlayer2 != null && (findAnimation = animationPlayer2.findAnimation(this.animName)) != null && findAnimation.isPlaying()) {
                int ordinal = this.animSpeedFrom.ordinal();
                if (ordinal == 0) {
                    findAnimation.setSpeed(this.animSpeed);
                } else if (ordinal == 1) {
                    findAnimation.setSpeed(this.f73031H * this.animSpeed);
                } else if (ordinal == 2) {
                    findAnimation.setSpeed((getForwardFrameDistance() / K8.d.b()) * this.animSpeed);
                } else {
                    if (ordinal != 3) {
                        throw new RuntimeException("Anim speed from not implemented:" + this.animSpeedFrom.name());
                    }
                    findAnimation.setSpeed((getSideFrameDistance() / K8.d.b()) * this.animSpeed);
                }
            }
        } else {
            this.f73034K.clear();
        }
        if (this.f73032I != this.f73033J) {
            reloadInspector();
            this.f73033J = this.f73032I;
        }
    }

    @InterfaceC15237a
    public void removeEnterCondition(Condition condition) {
        this.enterConditions.remove(condition);
    }

    @InterfaceC15237a
    public void removeExitCondition(Condition condition) {
        this.exitConditions.remove(condition);
    }

    @InterfaceC15237a
    public void setAnimName(String animName) {
        this.animName = animName;
    }

    @InterfaceC15237a
    public void setAnimSpeed(float animSpeed) {
        this.animSpeed = animSpeed;
    }

    @InterfaceC15237a
    public void setAnimSpeedFrom(m animSpeedFrom) {
        this.animSpeedFrom = animSpeedFrom;
    }

    @InterfaceC15237a
    public void setLoopOnce(boolean loopOnce) {
        this.loopOnce = loopOnce;
    }

    @InterfaceC15237a
    public void setOnActiveEventName(String onActiveEventName) {
        this.onActiveEventName = onActiveEventName;
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f73035L = run;
    }

    @InterfaceC15237a
    public void setTransitionDelay(float transitionDelay) {
        this.transitionDelay = transitionDelay;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f73035L;
        if (component != null) {
            return component;
        }
        JAVARuntime.AnimationTrigger animationTrigger = new JAVARuntime.AnimationTrigger(this);
        this.f73035L = animationTrigger;
        return animationTrigger;
    }

    @Override
    public boolean willCallFunction(String functionName, Object... args) {
        return true;
    }

    @Override
    public Component mo1248clone() {
        AnimationTrigger animationTrigger = new AnimationTrigger();
        animationTrigger.animName = this.animName;
        animationTrigger.maskFile = this.maskFile;
        animationTrigger.animSpeedFrom = this.animSpeedFrom;
        animationTrigger.onActiveEventName = this.onActiveEventName;
        animationTrigger.transitionDelay = this.transitionDelay;
        animationTrigger.animSpeed = this.animSpeed;
        animationTrigger.loopOnce = this.loopOnce;
        for (int i10 = 0; i10 < this.enterConditions.size(); i10++) {
            animationTrigger.enterConditions.add(this.enterConditions.get(i10).t());
        }
        for (int i11 = 0; i11 < this.exitConditions.size(); i11++) {
            animationTrigger.exitConditions.add(this.exitConditions.get(i11).t());
        }
        return animationTrigger;
    }

    private boolean compare(boolean v10, n type, o logTriggerType) {
        int ordinal = type.ordinal();
        if (ordinal == 5) {
            return v10;
        }
        if (ordinal == 6) {
            return !v10;
        }
        J4.d.E1();
        J4.d.b2("Condition type [" + type.name() + "] on AnimationTrigger[" + this.f79250n.V0(this) + "] of " + this.f79250n.P0() + " cannot be used on trigger type [" + logTriggerType.name() + "]");
        return false;
    }
}
