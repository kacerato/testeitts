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

public class C15155a extends NoCodeNode implements F {

    public static final String f108725h = "AddListElement";

    public static final int f108726i = 0;

    public static final int f108727j = 1;

    public final NoCodeSlot[] f108728g = {new NoCodeSlot(C12667d1.f69075a, H.LIST).c(Lang.l(Lang.T.NOCODE_SLOT_LIST)), new NoCodeSlot("Element", H.DYNAMIC).c(Lang.l(Lang.T.NOCODE_SLOT_ELEMENT))};

    public class C1989a implements p {
        @Override
        public NoCodeNode a() {
            return new C15155a();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C15155a.class;
        }

        @Override
        public String c() {
            return C15155a.f108725h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C15155a.class);
        }

        @Override
        public String e() {
            return "Actions/List";
        }

        @Override
        public String f() {
            return "Add Element";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new C1989a());
    }

    public C15155a() {
        this.serializedNodeType = f108725h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f108728g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Add Element";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return "";
    }

    @Override
    public void m0() {
        ga.l a02 = ga.m.a0(Q(this.f108728g[0]));
        Object Q10 = Q(this.f108728g[1]);
        H f10 = C15163i.f(a02, Q10);
        a02.h(f10);
        C15163i.c(a02).add(C15163i.a(Q10, f10));
        t();
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_ADD_LIST_ELEMENT);
    }
}
