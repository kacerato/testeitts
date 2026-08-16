package ra;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.protobuf.C12667d1;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.o;
import ga.p;
import java.util.List;

public class C15165k extends NoCodeNode implements F {

    public static final String f108769h = "RemoveLastListElement";

    public static final int f108770i = 0;

    public final NoCodeSlot[] f108771g = {new NoCodeSlot(C12667d1.f69075a, H.LIST).c(Lang.l(Lang.T.NOCODE_SLOT_LIST))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C15165k();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C15165k.class;
        }

        @Override
        public String c() {
            return C15165k.f108769h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C15165k.class);
        }

        @Override
        public String e() {
            return "Actions/List";
        }

        @Override
        public String f() {
            return "Remove Last";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C15165k() {
        this.serializedNodeType = f108769h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f108771g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Remove Last";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return "";
    }

    @Override
    public void m0() {
        List<Object> c10 = C15163i.c(ga.m.a0(Q(this.f108771g[0])));
        if (!c10.isEmpty()) {
            c10.remove(c10.size() - 1);
        }
        t();
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_REMOVE_LAST_LIST_ELEMENT);
    }
}
