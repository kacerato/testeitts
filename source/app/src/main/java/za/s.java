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
import ga.C13308d;
import ga.EnumC13304B;
import ga.H;
import gb.C13317e;

public class s extends NoCodeNode implements ga.F {

    public static final String f130925h = "Jump";

    public static final int f130926i = 0;

    public static final int f130927j = 1;

    public static final float f130928k = 7.5f;

    public static final float f130929l = 1.0f;

    public final NoCodeSlot[] f130930g = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT)), new NoCodeSlot("Intensity", H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_INTENSITY))};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new s();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return s.class;
        }

        @Override
        public String c() {
            return s.f130925h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, s.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Transform";
        }

        @Override
        public String f() {
            return s.f130925h;
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public s() {
        this.serializedNodeType = f130925h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f130930g;
    }

    public final void G0(Rigidbody rigidbody, float intensity) {
        float f10 = rigidbody.mass;
        if (f10 <= 0.0f) {
            f10 = 1.0f;
        }
        rigidbody.addForce(0.0f, Ic.A.b(intensity * f10), 0.0f);
    }

    public final void H0(VehiclePhysics vehiclePhysics, float intensity) {
        float f10 = vehiclePhysics.mass;
        if (f10 <= 0.0f) {
            f10 = 1.0f;
        }
        vehiclePhysics.addForce(0.0f, Ic.A.b(intensity * f10), 0.0f);
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return f130925h;
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        if (inputIndex == 0) {
            return C13308d.f88188b;
        }
        if (inputIndex == 1) {
            return String.valueOf(7.5f);
        }
        return null;
    }

    @Override
    public void m0() {
        try {
            GameObject b10 = Aa.b.b(this, this.f79021a, this.f130930g[0]);
            if (C13317e.J(b10)) {
                float max = Math.max(0.0f, Ic.A.b(ga.m.V(Q(this.f130930g[1]))));
                PhysicsComponent physicsComponent = (PhysicsComponent) b10.d0(PhysicsComponent.class);
                if (physicsComponent instanceof Characterbody) {
                    Characterbody characterbody = (Characterbody) physicsComponent;
                    characterbody.setJumpSpeed(max);
                    characterbody.jump();
                } else if (physicsComponent instanceof Rigidbody) {
                    G0((Rigidbody) physicsComponent, max);
                } else {
                    if (physicsComponent instanceof VehiclePhysics) {
                        H0((VehiclePhysics) physicsComponent, max);
                        return;
                    }
                    b10.J0().o4(0.0f, max * 1.0f, 0.0f);
                }
            }
        } finally {
            t();
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_JUMP);
    }
}
