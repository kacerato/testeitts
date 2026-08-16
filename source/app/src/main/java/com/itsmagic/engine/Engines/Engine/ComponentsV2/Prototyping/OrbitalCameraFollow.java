package com.itsmagic.engine.Engines.Engine.ComponentsV2.Prototyping;

import C5.b;
import D5.h;
import F5.c;
import Ic.A;
import android.content.Context;
import android.widget.Toast;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentUtils.ObjectReference;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Input.Axis;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.LinkedList;
import java.util.List;
import rc.C15169a;
import s8.InterfaceC15237a;

public class OrbitalCameraFollow extends Component {

    public static String f76182T = "OrbitalCameraFollow";

    public static Class f76183U = OrbitalCameraFollow.class;

    public float f76184E;

    public final Vector3 f76185F;

    public final Vector3 f76186G;

    public final Vector3 f76187H;

    public final Vector3 f76188I;

    public final Vector3 f76189J;

    public final Vector3 f76190K;

    public final Vector3 f76191L;

    public final Vector3 f76192M;

    public final Vector3 f76193N;

    public final Quaternion f76194O;

    public final Quaternion f76195P;

    public final Vector3 f76196Q;

    public float f76197R;

    public JAVARuntime.Component f76198S;

    @Expose
    @eb.f
    private String axisName;

    @Expose
    @eb.f
    public float distance;

    @Expose
    public boolean fov;

    @Expose
    @eb.f
    public float fovIntensity;

    @Expose
    @eb.f
    public float height;

    @Expose
    @eb.f
    public float initialFov;

    @Expose
    @eb.f
    private boolean invertX;

    @Expose
    @eb.f
    private boolean invertY;

    @Expose
    @eb.f
    private boolean limited;

    @Expose
    @eb.f
    public Vector3 lookAhead;

    @Expose
    @eb.f
    public float lookAheadSpeed;

    @Expose
    @eb.f
    public float maxHeightDistance;

    @Expose
    @eb.f
    private float maxPitch;

    @Expose
    @eb.f
    private float minPitch;

    @Expose
    @eb.f
    public float minimalFov;

    @Expose
    private float orbitPitch;

    @Expose
    @eb.f
    public float orbitPositionDamping;

    @Expose
    @eb.f
    public float orbitRotationDamping;

    @Expose
    private float orbitYaw;

    @Expose
    @eb.f
    private float orbitalReturnDelay;

    @Expose
    @eb.f
    private float orbitalReturnSpeedRange;

    @Expose
    @eb.f
    private float orbitalReturnSpeedThreshold;

    @Expose
    @eb.f
    public float positionDamping;

    @Expose
    @eb.f
    public float rotationDamping;

    @Expose
    @eb.f
    private float sensibility;

    @Expose
    public boolean shake;

    @Expose
    @eb.f
    public float shakeIntensity;

    @Expose
    @eb.f
    public float shakeMagnitude;

    @Expose
    @eb.f
    public Vector3 targetOffset;

