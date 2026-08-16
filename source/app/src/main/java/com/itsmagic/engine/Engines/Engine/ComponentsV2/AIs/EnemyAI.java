package com.itsmagic.engine.Engines.Engine.ComponentsV2.AIs;

import C5.b;
import F5.c;
import Ic.A;
import JAVARuntime.Runnable;
import aa.C3593a;
import aa.C3595c;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentUtils.ObjectReference;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.AIs.AIFunctionCall;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.Characterbody;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.PhysicsComponent;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.Rigidbody;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.VehiclePhysics;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Prototyping.StandUp;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.JavaPool.MiniJP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Settings.Physics.ExposableLayerReference;
import com.itsmagic.engine.Engines.Engine.Settings.Physics.Layer;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Utils.Variable;
import fb.AbstractC13203c;
import fb.C13201a;
import gb.C13317e;
import java.util.LinkedList;
import java.util.List;
import rb.InterfaceC15168a;

public class EnemyAI extends Component {

    public static final String f72671Q8 = "EnemyAI";

    public static final Class f72672R8 = EnemyAI.class;

    public static final int f72673S8 = 16;

    public static final float f72674T8 = 0.9f;

    public static final float f72675U8 = 6.0f;

    public static final float f72676V8 = 0.0f;

    public static final float f72677W8 = 22.5f;

    public static final float f72678X8 = 11.25f;

    public static final float f72679Y8 = 28.0f;

    public static final float f72680Z8 = 60.0f;

    public static final float f72681a9 = 0.75f;

    public static final float f72682b9 = 1.65f;

    public static final float f72683c9 = 0.45f;

    public static final float f72684d9 = 0.25f;

    public static final float f72685e9 = 4.0f;

    public static final float f72686f9 = 0.55f;

    public static final float f72687g9 = 0.7f;

    public static final float f72688h9 = 0.995f;

    public final Vector3 f72689D0;

    public float f72690D2;

    public final Vector3 f72691D3;

    public final MiniJP f72692D4;

    public final float[] f72693D5;

    public final int[] f72694D6;

    public GameObject f72695E;

    public final aa.e f72696F;

    public boolean f72697F1;

    public float f72698F2;

    public boolean f72699F3;

    public final float[] f72700F4;

    public final float[] f72701F5;

    public final int[] f72702F6;

    public int f72703F7;

    public boolean f72704F8;

    public final C3595c f72705G;

    public final C3595c f72706H;

    public boolean f72707H1;

    public float f72708H2;

    public float f72709H3;

    public final float[] f72710H4;

    public final float[] f72711H5;

    public int f72712H6;

    public final C3595c f72713I;

    public final C3595c f72714J;

    public final C3595c f72715K;

    public q f72716K8;

    public final C3595c f72717L;

    public boolean f72718L1;

    public boolean f72719L2;

    public V8.a f72720L8;

    public final C3595c f72721M;

    public boolean f72722M1;

    public boolean f72723M2;

    public float f72724M3;

    public final ColorINT f72725M8;

    public final Vector3 f72726N;

    public final Vector3 f72727N8;

    public final Vector3 f72728O;

    public final Vector3 f72729O8;

    public final Vector3 f72730P;

    public JAVARuntime.Component f72731P8;

    public final Vector3 f72732Q;

    public final Vector3 f72733R;

    public boolean f72734R1;

    public int f72735R2;

    public final Vector3 f72736S;

    public final Vector3 f72737T;

    public final Vector3 f72738U;

    public final Vector3 f72739V;

    public float f72740V1;

    public boolean f72741V2;

    public final Vector3 f72742W;

    public final Vector3 f72743X;

    public final Vector3 f72744Y;

    public final Vector3 f72745Z;

    @Expose
    private boolean abyssCheckEnabled;

    @Expose
    private float attackDelay;

    @Expose
    private float attackDelayRandomness;

    @Expose
    private float attackDistance;

    @Expose
    private AIFunctionCall attackFunction;

    public final Vector3 f72746b1;

    public float f72747b2;

    @Expose
    private float chaseSpeed;

    @Expose
    private float eyeHeight;

    @Expose
    private float fieldOfViewDegrees;

    @Expose
    private float frontProbeDistance;

    @Expose
    private float groundProbeDistance;

    public final Vector3 f72748i1;

    public float f72749i2;

    public boolean f72750i3;

    @Expose
    public ExposableLayerReference layerReference;

    @Expose
    private float lookLerp;

    @Expose
    private float loseSightDistance;

    public final Object f72751m1;

    public boolean f72752m2;

    public float f72753m3;

    public float f72754m4;

    @Expose
    private int navigationRaycastBudget;

    @Expose
    private float patrolDelay;

    @Expose
    private float patrolDelayRandomness;

    @Expose
    private float patrolPauseDelay;

    @Expose
    private float patrolPauseDelayRandomness;

    @Expose
    private float patrolRestChance;

    @Expose
    private float patrolRestDelay;

    @Expose
    private float patrolRestDelayRandomness;

    @Expose
    private float patrolTurnChance;

    public final Vector3 f72755q0;

    public boolean f72756q1;

    public float f72757q2;

    public float f72758q3;

    @Expose
    private float rayOriginForwardOffset;

    @Expose
    private float searchDelay;

    @Expose
    private float searchDelayRandomness;

    @Expose
    private n state;

    @Expose
    private float stateChangeDelay;

    @Expose
    private float stateChangeRandomness;

    @Expose
    private ObjectReference targetReference;

    public final Vector3 f72759v0;

    public boolean f72760v1;

    public float f72761v2;

    public float f72762v3;

    public int f72763v4;

    @Expose
    private float verticalFieldOfViewDegrees;

    @Expose
    private float visionDistance;

    @Expose
    private float walkSpeed;

    public boolean f72764y1;

    public class a implements D5.h {

        public final p f72765a;

        public class C1182a implements Runnable {

            public final int f72767b;

            public C1182a(final int val$value) {
                this.f72767b = val$value;
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("EnemyAI - set int value") : null;
                try {
                    a.this.f72765a.b(this.f72767b);
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public a(final p val$accessor) {
            this.f72765a = val$accessor;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f72765a.get());
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new C1182a(variable.int_value));
            }
        }
    }

    public class b implements D5.h {

        public final float f72769a;

        public final o f72770b;

        public class a implements Runnable {

            public final float f72772b;

            public a(final float val$value) {
                this.f72772b = val$value;
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("EnemyAI - set float01 value") : null;
                try {
                    b.this.f72770b.a(this.f72772b);
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public b(final float val$magnitude, final o val$accessor) {
            this.f72769a = val$magnitude;
            this.f72770b = val$accessor;
        }

        @Override
        public Variable get() {
            return new Variable("", (this.f72770b.get() / this.f72769a) + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(Math.max(0.0f, Math.min(1.0f, variable.float_value)) * this.f72769a));
            }
        }
    }

    public static class c {

        public static final int[] f72774a;

