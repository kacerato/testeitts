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

public class C15159e extends NoCodeNode implements F {

    public static final String f108743i = "GetLastListElement";

    public static final int f108744j = 0;

    public static final int f108745k = 0;

    public final NoCodeSlot[] f108746g = {new NoCodeSlot(C12667d1.f69075a, H.LIST).c(Lang.l(Lang.T.NOCODE_SLOT_LIST))};

    public final NoCodeSlot[] f108747h = {new NoCodeSlot("Element", H.DYNAMIC).c(Lang.l(Lang.T.NOCODE_SLOT_ELEMENT))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C15159e();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C15159e.class;
        }

        @Override
        public String c() {
            return C15159e.f108743i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C15159e.class);
        }

        @Override
        public String e() {
            return "Actions/List";
        }

        @Override
        public String f() {
            return "Get Last";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C15159e() {
        this.serializedNodeType = f108743i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f108746g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f108747h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Get Last";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return "";
    }

    @Override
    public void m0() {
        ga.l a02 = ga.m.a0(Q(this.f108746g[0]));
        y0(this.f108747h[0], (a02 == null || a02.i() <= 0) ? null : a02.c(a02.i() - 1));
        u(this.f108747h[0]);
    }

    @Override
    public H t0(int index, D resolver) {
        return index == 0 ? C15163i.d(this, 0, resolver) : super.t0(index, resolver);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_GET_LAST_LIST_ELEMENT);
    }
}