    @Expose
    public ObjectReference targetReference;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return OrbitalCameraFollow.f76183U;
        }

        @Override
        public String c() {
            return OrbitalCameraFollow.f76182T;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.PROTOTYPING);
        }

        @Override
        public String f() {
            return "OrbitalCameraFollow";
        }
    }

    public class b extends R8.c {
        public b() {
        }

        @Override
        public void a() {
            OrbitalCameraFollow.this.reloadInspector();
        }

        @Override
        public void b() {
            super.b();
        }

        @Override
        public boolean c(GameObject gameObject) {
            return super.c(gameObject);
        }
    }

    public class c implements c.o0 {

        public final GameObject f76200a;

        public class a implements h {
            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", OrbitalCameraFollow.this.lookAheadSpeed + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    OrbitalCameraFollow.this.lookAheadSpeed = Nc.b.S0(0.0f, variable.float_value);
                }
            }
        }

        public class b implements h {
            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", OrbitalCameraFollow.this.distance + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    OrbitalCameraFollow.this.distance = Nc.b.M(0.1f, variable.float_value);
                }
            }
        }

        public class C1229c implements h {
            public C1229c() {
            }

            @Override
            public Variable get() {
                return new Variable("", OrbitalCameraFollow.this.height + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    OrbitalCameraFollow.this.height = variable.float_value;
                }
            }
        }

        public class d implements h {
            public d() {
            }

            @Override
            public Variable get() {
                return new Variable("", OrbitalCameraFollow.this.maxHeightDistance + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    OrbitalCameraFollow.this.maxHeightDistance = variable.float_value;
                }
            }
        }

        public class e implements h {
            public e() {
            }

            @Override
            public Variable get() {
                return new Variable("", OrbitalCameraFollow.this.positionDamping + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    OrbitalCameraFollow.this.positionDamping = variable.float_value;
                }
            }
        }

        public class f implements h {
            public f() {
            }

            @Override
            public Variable get() {
                return new Variable("", OrbitalCameraFollow.this.rotationDamping + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    OrbitalCameraFollow.this.rotationDamping = variable.float_value;
                }
            }
        }

        public c(final GameObject val$animationObject) {
            this.f76200a = val$animationObject;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> colapsableEntries) {
            colapsableEntries.add(F5.c.L("Target offset", OrbitalCameraFollow.this.targetOffset, new Vector3()));
            colapsableEntries.add(F5.c.L("Look ahead", OrbitalCameraFollow.this.lookAhead, new Vector3()));
            a aVar = new a();
            b.a aVar2 = b.a.SLFloat;
            colapsableEntries.add(new C5.b(aVar, "Look ahead speed", aVar2));
            colapsableEntries.add(new C5.b(new b(), Lang.l(Lang.T.DISTANCE), aVar2));
            if (this.f76200a != null) {
                colapsableEntries.get(colapsableEntries.size() - 1).d(this.f76200a, OrbitalCameraFollow.this, "distance", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            colapsableEntries.add(new C5.b(new C1229c(), Lang.l(Lang.T.HEIGHT), aVar2));
            if (this.f76200a != null) {
                colapsableEntries.get(colapsableEntries.size() - 1).d(this.f76200a, OrbitalCameraFollow.this, "height", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            colapsableEntries.add(new C5.b(new d(), Lang.l(Lang.T.MAX_HEIGHT_DISTANCE), aVar2));
            if (this.f76200a != null) {
                colapsableEntries.get(colapsableEntries.size() - 1).d(this.f76200a, OrbitalCameraFollow.this, "maxHeightDistance", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            colapsableEntries.add(new C5.b(new e(), "Position damping", aVar2));
            if (this.f76200a != null) {
                colapsableEntries.get(colapsableEntries.size() - 1).d(this.f76200a, OrbitalCameraFollow.this, "positionDamping", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            colapsableEntries.add(new C5.b(new f(), Lang.l(Lang.T.ROTATION_DAMPING), aVar2));
            if (this.f76200a != null) {
                colapsableEntries.get(colapsableEntries.size() - 1).d(this.f76200a, OrbitalCameraFollow.this, "rotationDamping", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            return colapsableEntries;
        }
    }

    public class d implements c.o0 {

        public final Context f76208a;

        public final GameObject f76209b;

        public class a implements h {

            public class RunnableC1230a implements Runnable {

                public final Exception f76212b;

                public RunnableC1230a(final Exception val$e) {
                    this.f76212b = val$e;
                }

                @Override
                public void run() {
                    Toast.makeText(d.this.f76208a, this.f76212b.getMessage(), 0).show();
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", OrbitalCameraFollow.this.axisName + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    try {
                        OrbitalCameraFollow.this.setAxisName(variable.str_value);
                    } catch (Exception e10) {
                        N7.c.j0(new RunnableC1230a(e10));
                    }
                }
            }
        }

        public class b implements h {
            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", OrbitalCameraFollow.this.sensibility + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    OrbitalCameraFollow.this.sensibility = variable.float_value;
                }
            }
        }

        public class c implements h {
            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", OrbitalCameraFollow.this.invertX + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    OrbitalCameraFollow.this.invertX = variable.booolean_value.booleanValue();
                }
            }
        }

        public class C1231d implements h {
            public C1231d() {
            }

            @Override
            public Variable get() {
                return new Variable("", OrbitalCameraFollow.this.invertY + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    OrbitalCameraFollow.this.invertY = variable.booolean_value.booleanValue();
                }
            }
        }

        public d(final Context val$context, final GameObject val$animationObject) {
            this.f76208a = val$context;
            this.f76209b = val$animationObject;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> colapsableEntries) {
            colapsableEntries.add(new C5.b(new a(), Lang.l(Lang.T.AXIS_NAME), b.a.SLString));
            colapsableEntries.add(new C5.b(new b(), "Sensibility", b.a.SLFloat));
            if (this.f76209b != null) {
                colapsableEntries.get(colapsableEntries.size() - 1).d(this.f76209b, OrbitalCameraFollow.this, "sensibility", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            c cVar = new c();
            b.a aVar = b.a.SLBoolean;
            colapsableEntries.add(new C5.b(cVar, "Invert X", aVar));
            colapsableEntries.add(new C5.b(new C1231d(), "Invert Y", aVar));
            return colapsableEntries;
        }
    }

    public class e implements c.o0 {

        public final GameObject f76217a;

        public class a implements h {
            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", OrbitalCameraFollow.this.orbitPositionDamping + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    OrbitalCameraFollow.this.orbitPositionDamping = variable.float_value;
                }
            }
        }

        public class b implements h {
            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", OrbitalCameraFollow.this.orbitRotationDamping + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    OrbitalCameraFollow.this.orbitRotationDamping = variable.float_value;
                }
            }
        }

        public class c implements h {
            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", OrbitalCameraFollow.this.limited + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    OrbitalCameraFollow.this.limited = variable.booolean_value.booleanValue();
                }
            }
        }

        public class d implements h {
            public d() {
            }

            @Override
            public Variable get() {
                return new Variable("", OrbitalCameraFollow.this.minPitch + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    OrbitalCameraFollow.this.minPitch = variable.float_value;
                }
            }
        }

        public class C1232e implements h {
            public C1232e() {
            }

            @Override
            public Variable get() {
                return new Variable("", OrbitalCameraFollow.this.maxPitch + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    OrbitalCameraFollow.this.maxPitch = variable.float_value;
                }
            }
        }

        public e(final GameObject val$animationObject) {
            this.f76217a = val$animationObject;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> colapsableEntries) {
            a aVar = new a();
            b.a aVar2 = b.a.SLFloat;
            colapsableEntries.add(new C5.b(aVar, "Orbit position damping", aVar2));
            if (this.f76217a != null) {
                colapsableEntries.get(colapsableEntries.size() - 1).d(this.f76217a, OrbitalCameraFollow.this, "orbitPositionDamping", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            colapsableEntries.add(new C5.b(new b(), "Orbit rotation damping", aVar2));
            if (this.f76217a != null) {
                colapsableEntries.get(colapsableEntries.size() - 1).d(this.f76217a, OrbitalCameraFollow.this, "orbitRotationDamping", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            colapsableEntries.add(new C5.b(new c(), Lang.l(Lang.T.LIMITED), b.a.SLBoolean));
            colapsableEntries.add(new C5.b(new d(), "Min pitch", aVar2));
            if (this.f76217a != null) {
                colapsableEntries.get(colapsableEntries.size() - 1).d(this.f76217a, OrbitalCameraFollow.this, "minPitch", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            colapsableEntries.add(new C5.b(new C1232e(), "Max pitch", aVar2));
            if (this.f76217a != null) {
                colapsableEntries.get(colapsableEntries.size() - 1).d(this.f76217a, OrbitalCameraFollow.this, "maxPitch", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            return colapsableEntries;
        }
    }

    public class f implements c.o0 {

        public final GameObject f76224a;

        public class a implements h {
            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", OrbitalCameraFollow.this.orbitalReturnSpeedThreshold + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    OrbitalCameraFollow.this.orbitalReturnSpeedThreshold = Nc.b.S0(0.0f, variable.float_value);
                }
            }
        }

        public class b implements h {
            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", OrbitalCameraFollow.this.orbitalReturnSpeedRange + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    OrbitalCameraFollow.this.orbitalReturnSpeedRange = Nc.b.S0(0.0f, variable.float_value);
                }
            }
        }

        public class c implements h {
            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", OrbitalCameraFollow.this.orbitalReturnDelay + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    OrbitalCameraFollow.this.orbitalReturnDelay = Nc.b.S0(0.0f, variable.float_value);
                }
            }
        }

        public f(final GameObject val$animationObject) {
            this.f76224a = val$animationObject;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> colapsableEntries) {
            a aVar = new a();
            b.a aVar2 = b.a.SLFloat;
            colapsableEntries.add(new C5.b(aVar, "Return speed threshold", aVar2));
            if (this.f76224a != null) {
                colapsableEntries.get(colapsableEntries.size() - 1).d(this.f76224a, OrbitalCameraFollow.this, "orbitalReturnSpeedThreshold", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            colapsableEntries.add(new C5.b(new b(), "Return speed range", aVar2));
            if (this.f76224a != null) {
                colapsableEntries.get(colapsableEntries.size() - 1).d(this.f76224a, OrbitalCameraFollow.this, "orbitalReturnSpeedRange", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            colapsableEntries.add(new C5.b(new c(), "Return delay", aVar2));
            if (this.f76224a != null) {
                colapsableEntries.get(colapsableEntries.size() - 1).d(this.f76224a, OrbitalCameraFollow.this, "orbitalReturnDelay", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            return colapsableEntries;
        }
    }

    public class g implements c.o0 {

        public final GameObject f76229a;

        public class a implements h {
            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", OrbitalCameraFollow.this.shake + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    OrbitalCameraFollow.this.shake = variable.booolean_value.booleanValue();
                }
            }
        }

        public class b implements h {
            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", OrbitalCameraFollow.this.shakeIntensity + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    OrbitalCameraFollow.this.shakeIntensity = variable.float_value;
                }
            }
        }

        public class c implements h {
            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", OrbitalCameraFollow.this.shakeMagnitude + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    OrbitalCameraFollow.this.shakeMagnitude = variable.float_value;
                }
            }
        }

        public class d implements h {
            public d() {
            }

            @Override
            public Variable get() {
                return new Variable("", OrbitalCameraFollow.this.fov + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    OrbitalCameraFollow.this.fov = variable.booolean_value.booleanValue();
                }
            }
        }

        public class e implements h {
            public e() {
            }

            @Override
            public Variable get() {
                return new Variable("", OrbitalCameraFollow.this.fovIntensity + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    OrbitalCameraFollow.this.fovIntensity = variable.float_value;
                }
            }
        }

        public class f implements h {
            public f() {
            }

            @Override
            public Variable get() {
                return new Variable("", OrbitalCameraFollow.this.initialFov + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    OrbitalCameraFollow.this.initialFov = variable.float_value;
                }
            }
        }

        public class C1233g implements h {
            public C1233g() {
            }

            @Override
            public Variable get() {
                return new Variable("", OrbitalCameraFollow.this.minimalFov + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    OrbitalCameraFollow.this.minimalFov = variable.float_value;
                }
            }
        }

        public g(final GameObject val$animationObject) {
            this.f76229a = val$animationObject;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> colapsableEntries) {
            a aVar = new a();
            b.a aVar2 = b.a.SLBoolean;
            colapsableEntries.add(new C5.b(aVar, "Shake", aVar2));
            b bVar = new b();
            b.a aVar3 = b.a.SLFloat;
            colapsableEntries.add(new C5.b(bVar, "Shake intensity", aVar3));
            if (this.f76229a != null) {
                colapsableEntries.get(colapsableEntries.size() - 1).d(this.f76229a, OrbitalCameraFollow.this, "shakeIntensity", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            colapsableEntries.add(new C5.b(new c(), "Shake magnitude", aVar3));
            if (this.f76229a != null) {
                colapsableEntries.get(colapsableEntries.size() - 1).d(this.f76229a, OrbitalCameraFollow.this, "shakeMagnitude", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            colapsableEntries.add(new C5.b(new d(), "Pinch fov", aVar2));
            colapsableEntries.add(new C5.b(new e(), "Fov intensity", aVar3));
            if (this.f76229a != null) {
                colapsableEntries.get(colapsableEntries.size() - 1).d(this.f76229a, OrbitalCameraFollow.this, "fovIntensity", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            colapsableEntries.add(new C5.b(new f(), "Initial fov", aVar3));
            if (this.f76229a != null) {
                colapsableEntries.get(colapsableEntries.size() - 1).d(this.f76229a, OrbitalCameraFollow.this, "initialFov", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            colapsableEntries.add(new C5.b(new C1233g(), "Minimal fov", aVar3));
            if (this.f76229a != null) {
                colapsableEntries.get(colapsableEntries.size() - 1).d(this.f76229a, OrbitalCameraFollow.this, "minimalFov", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            return colapsableEntries;
        }
    }

    static {
        C13201a.b(new a());
    }

    public OrbitalCameraFollow() {
        super(f76182T);
        this.targetReference = new ObjectReference();
        this.targetOffset = new Vector3(0.0f, 0.2f, 0.0f);
        this.lookAhead = new Vector3();
        this.lookAheadSpeed = 50.0f;
        this.distance = 1.5f;
        this.height = 0.5f;
        this.maxHeightDistance = 3.0f;
        this.positionDamping = 3.0f;
        this.rotationDamping = 8.0f;
        this.orbitPositionDamping = 20.0f;
        this.orbitRotationDamping = 50.0f;
        this.shake = true;
        this.shakeIntensity = 1.0f;
        this.shakeMagnitude = 0.3f;
        this.fov = true;
        this.fovIntensity = 10.0f;
        this.initialFov = 70.0f;
        this.minimalFov = 35.0f;
        this.axisName = "slide";
        this.sensibility = 10.0f;
        this.orbitalReturnSpeedThreshold = 0.5f;
        this.orbitalReturnSpeedRange = 1.0f;
        this.orbitalReturnDelay = 1.0f;
        this.invertX = false;
        this.invertY = false;
        this.limited = true;
        this.minPitch = -89.0f;
        this.maxPitch = 89.0f;
        this.orbitYaw = 0.0f;
        this.orbitPitch = 0.0f;
        this.f76184E = 0.0f;
        this.f76185F = new Vector3();
        this.f76186G = new Vector3();
        this.f76187H = new Vector3();
        this.f76188I = new Vector3();
        this.f76189J = new Vector3();
        this.f76190K = new Vector3();
        this.f76191L = new Vector3();
        this.f76192M = new Vector3();
        this.f76193N = new Vector3();
        this.f76194O = new Quaternion();
        this.f76195P = new Quaternion();
        this.f76196Q = new Vector3();
        this.f76197R = 0.0f;
    }

    private Vector2 getSlide() {
        Axis h10;
        String str = this.axisName;
        if (str == null || str.isEmpty() || (h10 = C15169a.h(this.axisName)) == null) {
            return null;
        }
        return h10.d();
    }

    @InterfaceC15237a
    public String getAxisName() {
        return this.axisName;
    }

    @Override
    public String getDisplayableTitle() {
        return "OrbitalCameraFollow";
    }

    @InterfaceC15237a
    public float getDistance() {
        return this.distance;
    }

    @InterfaceC15237a
    public float getHeight() {
        return this.height;
    }

    @Override
    public int getIconResource() {
        return R.drawable.wo_camera2;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        GameObject gameObject = this.f79250n;
        linkedList.add(this.targetReference.d(Lang.l(Lang.T.TARGET), new b()));
        if (context == null) {
            return linkedList;
        }
        linkedList.add(F5.c.d(getInspectorMemory(), "Follow", new c(gameObject)));
        linkedList.add(F5.c.d(getInspectorMemory(), "Input", new d(context, gameObject)));
        linkedList.add(F5.c.d(getInspectorMemory(), "Orbit", new e(gameObject)));
        linkedList.add(F5.c.d(getInspectorMemory(), "Return", new f(gameObject)));
        linkedList.add(F5.c.d(getInspectorMemory(), "Effects", new g(gameObject)));
        return linkedList;
    }

    @InterfaceC15237a
    public Vector3 getLookAhead() {
        return this.lookAhead;
    }

    @InterfaceC15237a
    public float getLookAheadSpeed() {
        return this.lookAheadSpeed;
    }

    @InterfaceC15237a
    public float getMaxHeightDistance() {
        return this.maxHeightDistance;
    }

    @InterfaceC15237a
    public float getMaxPitch() {
        return this.maxPitch;
    }

    @InterfaceC15237a
    public float getMinPitch() {
        return this.minPitch;
    }

    @InterfaceC15237a
    public float getOrbitPositionDamping() {
        return this.orbitPositionDamping;
    }

    @InterfaceC15237a
    public float getOrbitRotationDamping() {
        return this.orbitRotationDamping;
    }

    @InterfaceC15237a
    public float getOrbitalReturnDelay() {
        return this.orbitalReturnDelay;
    }

    @InterfaceC15237a
    public float getOrbitalReturnSpeedRange() {
        return this.orbitalReturnSpeedRange;
    }

    @InterfaceC15237a
    public float getOrbitalReturnSpeedThreshold() {
        return this.orbitalReturnSpeedThreshold;
    }

    @InterfaceC15237a
    public float getPositionDamping() {
        return this.positionDamping;
    }

    @InterfaceC15237a
    public float getRotationDamping() {
        return this.rotationDamping;
    }

    @InterfaceC15237a
    public float getSensibility() {
        return this.sensibility;
    }

    public float getShakeIntensity() {
        return this.shakeIntensity;
    }

    public float getShakeMagnitude() {
        return this.shakeMagnitude;
    }

    @InterfaceC15237a
    public GameObject getTarget() {
        if (this.targetReference.f()) {
            return this.targetReference.e();
        }
        return null;
    }

    @InterfaceC15237a
    public Vector3 getTargetOffset() {
        return this.targetOffset;
    }

    @Override
    public String getTitle() {
        return "OrbitalCameraFollow";
    }

    @Override
    public Component.e getType() {
        return Component.e.OrbitalCameraFollow;
    }

    @Override
    public int iconPriority() {
        return 3;
    }

    @InterfaceC15237a
    public boolean isInvertX() {
        return this.invertX;
    }

    @InterfaceC15237a
    public boolean isInvertY() {
        return this.invertY;
    }

    @InterfaceC15237a
    public boolean isLimited() {
        return this.limited;
    }

    public boolean isShake() {
        return this.shake;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(27:5|(5:13|(1:15)|16|(1:18)|19)|20|(2:22|(1:24))|25|(1:94)(1:31)|(1:33)(1:93)|34|(4:(2:36|(21:38|(2:89|(1:91))(1:42)|43|(1:45)|(5:47|(1:49)(1:54)|50|(1:52)|53)|55|(1:57)|58|(1:88)|62|(1:64)|65|(1:67)|68|(1:70)(2:85|(1:87))|71|72|73|75|76|78))|75|76|78)|92|43|(0)|(0)|55|(0)|58|(1:60)|88|62|(0)|65|(0)|68|(0)(0)|71|72|73) */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x02ff, code lost:
    
        r14 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0300, code lost:
    
        r14.printStackTrace();
     */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x02d6  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x02db  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        float f10;
        float f11;
        float E10;
        float y10;
        float k10;
        super.preUpdate(gameObject, isEditor);
        this.targetReference.j();
        if (!c8.b.k() || !this.targetReference.f()) {
            return;
        }
        float b10 = K8.d.b();
        Transform J02 = this.targetReference.e().J0();
        Vector3 u02 = J02.u0(this.f76185F);
        Vector3 a12 = gameObject.transform.a1(this.f76193N);
        Vector3 sub = J02.u0(this.f76185F).sub(this.f76196Q);
        this.f76196Q.set(u02);
        sub.setY(0.0f);
        float b11 = A.b(sub.lengthF() * (1.0f / K8.d.b()));
        if (this.shake && b11 > 0.0f && this.shakeIntensity != 0.0f && b11 < Float.POSITIVE_INFINITY) {
            float b12 = this.f76197R + (K8.d.b() * 30.0f * b11 * this.shakeIntensity);
            this.f76197R = b12;
            if (b12 >= 360.0f) {
                this.f76197R = b12 - 360.0f;
            }
            float f12 = this.f76197R;
            if (f12 < 0.0f) {
                this.f76197R = f12 + 360.0f;
            }
            float b13 = A.b(Nc.b.d0(this.f76197R) * this.shakeMagnitude * b11 * 0.008f);
            float b14 = A.b(0.0f);
            J02.S2(this.f76187H);
            J02.r4(this.f76188I);
            u02.addLocal(this.f76187H, b13);
            u02.addLocal(this.f76188I, b14);
        }
        if (this.fov) {
            float M10 = Nc.b.M(this.minimalFov, this.initialFov - ((this.fovIntensity * b11) * 0.04f));
            Camera camera = (Camera) gameObject.c0(Component.e.Camera);
            if (camera != null) {
                camera.setFov(Nc.b.z(camera.getFov(), M10, K8.d.b() * 10.0f));
            }
        }
        Vector2 slide = getSlide();
        boolean z10 = slide != null && (Nc.b.k(slide.getX()) > Nc.b.f15888a || Nc.b.k(slide.getY()) > Nc.b.f15888a);
        if (z10) {
            this.f76184E = 0.0f;
        } else {
            this.f76184E += b10;
        }
        float S02 = Nc.b.S0(0.0f, this.orbitalReturnDelay);
        try {
            if (!z10) {
                float f13 = this.f76184E;
                if (f13 >= S02) {
                    if (S02 <= 0.0f || f13 < S02 * 2.0f) {
                        float f14 = this.orbitalReturnSpeedRange;
                        if (f14 > 0.0f) {
                            f10 = Nc.b.E(0.0f, (b11 - this.orbitalReturnSpeedThreshold) / f14, 1.0f);
                        }
                    } else {
                        f10 = 1.0f;
                    }
                    if (f10 > 0.0f) {
                        float f15 = b10 * f10;
                        this.orbitYaw = Nc.b.z(this.orbitYaw, 0.0f, f15);
                        this.orbitPitch = Nc.b.z(this.orbitPitch, 0.0f, f15);
                    }
                    if (slide != null) {
                        float x10 = !this.invertX ? -slide.getX() : slide.getX();
                        boolean z11 = this.invertY;
                        float y11 = slide.getY();
                        if (!z11) {
                            y11 = -y11;
                        }
                        float f16 = this.orbitYaw;
                        float f17 = this.sensibility;
                        this.orbitYaw = f16 + (x10 * f17 * b10);
                        this.orbitPitch += y11 * f17 * b10;
                    }
                    if (this.limited) {
                        this.orbitPitch = Nc.b.E(this.minPitch, this.orbitPitch, this.maxPitch);
                    }
                    f11 = this.orbitYaw;
                    if (f11 <= 360.0f || f11 < -360.0f) {
                        this.orbitYaw = f11 % 360.0f;
                    }
                    J02.a0(this.f76186G);
                    J02.S2(this.f76187H);
                    J02.r4(this.f76188I);
                    this.f76189J.set(u02);
                    this.f76189J.addLocal(this.f76187H, this.targetOffset.getX());
                    this.f76189J.addLocal(this.f76188I, this.targetOffset.getY());
                    this.f76189J.addLocal(this.f76186G, this.targetOffset.getZ());
                    float f18 = this.lookAheadSpeed;
                    E10 = f18 > 0.0f ? Nc.b.E(0.0f, b11 / f18, 1.0f) : 1.0f;
                    if (E10 > 0.0f) {
                        this.f76190K.set(this.lookAhead);
                        this.f76190K.mulLocal(E10);
                        this.f76189J.addLocal(this.f76187H, this.f76190K.getX());
                        this.f76189J.addLocal(this.f76188I, this.f76190K.getY());
                        this.f76189J.addLocal(this.f76186G, this.f76190K.getZ());
                    }
                    float m12 = Nc.b.m1(this.orbitYaw);
                    float d02 = Nc.b.d0(this.orbitYaw);
                    float m13 = Nc.b.m1(this.orbitPitch);
                    float d03 = Nc.b.d0(this.orbitPitch);
                    this.f76191L.set((this.f76186G.getX() * d02 * d03) + (this.f76187H.getX() * m12 * d03) + (this.f76188I.getX() * m13), (this.f76186G.getY() * d02 * d03) + (this.f76187H.getY() * m12 * d03) + (this.f76188I.getY() * m13), (this.f76186G.getZ() * d02 * d03) + (this.f76187H.getZ() * m12 * d03) + (this.f76188I.getZ() * m13));
                    this.f76191L.normalizeLocal();
                    this.f76191L.mulLocal(this.distance);
                    float y12 = this.f76189J.getY() + this.height;
                    this.f76192M.set(this.f76189J);
                    this.f76192M.setY(y12);
                    this.f76192M.subLocal(this.f76191L);
                    float z12 = Nc.b.z(this.orbitPositionDamping, this.positionDamping, f10);
                    float z13 = Nc.b.z(this.orbitRotationDamping, this.rotationDamping, f10);
                    a12.blendLocal(this.f76192M, z12 * b10);
                    y10 = a12.getY() - y12;
                    k10 = Nc.b.k(this.maxHeightDistance);
                    this.maxHeightDistance = k10;
                    if (y10 <= k10) {
                        a12.setY(y12 + k10);
                    } else if (y10 < (-k10)) {
                        a12.setY(y12 - k10);
                    }
                    this.f76194O.Z(a12, this.f76189J);
                    Quaternion i12 = gameObject.transform.i1(this.f76195P);
                    i12.f(this.f76194O, z13 * b10);
                    gameObject.transform.p3(a12);
                    gameObject.transform.x3(i12);
                    return;
                }
            }
            gameObject.transform.x3(i12);
            return;
        } catch (Exception e10) {
            e10.printStackTrace();
            return;
        }
        f10 = 0.0f;
        if (f10 > 0.0f) {
        }
        if (slide != null) {
        }
        if (this.limited) {
        }
        f11 = this.orbitYaw;
        if (f11 <= 360.0f) {
        }
        this.orbitYaw = f11 % 360.0f;
        J02.a0(this.f76186G);
        J02.S2(this.f76187H);
        J02.r4(this.f76188I);
        this.f76189J.set(u02);
        this.f76189J.addLocal(this.f76187H, this.targetOffset.getX());
        this.f76189J.addLocal(this.f76188I, this.targetOffset.getY());
        this.f76189J.addLocal(this.f76186G, this.targetOffset.getZ());
        float f182 = this.lookAheadSpeed;
        if (f182 > 0.0f) {
        }
        if (E10 > 0.0f) {
        }
        float m122 = Nc.b.m1(this.orbitYaw);
        float d022 = Nc.b.d0(this.orbitYaw);
        float m132 = Nc.b.m1(this.orbitPitch);
        float d032 = Nc.b.d0(this.orbitPitch);
        this.f76191L.set((this.f76186G.getX() * d022 * d032) + (this.f76187H.getX() * m122 * d032) + (this.f76188I.getX() * m132), (this.f76186G.getY() * d022 * d032) + (this.f76187H.getY() * m122 * d032) + (this.f76188I.getY() * m132), (this.f76186G.getZ() * d022 * d032) + (this.f76187H.getZ() * m122 * d032) + (this.f76188I.getZ() * m132));
        this.f76191L.normalizeLocal();
        this.f76191L.mulLocal(this.distance);
        float y122 = this.f76189J.getY() + this.height;
        this.f76192M.set(this.f76189J);
        this.f76192M.setY(y122);
        this.f76192M.subLocal(this.f76191L);
        float z122 = Nc.b.z(this.orbitPositionDamping, this.positionDamping, f10);
        float z132 = Nc.b.z(this.orbitRotationDamping, this.rotationDamping, f10);
        a12.blendLocal(this.f76192M, z122 * b10);
        y10 = a12.getY() - y122;
        k10 = Nc.b.k(this.maxHeightDistance);
        this.maxHeightDistance = k10;
        if (y10 <= k10) {
        }
        this.f76194O.Z(a12, this.f76189J);
        Quaternion i122 = gameObject.transform.i1(this.f76195P);
        i122.f(this.f76194O, z132 * b10);
        gameObject.transform.p3(a12);
    }

    @InterfaceC15237a
    public void setAxisName(String axisName) {
        if (axisName == null || axisName.isEmpty()) {
            throw new NullPointerException("value can't be empty or null");
        }
        this.axisName = axisName;
    }

    @InterfaceC15237a
    public void setDistance(float distance) {
        this.distance = Nc.b.M(0.1f, distance);
    }

    @InterfaceC15237a
    public void setHeight(float height) {
        this.height = height;
    }

    @InterfaceC15237a
    public void setInvertX(boolean invertX) {
        this.invertX = invertX;
    }

    @InterfaceC15237a
    public void setInvertY(boolean invertY) {
        this.invertY = invertY;
    }

    @InterfaceC15237a
    public void setLimited(boolean limited) {
        this.limited = limited;
    }

    @InterfaceC15237a
    public void setLookAhead(Vector3 lookAhead) {
        if (lookAhead != null) {
            this.lookAhead.set(lookAhead);
        }
    }

    @InterfaceC15237a
    public void setLookAheadSpeed(float lookAheadSpeed) {
        this.lookAheadSpeed = Nc.b.S0(0.0f, lookAheadSpeed);
    }

    @InterfaceC15237a
    public void setMaxHeightDistance(float maxHeightDistance) {
        this.maxHeightDistance = maxHeightDistance;
    }

    @InterfaceC15237a
    public void setMaxPitch(float maxPitch) {
        this.maxPitch = maxPitch;
    }

    @InterfaceC15237a
    public void setMinPitch(float minPitch) {
        this.minPitch = minPitch;
    }

    @InterfaceC15237a
    public void setOrbitPositionDamping(float orbitPositionDamping) {
        this.orbitPositionDamping = orbitPositionDamping;
    }

    @InterfaceC15237a
    public void setOrbitRotationDamping(float orbitRotationDamping) {
        this.orbitRotationDamping = orbitRotationDamping;
    }

    @InterfaceC15237a
    public void setOrbitalReturnDelay(float orbitalReturnDelay) {
        this.orbitalReturnDelay = Nc.b.S0(0.0f, orbitalReturnDelay);
    }

    @InterfaceC15237a
    public void setOrbitalReturnSpeedRange(float orbitalReturnSpeedRange) {
        this.orbitalReturnSpeedRange = Nc.b.S0(0.0f, orbitalReturnSpeedRange);
    }

    @InterfaceC15237a
    public void setOrbitalReturnSpeedThreshold(float orbitalReturnSpeedThreshold) {
        this.orbitalReturnSpeedThreshold = Nc.b.S0(0.0f, orbitalReturnSpeedThreshold);
    }

    @InterfaceC15237a
    public void setPositionDamping(float positionDamping) {
        this.positionDamping = positionDamping;
    }

    @InterfaceC15237a
    public void setRotationDamping(float rotationDamping) {
        this.rotationDamping = rotationDamping;
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f76198S = run;
    }

    @InterfaceC15237a
    public void setSensibility(float sensibility) {
        this.sensibility = sensibility;
    }

    public void setShake(boolean shake) {
        this.shake = shake;
    }

    public void setShakeIntensity(float shakeIntensity) {
        this.shakeIntensity = shakeIntensity;
    }

    public void setShakeMagnitude(float shakeMagnitude) {
        this.shakeMagnitude = shakeMagnitude;
    }

    @InterfaceC15237a
    public void setTarget(GameObject gameObject) {
        this.targetReference.h(gameObject);
    }

    @InterfaceC15237a
    public void setTargetOffset(Vector3 targetOffset) {
        if (targetOffset != null) {
            this.targetOffset.set(targetOffset);
        }
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f76198S;
        if (component != null) {
            return component;
        }
        JAVARuntime.OrbitalCameraFollow orbitalCameraFollow = new JAVARuntime.OrbitalCameraFollow(this);
        this.f76198S = orbitalCameraFollow;
        return orbitalCameraFollow;
    }

    @Override
    public Component mo1248clone() {
        OrbitalCameraFollow orbitalCameraFollow = new OrbitalCameraFollow();
        orbitalCameraFollow.targetReference = this.targetReference.clone();
        orbitalCameraFollow.targetOffset.set(this.targetOffset);
        orbitalCameraFollow.lookAhead.set(this.lookAhead);
        orbitalCameraFollow.lookAheadSpeed = this.lookAheadSpeed;
        orbitalCameraFollow.distance = this.distance;
        orbitalCameraFollow.height = this.height;
        orbitalCameraFollow.maxHeightDistance = this.maxHeightDistance;
        orbitalCameraFollow.positionDamping = this.positionDamping;
        orbitalCameraFollow.rotationDamping = this.rotationDamping;
        orbitalCameraFollow.orbitPositionDamping = this.orbitPositionDamping;
        orbitalCameraFollow.orbitRotationDamping = this.orbitRotationDamping;
        orbitalCameraFollow.shake = this.shake;
        orbitalCameraFollow.shakeIntensity = this.shakeIntensity;
        orbitalCameraFollow.shakeMagnitude = this.shakeMagnitude;
        orbitalCameraFollow.fov = this.fov;
        orbitalCameraFollow.fovIntensity = this.fovIntensity;
        orbitalCameraFollow.initialFov = this.initialFov;
        orbitalCameraFollow.minimalFov = this.minimalFov;
        orbitalCameraFollow.axisName = this.axisName;
        orbitalCameraFollow.sensibility = this.sensibility;
        orbitalCameraFollow.invertX = this.invertX;
        orbitalCameraFollow.invertY = this.invertY;
        orbitalCameraFollow.limited = this.limited;
        orbitalCameraFollow.minPitch = this.minPitch;
        orbitalCameraFollow.maxPitch = this.maxPitch;
        orbitalCameraFollow.orbitYaw = this.orbitYaw;
        orbitalCameraFollow.orbitPitch = this.orbitPitch;
        return orbitalCameraFollow;
    }
}
