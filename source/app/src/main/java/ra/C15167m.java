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

public class C15167m extends NoCodeNode implements F {

    public static final String f108776h = "SwapListElements";

    public static final int f108777i = 0;

    public static final int f108778j = 1;

    public static final int f108779k = 2;

    public final NoCodeSlot[] f108780g;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C15167m();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C15167m.class;
        }

        @Override
        public String c() {
            return C15167m.f108776h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C15167m.class);
        }

        @Override
        public String e() {
            return "Actions/List";
        }

        @Override
        public String f() {
            return "Swap Elements";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C15167m() {
        NoCodeSlot c10 = new NoCodeSlot(C12667d1.f69075a, H.LIST).c(Lang.l(Lang.T.NOCODE_SLOT_LIST));
        H h10 = H.DYNAMIC;
        this.f108780g = new NoCodeSlot[]{c10, new NoCodeSlot("Element A", h10).c(Lang.l(Lang.T.NOCODE_SLOT_ELEMENT_A)), new NoCodeSlot("Element B", h10).c(Lang.l(Lang.T.NOCODE_SLOT_ELEMENT_B))};
        this.serializedNodeType = f108776h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f108780g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Swap Elements";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return "";
    }

    @Override
    public void m0() {
        ga.l a02 = ga.m.a0(Q(this.f108780g[0]));
        List<Object> c10 = C15163i.c(a02);
        Object Q10 = Q(this.f108780g[1]);
        Object Q11 = Q(this.f108780g[2]);
        H d10 = a02 != null ? a02.d() : H.DYNAMIC;
        int i10 = -1;
        int i11 = -1;
        for (int i12 = 0; i12 < c10.size(); i12++) {
            Object obj = c10.get(i12);
            if (i10 < 0 && C15163i.b(obj, Q10, d10)) {
                i10 = i12;
            }
            if (i11 < 0 && C15163i.b(obj, Q11, d10)) {
                i11 = i12;
            }
            if (i10 >= 0 && i11 >= 0) {
                break;
            }
        }
        if (i10 >= 0 && i11 >= 0 && i10 != i11) {
            Object obj2 = c10.get(i10);
            c10.set(i10, c10.get(i11));
            c10.set(i11, obj2);
        }
        t();
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_SWAP_LIST_ELEMENTS);
    }
}
