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

public class C15162h extends NoCodeNode implements F {

    public static final String f108759i = "IsListEmpty";

    public static final int f108760j = 0;

    public static final int f108761k = 0;

    public static final int f108762l = 1;

    public final NoCodeSlot[] f108763g = {new NoCodeSlot(C12667d1.f69075a, H.LIST).c(Lang.l(Lang.T.NOCODE_SLOT_LIST))};

    public final NoCodeSlot[] f108764h;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C15162h();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C15162h.class;
        }

        @Override
        public String c() {
            return C15162h.f108759i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C15162h.class);
        }

        @Override
        public String e() {
            return "Actions/List";
        }

        @Override
        public String f() {
            return "Is Empty";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C15162h() {
        H h10 = H.BRANCH;
        this.f108764h = new NoCodeSlot[]{new NoCodeSlot("On True", h10).c(Lang.l(Lang.T.NOCODE_SLOT_ON_TRUE)), new NoCodeSlot("On False", h10).c(Lang.l(Lang.T.NOCODE_SLOT_ON_FALSE))};
        this.serializedNodeType = f108759i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f108763g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f108764h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Is Empty";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return "";
    }

    @Override
    public void m0() {
        ga.l a02 = ga.m.a0(Q(this.f108763g[0]));
        u((a02 == null || a02.i() <= 0) ? this.f108764h[0] : this.f108764h[1]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_IS_LIST_EMPTY);
    }
}
