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

public class n extends NoCodeNode implements F {

    public static final String f108781h = "SwapListIndex";

    public static final int f108782i = 0;

    public static final int f108783j = 1;

    public static final int f108784k = 2;

    public final NoCodeSlot[] f108785g;

    public class a implements p {
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
            return n.f108781h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, n.class);
        }

        @Override
        public String e() {
            return "Actions/List";
        }

        @Override
        public String f() {
            return "Swap Index";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public n() {
        NoCodeSlot c10 = new NoCodeSlot(C12667d1.f69075a, H.LIST).c(Lang.l(Lang.T.NOCODE_SLOT_LIST));
        H h10 = H.NUMBER;
        this.f108785g = new NoCodeSlot[]{c10, new NoCodeSlot("Index A", h10).c(Lang.l(Lang.T.NOCODE_SLOT_INDEX_A)), new NoCodeSlot("Index B", h10).c(Lang.l(Lang.T.NOCODE_SLOT_INDEX_B))};
        this.serializedNodeType = f108781h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f108785g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Swap Index";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return (inputIndex == 1 || inputIndex == 2) ? "0" : "";
    }

    @Override
    public void m0() {
        List<Object> c10 = C15163i.c(ga.m.a0(Q(this.f108785g[0])));
        int g10 = C15163i.g(Q(this.f108785g[1]));
        int g11 = C15163i.g(Q(this.f108785g[2]));
        if (g10 >= 0 && g10 < c10.size() && g11 >= 0 && g11 < c10.size() && g10 != g11) {
            Object obj = c10.get(g10);
            c10.set(g10, c10.get(g11));
            c10.set(g11, obj);
        }
        t();
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_SWAP_LIST_INDEX);
    }
}
