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

public class C13960i extends AbstractC13952a {

    public static final String f95024m = "GetCollisionContactAt";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C13960i();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C13960i.class;
        }

        @Override
        public String c() {
            return C13960i.f95024m;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C13960i.class);
        }

        @Override
        public String e() {
            return "Actions/Physics/Collision";
        }

        @Override
        public String f() {
            return "Get Contact At";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C13960i() {
        super(f95024m, "Get Contact At", "Contact", Lang.l(Lang.T.NOCODE_SLOT_CONTACT), H.CONTACT);
    }

    @Override
    public NoCodeSlot[] F() {
        return super.F();
    }

    @Override
    public Object G0(C13813a collision, int index) {
        if (collision == null || index < 0 || index >= collision.f92648d.size()) {
            return null;
        }
        return collision.f92648d.get(index);
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
        return Lang.l(Lang.T.NOCODE_GET_COLLISION_CONTACT_AT);
    }
}
