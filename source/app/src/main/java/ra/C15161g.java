package ra;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.protobuf.C12667d1;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.D;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.o;
import ga.p;

public class C15161g extends NoCodeNode implements F {

    public static final String f108753i = "GetListElementAt";

    public static final int f108754j = 0;

    public static final int f108755k = 1;

    public static final int f108756l = 0;

    public final NoCodeSlot[] f108757g = {new NoCodeSlot(C12667d1.f69075a, H.LIST).c(Lang.l(Lang.T.NOCODE_SLOT_LIST)), new NoCodeSlot("Index", H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_INDEX))};

    public final NoCodeSlot[] f108758h = {new NoCodeSlot("Element", H.DYNAMIC).c(Lang.l(Lang.T.NOCODE_SLOT_ELEMENT))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C15161g();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C15161g.class;
        }

        @Override
        public String c() {
            return C15161g.f108753i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C15161g.class);
        }

        @Override
        public String e() {
            return "Actions/List";
        }

        @Override
        public String f() {
            return "Get Element At";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C15161g() {
        this.serializedNodeType = f108753i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f108757g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f108758h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Get Element At";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 1 ? "0" : "";
    }

    @Override
    public void m0() {
        ga.l a02 = ga.m.a0(Q(this.f108757g[0]));
        int g10 = C15163i.g(Q(this.f108757g[1]));
        y0(this.f108758h[0], (a02 == null || g10 < 0 || g10 >= a02.i()) ? null : a02.c(g10));
        u(this.f108758h[0]);
    }

    @Override
    public H t0(int index, D resolver) {
        return index == 0 ? C15163i.d(this, 0, resolver) : super.t0(index, resolver);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_GET_LIST_ELEMENT_AT);
    }
}