        static {
            int[] iArr = new int[AIFunctionCall.g.values().length];
            f72774a = iArr;
            try {
                iArr[AIFunctionCall.g.Float.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f72774a[AIFunctionCall.g.Int.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f72774a[AIFunctionCall.g.Boolean.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f72774a[AIFunctionCall.g.String.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public class d extends AbstractC13203c {
        @Override
        public Class b() {
            return EnemyAI.f72672R8;
        }

        @Override
        public String c() {
            return EnemyAI.f72671Q8;
        }

        @Override
        public String e() {
            return "NPC";
        }

        @Override
        public String f() {
            return "EnemyAI (New)";
        }
    }

    public class e implements c.o0 {

        public class a implements R8.e {
            public a() {
            }

            @Override
            public void a() {
                EnemyAI.this.reloadInspector();
            }

            @Override
            public void b() {
                EnemyAI.this.reloadInspector();
            }

            @Override
            public boolean c(GameObject gameObject) {
                return true;
            }
        }

        public e() {
        }

        @Override
        public boolean a() {
            return true;
        }

        @Override
        public List<C5.b> b(List<C5.b> collapsableEntries) {
            collapsableEntries.add(EnemyAI.this.targetReference.d("Target", new a()));
            return collapsableEntries;
        }
    }

    public class f implements c.o0 {

        public final Context f72777a;

        public class a implements o {
            public a() {
            }

            @Override
            public void a(float value) {
                EnemyAI.this.visionDistance = value;
            }

            @Override
            public float get() {
                return EnemyAI.this.visionDistance;
            }
        }

        public class b implements o {
            public b() {
            }

            @Override
            public void a(float value) {
                EnemyAI.this.fieldOfViewDegrees = value;
            }

            @Override
            public float get() {
                return EnemyAI.this.fieldOfViewDegrees;
            }
        }

        public class c implements o {
            public c() {
            }

            @Override
            public void a(float value) {
                EnemyAI.this.verticalFieldOfViewDegrees = value;
            }

            @Override
            public float get() {
                return EnemyAI.this.verticalFieldOfViewDegrees;
            }
        }

        public class d implements o {
            public d() {
            }

            @Override
            public void a(float value) {
                EnemyAI.this.attackDistance = value;
            }

            @Override
            public float get() {
                return EnemyAI.this.attackDistance;
            }
        }

        public class e implements o {
            public e() {
            }

            @Override
            public void a(float value) {
                EnemyAI.this.loseSightDistance = value;
            }

            @Override
            public float get() {
                return EnemyAI.this.loseSightDistance;
            }
        }

        public class C1183f implements o {
            public C1183f() {
            }

            @Override
            public void a(float value) {
                EnemyAI.this.eyeHeight = value;
            }

            @Override
            public float get() {
                return EnemyAI.this.eyeHeight;
            }
        }

        public class g implements InterfaceC15168a {
            public g() {
            }

            @Override
            public void a(Layer layer) {
                EnemyAI.this.reloadInspector();
            }
        }

        public class h implements p {
            public h() {
            }

            @Override
            public void b(int value) {
                EnemyAI.this.navigationRaycastBudget = Math.max(0, value);
            }

            @Override
            public int get() {
                return EnemyAI.this.navigationRaycastBudget;
            }
        }

        public class i implements m {
            public i() {
            }

            @Override
            public void a(boolean value) {
                EnemyAI.this.abyssCheckEnabled = value;
            }

            @Override
            public boolean get() {
                return EnemyAI.this.abyssCheckEnabled;
            }
        }

        public f(final Context val$context) {
            this.f72777a = val$context;
        }

        @Override
        public boolean a() {
            return true;
        }

        @Override
        public List<C5.b> b(List<C5.b> collapsableEntries) {
            collapsableEntries.add(EnemyAI.this.floatEntry("Vision distance", new a()));
            collapsableEntries.add(EnemyAI.this.float01Entry("Horizontal field of view", 180.0f, new b()));
            collapsableEntries.add(EnemyAI.this.float01Entry("Vertical field of view", 180.0f, new c()));
            collapsableEntries.add(EnemyAI.this.floatEntry("Attack distance", new d()));
            collapsableEntries.add(EnemyAI.this.floatEntry("Lose sight distance", new e()));
            collapsableEntries.add(EnemyAI.this.floatEntry("Eye height", new C1183f()));
            collapsableEntries.add(EnemyAI.this.layerReference.d("Layer", this.f72777a, new g()));
            collapsableEntries.add(EnemyAI.this.intEntry("Navigation raycast budget", new h()));
            collapsableEntries.add(EnemyAI.this.booleanEntry("Abyss check", new i()));
            return collapsableEntries;
        }
    }

    public class g implements c.o0 {

        public class a implements o {
            public a() {
            }

            @Override
            public void a(float value) {
                EnemyAI.this.patrolPauseDelayRandomness = value;
            }

            @Override
            public float get() {
                return EnemyAI.this.patrolPauseDelayRandomness;
            }
        }

        public class b implements o {
            public b() {
            }

            @Override
            public void a(float value) {
                EnemyAI.this.patrolRestChance = value;
            }

            @Override
            public float get() {
                return EnemyAI.this.patrolRestChance;
            }
        }

        public class c implements o {
            public c() {
            }

            @Override
            public void a(float value) {
                EnemyAI.this.patrolRestDelay = value;
            }

            @Override
            public float get() {
                return EnemyAI.this.patrolRestDelay;
            }
        }

        public class d implements o {
            public d() {
            }

            @Override
            public void a(float value) {
                EnemyAI.this.patrolRestDelayRandomness = value;
            }

            @Override
            public float get() {
                return EnemyAI.this.patrolRestDelayRandomness;
            }
        }

        public class e implements o {
            public e() {
            }

            @Override
            public void a(float value) {
                EnemyAI.this.walkSpeed = value;
            }

            @Override
            public float get() {
                return EnemyAI.this.walkSpeed;
            }
        }

        public class f implements o {
            public f() {
            }

            @Override
            public void a(float value) {
                EnemyAI.this.chaseSpeed = value;
            }

            @Override
            public float get() {
                return EnemyAI.this.chaseSpeed;
            }
        }

        public class C1184g implements o {
            public C1184g() {
            }

            @Override
            public void a(float value) {
                EnemyAI.this.frontProbeDistance = value;
            }

            @Override
            public float get() {
                return EnemyAI.this.frontProbeDistance;
            }
        }

        public class h implements o {
            public h() {
            }

            @Override
            public void a(float value) {
                EnemyAI.this.rayOriginForwardOffset = value;
            }

            @Override
            public float get() {
                return EnemyAI.this.rayOriginForwardOffset;
            }
        }

        public class i implements o {
            public i() {
            }

            @Override
            public void a(float value) {
                EnemyAI.this.groundProbeDistance = value;
            }

            @Override
            public float get() {
                return EnemyAI.this.groundProbeDistance;
            }
        }

        public class j implements o {
            public j() {
            }

            @Override
            public void a(float value) {
                EnemyAI.this.patrolTurnChance = value;
            }

            @Override
            public float get() {
                return EnemyAI.this.patrolTurnChance;
            }
        }

        public class k implements o {
            public k() {
            }

            @Override
            public void a(float value) {
                EnemyAI.this.patrolDelay = value;
            }

            @Override
            public float get() {
                return EnemyAI.this.patrolDelay;
            }
        }

        public class l implements o {
            public l() {
            }

            @Override
            public void a(float value) {
                EnemyAI.this.patrolDelayRandomness = value;
            }

            @Override
            public float get() {
                return EnemyAI.this.patrolDelayRandomness;
            }
        }

        public class m implements o {
            public m() {
            }

            @Override
            public void a(float value) {
                EnemyAI.this.patrolPauseDelay = value;
            }

            @Override
            public float get() {
                return EnemyAI.this.patrolPauseDelay;
            }
        }

        public g() {
        }

        @Override
        public boolean a() {
            return true;
        }

        @Override
        public List<C5.b> b(List<C5.b> collapsableEntries) {
            collapsableEntries.add(EnemyAI.this.floatEntry("Walk speed", new e()));
            collapsableEntries.add(EnemyAI.this.floatEntry("Chase speed", new f()));
            collapsableEntries.add(EnemyAI.this.floatEntry("Front probe distance", new C1184g()));
            collapsableEntries.add(EnemyAI.this.floatEntry("Ray origin forward offset", new h()));
            collapsableEntries.add(EnemyAI.this.floatEntry("Ground probe distance", new i()));
            collapsableEntries.add(EnemyAI.this.floatEntry("Patrol turn chance", new j()));
            collapsableEntries.add(EnemyAI.this.floatEntry("Patrol walk duration", new k()));
            collapsableEntries.add(EnemyAI.this.floatEntry("Patrol walk duration randomness", new l()));
            collapsableEntries.add(EnemyAI.this.floatEntry("Patrol pause duration", new m()));
            collapsableEntries.add(EnemyAI.this.floatEntry("Patrol pause duration randomness", new a()));
            collapsableEntries.add(EnemyAI.this.floatEntry("Patrol rest chance", new b()));
            collapsableEntries.add(EnemyAI.this.floatEntry("Patrol rest duration", new c()));
            collapsableEntries.add(EnemyAI.this.floatEntry("Patrol rest duration randomness", new d()));
            return collapsableEntries;
        }
    }

    public class h implements c.o0 {

        public class a implements o {
            public a() {
            }

            @Override
            public void a(float value) {
                EnemyAI.this.lookLerp = value;
            }

            @Override
            public float get() {
                return EnemyAI.this.lookLerp;
            }
        }

        public h() {
        }

        @Override
        public boolean a() {
            return true;
        }

        @Override
        public List<C5.b> b(List<C5.b> collapsableEntries) {
            collapsableEntries.add(EnemyAI.this.floatEntry("Look lerp", new a()));
            return collapsableEntries;
        }
    }

    public class i implements c.o0 {

        public final Context f72804a;

        public class a implements o {
            public a() {
            }

            @Override
            public void a(float value) {
                EnemyAI.this.attackDelay = value;
            }

            @Override
            public float get() {
                return EnemyAI.this.attackDelay;
            }
        }

        public class b implements o {
            public b() {
            }

            @Override
            public void a(float value) {
                EnemyAI.this.attackDelayRandomness = value;
            }

            @Override
            public float get() {
                return EnemyAI.this.attackDelayRandomness;
            }
        }

        public class c implements AIFunctionCall.h {
            public c() {
            }

            @Override
            public void a() {
                EnemyAI.this.reloadInspector();
            }

            @Override
            public Component b() {
                return EnemyAI.this;
            }

            @Override
            public GameObject getGameObject() {
                return EnemyAI.this.f79250n;
            }
        }

        public i(final Context val$context) {
            this.f72804a = val$context;
        }

        @Override
        public boolean a() {
            return true;
        }

        @Override
        public List<C5.b> b(List<C5.b> collapsableEntries) {
            collapsableEntries.add(EnemyAI.this.floatEntry("Attack delay", new a()));
            collapsableEntries.add(EnemyAI.this.floatEntry("Attack delay randomness", new b()));
            collapsableEntries.add(EnemyAI.this.attackFunction.k("Attack function", this.f72804a, new c()));
            return collapsableEntries;
        }
    }

    public class j implements c.o0 {

        public class a implements o {
            public a() {
            }

            @Override
            public void a(float value) {
                EnemyAI.this.stateChangeDelay = value;
            }

            @Override
            public float get() {
                return EnemyAI.this.stateChangeDelay;
            }
        }

        public class b implements o {
            public b() {
            }

            @Override
            public void a(float value) {
                EnemyAI.this.stateChangeRandomness = value;
            }

            @Override
            public float get() {
                return EnemyAI.this.stateChangeRandomness;
            }
        }

        public class c implements o {
            public c() {
            }

            @Override
            public void a(float value) {
                EnemyAI.this.searchDelay = value;
            }

            @Override
            public float get() {
                return EnemyAI.this.searchDelay;
            }
        }

        public class d implements o {
            public d() {
            }

            @Override
            public void a(float value) {
                EnemyAI.this.searchDelayRandomness = value;
            }

            @Override
            public float get() {
                return EnemyAI.this.searchDelayRandomness;
            }
        }

        public j() {
        }

        @Override
        public boolean a() {
            return true;
        }

        @Override
        public List<C5.b> b(List<C5.b> collapsableEntries) {
            collapsableEntries.add(EnemyAI.this.floatEntry("State change delay", new a()));
            collapsableEntries.add(EnemyAI.this.floatEntry("State change randomness", new b()));
            collapsableEntries.add(EnemyAI.this.floatEntry("Search delay", new c()));
            collapsableEntries.add(EnemyAI.this.floatEntry("Search delay randomness", new d()));
            return collapsableEntries;
        }
    }

    public class k implements D5.h {

        public final o f72814a;

        public class a implements Runnable {

            public final float f72816b;

            public a(final float val$value) {
                this.f72816b = val$value;
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("EnemyAI - set float value") : null;
                try {
                    k.this.f72814a.a(this.f72816b);
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public k(final o val$accessor) {
            this.f72814a = val$accessor;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f72814a.get() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable.float_value));
            }
        }
    }

    public class l implements D5.h {

        public final m f72818a;

        public class a implements Runnable {

            public final boolean f72820b;

            public a(final boolean val$value) {
                this.f72820b = val$value;
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("EnemyAI - set boolean value") : null;
                try {
                    l.this.f72818a.a(this.f72820b);
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public l(final m val$accessor) {
            this.f72818a = val$accessor;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f72818a.get() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable.booolean_value.booleanValue()));
            }
        }
    }

    public interface m {
        void a(boolean value);

        boolean get();
    }

    public enum n {
        IDLE,
        PATROL,
        CHASE,
        ATTACK
    }

    public interface o {
        void a(float value);

        float get();
    }

    public interface p {
        void b(int value);

        int get();
    }

    public enum q {
        WALK,
        PAUSE,
        TURN,
        REST
    }

    static {
        C13201a.b(new d());
    }

    public EnemyAI() {
        super(f72671Q8);
        this.targetReference = new ObjectReference();
        this.layerReference = new ExposableLayerReference();
        this.walkSpeed = 1.0f;
        this.chaseSpeed = 2.0f;
        this.visionDistance = 20.0f;
        this.fieldOfViewDegrees = 90.0f;
        this.verticalFieldOfViewDegrees = 45.0f;
        this.attackDistance = 1.0f;
        this.loseSightDistance = 15.0f;
        this.eyeHeight = 0.5f;
        this.frontProbeDistance = 2.0f;
        this.rayOriginForwardOffset = 0.2f;
        this.groundProbeDistance = 1.8f;
        this.abyssCheckEnabled = true;
        this.attackDelay = 1.0f;
        this.attackDelayRandomness = 0.25f;
        this.stateChangeDelay = 0.35f;
        this.stateChangeRandomness = 0.2f;
        this.patrolDelay = 4.0f;
        this.patrolDelayRandomness = 2.0f;
        this.patrolPauseDelay = 0.6f;
        this.patrolPauseDelayRandomness = 0.25f;
        this.patrolRestChance = 0.18f;
        this.patrolRestDelay = 2.8f;
        this.patrolRestDelayRandomness = 1.0f;
        this.searchDelay = 1.0f;
        this.searchDelayRandomness = 0.3f;
        this.patrolTurnChance = 0.35f;
        this.lookLerp = 5.0f;
        this.navigationRaycastBudget = 5;
        this.attackFunction = new AIFunctionCall("applyDamage", 10.0f);
        this.state = n.IDLE;
        aa.e eVar = new aa.e();
        this.f72696F = eVar;
        this.f72705G = new C3595c();
        this.f72706H = new C3595c();
        this.f72713I = new C3595c();
        this.f72714J = new C3595c();
        this.f72715K = new C3595c();
        this.f72717L = new C3595c();
        this.f72721M = new C3595c();
        this.f72726N = new Vector3();
        this.f72728O = new Vector3();
        this.f72730P = new Vector3();
        this.f72732Q = new Vector3();
        this.f72733R = new Vector3();
        this.f72736S = new Vector3();
        this.f72737T = new Vector3();
        this.f72738U = new Vector3();
        this.f72739V = new Vector3();
        this.f72742W = new Vector3();
        this.f72743X = new Vector3();
        this.f72744Y = new Vector3();
        this.f72745Z = new Vector3();
        this.f72755q0 = new Vector3();
        this.f72759v0 = new Vector3();
        this.f72689D0 = new Vector3();
        this.f72746b1 = new Vector3();
        this.f72748i1 = new Vector3();
        this.f72751m1 = new Object();
        this.f72756q1 = false;
        this.f72760v1 = false;
        this.f72764y1 = false;
        this.f72697F1 = false;
        this.f72707H1 = false;
        this.f72718L1 = false;
        this.f72722M1 = false;
        this.f72734R1 = false;
        this.f72740V1 = 0.0f;
        this.f72747b2 = 0.0f;
        this.f72749i2 = 0.0f;
        this.f72752m2 = false;
        this.f72757q2 = 0.0f;
        this.f72761v2 = 0.0f;
        this.f72690D2 = 0.0f;
        this.f72698F2 = 0.0f;
        this.f72708H2 = 0.0f;
        this.f72719L2 = true;
        this.f72723M2 = true;
        this.f72735R2 = 0;
        this.f72741V2 = false;
        this.f72750i3 = false;
        this.f72753m3 = 0.0f;
        this.f72758q3 = 0.0f;
        this.f72762v3 = 0.0f;
        this.f72691D3 = new Vector3();
        this.f72699F3 = false;
        this.f72709H3 = Float.NEGATIVE_INFINITY;
        this.f72724M3 = 0.0f;
        this.f72754m4 = 0.0f;
        this.f72763v4 = 0;
        this.f72692D4 = new MiniJP();
        this.f72700F4 = new float[16];
        this.f72710H4 = new float[16];
        this.f72693D5 = new float[16];
        this.f72701F5 = new float[16];
        this.f72711H5 = new float[16];
        this.f72694D6 = new int[16];
        this.f72702F6 = new int[16];
        this.f72712H6 = 0;
        this.f72703F7 = 0;
        this.f72704F8 = false;
        this.f72716K8 = q.WALK;
        this.f72720L8 = null;
        this.f72725M8 = new ColorINT(255, 255, 255);
        this.f72727N8 = new Vector3();
        this.f72729O8 = new Vector3();
        eVar.n(false);
        eVar.o(false);
    }

    private void applyObstacleAvoidance(Vector3 moveDirection) {
        if (moveDirection == null) {
            return;
        }
        int max = Math.max(obstaclePressure(false), obstaclePressure(true));
        boolean z10 = this.f72764y1 && (this.f72734R1 || max >= 3 || this.f72758q3 >= 0.385f);
        if (!this.f72699F3 || this.f72753m3 <= 0.0f || moveDirectionLooksBlocked(this.f72691D3) || (this.f72764y1 && max >= 2 && dot(this.f72691D3.getX(), 0.0f, this.f72691D3.getZ(), this.f72728O) > 0.55f)) {
            selectAvoidanceDirection(moveDirection, z10, this.f72691D3);
            boolean z11 = this.f72691D3.lengthSquared() > 0.0f;
            this.f72699F3 = z11;
            if (z11) {
                boolean z12 = dot(this.f72691D3.getX(), 0.0f, this.f72691D3.getZ(), this.f72730P) >= 0.0f;
                this.f72723M2 = z12;
                rememberAvoidDecision(z12);
                this.f72753m3 = randomDelay((max >= 3 ? 0.75f : 0.45f) + (max * 0.08f), max < 3 ? 0.25f : 0.45f);
            }
        }
        if (!this.f72699F3) {
            steerAroundObstacle(moveDirection, chooseAvoidTurnRightFromDesired(moveDirection, z10), chooseAvoidanceSideBias());
        } else {
            moveDirection.set(this.f72691D3);
            normalizeHorizontalOrFallback(moveDirection, this.f72728O);
        }
    }

    private void applyRayLayer(C3595c ray) {
        if (ray != null) {
            ExposableLayerReference exposableLayerReference = this.layerReference;
            ray.k(exposableLayerReference != null ? exposableLayerReference.e() : null);
        }
    }

    private void applyWallSeparationToDirection(Vector3 direction) {
        Vector3 vector3 = this.f72689D0.lengthSquared() > 0.0f ? this.f72689D0 : this.f72759v0;
        if (direction == null || vector3.lengthSquared() <= 0.0f) {
            return;
        }
        float x10 = vector3.getX();
        float z10 = vector3.getZ();
        float f10 = (x10 * x10) + (z10 * z10);
        if (f10 <= 1.0E-5f) {
            return;
        }
        float sqrt = 1.0f / ((float) Math.sqrt(f10));
        float f11 = x10 * sqrt;
        float f12 = z10 * sqrt;
        float dot = dot(direction.getX(), 0.0f, direction.getZ(), this.f72728O);
        float dot2 = dot(direction.getX(), 0.0f, direction.getZ(), this.f72730P);
        float max = Math.max(obstaclePressure(false), obstaclePressure(true));
        float x11 = direction.getX();
        float z11 = direction.getZ();
        float f13 = (max * 0.06f) + 0.24f;
        if (dot < 0.2f) {
            f13 += 0.08f;
        }
        if (Math.abs(dot2) < 0.15f) {
            f13 += 0.06f;
        }
        direction.set(x11 + (f11 * f13), 0.0f, z11 + (f12 * f13));
    }

    public C5.b booleanEntry(String title, final m accessor) {
        return new C5.b(new l(accessor), title, b.a.SLBoolean);
    }

    private void buildNavigationDirectionFromSector(int sectorIndex, Vector3 out) {
        if (out == null) {
            return;
        }
        float sectorAngleDegrees = sectorAngleDegrees(sectorIndex);
        float cos = (float) Math.cos((float) Math.toRadians(sectorAngleDegrees));
        float sectorSideFromAngle = sectorSideFromAngle(sectorAngleDegrees);
        out.set((this.f72728O.getX() * cos) + (this.f72730P.getX() * sectorSideFromAngle), 0.0f, (this.f72728O.getZ() * cos) + (this.f72730P.getZ() * sectorSideFromAngle));
        normalizeHorizontalOrFallback(out, this.f72728O);
    }

    private boolean chooseAvoidTurnRight() {
        return chooseAvoidTurnRightFromDesired(this.f72728O, true);
    }

    private boolean chooseAvoidTurnRightFromDesired(Vector3 desiredDirection, boolean allowReverse) {
        chooseBestAvoidanceCandidate(desiredDirection, allowReverse);
        if (Math.abs(this.f72754m4) > 0.01f) {
            return this.f72754m4 > 0.0f;
        }
        int obstaclePressure = obstaclePressure(false);
        int obstaclePressure2 = obstaclePressure(true);
        if (obstaclePressure != obstaclePressure2) {
            return obstaclePressure2 < obstaclePressure;
        }
        if (this.f72759v0.lengthSquared() > 0.0f) {
            float dot = dot(this.f72759v0.getX(), 0.0f, this.f72759v0.getZ(), this.f72730P);
            if (Math.abs(dot) > 0.08f) {
                return dot < 0.0f;
            }
        }
        if (this.f72689D0.lengthSquared() > 0.0f) {
            float dot2 = dot(this.f72689D0.getX(), 0.0f, this.f72689D0.getZ(), this.f72730P);
            if (Math.abs(dot2) > 0.08f) {
                return dot2 < 0.0f;
            }
        }
        int i10 = this.f72735R2;
        return i10 != 0 ? i10 > 0 : Nc.d.i(1.0f) >= 0.5f;
    }

    private float chooseAvoidanceSideBias() {
        float f10;
        float f11;
        int max = Math.max(obstaclePressure(false), obstaclePressure(true));
        float f12 = max >= 4 ? 2.1f : max >= 3 ? 1.85f : max >= 2 ? 1.35f : 0.75f;
        if (max >= 3) {
            f10 = 0.15f;
            f11 = 0.85f;
        } else {
            f10 = 0.0f;
            f11 = 0.4f;
        }
        return Math.min(2.35f, f12 + Nc.d.h(f10, f11));
    }

    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r12v3 int, still in use, count: 2, list:
          (r12v3 int) from 0x0120: IF  (r12v3 int) >= (4 int)  -> B:26:0x0125 A[HIDDEN]
          (r12v3 int) from 0x0125: PHI (r12v2 int) = (r12v1 int), (r12v3 int) binds: [B:27:0x0123, B:25:0x0120] A[DONT_GENERATE, DONT_INLINE]
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:151)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:116)
        	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:114)
        	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:62)
        	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:45)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:67)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1117)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1117)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1117)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:35)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:34)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.visit(IfRegionVisitor.java:30)
        */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00bc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void chooseBestAvoidanceCandidate(com.itsmagic.engine.Engines.Engine.Vector.Vector3 r21, boolean r22) {
        /*
            Method dump skipped, instructions count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itsmagic.engine.Engines.Engine.ComponentsV2.AIs.EnemyAI.chooseBestAvoidanceCandidate(com.itsmagic.engine.Engines.Engine.Vector.Vector3, boolean):void");
    }

    private n choosePatrolOrIdle() {
        return n.PATROL;
    }

    private boolean choosePatrolTurnRight() {
        return chooseAvoidTurnRightFromDesired(this.f72728O, false);
    }

    private float clampMemory(float value) {
        if (value < 0.0f) {
            return 0.0f;
        }
        if (value > 6.0f) {
            return 6.0f;
        }
        return value;
    }

    private void clearLookDirection() {
        synchronized (this.f72751m1) {
            this.f72741V2 = false;
        }
    }

    private AIFunctionCall cloneAttackFunction() {
        AIFunctionCall aIFunctionCall = new AIFunctionCall();
        aIFunctionCall.s(this.attackFunction.j());
        aIFunctionCall.p(this.attackFunction.h());
        int i10 = c.f72774a[this.attackFunction.h().ordinal()];
        if (i10 == 1) {
            aIFunctionCall.r(this.attackFunction.i());
        } else if (i10 == 2) {
            aIFunctionCall.t(this.attackFunction.m());
        } else if (i10 == 3) {
            aIFunctionCall.q(this.attackFunction.o());
        } else if (i10 == 4) {
            aIFunctionCall.u(this.attackFunction.n());
        }
        return aIFunctionCall;
    }

    private void considerAvoidanceCandidate(float forwardComponent, float sideComponent, float desiredForward, float desiredSide, int leftPressure, int rightPressure, int pressure, boolean hasWallNormal, boolean allowReverse) {
        float evaluateAvoidanceCandidate = evaluateAvoidanceCandidate(forwardComponent, sideComponent, desiredForward, desiredSide, leftPressure, rightPressure, pressure, hasWallNormal, allowReverse);
        if (evaluateAvoidanceCandidate > this.f72709H3) {
            this.f72709H3 = evaluateAvoidanceCandidate;
            this.f72724M3 = forwardComponent;
            this.f72754m4 = sideComponent;
        }
    }

    private void copySectorNormalAtAngle(float angleDegrees, Vector3 out) {
        if (out == null) {
            return;
        }
        int sectorIndexForAngle = sectorIndexForAngle(angleDegrees);
        float f10 = this.f72701F5[sectorIndexForAngle];
        float f11 = this.f72711H5[sectorIndexForAngle];
        float f12 = (f10 * f10) + (f11 * f11);
        if (f12 <= 1.0E-5f) {
            out.set(0.0f, 0.0f, 0.0f);
        } else {
            float sqrt = 1.0f / ((float) Math.sqrt(f12));
            out.set(f10 * sqrt, 0.0f, f11 * sqrt);
        }
    }

    private void decayNavigationMemory() {
        for (int i10 = 0; i10 < 16; i10++) {
            float[] fArr = this.f72700F4;
            fArr[i10] = clampMemory(fArr[i10] * 0.9f);
            float[] fArr2 = this.f72710H4;
            fArr2[i10] = clampMemory(fArr2[i10] * 0.9f);
            float[] fArr3 = this.f72693D5;
            fArr3[i10] = clampMemory(fArr3[i10] * 0.9f);
            float[] fArr4 = this.f72701F5;
            fArr4[i10] = fArr4[i10] * 0.86f;
            float[] fArr5 = this.f72711H5;
            fArr5[i10] = fArr5[i10] * 0.86f;
            if (Math.abs(fArr4[i10]) < 1.0E-4f) {
                this.f72701F5[i10] = 0.0f;
            }
            if (Math.abs(this.f72711H5[i10]) < 1.0E-4f) {
                this.f72711H5[i10] = 0.0f;
            }
        }
    }

    private n determineState() {
        if (!this.f72756q1) {
            return choosePatrolOrIdle();
        }
        float f10 = this.attackDistance;
        float f11 = f10 * f10;
        n nVar = this.state;
        n nVar2 = n.CHASE;
        if (nVar != nVar2) {
            if (!this.f72760v1) {
                return choosePatrolOrIdle();
            }
            if (this.f72740V1 > f11) {
                return nVar2;
            }
            this.f72752m2 = this.f72761v2 <= 0.0f;
            return n.ATTACK;
        }
        float f12 = this.f72740V1;
        float f13 = this.loseSightDistance;
        if (f12 > f13 * f13) {
            return choosePatrolOrIdle();
        }
        if (!this.f72760v1 || f12 > f11) {
            return nVar2;
        }
        this.f72752m2 = this.f72761v2 <= 0.0f;
        return n.ATTACK;
    }

    private float distanceSq(Vector3 a10, Vector3 b10) {
        float x10 = a10.getX() - b10.getX();
        float y10 = a10.getY() - b10.getY();
        float z10 = a10.getZ() - b10.getZ();
        return (x10 * x10) + (y10 * y10) + (z10 * z10);
    }

    private float dot(float x10, float y10, float z10, Vector3 vector3) {
        return (x10 * vector3.getX()) + (y10 * vector3.getY()) + (z10 * vector3.getZ());
    }

    private void emitAttack() {
        K8.a.G();
        GameObject gameObject = this.f72695E;
        if (gameObject == null || C13317e.G(gameObject)) {
            return;
        }
        this.attackFunction.g(this.f72695E);
    }

    private float evaluateAvoidanceCandidate(float forwardComponent, float sideComponent, float desiredForward, float desiredSide, int leftPressure, int rightPressure, int pressure, boolean hasWallNormal, boolean allowReverse) {
        float x10;
        float z10;
        float x11 = (this.f72728O.getX() * forwardComponent) + (this.f72730P.getX() * sideComponent);
        float z11 = (this.f72728O.getZ() * forwardComponent) + (this.f72730P.getZ() * sideComponent);
        float f10 = (x11 * x11) + (z11 * z11);
        if (f10 <= 1.0E-5f) {
            return Float.NEGATIVE_INFINITY;
        }
        float sqrt = 1.0f / ((float) Math.sqrt(f10));
        float f11 = x11 * sqrt;
        float f12 = z11 * sqrt;
        float x12 = (this.f72728O.getX() * desiredForward) + (this.f72730P.getX() * desiredSide);
        float z12 = (this.f72728O.getZ() * desiredForward) + (this.f72730P.getZ() * desiredSide);
        float f13 = (x12 * x12) + (z12 * z12);
        if (f13 > 1.0E-5f) {
            float sqrt2 = 1.0f / ((float) Math.sqrt(f13));
            x10 = x12 * sqrt2;
            z10 = z12 * sqrt2;
        } else {
            x10 = this.f72728O.getX();
            z10 = this.f72728O.getZ();
        }
        float f14 = (((x10 * f11) + (z10 * f12)) * 1.6f) + (forwardComponent * 0.25f) + ((leftPressure - rightPressure) * sideComponent * 0.35f);
        if (this.f72764y1) {
            if (forwardComponent > 0.15f) {
                f14 -= (1.2f * forwardComponent) + 2.6f;
            }
            if (forwardComponent < -0.05f) {
                f14 -= allowReverse ? 0.15f : 1.1f;
            }
        }
        if (this.f72734R1 && forwardComponent > 0.0f) {
            f14 -= 0.9f;
        }
        if (hasWallNormal) {
            Vector3 vector3 = this.f72689D0.lengthSquared() > 0.0f ? this.f72689D0 : this.f72759v0;
            float x13 = vector3.getX();
            float z13 = vector3.getZ();
            float f15 = (x13 * x13) + (z13 * z13);
            if (f15 > 1.0E-5f) {
                float sqrt3 = 1.0f / ((float) Math.sqrt(f15));
                float f16 = x13 * sqrt3;
                float f17 = z13 * sqrt3;
                float f18 = (f11 * f16) + (f12 * f17);
                if (f18 > 0.0f) {
                    f14 -= f18 * 3.25f;
                }
                f14 += Math.abs(((-f17) * f11) + (f16 * f12)) * 0.95f;
            }
        }
        int i10 = this.f72735R2;
        if (i10 != 0) {
            f14 += (i10 > 0 ? sideComponent : -sideComponent) * 0.12f;
        }
        if (this.f72699F3) {
            f14 += ((dot(this.f72691D3.getX(), 0.0f, this.f72691D3.getZ(), this.f72728O) * forwardComponent) + (sideComponent * dot(this.f72691D3.getX(), 0.0f, this.f72691D3.getZ(), this.f72730P))) * 0.3f;
        }
        if (allowReverse && forwardComponent < 0.0f) {
            f14 -= pressure < 4 ? 0.75f : 0.15f;
        }
        if (hasWallNormal) {
            Vector3 vector32 = this.f72689D0.lengthSquared() > 0.0f ? this.f72689D0 : this.f72759v0;
            float x14 = vector32.getX();
            float z14 = vector32.getZ();
            float f19 = (x14 * x14) + (z14 * z14);
            if (f19 > 1.0E-5f) {
                float sqrt4 = 1.0f / ((float) Math.sqrt(f19));
                float f20 = (f11 * x14 * sqrt4) + (f12 * z14 * sqrt4);
                f14 += f20 > 0.0f ? f20 * ((pressure * 0.05f) + 0.85f) : f20 * 0.25f;
            }
        }
        return f14 + Nc.d.h(-0.05f, 0.05f);
    }

    public C5.b float01Entry(String title, float magnitude, final o accessor) {
        return new C5.b(new b(magnitude, accessor), title, b.a.SLFloat01);
    }

    public C5.b floatEntry(String title, final o accessor) {
        return new C5.b(new k(accessor), title, b.a.SLFloat);
    }

    private float getStateLookLerpMultiplier() {
        int ordinal = this.state.ordinal();
        return (ordinal == 2 || ordinal == 3) ? 2.0f : 1.0f;
    }

    private boolean hasLineOfSightToTarget(float targetDistanceSq) {
        if (this.f72695E == null) {
            return false;
        }
        float f10 = this.visionDistance;
        if (targetDistanceSq > f10 * f10) {
            return false;
        }
        this.f72755q0.set(this.f72733R.getX() - this.f72737T.getX(), this.f72733R.getY() - this.f72737T.getY(), this.f72733R.getZ() - this.f72737T.getZ());
        float lengthSquared = this.f72755q0.lengthSquared();
        if (lengthSquared <= 0.0f) {
            return true;
        }
        if (this.f72763v4 <= 0) {
            return isTargetInViewCone(targetDistanceSq);
        }
        applyRayLayer(this.f72705G);
        this.f72705G.h().set(this.f72737T);
        this.f72705G.e().set(this.f72755q0);
        this.f72705G.setDistance((float) Math.sqrt(Math.min(lengthSquared, r0)));
        this.f72763v4--;
        C3593a z10 = this.f72696F.z(this.f72705G, true);
        return z10 == null || isHitPartOfTarget(z10) || z10.getDistance() * z10.getDistance() >= lengthSquared;
    }

    public C5.b intEntry(String title, final p accessor) {
        return new C5.b(new a(accessor), title, b.a.SLIntWrap);
    }

    private boolean isDirectionAligned(Vector3 current, Vector3 desired) {
        if (current == null || desired == null) {
            return false;
        }
        float lengthSquared = current.lengthSquared();
        float lengthSquared2 = desired.lengthSquared();
        return lengthSquared > 0.0f && lengthSquared2 > 0.0f && dot(current.getX(), current.getY(), current.getZ(), desired) / (((float) Math.sqrt((double) lengthSquared)) * ((float) Math.sqrt((double) lengthSquared2))) >= 0.995f;
    }

    private boolean isHitPartOfTarget(C3593a hit) {
        GameObject gameObject;
        GameObject gameObject2;
        if (hit == null || (gameObject = this.f72695E) == null || C13317e.G(gameObject) || (gameObject2 = hit.getGameObject()) == null || C13317e.G(gameObject2)) {
            return false;
        }
        GameObject gameObject3 = this.f72695E;
        return gameObject2 == gameObject3 || gameObject3.g1(gameObject2) || gameObject2.g1(this.f72695E);
    }

    private boolean isTargetInViewCone(float targetDistanceSq) {
        if (this.f72695E == null) {
            return false;
        }
        if (targetDistanceSq <= 0.0f) {
            return true;
        }
        this.f72755q0.set(this.f72733R.getX() - this.f72737T.getX(), this.f72733R.getY() - this.f72737T.getY(), this.f72733R.getZ() - this.f72737T.getZ());
        if (this.f72755q0.lengthSquared() <= 0.0f) {
            return true;
        }
        float lengthSquared = this.f72728O.lengthSquared();
        float lengthSquared2 = this.f72730P.lengthSquared();
        float lengthSquared3 = this.f72732Q.lengthSquared();
        if (lengthSquared > 0.0f && lengthSquared2 > 0.0f && lengthSquared3 > 0.0f) {
            float dot = dot(this.f72755q0.getX(), this.f72755q0.getY(), this.f72755q0.getZ(), this.f72728O);
            float dot2 = dot(this.f72755q0.getX(), this.f72755q0.getY(), this.f72755q0.getZ(), this.f72730P);
            float dot3 = dot(this.f72755q0.getX(), this.f72755q0.getY(), this.f72755q0.getZ(), this.f72732Q);
            float sqrt = (float) Math.sqrt(lengthSquared);
            float sqrt2 = (float) Math.sqrt(lengthSquared2);
            float sqrt3 = (float) Math.sqrt(lengthSquared3);
            if (sqrt > 0.0f && sqrt2 > 0.0f && sqrt3 > 0.0f) {
                float f10 = dot / sqrt;
                if (f10 <= 0.0f) {
                    return false;
                }
                return Math.abs(dot2 / sqrt2) <= viewConeLimit(this.fieldOfViewDegrees) * f10 && Math.abs(dot3 / sqrt3) <= f10 * viewConeLimit(this.verticalFieldOfViewDegrees);
            }
        }
        return true;
    }

    private void move(float forwardSpeed, float sideSpeed) {
        float f10;
        if (forwardSpeed == 0.0f && sideSpeed == 0.0f) {
            return;
        }
        K8.a.G();
        Vector3 vector3 = new Vector3(sideSpeed, 0.0f, forwardSpeed);
        float b10 = A.b(K8.d.b());
        float b11 = A.b(vector3.getX());
        float b12 = A.b(vector3.getZ());
        PhysicsComponent physicsComponent = (PhysicsComponent) this.f79250n.i0(PhysicsComponent.class);
        if (physicsComponent != null) {
            if (physicsComponent instanceof Rigidbody) {
                Rigidbody rigidbody = (Rigidbody) physicsComponent;
                Vector3 worldSpaceDirection = toWorldSpaceDirection(this.f79250n, b11, 0.0f, b12);
                Vector3 velocity = rigidbody.getVelocity();
                float f11 = rigidbody.mass;
                f10 = f11 > 0.0f ? f11 : 1.0f;
                rigidbody.addForce(A.b(velocityControllerForce(velocity.getX(), worldSpaceDirection.getX(), f10, b10)), 0.0f, A.b(velocityControllerForce(velocity.getZ(), worldSpaceDirection.getZ(), f10, b10)));
                return;
            }
            if (physicsComponent instanceof VehiclePhysics) {
                VehiclePhysics vehiclePhysics = (VehiclePhysics) physicsComponent;
                Vector3 worldSpaceDirection2 = toWorldSpaceDirection(this.f79250n, b11, 0.0f, b12);
                Vector3 velocity2 = vehiclePhysics.getVelocity();
                float f12 = vehiclePhysics.mass;
                f10 = f12 > 0.0f ? f12 : 1.0f;
                vehiclePhysics.addForce(A.b(velocityControllerForce(velocity2.getX(), worldSpaceDirection2.getX(), f10, b10)), 0.0f, A.b(velocityControllerForce(velocity2.getZ(), worldSpaceDirection2.getZ(), f10, b10)));
                return;
            }
            if (physicsComponent instanceof Characterbody) {
                Characterbody characterbody = (Characterbody) physicsComponent;
                characterbody.setForwardSpeed(b12);
                characterbody.setSideSpeed(b11);
                return;
            }
        }
        this.f79250n.J0().o4(b11 * b10, 0.0f, b12 * b10);
    }

    private boolean moveDirectionLooksBlocked(Vector3 direction) {
        if (direction == null) {
            return true;
        }
        return Math.abs(dot(direction.getX(), 0.0f, direction.getZ(), this.f72728O)) < 0.15f && Math.abs(dot(direction.getX(), 0.0f, direction.getZ(), this.f72730P)) < 0.15f;
    }

    private void normalizeHorizontalOrFallback(Vector3 direction, Vector3 fallback) {
        if (direction == null) {
            return;
        }
        direction.setY(0.0f);
        if (direction.lengthSquared() <= 0.0f && fallback != null) {
            direction.set(fallback.getX(), 0.0f, fallback.getZ());
            direction.setY(0.0f);
        }
        if (direction.lengthSquared() <= 0.0f) {
            direction.set(0.0f, 0.0f, 1.0f);
        } else {
            direction.normalizeLocal();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0014, code lost:
    
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x001f, code lost:
    
        if (r2.f72718L1 != false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0012, code lost:
    
        if (r2.f72722M1 != false) goto L11;
     */
    /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int obstaclePressure(boolean z10) {
        int i10;
        int i11;
        ?? r02 = this.f72764y1;
        int i12 = r02;
        if (this.f72734R1) {
            i12 = r02 + 1;
        }
        if (z10) {
            int i13 = i12;
            if (this.f72707H1) {
                i13 = i12 + 1;
            }
            i11 = i13;
            i10 = i13;
        } else {
            int i14 = i12;
            if (this.f72697F1) {
                i14 = i12 + 1;
            }
            i11 = i14;
            i10 = i14;
        }
        int i15 = i10;
        if (this.f72697F1) {
            i15 = i10;
            if (this.f72707H1) {
                i15 = i10 + 1;
            }
        }
        return (this.f72718L1 && this.f72722M1) ? i15 + 1 : i15;
    }

    private int pickNextNavigationSector(float desiredForward, float desiredSide, boolean allowReverse) {
        int i10 = -1;
        float f10 = Float.NEGATIVE_INFINITY;
        for (int i11 = 0; i11 < 16; i11++) {
            if (this.f72694D6[i11] != this.f72712H6) {
                float scoreNavigationMemory = scoreNavigationMemory(i11, sectorAngleDegrees(i11), desiredForward, desiredSide, allowReverse);
                if (scoreNavigationMemory > f10) {
                    f10 = scoreNavigationMemory;
                    i10 = i11;
                }
            }
        }
        return i10;
    }

    private void planChaseMovement() {
        float x10 = this.f72733R.getX() - this.f72726N.getX();
        this.f72733R.getY();
        this.f72726N.getY();
        this.f72746b1.set(x10, 0.0f, this.f72733R.getZ() - this.f72726N.getZ());
        normalizeHorizontalOrFallback(this.f72746b1, this.f72728O);
        updateObstacleRays(this.f72746b1, this.f72734R1 || this.f72758q3 >= 0.385f);
        if (this.f72764y1 || this.f72734R1 || this.f72753m3 > 0.0f) {
            applyObstacleAvoidance(this.f72746b1);
        }
        setPendingMovementFromDirection(this.f72746b1, this.chaseSpeed);
    }

    private void planMovement() {
        this.f72747b2 = 0.0f;
        this.f72749i2 = 0.0f;
        n nVar = this.state;
        if (nVar != n.PATROL) {
            this.f72704F8 = false;
        }
        int ordinal = nVar.ordinal();
        if (ordinal == 1) {
            planPatrolMovement();
            return;
        }
        if (ordinal == 2) {
            if (this.f72756q1) {
                planChaseMovement();
                setLookDirectionToTarget();
                return;
            }
            return;
        }
        if (ordinal == 3) {
            if (this.f72756q1 && this.f72760v1) {
                setLookDirectionToTarget();
                return;
            }
            return;
        }
        if (this.f72698F2 > 0.0f || !this.f72756q1) {
            clearLookDirection();
        } else {
            setLookDirectionToTarget();
        }
    }

    private void planPatrolMovement() {
        q qVar = this.f72716K8;
        if (qVar == q.TURN || this.f72704F8) {
            this.f72747b2 = 0.0f;
            this.f72749i2 = 0.0f;
            setLookDirection(this.f72729O8);
            if (isDirectionAligned(this.f72728O, this.f72729O8)) {
                this.f72704F8 = false;
                startPatrolWalk();
                return;
            }
            return;
        }
        if (qVar == q.PAUSE) {
            this.f72747b2 = 0.0f;
            this.f72749i2 = 0.0f;
            clearLookDirection();
            if (this.f72690D2 <= 0.0f) {
                resolvePatrolDecision(true);
                return;
            }
            return;
        }
        if (qVar == q.REST) {
            this.f72747b2 = 0.0f;
            this.f72749i2 = 0.0f;
            clearLookDirection();
            if (this.f72690D2 <= 0.0f) {
                resolvePatrolDecision(false);
                return;
            }
            return;
        }
        if (this.f72690D2 <= 0.0f) {
            startPatrolPause();
            this.f72747b2 = 0.0f;
            this.f72749i2 = 0.0f;
            clearLookDirection();
            return;
        }
        this.f72746b1.set(this.f72728O);
        this.f72746b1.setY(0.0f);
        normalizeHorizontalOrFallback(this.f72746b1, this.f72728O);
        updateObstacleRays(this.f72746b1, this.f72734R1 || this.f72758q3 >= 0.385f);
        if (!this.f72764y1 && !this.f72734R1 && this.f72753m3 <= 0.0f) {
            this.f72758q3 = 0.0f;
            clearLookDirection();
            setPendingMovementFromDirection(this.f72746b1, this.walkSpeed);
            return;
        }
        if (moveDirectionLooksBlocked(this.f72746b1)) {
            this.f72758q3 += K8.d.b();
        } else {
            this.f72758q3 = 0.0f;
        }
        if (this.f72758q3 >= 0.55f) {
            this.f72699F3 = false;
        }
        applyObstacleAvoidance(this.f72746b1);
        if (this.f72699F3) {
            setPendingMovementFromDirection(this.f72691D3, this.walkSpeed);
            setLookDirectionFromMovement();
            return;
        }
        float chooseAvoidanceSideBias = chooseAvoidanceSideBias();
        this.f72746b1.set(this.f72728O);
        this.f72746b1.setY(0.0f);
        steerAroundObstacle(this.f72746b1, !chooseAvoidTurnRight(), chooseAvoidanceSideBias);
        this.f72746b1.addLocal(this.f72728O, -0.35f);
        normalizeHorizontalOrFallback(this.f72746b1, this.f72728O);
        setPendingMovementFromDirection(this.f72746b1, this.walkSpeed * 0.7f);
    }

    private void precache(GameObject gameObject) {
        this.f72750i3 = false;
        if (gameObject == null || C13317e.G(gameObject)) {
            return;
        }
        if (this.targetReference.f()) {
            this.f72695E = this.targetReference.e();
        } else {
            this.f72695E = null;
        }
        GameObject gameObject2 = this.f72695E;
        if (gameObject2 != null && C13317e.G(gameObject2)) {
            this.f72695E = null;
        }
        gameObject.transform.u0(this.f72726N);
        gameObject.transform.a0(this.f72728O);
        gameObject.transform.S2(this.f72730P);
        gameObject.transform.r4(this.f72732Q);
        this.f72736S.set(this.f72726N.getX() + (this.f72732Q.getX() * this.eyeHeight), this.f72726N.getY() + (this.f72732Q.getY() * this.eyeHeight), this.f72726N.getZ() + (this.f72732Q.getZ() * this.eyeHeight));
        this.f72737T.set(this.f72736S.getX() + (this.f72728O.getX() * this.rayOriginForwardOffset), this.f72736S.getY() + (this.f72728O.getY() * this.rayOriginForwardOffset), this.f72736S.getZ() + (this.f72728O.getZ() * this.rayOriginForwardOffset));
        this.f72738U.set(this.f72726N.getX() + (this.f72728O.getX() * this.rayOriginForwardOffset), this.f72726N.getY() + (this.f72728O.getY() * this.rayOriginForwardOffset), this.f72726N.getZ() + (this.f72728O.getZ() * this.rayOriginForwardOffset));
        this.f72739V.set(this.f72738U.getX() - (this.f72730P.getX() * 0.25f), this.f72738U.getY() - (this.f72730P.getY() * 0.25f), this.f72738U.getZ() - (this.f72730P.getZ() * 0.25f));
        this.f72742W.set(this.f72738U.getX() + (this.f72730P.getX() * 0.25f), this.f72738U.getY() + (this.f72730P.getY() * 0.25f), this.f72738U.getZ() + (this.f72730P.getZ() * 0.25f));
        this.f72743X.set((this.f72726N.getX() + (this.f72728O.getX() * (this.rayOriginForwardOffset + 0.25f))) - (this.f72730P.getX() * 0.45f), (this.f72726N.getY() + (this.f72728O.getY() * (this.rayOriginForwardOffset + 0.25f))) - (this.f72730P.getY() * 0.45f), (this.f72726N.getZ() + (this.f72728O.getZ() * (this.rayOriginForwardOffset + 0.25f))) - (this.f72730P.getZ() * 0.45f));
        this.f72744Y.set(this.f72726N.getX() + (this.f72728O.getX() * (this.rayOriginForwardOffset + 0.25f)) + (this.f72730P.getX() * 0.45f), this.f72726N.getY() + (this.f72728O.getY() * (this.rayOriginForwardOffset + 0.25f)) + (this.f72730P.getY() * 0.45f), this.f72726N.getZ() + (this.f72728O.getZ() * (this.rayOriginForwardOffset + 0.25f)) + (this.f72730P.getZ() * 0.45f));
        this.f72745Z.set(this.f72726N.getX() + (this.f72728O.getX() * this.rayOriginForwardOffset), this.f72726N.getY() + (this.f72728O.getY() * this.rayOriginForwardOffset), this.f72726N.getZ() + (this.f72728O.getZ() * this.rayOriginForwardOffset));
        GameObject gameObject3 = this.f72695E;
        if (gameObject3 != null) {
            gameObject3.transform.u0(this.f72733R);
        }
        this.f72750i3 = true;
    }

    private void projectDirectionAlongPlane(Vector3 direction, Vector3 normal, Vector3 out) {
        float dot = dot(direction.getX(), direction.getY(), direction.getZ(), normal);
        out.set(direction.getX() - (normal.getX() * dot), 0.0f, direction.getZ() - (normal.getZ() * dot));
    }

    private float randomDelay(float base, float randomness) {
        return randomness <= 0.0f ? base : base + Nc.d.h(0.0f, randomness);
    }

    private void recordNavigationObservation(int sectorIndex, float sectorAngleDegrees, C3593a hit, Vector3 hitNormalOut) {
        float f10;
        float f11;
        float f12;
        int wrapSectorIndex = wrapSectorIndex(sectorIndex);
        this.f72703F7++;
        int[] iArr = this.f72702F6;
        iArr[wrapSectorIndex] = Math.min(iArr[wrapSectorIndex] + 1, 4096);
        this.f72694D6[wrapSectorIndex] = this.f72712H6;
        if (hit != null) {
            f10 = Math.max(0.0f, Math.min(1.0f, hit.getDistance() / Math.max(0.001f, this.frontProbeDistance)));
            f12 = 1.0f - f10;
            f11 = f10;
        } else {
            f10 = 1.0f;
            f11 = 1.0f;
            f12 = 0.0f;
        }
        float[] fArr = this.f72700F4;
        fArr[wrapSectorIndex] = clampMemory((fArr[wrapSectorIndex] * 0.62f) + (f10 * 6.0f * 0.38f));
        float[] fArr2 = this.f72710H4;
        fArr2[wrapSectorIndex] = clampMemory((fArr2[wrapSectorIndex] * 0.62f) + (f12 * 6.0f * 0.38f));
        float[] fArr3 = this.f72693D5;
        fArr3[wrapSectorIndex] = clampMemory((fArr3[wrapSectorIndex] * 0.62f) + (f11 * 6.0f * 0.38f));
        if (hitNormalOut == null || hitNormalOut.lengthSquared() <= 0.0f) {
            float[] fArr4 = this.f72701F5;
            fArr4[wrapSectorIndex] = fArr4[wrapSectorIndex] * 0.72f;
            float[] fArr5 = this.f72711H5;
            fArr5[wrapSectorIndex] = fArr5[wrapSectorIndex] * 0.72f;
            return;
        }
        float x10 = hitNormalOut.getX();
        float z10 = hitNormalOut.getZ();
        float f13 = (x10 * x10) + (z10 * z10);
        if (f13 <= 1.0E-5f) {
            float[] fArr6 = this.f72701F5;
            fArr6[wrapSectorIndex] = fArr6[wrapSectorIndex] * 0.72f;
            float[] fArr7 = this.f72711H5;
            fArr7[wrapSectorIndex] = fArr7[wrapSectorIndex] * 0.72f;
            return;
        }
        float sqrt = 1.0f / ((float) Math.sqrt(f13));
        float f14 = x10 * sqrt;
        float f15 = z10 * sqrt;
        float[] fArr8 = this.f72701F5;
        fArr8[wrapSectorIndex] = (fArr8[wrapSectorIndex] * 0.54f) + (f14 * 0.46f);
        float[] fArr9 = this.f72711H5;
        fArr9[wrapSectorIndex] = (fArr9[wrapSectorIndex] * 0.54f) + (f15 * 0.46f);
    }

    private void rememberAvoidDecision(boolean turnRight) {
        int i10 = this.f72735R2 + (turnRight ? 2 : -2);
        this.f72735R2 = i10;
        if (i10 > 6) {
            this.f72735R2 = 6;
        } else if (i10 < -6) {
            this.f72735R2 = -6;
        }
        this.f72762v3 = 0.85f;
    }

    private void resetPatrolCycle() {
        this.f72704F8 = false;
        this.f72716K8 = q.WALK;
        this.f72690D2 = randomDelay(this.patrolDelay, this.patrolDelayRandomness);
        clearLookDirection();
    }

    private void resolvePatrolDecision(boolean allowRest) {
        if (this.f72764y1 || this.f72734R1) {
            startPatrolTurn(chooseAvoidTurnRight());
            return;
        }
        if (allowRest && Nc.d.i(1.0f) < this.patrolRestChance) {
            startPatrolRest();
        } else if (Nc.d.i(1.0f) < this.patrolTurnChance) {
            startPatrolTurn(choosePatrolTurnRight());
        } else {
            startPatrolWalk();
        }
    }

    private void rotateHorizontal(Vector3 direction, boolean turnRight, Vector3 out) {
        float x10 = direction.getX();
        float z10 = direction.getZ();
        if (turnRight) {
            out.set(-z10, 0.0f, x10);
        } else {
            out.set(z10, 0.0f, -x10);
        }
    }

    private void rotateLocalCandidate(float forwardComponent, float sideComponent, float angleDegrees, Vector3 out) {
        double radians = (float) Math.toRadians(angleDegrees);
        float cos = (float) Math.cos(radians);
        float sin = (float) Math.sin(radians);
        float f10 = (forwardComponent * cos) - (sideComponent * sin);
        float f11 = (forwardComponent * sin) + (sideComponent * cos);
        out.set((this.f72728O.getX() * f10) + (this.f72730P.getX() * f11), 0.0f, (this.f72728O.getZ() * f10) + (this.f72730P.getZ() * f11));
        normalizeHorizontalOrFallback(out, this.f72728O);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00f8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private float scoreNavigationCandidate(int sectorIndex, float sectorAngleDegrees, Vector3 candidateWorld, C3593a hit, Vector3 hitNormal, float desiredWorldX, float desiredWorldZ, int leftPressure, int rightPressure, int pressure, boolean allowReverse) {
        float max;
        float abs;
        float f10;
        float f11;
        int i10;
        float f12;
        float f13;
        float x10 = candidateWorld.getX();
        float z10 = candidateWorld.getZ();
        float f14 = (x10 * x10) + (z10 * z10);
        if (f14 <= 1.0E-5f) {
            return Float.NEGATIVE_INFINITY;
        }
        float sqrt = 1.0f / ((float) Math.sqrt(f14));
        float f15 = x10 * sqrt;
        float f16 = z10 * sqrt;
        float scoreNavigationMemory = (((f15 * desiredWorldX) + (f16 * desiredWorldZ)) * 2.0f) + (scoreNavigationMemory(sectorIndex, sectorAngleDegrees, dot(desiredWorldX, 0.0f, desiredWorldZ, this.f72728O), dot(desiredWorldX, 0.0f, desiredWorldZ, this.f72730P), allowReverse) * 0.45f);
        float dot = dot(f15, 0.0f, f16, this.f72728O);
        float dot2 = dot(f15, 0.0f, f16, this.f72730P);
        float f17 = scoreNavigationMemory + (0.25f * dot) + ((leftPressure - rightPressure) * dot2 * 0.28f);
        if (hit != null) {
            max = f17 + (Math.max(0.05f, Math.min(1.0f, hit.getDistance() / Math.max(0.001f, this.frontProbeDistance))) * 2.4f);
            if (hitNormal != null && hitNormal.lengthSquared() > 0.0f) {
                float x11 = hitNormal.getX();
                float z11 = hitNormal.getZ();
                float f18 = (x11 * x11) + (z11 * z11);
                if (f18 > 1.0E-5f) {
                    float sqrt2 = 1.0f / ((float) Math.sqrt(f18));
                    float f19 = x11 * sqrt2;
                    float f20 = z11 * sqrt2;
                    float f21 = (f15 * f19) + (f16 * f20);
                    if (f21 > 0.0f) {
                        max -= f21 * 3.5f;
                    }
                    abs = Math.abs(((-f20) * f15) + (f19 * f16));
                    f10 = 1.1f;
                }
            }
            if (this.f72764y1 && dot > 0.2f) {
                max -= (1.2f * dot) + 1.5f;
            }
            if (this.f72734R1) {
                f11 = 0.0f;
            } else {
                f11 = 0.0f;
                if (dot > 0.0f) {
                    max -= 0.7f;
                }
            }
            if (allowReverse && dot < f11) {
                max -= 1.35f;
            } else if (allowReverse && dot < f11) {
                max -= pressure >= 4 ? 0.6f : 0.15f;
            }
            i10 = this.f72735R2;
            if (i10 != 0) {
                max += (i10 > 0 ? dot2 : -dot2) * 0.15f;
            }
            if (this.f72699F3) {
                f12 = 0.0f;
            } else {
                f12 = 0.0f;
                max += ((dot * dot(this.f72691D3.getX(), 0.0f, this.f72691D3.getZ(), this.f72728O)) + (dot2 * dot(this.f72691D3.getX(), 0.0f, this.f72691D3.getZ(), this.f72730P))) * 0.28f;
            }
            if (hitNormal != null && hitNormal.lengthSquared() > f12) {
                float x12 = hitNormal.getX();
                float z12 = hitNormal.getZ();
                f13 = (x12 * x12) + (z12 * z12);
                if (f13 > 1.0E-5f) {
                    float sqrt3 = 1.0f / ((float) Math.sqrt(f13));
                    float f22 = (f15 * x12 * sqrt3) + (f16 * z12 * sqrt3);
                    max += f22 > 0.0f ? f22 * ((pressure * 0.04f) + 0.95f) : f22 * 0.2f;
                }
            }
            return max + Nc.d.h(-0.03f, 0.03f);
        }
        max = f17 + 2.0f;
        abs = Math.max(0.0f, dot);
        f10 = 0.35f;
        max += abs * f10;
        if (this.f72764y1) {
            max -= (1.2f * dot) + 1.5f;
        }
        if (this.f72734R1) {
        }
        if (allowReverse) {
        }
        if (allowReverse) {
            max -= pressure >= 4 ? 0.6f : 0.15f;
        }
        i10 = this.f72735R2;
        if (i10 != 0) {
        }
        if (this.f72699F3) {
        }
        if (hitNormal != null) {
            float x122 = hitNormal.getX();
            float z122 = hitNormal.getZ();
            f13 = (x122 * x122) + (z122 * z122);
            if (f13 > 1.0E-5f) {
            }
        }
        return max + Nc.d.h(-0.03f, 0.03f);
    }

    private float scoreNavigationMemory(int sectorIndex, float sectorAngleDegrees, float desiredForward, float desiredSide, boolean allowReverse) {
        int wrapSectorIndex = wrapSectorIndex(sectorIndex);
        float cos = (float) Math.cos((float) Math.toRadians(sectorAngleDegrees));
        float sectorSideFromAngle = ((((((desiredForward * cos) + (sectorSideFromAngle(sectorAngleDegrees) * desiredSide)) * 1.9f) + 0.0f) + (this.f72700F4[wrapSectorIndex] * 0.58f)) - (this.f72710H4[wrapSectorIndex] * 0.92f)) + (this.f72693D5[wrapSectorIndex] * 0.22f);
        int i10 = this.f72702F6[wrapSectorIndex];
        float f10 = i10 > 0 ? sectorSideFromAngle + (1.0f / ((i10 * 0.18f) + 1.0f)) : sectorSideFromAngle + 0.55f;
        int i11 = this.f72712H6 - this.f72694D6[wrapSectorIndex];
        if (i11 > 0) {
            f10 += Math.min(1.4f, i11 * 0.06f);
        }
        if (!allowReverse && cos < -0.12f) {
            f10 -= ((-cos) * 0.75f) + 1.15f;
        }
        return f10 + Nc.d.h(-0.025f, 0.025f);
    }

    private float sectorAngleDegrees(int sectorIndex) {
        return wrapAngleDegrees(wrapSectorIndex(sectorIndex) * 22.5f);
    }

    private boolean sectorBlockedAtAngle(float angleDegrees) {
        int sectorIndexForAngle = sectorIndexForAngle(angleDegrees);
        float f10 = this.f72710H4[sectorIndexForAngle];
        float f11 = this.f72700F4[sectorIndexForAngle];
        float f12 = this.f72693D5[sectorIndexForAngle];
        if (f10 <= 0.0f && f11 <= 0.0f) {
            return false;
        }
        int i10 = this.f72712H6 - this.f72694D6[sectorIndexForAngle];
        return f10 + (i10 > 0 ? Math.min(0.35f, ((float) i10) * 0.04f) : 0.0f) > (f11 + (f12 * 0.18f)) + 0.15f;
    }

    private int sectorIndexForAngle(float angleDegrees) {
        return wrapSectorIndex(Math.round(wrapAngleDegrees(angleDegrees) / 22.5f));
    }

    private float sectorSideFromAngle(float angleDegrees) {
        return (float) Math.sin(Math.toRadians(angleDegrees));
    }

    private void selectAvoidanceDirection(Vector3 desiredDirection, boolean allowReverse, Vector3 out) {
        if (out == null) {
            return;
        }
        chooseBestAvoidanceCandidate(desiredDirection, allowReverse);
        out.set((this.f72728O.getX() * this.f72724M3) + (this.f72730P.getX() * this.f72754m4), 0.0f, (this.f72728O.getZ() * this.f72724M3) + (this.f72730P.getZ() * this.f72754m4));
        applyWallSeparationToDirection(out);
        normalizeHorizontalOrFallback(out, this.f72728O);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v5 */
    private void selectBudgetedAvoidanceDirection(Vector3 vector3, boolean z10, Vector3 vector32) {
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        Vector3 vector33;
        Vector3 vector34;
        int pickNextNavigationSector;
        if (vector32 == null) {
            return;
        }
        if (vector3 != null) {
            f10 = dot(vector3.getX(), vector3.getY(), vector3.getZ(), this.f72728O);
            f11 = dot(vector3.getX(), vector3.getY(), vector3.getZ(), this.f72730P);
        } else {
            f10 = 1.0f;
            f11 = 0.0f;
        }
        float f16 = (f10 * f10) + (f11 * f11);
        if (f16 <= 1.0E-5f) {
            f12 = 1.0f;
            f13 = 0.0f;
        } else {
            float sqrt = 1.0f / ((float) Math.sqrt(f16));
            f12 = f10 * sqrt;
            f13 = f11 * sqrt;
        }
        float x10 = (this.f72728O.getX() * f12) + (this.f72730P.getX() * f13);
        float z11 = (this.f72728O.getZ() * f12) + (this.f72730P.getZ() * f13);
        float f17 = (x10 * x10) + (z11 * z11);
        if (f17 <= 1.0E-5f) {
            f15 = this.f72728O.getX();
            f14 = this.f72728O.getZ();
        } else {
            float sqrt2 = 1.0f / ((float) Math.sqrt(f17));
            f14 = sqrt2 * z11;
            f15 = x10 * sqrt2;
        }
        float f18 = Float.NEGATIVE_INFINITY;
        this.f72709H3 = Float.NEGATIVE_INFINITY;
        this.f72724M3 = f12;
        this.f72754m4 = f13;
        this.f72689D0.set(0.0f, 0.0f, 0.0f);
        Vector3 vector35 = (Vector3) this.f72692D4.acquire(Vector3.class);
        Vector3 vector36 = (Vector3) this.f72692D4.acquire(Vector3.class);
        try {
            boolean z12 = false;
            boolean z13 = true;
            ?? r62 = this.abyssCheckEnabled;
            while (this.f72763v4 > r62 && (pickNextNavigationSector = pickNextNavigationSector(f12, f13, z10)) >= 0) {
                buildNavigationDirectionFromSector(pickNextNavigationSector, vector35);
                float sectorAngleDegrees = sectorAngleDegrees(pickNextNavigationSector);
                int obstaclePressure = obstaclePressure(z12);
                int obstaclePressure2 = obstaclePressure(z13);
                int max = Math.max(obstaclePressure, obstaclePressure2);
                C3593a traceNavigationProbe = traceNavigationProbe(pickNextNavigationSector, sectorAngleDegrees, vector35, vector36);
                boolean z14 = z13;
                float f19 = f12;
                boolean z15 = z12;
                boolean z16 = r62;
                Vector3 vector37 = vector36;
                Vector3 vector38 = vector35;
                float f20 = f14;
                float f21 = f15;
                float f22 = f13;
                try {
                    float scoreNavigationCandidate = scoreNavigationCandidate(pickNextNavigationSector, sectorAngleDegrees, vector35, traceNavigationProbe, vector36, f15, f14, obstaclePressure, obstaclePressure2, max, z10);
                    if (scoreNavigationCandidate > this.f72709H3) {
                        this.f72709H3 = scoreNavigationCandidate;
                        this.f72724M3 = dot(vector38.getX(), vector38.getY(), vector38.getZ(), this.f72728O);
                        this.f72754m4 = dot(vector38.getX(), vector38.getY(), vector38.getZ(), this.f72730P);
                        vector34 = vector38;
                        try {
                            vector32.set(vector34);
                            if (traceNavigationProbe == null || vector37.lengthSquared() <= 0.0f) {
                                vector33 = vector37;
                                this.f72689D0.set(0.0f, 0.0f, 0.0f);
                            } else {
                                vector33 = vector37;
                                try {
                                    this.f72689D0.set(vector33);
                                } catch (Throwable th2) {
                                    th = th2;
                                    this.f72692D4.release(vector33);
                                    this.f72692D4.release(vector34);
                                    throw th;
                                }
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            vector33 = vector37;
                        }
                    } else {
                        vector33 = vector37;
                        vector34 = vector38;
                    }
                    updateDirectionalObstacleFlags();
                    vector35 = vector34;
                    vector36 = vector33;
                    f15 = f21;
                    z12 = z15;
                    f13 = f22;
                    z13 = z14;
                    f12 = f19;
                    r62 = z16;
                    f18 = Float.NEGATIVE_INFINITY;
                    f14 = f20;
                } catch (Throwable th4) {
                    th = th4;
                    vector33 = vector37;
                    vector34 = vector38;
                }
            }
            boolean z17 = z13;
            boolean z18 = z12;
            Vector3 vector39 = vector36;
            Vector3 vector310 = vector35;
            float f23 = f18;
            float f24 = f14;
            float f25 = f15;
            if (this.abyssCheckEnabled && this.f72763v4 > 0) {
                applyRayLayer(this.f72721M);
                this.f72721M.h().set(this.f72745Z);
                this.f72721M.e().set(-this.f72732Q.getX(), -this.f72732Q.getY(), -this.f72732Q.getZ());
                this.f72721M.setDistance(this.groundProbeDistance);
                this.f72763v4--;
                this.f72734R1 = this.f72696F.z(this.f72721M, z18) == null ? z17 : z18;
            }
            if (this.f72709H3 != f23) {
                applyWallSeparationToDirection(vector32);
                normalizeHorizontalOrFallback(vector32, this.f72728O);
                this.f72692D4.release(vector39);
                this.f72692D4.release(vector310);
                return;
            }
            vector32.set(f25, 0.0f, f24);
            this.f72689D0.set(this.f72759v0);
            this.f72709H3 = 0.0f;
            normalizeHorizontalOrFallback(vector32, this.f72728O);
            this.f72692D4.release(vector39);
            this.f72692D4.release(vector310);
        } catch (Throwable th5) {
            th = th5;
            vector33 = vector36;
            vector34 = vector35;
        }
    }

    private void setLookDirection(Vector3 direction) {
        synchronized (this.f72751m1) {
            this.f72748i1.set(direction.getX(), 0.0f, direction.getZ());
            this.f72741V2 = this.f72748i1.lengthSquared() > 0.0f;
        }
    }

    private void setLookDirectionFromMovement() {
        synchronized (this.f72751m1) {
            this.f72748i1.set(this.f72746b1.getX(), 0.0f, this.f72746b1.getZ());
            this.f72741V2 = this.f72748i1.lengthSquared() > 0.0f;
        }
    }

    private void setLookDirectionToTarget() {
        synchronized (this.f72751m1) {
            this.f72748i1.set(this.f72733R.getX() - this.f72726N.getX(), 0.0f, this.f72733R.getZ() - this.f72726N.getZ());
            this.f72741V2 = this.f72748i1.lengthSquared() > 0.0f;
        }
    }

    private void setPendingMovementFromDirection(Vector3 direction, float speed) {
        if (direction == null) {
            this.f72747b2 = 0.0f;
            this.f72749i2 = 0.0f;
        } else {
            float dot = dot(direction.getX(), direction.getY(), direction.getZ(), this.f72728O);
            float dot2 = dot(direction.getX(), direction.getY(), direction.getZ(), this.f72730P);
            this.f72747b2 = dot * speed;
            this.f72749i2 = dot2 * speed;
        }
    }

    private void smoothLookTo(Vector3 direction, float lerp) {
        K8.a.G();
        direction.setY(0.0f);
        direction.normalizeLocal();
        StandUp standUp = (StandUp) this.f79250n.i0(StandUp.class);
        if (standUp != null && C13317e.J(standUp.f79250n)) {
            standUp.lerpLookTo(standUp.f79250n.J0().t0().add(direction, 4.0f), lerp * K8.d.b());
        } else {
            this.f79250n.transform.lerpLookTo(this.f79250n.J0().t0().add(direction, 4.0f), lerp * K8.d.b());
        }
    }

    private void startPatrolPause() {
        this.f72716K8 = q.PAUSE;
        this.f72690D2 = randomDelay(this.patrolPauseDelay, this.patrolPauseDelayRandomness);
        clearLookDirection();
    }

    private void startPatrolRest() {
        this.f72716K8 = q.REST;
        this.f72690D2 = randomDelay(this.patrolRestDelay, this.patrolRestDelayRandomness);
        clearLookDirection();
    }

    private void startPatrolTurn(boolean turnRight) {
        this.f72704F8 = true;
        this.f72716K8 = q.TURN;
        this.f72719L2 = turnRight;
        rotateHorizontal(this.f72728O, turnRight, this.f72729O8);
        this.f72729O8.setY(0.0f);
        normalizeHorizontalOrFallback(this.f72729O8, this.f72728O);
    }

    private void startPatrolWalk() {
        this.f72716K8 = q.WALK;
        this.f72704F8 = false;
        this.f72690D2 = randomDelay(this.patrolDelay, this.patrolDelayRandomness);
        clearLookDirection();
    }

    private void steerAroundObstacle(Vector3 direction, boolean turnRight) {
        steerAroundObstacle(direction, turnRight, 0.75f);
    }

    private Vector3 toWorldSpaceDirection(GameObject owner, float desiredVX, float desiredVY, float desiredVZ) {
        Vector3 vector3 = new Vector3();
        Vector3 vector32 = new Vector3();
        if (desiredVX != 0.0f) {
            owner.J0().S2(vector32);
            vector3.addLocal(vector32.getX() * desiredVX, vector32.getY() * desiredVX, vector32.getZ() * desiredVX);
        }
        if (desiredVY != 0.0f) {
            owner.J0().r4(vector32);
            vector3.addLocal(vector32.getX() * desiredVY, vector32.getY() * desiredVY, vector32.getZ() * desiredVY);
        }
        if (desiredVZ != 0.0f) {
            owner.J0().a0(vector32);
            vector3.addLocal(vector32.getX() * desiredVZ, vector32.getY() * desiredVZ, vector32.getZ() * desiredVZ);
        }
        return vector3;
    }

    private C3593a traceNavigationProbe(int sectorIndex, float sectorAngleDegrees, Vector3 direction, Vector3 hitNormalOut) {
        if (direction != null && this.f72763v4 > 0) {
            applyRayLayer(this.f72706H);
            this.f72706H.h().set(this.f72738U);
            this.f72706H.e().set(direction);
            this.f72706H.setDistance(this.frontProbeDistance);
            this.f72763v4--;
            C3593a z10 = this.f72696F.z(this.f72706H, false);
            r0 = isHitPartOfTarget(z10) ? null : z10;
            if (hitNormalOut != null) {
                if (r0 == null || r0.f() == null) {
                    hitNormalOut.set(0.0f, 0.0f, 0.0f);
                } else {
                    hitNormalOut.set(r0.f());
                }
            }
            recordNavigationObservation(sectorIndex, sectorAngleDegrees, r0, hitNormalOut);
        }
        return r0;
    }

    private void updateDirectionalObstacleFlags() {
        this.f72764y1 = sectorBlockedAtAngle(0.0f);
        this.f72697F1 = sectorBlockedAtAngle(-28.0f);
        this.f72707H1 = sectorBlockedAtAngle(28.0f);
        this.f72718L1 = sectorBlockedAtAngle(-60.0f);
        this.f72722M1 = sectorBlockedAtAngle(60.0f);
        copySectorNormalAtAngle(0.0f, this.f72759v0);
    }

    private void updateFrustumModel() {
        if (this.f72720L8 == null) {
            V8.a aVar = new V8.a();
            this.f72720L8 = aVar;
            aVar.p(this.f72725M8);
        }
        GameObject gameObject = this.f79250n;
        if (gameObject == null || C13317e.G(gameObject) || this.f79250n.Y0() || !this.f79250n.b1()) {
            return;
        }
        float viewConeFov = viewConeFov(this.verticalFieldOfViewDegrees);
        float max = Math.max(0.2f, this.visionDistance);
        this.f72720L8.e(viewConeFov, Math.min(0.1f, 0.5f * max), max);
        this.f72720L8.o(this.f79250n, this.eyeHeight);
    }

    private void updateObstacleRays(Vector3 desiredDirection, boolean allowReverse) {
        updateDirectionalObstacleFlags();
        if (this.f72763v4 > 0) {
            selectBudgetedAvoidanceDirection(desiredDirection, allowReverse, this.f72691D3);
            boolean z10 = this.f72691D3.lengthSquared() > 0.0f;
            this.f72699F3 = z10;
            if (z10) {
                boolean z11 = dot(this.f72691D3.getX(), 0.0f, this.f72691D3.getZ(), this.f72730P) >= 0.0f;
                this.f72723M2 = z11;
                rememberAvoidDecision(z11);
                float max = Math.max(obstaclePressure(false), obstaclePressure(true));
                this.f72753m3 = randomDelay((max >= 3.0f ? 0.75f : 0.45f) + (max * 0.08f), max >= 3.0f ? 0.45f : 0.25f);
            }
        } else {
            this.f72699F3 = false;
        }
        updateDirectionalObstacleFlags();
        if (this.f72699F3) {
            return;
        }
        if (this.f72764y1 || this.f72697F1 || this.f72707H1 || this.f72718L1 || this.f72722M1 || this.f72734R1) {
            selectAvoidanceDirection(desiredDirection, allowReverse, this.f72691D3);
            boolean z12 = this.f72691D3.lengthSquared() > 0.0f;
            this.f72699F3 = z12;
            if (z12) {
                boolean z13 = dot(this.f72691D3.getX(), 0.0f, this.f72691D3.getZ(), this.f72730P) >= 0.0f;
                this.f72723M2 = z13;
                rememberAvoidDecision(z13);
                float max2 = Math.max(obstaclePressure(false), obstaclePressure(true));
                this.f72753m3 = randomDelay((max2 < 3.0f ? 0.45f : 0.75f) + (max2 * 0.08f), max2 >= 3.0f ? 0.45f : 0.25f);
            }
        }
    }

    private float velocityControllerForce(float currentVelocity, float targetVelocity, float mass, float dt) {
        float f10 = targetVelocity - currentVelocity;
        if (!Float.isFinite(f10) || Math.abs(f10) < 1.0E-4f) {
            return 0.0f;
        }
        return (f10 * mass) / dt;
    }

    private static float viewConeFov(float degrees) {
        return Math.max(1.0f, Math.min(179.0f, degrees));
    }

    private static float viewConeLimit(float degrees) {
        return (float) Math.tan(Math.toRadians(viewConeFov(degrees) * 0.5f));
    }

    private float wrapAngleDegrees(float angleDegrees) {
        float f10 = angleDegrees % 360.0f;
        return f10 < 0.0f ? f10 + 360.0f : f10;
    }

    private int wrapSectorIndex(int sectorIndex) {
        int i10 = sectorIndex % 16;
        return i10 < 0 ? i10 + 16 : i10;
    }

    @Override
    public String getDisplayableTitle() {
        return f72671Q8;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(new C5.b("State:" + this.state.toString(), 12));
        linkedList.add(F5.c.d(getInspectorMemory(), "Target", new e()));
        linkedList.add(F5.c.d(getInspectorMemory(), "Vision & Laser", new f(context)));
        linkedList.add(F5.c.d(getInspectorMemory(), "Movement", new g()));
        linkedList.add(F5.c.d(getInspectorMemory(), "Rotation", new h()));
        linkedList.add(F5.c.d(getInspectorMemory(), "Combat", new i(context)));
        linkedList.add(F5.c.d(getInspectorMemory(), "State timings", new j()));
        return linkedList;
    }

    public GameObject getTarget() {
        return this.f72695E;
    }

    @Override
    public String getTitle() {
        return f72671Q8;
    }

    public float getWalkSpeed() {
        return this.walkSpeed;
    }

    @Override
    public void lowTaskUpdate(GameObject gameObject, boolean isEditor) {
        super.lowTaskUpdate(gameObject, isEditor);
        if (this.f72750i3 && c8.b.k()) {
            this.f72692D4.startFrame();
            try {
                float b10 = K8.d.b();
                this.f72763v4 = Math.max(0, this.navigationRaycastBudget);
                this.f72712H6++;
                this.f72703F7 = 0;
                decayNavigationMemory();
                this.f72757q2 = Math.max(0.0f, this.f72757q2 - b10);
                this.f72761v2 = Math.max(0.0f, this.f72761v2 - b10);
                this.f72690D2 = Math.max(0.0f, this.f72690D2 - b10);
                this.f72698F2 = Math.max(0.0f, this.f72698F2 - b10);
                this.f72708H2 = Math.max(0.0f, this.f72708H2 - b10);
                this.f72753m3 = Math.max(0.0f, this.f72753m3 - b10);
                this.f72758q3 = Math.max(0.0f, this.f72758q3 - b10);
                this.f72762v3 = Math.max(0.0f, this.f72762v3 - b10);
                GameObject gameObject2 = this.f72695E;
                boolean z10 = (gameObject2 == null || C13317e.G(gameObject2)) ? false : true;
                this.f72756q1 = z10;
                this.f72740V1 = Float.MAX_VALUE;
                if (z10) {
                    float distanceSq = distanceSq(this.f72726N, this.f72733R);
                    this.f72740V1 = distanceSq;
                    boolean z11 = isTargetInViewCone(distanceSq) && hasLineOfSightToTarget(this.f72740V1);
                    this.f72760v1 = z11;
                    if (z11) {
                        this.f72708H2 = 0.0f;
                    } else {
                        this.f72708H2 += b10;
                    }
                } else {
                    this.f72760v1 = false;
                }
                boolean z12 = this.f72764y1;
                if (!z12 && !this.f72734R1 && this.f72753m3 <= 0.0f && this.f72762v3 <= 0.0f) {
                    int i10 = this.f72735R2;
                    if (i10 > 0) {
                        this.f72735R2 = i10 - 1;
                    } else if (i10 < 0) {
                        this.f72735R2 = i10 + 1;
                    }
                    this.f72762v3 = 0.35f;
                }
                if (!z12 && !this.f72734R1 && this.f72753m3 <= 0.0f) {
                    this.f72699F3 = false;
                    this.f72689D0.set(0.0f, 0.0f, 0.0f);
                }
                n determineState = determineState();
                if (determineState != this.state && this.f72757q2 <= 0.0f) {
                    this.state = determineState;
                    this.f72757q2 = randomDelay(this.stateChangeDelay, this.stateChangeRandomness);
                    n nVar = this.state;
                    if (nVar == n.PATROL) {
                        resetPatrolCycle();
                    } else if (nVar == n.CHASE) {
                        this.f72698F2 = randomDelay(this.searchDelay, this.searchDelayRandomness);
                    } else if (nVar == n.ATTACK) {
                        this.f72761v2 = randomDelay(this.attackDelay, this.attackDelayRandomness);
                    }
                }
                planMovement();
                this.f72692D4.endFrame();
            } catch (Throwable th2) {
                this.f72692D4.endFrame();
                throw th2;
            }
        }
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        Vector3 vector3;
        super.preUpdate(gameObject, isEditor);
        if (!c8.b.k()) {
            this.f72752m2 = false;
            this.f72747b2 = 0.0f;
            this.f72749i2 = 0.0f;
            synchronized (this.f72751m1) {
                this.f72741V2 = false;
            }
            return;
        }
        precache(gameObject);
        if (this.f72752m2) {
            emitAttack();
            this.f72752m2 = false;
        }
        synchronized (this.f72751m1) {
            try {
                if (this.f72741V2) {
                    vector3 = (Vector3) JP.acquire(Vector3.class);
                    vector3.set(this.f72748i1);
                } else {
                    vector3 = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (vector3 != null) {
            try {
                smoothLookTo(vector3, getStateLookLerpMultiplier() * this.lookLerp);
            } finally {
                JP.release(vector3);
            }
        }
        move(this.f72747b2, this.f72749i2);
        this.f72747b2 = 0.0f;
        this.f72749i2 = 0.0f;
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f72731P8 = run;
    }

    public void setTarget(GameObject target) {
        this.f72695E = target;
        this.targetReference.h(target);
    }

    public void setWalkSpeed(float walkSpeed) {
        this.walkSpeed = walkSpeed;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f72731P8;
        if (component != null) {
            return component;
        }
        JAVARuntime.EnemyAI enemyAI = new JAVARuntime.EnemyAI(this);
        this.f72731P8 = enemyAI;
        return enemyAI;
    }

    @Override
    public void updateOnSelectedHierarchy() {
        super.updateOnSelectedHierarchy();
        updateFrustumModel();
    }

    private void steerAroundObstacle(Vector3 direction, boolean turnRight, float sideBias) {
        if (direction == null) {
            return;
        }
        float x10 = this.f72728O.getX() + (this.f72730P.getX() * (turnRight ? sideBias : -sideBias));
        float z10 = this.f72728O.getZ();
        float z11 = this.f72730P.getZ();
        if (!turnRight) {
            sideBias = -sideBias;
        }
        direction.set(x10, 0.0f, z10 + (z11 * sideBias));
        normalizeHorizontalOrFallback(direction, this.f72728O);
    }

    @Override
    public Component mo1248clone() {
        EnemyAI enemyAI = new EnemyAI();
        enemyAI.targetReference = this.targetReference.clone();
        enemyAI.layerReference = this.layerReference.clone();
        enemyAI.walkSpeed = this.walkSpeed;
        enemyAI.chaseSpeed = this.chaseSpeed;
        enemyAI.visionDistance = this.visionDistance;
        enemyAI.fieldOfViewDegrees = this.fieldOfViewDegrees;
        enemyAI.verticalFieldOfViewDegrees = this.verticalFieldOfViewDegrees;
        enemyAI.attackDistance = this.attackDistance;
        enemyAI.loseSightDistance = this.loseSightDistance;
        enemyAI.eyeHeight = this.eyeHeight;
        enemyAI.frontProbeDistance = this.frontProbeDistance;
        enemyAI.rayOriginForwardOffset = this.rayOriginForwardOffset;
        enemyAI.groundProbeDistance = this.groundProbeDistance;
        enemyAI.abyssCheckEnabled = this.abyssCheckEnabled;
        enemyAI.attackDelay = this.attackDelay;
        enemyAI.attackDelayRandomness = this.attackDelayRandomness;
        enemyAI.stateChangeDelay = this.stateChangeDelay;
        enemyAI.stateChangeRandomness = this.stateChangeRandomness;
        enemyAI.patrolDelay = this.patrolDelay;
        enemyAI.patrolDelayRandomness = this.patrolDelayRandomness;
        enemyAI.patrolPauseDelay = this.patrolPauseDelay;
        enemyAI.patrolPauseDelayRandomness = this.patrolPauseDelayRandomness;
        enemyAI.patrolRestChance = this.patrolRestChance;
        enemyAI.patrolRestDelay = this.patrolRestDelay;
        enemyAI.patrolRestDelayRandomness = this.patrolRestDelayRandomness;
        enemyAI.searchDelay = this.searchDelay;
        enemyAI.searchDelayRandomness = this.searchDelayRandomness;
        enemyAI.patrolTurnChance = this.patrolTurnChance;
        enemyAI.lookLerp = this.lookLerp;
        enemyAI.navigationRaycastBudget = this.navigationRaycastBudget;
        enemyAI.state = this.state;
        enemyAI.attackFunction = cloneAttackFunction();
        enemyAI.f72716K8 = this.f72716K8;
        enemyAI.f72704F8 = this.f72704F8;
        enemyAI.f72690D2 = this.f72690D2;
        return enemyAI;
    }
}
