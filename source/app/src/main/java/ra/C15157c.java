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

public class C15157c extends NoCodeNode implements F {

    public static final String f108732i = "FindListElementIndex";

    public static final int f108733j = 0;

    public static final int f108734k = 1;

    public static final int f108735l = 0;

    public final NoCodeSlot[] f108736g = {new NoCodeSlot(C12667d1.f69075a, H.LIST).c(Lang.l(Lang.T.NOCODE_SLOT_LIST)), new NoCodeSlot("Element", H.DYNAMIC).c(Lang.l(Lang.T.NOCODE_SLOT_ELEMENT))};

    public final NoCodeSlot[] f108737h = {new NoCodeSlot("Index", H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_INDEX))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C15157c();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C15157c.class;
        }

        @Override
        public String c() {
            return C15157c.f108732i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C15157c.class);
        }

        @Override
        public String e() {
            return "Actions/List";
        }

        @Override
        public String f() {
            return "Find Index";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C15157c() {
        this.serializedNodeType = f108732i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f108736g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f108737h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Find Index";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return "";
    }

    @Override
    public void m0() {
        int i10;
        ga.l a02 = ga.m.a0(Q(this.f108736g[0]));
        Object Q10 = Q(this.f108736g[1]);
        H d10 = a02 != null ? a02.d() : H.DYNAMIC;
        if (a02 != null) {
            i10 = 0;
            while (i10 < a02.i()) {
                if (C15163i.b(a02.c(i10), Q10, d10)) {
                    break;
                } else {
                    i10++;
                }
            }
        }
        i10 = -1;
        y0(this.f108737h[0], Float.valueOf(i10));
        u(this.f108737h[0]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_FIND_LIST_ELEMENT_INDEX);
    }
}
