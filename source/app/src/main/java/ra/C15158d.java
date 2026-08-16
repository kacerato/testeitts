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

public class C15158d extends NoCodeNode implements F {

    public static final String f108738i = "GetFirstListElement";

    public static final int f108739j = 0;

    public static final int f108740k = 0;

    public final NoCodeSlot[] f108741g = {new NoCodeSlot(C12667d1.f69075a, H.LIST).c(Lang.l(Lang.T.NOCODE_SLOT_LIST))};

    public final NoCodeSlot[] f108742h = {new NoCodeSlot("Element", H.DYNAMIC).c(Lang.l(Lang.T.NOCODE_SLOT_ELEMENT))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C15158d();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C15158d.class;
        }

        @Override
        public String c() {
            return C15158d.f108738i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C15158d.class);
        }

        @Override
        public String e() {
            return "Actions/List";
        }

        @Override
        public String f() {
            return "Get First";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C15158d() {
        this.serializedNodeType = f108738i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f108741g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f108742h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Get First";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return "";
    }

    @Override
    public void m0() {
        ga.l a02 = ga.m.a0(Q(this.f108741g[0]));
        y0(this.f108742h[0], (a02 == null || a02.i() <= 0) ? null : a02.c(0));
        u(this.f108742h[0]);
    }

    @Override
    public H t0(int index, D resolver) {
        return index == 0 ? C15163i.d(this, 0, resolver) : super.t0(index, resolver);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_GET_FIRST_LIST_ELEMENT);
    }
}
