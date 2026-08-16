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

public class v extends NoCodeNode implements ga.F {

    public static final String f130955h = "Move";

    public static final int f130956i = 0;

    public static final int f130957j = 1;

    public final NoCodeSlot[] f130958g = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT)), new NoCodeSlot("Direction", H.FLOAT3).c(Lang.l(Lang.T.NOCODE_SLOT_DIRECTION))};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new v();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return v.class;
        }

        @Override
        public String c() {
            return v.f130955h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, v.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Transform";
        }

        @Override
        public String f() {
            return v.f130955h;
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public v() {
        this.serializedNodeType = f130955h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f130958g;
    }

    public final Vector3 G0(GameObject owner, float desiredVX, float desiredVY, float desiredVZ) {
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

    public final float H0(float currentVelocity, float targetVelocity, float mass, float dt) {
        float f10 = targetVelocity - currentVelocity;
        if (!Float.isFinite(f10) || Math.abs(f10) < 1.0E-4f) {
            return 0.0f;
        }
        return (f10 * mass) / dt;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return f130955h;
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        if (inputIndex == 0) {
            return C13308d.f88188b;
        }
        return null;
    }

    @Override
    public void m0() {
        float f10;
        Vector3 vector3 = null;
        try {
            NoCodeData noCodeData = this.f79021a;
            if (noCodeData != null) {
                GameObject b10 = Aa.b.b(this, noCodeData, this.f130958g[0]);
                if (C13317e.J(b10)) {
                    vector3 = h(Q(this.f130958g[1]));
                    float b11 = Ic.A.b(K8.d.b());
                    float b12 = Ic.A.b(vector3.getX());
                    float b13 = Ic.A.b(vector3.getY());
                    float b14 = Ic.A.b(vector3.getZ());
                    PhysicsComponent physicsComponent = (PhysicsComponent) b10.d0(PhysicsComponent.class);
                    if (physicsComponent != null) {
                        if (physicsComponent instanceof Rigidbody) {
                            Rigidbody rigidbody = (Rigidbody) physicsComponent;
                            Vector3 G02 = G0(b10, b12, b13, b14);
                            Vector3 velocity = rigidbody.getVelocity();
                            float f11 = rigidbody.mass;
                            f10 = f11 > 0.0f ? f11 : 1.0f;
                            rigidbody.addForce(Ic.A.b(H0(velocity.getX(), G02.getX(), f10, b11)), Ic.A.b(H0(velocity.getY(), G02.getY(), f10, b11)), Ic.A.b(H0(velocity.getZ(), G02.getZ(), f10, b11)));
                            q0(vector3);
                            t();
                            return;
                        }
                        if (physicsComponent instanceof VehiclePhysics) {
                            VehiclePhysics vehiclePhysics = (VehiclePhysics) physicsComponent;
                            Vector3 G03 = G0(b10, b12, b13, b14);
                            Vector3 velocity2 = vehiclePhysics.getVelocity();
                            float f12 = vehiclePhysics.mass;
                            f10 = f12 > 0.0f ? f12 : 1.0f;
                            vehiclePhysics.addForce(Ic.A.b(H0(velocity2.getX(), G03.getX(), f10, b11)), Ic.A.b(H0(velocity2.getY(), G03.getY(), f10, b11)), Ic.A.b(H0(velocity2.getZ(), G03.getZ(), f10, b11)));
                            q0(vector3);
                            t();
                            return;
                        }
                        if (physicsComponent instanceof Characterbody) {
                            Characterbody characterbody = (Characterbody) physicsComponent;
                            characterbody.setForwardSpeed(b14);
                            characterbody.setSideSpeed(b12);
                            b10.J0().o4(0.0f, b13 * b11, 0.0f);
                            q0(vector3);
                            t();
                            return;
                        }
                    }
                    b10.J0().o4(b12 * b11, b13 * b11, b14 * b11);
                }
            }
        } finally {
            if (0 != 0) {
                q0(null);
            }
            t();
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_MOVE);
    }
}
