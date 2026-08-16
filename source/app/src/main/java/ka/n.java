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

public class n extends AbstractC13954c {

    public static final String f95029l = "GetContactCollider";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new n();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return n.class;
        }

        @Override
        public String c() {
            return n.f95029l;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, n.class);
        }

        @Override
        public String e() {
            return "Actions/Physics/Contact";
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

    public n() {
        super(f95029l, "Get Collider", Collider.f73199i3, Lang.l(Lang.T.NOCODE_SLOT_COLLIDER), H.COMPONENT_COLLIDER);
    }

    @Override
    public NoCodeSlot[] F() {
        return super.F();
    }

    @Override
    public Object G0(C13813a.C1794a contact) {
        if (contact != null) {
            return C13956e.c(contact.f92659e);
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
        return Lang.l(Lang.T.NOCODE_GET_CONTACT_COLLIDER);
    }
}
