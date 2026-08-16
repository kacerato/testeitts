package za;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.Characterbody;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.PhysicsComponent;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.Rigidbody;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.VehiclePhysics;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import ga.C13308d;
import ga.EnumC13304B;
import ga.H;
import gb.C13317e;

public class C16289F extends NoCodeNode implements ga.F {

    public static final String f130827p = "SmoothDisplacementNode";

    public static final float f130828q = 1.0E-4f;

    public static final int f130829r = 0;

    public static final int f130830s = 1;

    public static final int f130831t = 2;

    public final NoCodeSlot[] f130832g = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT)), new NoCodeSlot("meters", H.FLOAT3).c(Lang.l(Lang.T.NOCODE_SLOT_METERS)), new NoCodeSlot("seconds", H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_SECONDS))};

    public float f130833h;

    public float f130834i;

    public float f130835j;

    public float f130836k;

    public float f130837l;

    public float f130838m;

    public float f130839n;

    public float f130840o;

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C16289F();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C16289F.class;
        }

        @Override
        public String c() {
            return C16289F.f130827p;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C16289F.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Transform";
        }

        @Override
        public String f() {
            return "Smooth Displacement";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C16289F() {
        this.serializedNodeType = f130827p;
    }

    private float M0(float currentVelocity, float targetVelocity, float mass, float dt) {
        float f10 = targetVelocity - currentVelocity;
        if (!Float.isFinite(f10) || Math.abs(f10) < 1.0E-4f || dt <= 1.0E-4f) {
            return 0.0f;
        }
        return (f10 * mass) / dt;
    }

    @Override
    public void E0() {
        super.E0();
        if (d0() && this.f79021a != null) {
            GameObject L02 = L0();
            if (C13317e.J(L02)) {
                if (this.f130839n <= 1.0E-4f) {
                    H0(L02, this.f130836k, this.f130837l, this.f130838m);
                    J0();
                    t();
                    return;
                }
                float b10 = Ic.A.b(K8.d.b());
                if (b10 <= 0.0f) {
                    return;
                }
                float f10 = this.f130839n - this.f130840o;
                if (f10 <= 1.0E-4f) {
                    H0(L02, this.f130836k, this.f130837l, this.f130838m);
                    J0();
                    t();
                    return;
                }
                float min = Math.min(b10, f10);
                float f11 = this.f130836k / f10;
                float f12 = this.f130837l / f10;
                float f13 = this.f130838m / f10;
                G0(L02, f11, f12, f13, b10);
                K0(f11 * min, f12 * min, f13 * min);
                float f14 = this.f130840o + b10;
                this.f130840o = f14;
                if (f14 + 1.0E-4f >= this.f130839n || (Math.abs(this.f130836k) < 1.0E-4f && Math.abs(this.f130837l) < 1.0E-4f && Math.abs(this.f130838m) < 1.0E-4f)) {
                    J0();
                    t();
                }
            }
        }
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f130832g;
    }

    public final void G0(GameObject owner, float desiredVX, float desiredVY, float desiredVZ, float dt) {
        float f10;
        PhysicsComponent physicsComponent = (PhysicsComponent) owner.d0(PhysicsComponent.class);
        if (physicsComponent != null) {
            if (physicsComponent instanceof Rigidbody) {
                Rigidbody rigidbody = (Rigidbody) physicsComponent;
                Vector3 velocity = rigidbody.getVelocity();
                float f11 = rigidbody.mass;
                f10 = f11 > 0.0f ? f11 : 1.0f;
                rigidbody.addForce(Ic.A.b(M0(velocity.getX(), desiredVX, f10, dt)), Ic.A.b(M0(velocity.getY(), desiredVY, f10, dt)), Ic.A.b(M0(velocity.getZ(), desiredVZ, f10, dt)));
                return;
            }
            if (physicsComponent instanceof VehiclePhysics) {
                VehiclePhysics vehiclePhysics = (VehiclePhysics) physicsComponent;
                Vector3 velocity2 = vehiclePhysics.getVelocity();
                float f12 = vehiclePhysics.mass;
                f10 = f12 > 0.0f ? f12 : 1.0f;
                vehiclePhysics.addForce(Ic.A.b(M0(velocity2.getX(), desiredVX, f10, dt)), Ic.A.b(M0(velocity2.getY(), desiredVY, f10, dt)), Ic.A.b(M0(velocity2.getZ(), desiredVZ, f10, dt)));
                return;
            }
            if (physicsComponent instanceof Characterbody) {
                Characterbody characterbody = (Characterbody) physicsComponent;
                characterbody.setForwardSpeed(desiredVZ);
                characterbody.setSideSpeed(desiredVX);
                owner.J0().o4(0.0f, desiredVY * dt, 0.0f);
                return;
            }
        }
        H0(owner, desiredVX * dt, desiredVY * dt, desiredVZ * dt);
    }

    public final void H0(GameObject owner, float x10, float y10, float z10) {
        if (C13317e.J(owner)) {
            owner.J0().o4(x10, y10, z10);
        }
    }

    public final float I0(float requested, float remaining) {
        return Math.abs(requested) >= Math.abs(remaining) ? remaining : requested;
    }

    public final void J0() {
        this.f130836k = 0.0f;
        this.f130837l = 0.0f;
        this.f130838m = 0.0f;
    }

    public final void K0(float x10, float y10, float z10) {
        float f10 = this.f130836k;
        this.f130836k = f10 - I0(x10, f10);
        float f11 = this.f130837l;
        this.f130837l = f11 - I0(y10, f11);
        float f12 = this.f130838m;
        this.f130838m = f12 - I0(z10, f12);
        if (Math.abs(this.f130836k) < 1.0E-4f) {
            this.f130836k = 0.0f;
        }
        if (Math.abs(this.f130837l) < 1.0E-4f) {
            this.f130837l = 0.0f;
        }
        if (Math.abs(this.f130838m) < 1.0E-4f) {
            this.f130838m = 0.0f;
        }
    }

    public final GameObject L0() {
        GameObject b10 = Aa.b.b(this, this.f79021a, this.f130832g[0]);
        if (C13317e.J(b10)) {
            return b10;
        }
        return null;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Smooth Displacement";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        if (inputIndex == 0) {
            return C13308d.f88188b;
        }
        if (inputIndex == 2) {
            return "1.0";
        }
        return null;
    }

    @Override
    public void m0() {
        Vector3 vector3;
        if (this.f79021a == null || !C13317e.J(L0())) {
            vector3 = null;
        } else {
            vector3 = h(Q(this.f130832g[1]));
            this.f130839n = Math.max(0.0f, Ic.A.b(ga.m.V(Q(this.f130832g[2]))));
            this.f130840o = 0.0f;
            this.f130833h = Ic.A.b(vector3.getX());
            this.f130834i = Ic.A.b(vector3.getY());
            float b10 = Ic.A.b(vector3.getZ());
            this.f130835j = b10;
            this.f130836k = this.f130833h;
            this.f130837l = this.f130834i;
            this.f130838m = b10;
        }
        if (vector3 != null) {
            q0(vector3);
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_SMOOTH_DISPLACEMENT);
    }
}
