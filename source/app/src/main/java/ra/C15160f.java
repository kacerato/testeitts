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

public class C15160f extends NoCodeNode implements F {

    public static final String f108748i = "GetListCount";

    public static final int f108749j = 0;

    public static final int f108750k = 0;

    public final NoCodeSlot[] f108751g = {new NoCodeSlot(C12667d1.f69075a, H.LIST).c(Lang.l(Lang.T.NOCODE_SLOT_LIST))};

    public final NoCodeSlot[] f108752h = {new NoCodeSlot("Count", H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_COUNT))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C15160f();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C15160f.class;
        }

        @Override
        public String c() {
            return C15160f.f108748i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C15160f.class);
        }

        @Override
        public String e() {
            return "Actions/List";
        }

        @Override
        public String f() {
            return "Count";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C15160f() {
        this.serializedNodeType = f108748i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f108751g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f108752h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Count";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return "";
    }

    @Override
    public void m0() {
        y0(this.f108752h[0], Float.valueOf(ga.m.a0(Q(this.f108751g[0])) != null ? r0.i() : 0.0f));
        u(this.f108752h[0]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_GET_LIST_COUNT);
    }
}
