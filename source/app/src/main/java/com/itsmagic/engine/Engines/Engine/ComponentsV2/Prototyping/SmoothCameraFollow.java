package com.itsmagic.engine.Engines.Engine.ComponentsV2.Prototyping;

import C5.b;
import D5.h;
import F5.c;
import Ic.A;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentUtils.ObjectReference;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import eb.f;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.LinkedList;
import java.util.List;
import s8.InterfaceC15237a;

public class SmoothCameraFollow extends Component {

    public static String f76303P = "SmoothCameraFollow";

    public static Class f76304Q = SmoothCameraFollow.class;

    public final Vector3 f76305E;

    public final Vector3 f76306F;

    public final Vector3 f76307G;

    public final Vector3 f76308H;

    public final Quaternion f76309I;

    public final Vector3 f76310J;

    public final Vector3 f76311K;

    public final Quaternion f76312L;

    public final Vector3 f76313M;

    public float f76314N;

    public JAVARuntime.Component f76315O;

    @Expose
    @f
    public float distance;

    @Expose
    public boolean fov;

    @Expose
    @f
    public float fovIntensity;

    @Expose
    @f
    public float height;

    @Expose
    @f
    public float initialFov;

    @Expose
    @f
    public float maxHeightDistance;

    @Expose
    @f
    public float minimalFov;

    @Expose
    @f
    public float positionDamping;

    @Expose
    @f
    public float rotationDamping;

    @Expose
    public boolean shake;

    @Expose
    @f
    public float shakeIntensity;

    @Expose
    @f
    public float shakeMagnitude;

