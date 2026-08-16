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

public class C15166l extends NoCodeNode implements F {

    public static final String f108772h = "RemoveListAtIndex";

    public static final int f108773i = 0;

    public static final int f108774j = 1;

    public final NoCodeSlot[] f108775g = {new NoCodeSlot(C12667d1.f69075a, H.LIST).c(Lang.l(Lang.T.NOCODE_SLOT_LIST)), new NoCodeSlot("Index", H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_INDEX))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C15166l();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C15166l.class;
        }

        @Override
        public String c() {
            return C15166l.f108772h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C15166l.class);
        }

        @Override
        public String e() {
            return "Actions/List";
        }

        @Override
        public String f() {
            return "Remove At Index";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C15166l() {
        this.serializedNodeType = f108772h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f108775g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Remove At Index";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 1 ? "0" : "";
    }

    @Override
    public void m0() {
        List<Object> c10 = C15163i.c(ga.m.a0(Q(this.f108775g[0])));
        int g10 = C15163i.g(Q(this.f108775g[1]));
        if (g10 >= 0 && g10 < c10.size()) {
            c10.remove(g10);
        }
        t();
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_REMOVE_LIST_AT_INDEX);
    }
}
