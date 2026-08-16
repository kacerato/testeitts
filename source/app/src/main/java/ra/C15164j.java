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

public class C15164j extends NoCodeNode implements F {

    public static final String f108766h = "RemoveFirstListElement";

    public static final int f108767i = 0;

    public final NoCodeSlot[] f108768g = {new NoCodeSlot(C12667d1.f69075a, H.LIST).c(Lang.l(Lang.T.NOCODE_SLOT_LIST))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C15164j();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C15164j.class;
        }

        @Override
        public String c() {
            return C15164j.f108766h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C15164j.class);
        }

        @Override
        public String e() {
            return "Actions/List";
        }

        @Override
        public String f() {
            return "Remove First";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C15164j() {
        this.serializedNodeType = f108766h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f108768g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Remove First";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return "";
    }

    @Override
    public void m0() {
        List<Object> c10 = C15163i.c(ga.m.a0(Q(this.f108768g[0])));
        if (!c10.isEmpty()) {
            c10.remove(0);
        }
        t();
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_REMOVE_FIRST_LIST_ELEMENT);
    }
}
