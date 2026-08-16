package ja;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.o;
import ga.p;
import rc.C15169a;
import tc.C15394c;

public class C13816b extends NoCodeNode implements F {

    public static final String f92675i = "IsGamePadButtonDownBranch";

    public static final int f92676j = 0;

    public static final int f92677k = 0;

    public static final int f92678l = 1;

    public final NoCodeSlot[] f92679g = {new NoCodeSlot("Button Name", H.TEXT).c(Lang.l(Lang.T.NOCODE_SLOT_BUTTON_NAME))};

    public final NoCodeSlot[] f92680h;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C13816b();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C13816b.class;
        }

        @Override
        public String c() {
            return C13816b.f92675i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C13816b.class);
        }

        @Override
        public String e() {
            return "Actions/Buttons";
        }

        @Override
        public String f() {
            return "Is GamePad Button Down";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C13816b() {
        H h10 = H.BRANCH;
        this.f92680h = new NoCodeSlot[]{new NoCodeSlot("True", h10).c(Lang.l(Lang.T.NOCODE_SLOT_TRUE)), new NoCodeSlot("False", h10).c(Lang.l(Lang.T.NOCODE_SLOT_FALSE))};
        this.serializedNodeType = f92675i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f92679g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f92680h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Is GamePad Button Down";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? "buttonname" : "";
    }

    @Override
    public void m0() {
        Object Q10 = Q(this.f92679g[0]);
        String valueOf = Q10 != null ? String.valueOf(Q10) : "";
        if (valueOf.trim().isEmpty()) {
            u(this.f92680h[1]);
        } else {
            C15394c d10 = C15169a.f108810s.d(valueOf);
            u((d10 == null || !d10.f117275b) ? this.f92680h[1] : this.f92680h[0]);
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_IS_GAME_PAD_BUTTON_DOWN_BRANCH);
    }
}
