package ka;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.Collider;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.H;
import j9.C13813a;

public class C13958g extends AbstractC13953b {

    public static final String f95022l = "GetCollisionCollider";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C13958g();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C13958g.class;
        }

        @Override
        public String c() {
            return C13958g.f95022l;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C13958g.class);
        }

        @Override
        public String e() {
            return "Actions/Physics/Collision";
        }

        @Override
        public String f() {
            return "Get Collider";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C13958g() {
        super(f95022l, "Get Collider", Collider.f73199i3, Lang.l(Lang.T.NOCODE_SLOT_COLLIDER), H.COMPONENT_COLLIDER);
    }

    @Override
    public NoCodeSlot[] F() {
        return super.F();
    }

    @Override
    public Object G0(C13813a collision) {
        if (collision != null) {
            return C13956e.c(collision.f92650g);
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
        return Lang.l(Lang.T.NOCODE_GET_COLLISION_COLLIDER);
    }
}
