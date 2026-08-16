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

public class p extends AbstractC13954c {

    public static final String f95031l = "GetContactDistance";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new p();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return p.class;
        }

        @Override
        public String c() {
            return p.f95031l;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, p.class);
        }

        @Override
        public String e() {
            return "Actions/Physics/Contact";
        }

        @Override
        public String f() {
            return "Get Distance";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public p() {
        super(f95031l, "Get Distance", "Distance", Lang.l(Lang.T.NOCODE_SLOT_DISTANCE), H.NUMBER);
    }

    @Override
    public NoCodeSlot[] F() {
        return super.F();
    }

    @Override
    public Object G0(C13813a.C1794a contact) {
        return Float.valueOf(contact != null ? contact.f92658d : 0.0f);
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
        return Lang.l(Lang.T.NOCODE_GET_CONTACT_DISTANCE);
    }
}
