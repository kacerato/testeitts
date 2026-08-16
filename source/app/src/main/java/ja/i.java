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

public class i extends NoCodeNode implements F {

    public static final String f92717i = "IsKeyboardButtonPressedBranch";

    public static final int f92718j = 0;

    public static final int f92719k = 0;

    public static final int f92720l = 1;

    public final NoCodeSlot[] f92721g = {new NoCodeSlot("Button Name", H.TEXT).c(Lang.l(Lang.T.NOCODE_SLOT_BUTTON_NAME))};

    public final NoCodeSlot[] f92722h;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new i();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return i.class;
        }

        @Override
        public String c() {
            return i.f92717i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, i.class);
        }

        @Override
        public String e() {
            return "Actions/Buttons";
        }

        @Override
        public String f() {
            return "Is Keyboard Button Pressed";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public i() {
        H h10 = H.BRANCH;
        this.f92722h = new NoCodeSlot[]{new NoCodeSlot("True", h10).c(Lang.l(Lang.T.NOCODE_SLOT_TRUE)), new NoCodeSlot("False", h10).c(Lang.l(Lang.T.NOCODE_SLOT_FALSE))};
        this.serializedNodeType = f92717i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f92721g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f92722h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Is Keyboard Button Pressed";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? "buttonname" : "";
    }

    @Override
    public void m0() {
        Object Q10 = Q(this.f92721g[0]);
        String valueOf = Q10 != null ? String.valueOf(Q10) : "";
        if (valueOf.trim().isEmpty()) {
            u(this.f92722h[1]);
        } else {
            tc.e f10 = C15169a.f108811t.f(valueOf);
            u((f10 == null || !f10.f117290e) ? this.f92722h[1] : this.f92722h[0]);
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_IS_KEYBOARD_BUTTON_PRESSED_BRANCH);
    }
}
