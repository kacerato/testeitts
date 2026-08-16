package ja;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Input.Key;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.o;
import ga.p;
import rc.C15169a;

public class e extends NoCodeNode implements F {

    public static final String f92693i = "IsKeyDownBranch";

    public static final int f92694j = 0;

    public static final int f92695k = 0;

    public static final int f92696l = 1;

    public final NoCodeSlot[] f92697g = {new NoCodeSlot("Key Name", H.TEXT).c(Lang.l(Lang.T.NOCODE_SLOT_KEY_NAME))};

    public final NoCodeSlot[] f92698h;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new e();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return e.class;
        }

        @Override
        public String c() {
            return e.f92693i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, e.class);
        }

        @Override
        public String e() {
            return "Actions/Buttons";
        }

        @Override
        public String f() {
            return "Is Key Down";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public e() {
        H h10 = H.BRANCH;
        this.f92698h = new NoCodeSlot[]{new NoCodeSlot("True", h10).c(Lang.l(Lang.T.NOCODE_SLOT_TRUE)), new NoCodeSlot("False", h10).c(Lang.l(Lang.T.NOCODE_SLOT_FALSE))};
        this.serializedNodeType = f92693i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f92697g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f92698h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Is Key Down";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? "keyname" : "";
    }

    @Override
    public void m0() {
        Object Q10 = Q(this.f92697g[0]);
        String valueOf = Q10 != null ? String.valueOf(Q10) : "";
        if (valueOf.trim().isEmpty()) {
            u(this.f92698h[1]);
        } else {
            Key j10 = C15169a.j(valueOf);
            u((j10 == null || !j10.f()) ? this.f92698h[1] : this.f92698h[0]);
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_IS_KEY_DOWN_BRANCH);
    }
}
