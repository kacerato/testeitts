package ka;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.H;
import j9.C13813a;

public class C13961j extends AbstractC13953b {

    public static final String f95025l = "GetCollisionContactCount";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C13961j();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C13961j.class;
        }

        @Override
        public String c() {
            return C13961j.f95025l;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C13961j.class);
        }

        @Override
        public String e() {
            return "Actions/Physics/Collision";
        }

        @Override
        public String f() {
            return "Get Contact Count";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C13961j() {
        super(f95025l, "Get Contact Count", "Count", Lang.l(Lang.T.NOCODE_SLOT_COUNT), H.NUMBER);
    }

    @Override
    public NoCodeSlot[] F() {
        return super.F();
    }

    @Override
    public Object G0(C13813a collision) {
        return Float.valueOf(collision != null ? collision.f92648d.size() : 0.0f);
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
        return Lang.l(Lang.T.NOCODE_GET_COLLISION_CONTACT_COUNT);
    }
}
