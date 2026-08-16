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

public class f extends NoCodeNode implements F {

    public static final String f92699i = "IsKeyPressedBranch";

    public static final int f92700j = 0;

    public static final int f92701k = 0;

    public static final int f92702l = 1;

    public final NoCodeSlot[] f92703g = {new NoCodeSlot("Key Name", H.TEXT).c(Lang.l(Lang.T.NOCODE_SLOT_KEY_NAME))};

    public final NoCodeSlot[] f92704h;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new f();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return f.class;
        }

        @Override
        public String c() {
            return f.f92699i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, f.class);
        }

        @Override
        public String e() {
            return "Actions/Buttons";
        }

        @Override
        public String f() {
            return "Is Key Pressed";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public f() {
        H h10 = H.BRANCH;
        this.f92704h = new NoCodeSlot[]{new NoCodeSlot("True", h10).c(Lang.l(Lang.T.NOCODE_SLOT_TRUE)), new NoCodeSlot("False", h10).c(Lang.l(Lang.T.NOCODE_SLOT_FALSE))};
        this.serializedNodeType = f92699i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f92703g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f92704h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Is Key Pressed";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? "keyname" : "";
    }

    @Override
    public void m0() {
        Object Q10 = Q(this.f92703g[0]);
        String valueOf = Q10 != null ? String.valueOf(Q10) : "";
        if (valueOf.trim().isEmpty()) {
            u(this.f92704h[1]);
        } else {
            Key j10 = C15169a.j(valueOf);
            u((j10 == null || !j10.g()) ? this.f92704h[1] : this.f92704h[0]);
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_IS_KEY_PRESSED_BRANCH);
    }
}
