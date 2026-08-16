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

public class C15156b extends NoCodeNode implements F {

    public static final String f108729h = "ClearList";

    public static final int f108730i = 0;

    public final NoCodeSlot[] f108731g = {new NoCodeSlot(C12667d1.f69075a, H.LIST).c(Lang.l(Lang.T.NOCODE_SLOT_LIST))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C15156b();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C15156b.class;
        }

        @Override
        public String c() {
            return C15156b.f108729h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C15156b.class);
        }

        @Override
        public String e() {
            return "Actions/List";
        }

        @Override
        public String f() {
            return "Clear";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C15156b() {
        this.serializedNodeType = f108729h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f108731g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Clear";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return "";
    }

    @Override
    public void m0() {
        ga.m.a0(Q(this.f108731g[0])).f().clear();
        t();
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_CLEAR_LIST);
    }
}
