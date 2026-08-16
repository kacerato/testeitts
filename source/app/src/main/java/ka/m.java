package ka;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.PhysicsComponent;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.H;
import h9.InterfaceC13435a;
import j9.C13813a;

public class m extends AbstractC13953b {

    public static final String f95028l = "GetCollisionPhysicsComponent";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new m();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return m.class;
        }

        @Override
        public String c() {
            return m.f95028l;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, m.class);
        }

        @Override
        public String e() {
            return "Actions/Physics/Collision";
        }

        @Override
        public String f() {
            return "Get Physics Component";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public m() {
        super(f95028l, "Get Physics Component", "Physics Component", Lang.l(Lang.T.NOCODE_SLOT_PHYSICS_COMPONENT), H.ANY_COMPONENT);
    }

    @Override
    public NoCodeSlot[] F() {
        return super.F();
    }

    @Override
    public Object G0(C13813a collision) {
        if (collision == null) {
            return null;
        }
        InterfaceC13435a interfaceC13435a = collision.f92647c;
        if (interfaceC13435a instanceof PhysicsComponent) {
            return C13956e.c((PhysicsComponent) interfaceC13435a);
        }
        return null;
    }

    @Override
    public NoCodeSlot[] J() {
        return super.J();
    }

    @Override
    public EnumC13304B M() {
        return super.M();
    }

    @Override
    public String N(NoCodeData graphData) {
        return super.N(graphData);
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return super.a(inputIndex, desiredType);
    }

    @Override
    public void m0() {
        super.m0();
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_GET_COLLISION_PHYSICS_COMPONENT);
    }
}
