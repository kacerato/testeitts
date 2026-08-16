package ka;

import android.provider.Contacts;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.D;
import ga.EnumC13304B;
import ga.H;
import j9.C13813a;

public class k extends AbstractC13953b implements ga.k {

    public static final String f95026l = "GetCollisionContactList";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new k();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return k.class;
        }

        @Override
        public String c() {
            return k.f95026l;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, k.class);
        }

        @Override
        public String e() {
            return "Actions/Physics/Collision";
        }

        @Override
        public String f() {
            return "Get Contact List";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public k() {
        super(f95026l, "Get Contact List", Contacts.Groups.GROUP_MY_CONTACTS, Lang.l(Lang.T.NOCODE_SLOT_CONTACT_LIST), H.LIST);
    }

    @Override
    public NoCodeSlot[] F() {
        return super.F();
    }

    @Override
    public Object G0(C13813a collision) {
        return collision == null ? ga.m.m(H.CONTACT, null) : ga.m.m(H.CONTACT, collision.f92648d);
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
    public H b(int outputIndex, D resolver) {
        return H.CONTACT;
    }

    @Override
    public void m0() {
        super.m0();
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_GET_COLLISION_CONTACT_LIST);
    }
}