    @Expose
    public ObjectReference targetReference;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return SmoothCameraFollow.f76304Q;
        }

        @Override
        public String c() {
            return SmoothCameraFollow.f76303P;
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

    public class b extends R8.c {
        public b() {
        }

        @Override
        public void a() {
            SmoothCameraFollow.this.reloadInspector();
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

        public final GameObject f76317a;

        public class a implements h {
            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", SmoothCameraFollow.this.distance + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    SmoothCameraFollow.this.distance = Nc.b.M(0.1f, variable.float_value);
                }
            }
        }

        public class b implements h {
            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", SmoothCameraFollow.this.height + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    SmoothCameraFollow.this.height = variable.float_value;
                }
            }
        }

        public class C1243c implements h {
            public C1243c() {
            }

            @Override
            public Variable get() {
                return new Variable("", SmoothCameraFollow.this.maxHeightDistance + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    SmoothCameraFollow.this.maxHeightDistance = variable.float_value;
                }
            }
        }

        public class d implements h {
            public d() {
            }

            @Override
            public Variable get() {
                return new Variable("", SmoothCameraFollow.this.positionDamping + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    SmoothCameraFollow.this.positionDamping = variable.float_value;
                }
            }
        }

        public class e implements h {
            public e() {
            }

            @Override
            public Variable get() {
                return new Variable("", SmoothCameraFollow.this.rotationDamping + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    SmoothCameraFollow.this.rotationDamping = variable.float_value;
                }
            }
        }

        public c(final GameObject val$animationObject) {
            this.f76317a = val$animationObject;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> colapsableEntries) {
            a aVar = new a();
            String l10 = Lang.l(Lang.T.DISTANCE);
            b.a aVar2 = b.a.SLFloat;
            C5.b bVar = new C5.b(aVar, l10, aVar2);
            GameObject gameObject = this.f76317a;
            if (gameObject != null) {
                bVar.d(gameObject, SmoothCameraFollow.this, "distance", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            colapsableEntries.add(bVar);
            C5.b bVar2 = new C5.b(new b(), Lang.l(Lang.T.HEIGHT), aVar2);
            GameObject gameObject2 = this.f76317a;
            if (gameObject2 != null) {
                bVar2.d(gameObject2, SmoothCameraFollow.this, "height", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            colapsableEntries.add(bVar2);
            C5.b bVar3 = new C5.b(new C1243c(), Lang.l(Lang.T.MAX_HEIGHT_DISTANCE), aVar2);
            GameObject gameObject3 = this.f76317a;
            if (gameObject3 != null) {
                bVar3.d(gameObject3, SmoothCameraFollow.this, "maxHeightDistance", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            colapsableEntries.add(bVar3);
            C5.b bVar4 = new C5.b(new d(), "Position damping", aVar2);
            GameObject gameObject4 = this.f76317a;
            if (gameObject4 != null) {
                bVar4.d(gameObject4, SmoothCameraFollow.this, "positionDamping", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            colapsableEntries.add(bVar4);
            C5.b bVar5 = new C5.b(new e(), Lang.l(Lang.T.ROTATION_DAMPING), aVar2);
            GameObject gameObject5 = this.f76317a;
            if (gameObject5 != null) {
                bVar5.d(gameObject5, SmoothCameraFollow.this, "rotationDamping", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            colapsableEntries.add(bVar5);
            return colapsableEntries;
        }
    }

    public class d implements c.o0 {

        public final GameObject f76324a;

        public class a implements h {
            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", SmoothCameraFollow.this.shake + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    SmoothCameraFollow.this.shake = variable.booolean_value.booleanValue();
                }
            }
        }

        public class b implements h {
            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", SmoothCameraFollow.this.shakeIntensity + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    SmoothCameraFollow.this.shakeIntensity = variable.float_value;
                }
            }
        }

        public class c implements h {
            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", SmoothCameraFollow.this.shakeMagnitude + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    SmoothCameraFollow.this.shakeMagnitude = variable.float_value;
                }
            }
        }

        public class C1244d implements h {
            public C1244d() {
            }

            @Override
            public Variable get() {
                return new Variable("", SmoothCameraFollow.this.fov + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    SmoothCameraFollow.this.fov = variable.booolean_value.booleanValue();
                }
            }
        }

        public class e implements h {
            public e() {
            }

            @Override
            public Variable get() {
                return new Variable("", SmoothCameraFollow.this.fovIntensity + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    SmoothCameraFollow.this.fovIntensity = variable.float_value;
                }
            }
        }

        public class f implements h {
            public f() {
            }

            @Override
            public Variable get() {
                return new Variable("", SmoothCameraFollow.this.initialFov + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    SmoothCameraFollow.this.initialFov = variable.float_value;
                }
            }
        }

        public class g implements h {
            public g() {
            }

            @Override
            public Variable get() {
                return new Variable("", SmoothCameraFollow.this.minimalFov + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    SmoothCameraFollow.this.minimalFov = variable.float_value;
                }
            }
        }

        public d(final GameObject val$animationObject) {
            this.f76324a = val$animationObject;
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
            C5.b bVar2 = new C5.b(bVar, "Shake intensity", aVar3);
            GameObject gameObject = this.f76324a;
            if (gameObject != null) {
                bVar2.d(gameObject, SmoothCameraFollow.this, "shakeIntensity", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            colapsableEntries.add(bVar2);
            C5.b bVar3 = new C5.b(new c(), "Shake magnitude", aVar3);
            GameObject gameObject2 = this.f76324a;
            if (gameObject2 != null) {
                bVar3.d(gameObject2, SmoothCameraFollow.this, "shakeMagnitude", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            colapsableEntries.add(bVar3);
            colapsableEntries.add(new C5.b(new C1244d(), "Pinch fov", aVar2));
            C5.b bVar4 = new C5.b(new e(), "Fov intensity", aVar3);
            GameObject gameObject3 = this.f76324a;
            if (gameObject3 != null) {
                bVar4.d(gameObject3, SmoothCameraFollow.this, "fovIntensity", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            colapsableEntries.add(bVar4);
            C5.b bVar5 = new C5.b(new f(), "Initial fov", aVar3);
            GameObject gameObject4 = this.f76324a;
            if (gameObject4 != null) {
                bVar5.d(gameObject4, SmoothCameraFollow.this, "initialFov", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            colapsableEntries.add(bVar5);
            C5.b bVar6 = new C5.b(new g(), "Minimal fov", aVar3);
            GameObject gameObject5 = this.f76324a;
            if (gameObject5 != null) {
                bVar6.d(gameObject5, SmoothCameraFollow.this, "minimalFov", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT);
            }
            colapsableEntries.add(bVar6);
            return colapsableEntries;
        }
    }

    static {
        C13201a.b(new a());
    }

    public SmoothCameraFollow() {
        super(f76303P);
        this.targetReference = new ObjectReference();
        this.distance = 6.0f;
        this.height = 2.0f;
        this.maxHeightDistance = 3.0f;
        this.positionDamping = 3.0f;
        this.rotationDamping = 8.0f;
        this.shake = true;
        this.shakeIntensity = 1.0f;
        this.shakeMagnitude = 0.3f;
        this.fov = true;
        this.fovIntensity = 10.0f;
        this.initialFov = 70.0f;
        this.minimalFov = 35.0f;
        this.f76305E = new Vector3();
        this.f76306F = new Vector3();
        this.f76307G = new Vector3();
        this.f76308H = new Vector3();
        this.f76309I = new Quaternion();
        this.f76310J = new Vector3();
        this.f76311K = new Vector3();
        this.f76312L = new Quaternion();
        this.f76313M = new Vector3();
        this.f76314N = 0.0f;
    }

    @Override
    public String getDisplayableTitle() {
        return Lang.l(Lang.T.SMOOTH_CAMERA_FOLLOW);
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
        linkedList.add(F5.c.d(getInspectorMemory(), "Effects", new d(gameObject)));
        return linkedList;
    }

    @InterfaceC15237a
    public float getMaxHeightDistance() {
        return this.maxHeightDistance;
    }

    @InterfaceC15237a
    public float getPositionDamping() {
        return this.positionDamping;
    }

    @InterfaceC15237a
    public float getRotationDamping() {
        return this.rotationDamping;
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

    @Override
    public String getTitle() {
        return "SmoothCameraFollow";
    }

    @Override
    public Component.e getType() {
        return Component.e.SmoothCameraFollow;
    }

    @Override
    public int iconPriority() {
        return 3;
    }

    public boolean isShake() {
        return this.shake;
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        this.targetReference.j();
        if (c8.b.k() && this.targetReference.f()) {
            float b10 = K8.d.b();
            Transform J02 = this.targetReference.e().J0();
            Vector3 u02 = J02.u0(this.f76305E);
            Vector3 a12 = gameObject.transform.a1(this.f76311K);
            float lengthF = J02.t0().sub(this.f76313M).mul(1.0f / K8.d.b()).lengthF();
            this.f76313M.set(J02.t0());
            float b11 = A.b(lengthF);
            if (this.shake && b11 > 0.0f && this.shakeIntensity != 0.0f && b11 < Float.POSITIVE_INFINITY) {
                float b12 = this.f76314N + (K8.d.b() * 30.0f * b11 * this.shakeIntensity);
                this.f76314N = b12;
                if (b12 >= 360.0f) {
                    this.f76314N = b12 - 360.0f;
                }
                float f10 = this.f76314N;
                if (f10 < 0.0f) {
                    this.f76314N = f10 + 360.0f;
                }
                float b13 = A.b(Nc.b.d0(this.f76314N) * this.shakeMagnitude * b11 * 0.008f);
                float b14 = A.b(0.0f);
                J02.S2(this.f76307G);
                J02.r4(this.f76308H);
                u02.addLocal(this.f76307G, b13);
                u02.addLocal(this.f76308H, b14);
            }
            if (this.fov) {
                float M10 = Nc.b.M(this.minimalFov, this.initialFov - ((this.fovIntensity * b11) * 0.04f));
                Camera camera = (Camera) gameObject.c0(Component.e.Camera);
                if (camera != null) {
                    camera.setFov(Nc.b.z(camera.getFov(), M10, K8.d.b() * 10.0f));
                }
            }
            if (a12.equally(u02)) {
                a12.set(this.f76310J);
                if (a12.equally(u02)) {
                    a12.addLocal(J02.forward(), -this.distance);
                }
            } else {
                this.f76309I.Z(a12, u02);
            }
            Quaternion i12 = gameObject.transform.i1(this.f76312L);
            i12.f(this.f76309I, this.rotationDamping * b10);
            this.f76306F.set(0.0f, 0.0f, 1.0f);
            Quaternion quaternion = this.f76309I;
            Vector3 vector3 = this.f76306F;
            quaternion.q0(vector3, vector3);
            float y10 = a12.getY();
            a12.set(u02);
            a12.subLocal(this.f76306F, this.distance);
            float y11 = u02.getY() + this.height;
            a12.setY(Nc.b.z(y10, y11, this.positionDamping * b10));
            float y12 = a12.getY() - y11;
            float k10 = Nc.b.k(this.maxHeightDistance);
            this.maxHeightDistance = k10;
            if (y12 > k10) {
                a12.setY(y11 + k10);
            } else if (y12 < (-k10)) {
                a12.setY(y11 - k10);
            }
            this.f76310J.set(y10);
            try {
                gameObject.transform.p3(a12);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            try {
                gameObject.transform.x3(i12);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
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
    public void setMaxHeightDistance(float maxHeightDistance) {
        this.maxHeightDistance = maxHeightDistance;
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
        this.f76315O = run;
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

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f76315O;
        if (component != null) {
            return component;
        }
        JAVARuntime.SmoothCameraFollow smoothCameraFollow = new JAVARuntime.SmoothCameraFollow(this);
        this.f76315O = smoothCameraFollow;
        return smoothCameraFollow;
    }

    @Override
    public Component mo1248clone() {
        SmoothCameraFollow smoothCameraFollow = new SmoothCameraFollow();
        smoothCameraFollow.targetReference = this.targetReference.clone();
        smoothCameraFollow.distance = this.distance;
        smoothCameraFollow.height = this.height;
        smoothCameraFollow.maxHeightDistance = this.maxHeightDistance;
        smoothCameraFollow.positionDamping = this.positionDamping;
        smoothCameraFollow.rotationDamping = this.rotationDamping;
        smoothCameraFollow.shake = this.shake;
        smoothCameraFollow.shakeIntensity = this.shakeIntensity;
        smoothCameraFollow.shakeMagnitude = this.shakeMagnitude;
        smoothCameraFollow.fov = this.fov;
        smoothCameraFollow.fovIntensity = this.fovIntensity;
        smoothCameraFollow.initialFov = this.initialFov;
        smoothCameraFollow.minimalFov = this.minimalFov;
        return smoothCameraFollow;
    }
}
