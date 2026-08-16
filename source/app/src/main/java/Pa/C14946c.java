package pa;

import JAVARuntime.PopupDialog;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.tonyodev.fetch2core.server.FileRequest;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.o;
import ga.p;

public class C14946c extends AbstractC14944a implements F {

    public static final String f103733o = "PopupDialogOneButton";

    public static final int f103734p = 3;

    public static final int f103735q = 0;

    public final NoCodeSlot[] f103736m;

    public final NoCodeSlot[] f103737n;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C14946c();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C14946c.class;
        }

        @Override
        public String c() {
            return C14946c.f103733o;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C14946c.class);
        }

        @Override
        public String e() {
            return "Actions/Input";
        }

        @Override
        public String f() {
            return "Popup Dialog 1 Button";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C14946c() {
        H h10 = H.TEXT;
        this.f103736m = new NoCodeSlot[]{new NoCodeSlot("Title", h10).c(Lang.l(Lang.T.NOCODE_SLOT_TITLE)), new NoCodeSlot("Message", h10).c(Lang.l(Lang.T.NOCODE_SLOT_MESSAGE)), new NoCodeSlot(FileRequest.FIELD_TYPE, H.POPUP_DIALOG_TYPE).c(Lang.l(Lang.T.NOCODE_SLOT_TYPE)), new NoCodeSlot("Confirm Button", h10).c(Lang.l(Lang.T.NOCODE_SLOT_CONFIRM_BUTTON))};
        this.f103737n = new NoCodeSlot[]{new NoCodeSlot("On Confirm", H.BRANCH).c(Lang.l(Lang.T.NOCODE_SLOT_ON_CONFIRM))};
        this.serializedNodeType = f103733o;
    }

    @Override
    public void E0() {
        super.E0();
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f103736m;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f103737n;
    }

    @Override
    public EnumC13304B M() {
        return super.M();
    }

    @Override
    public void M0(PopupDialog dialog, long sessionId) {
        J0(dialog, sessionId, 0, this.f103736m[3]);
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Popup Dialog 1 Button";
    }

    @Override
    public int T0() {
        return 0;
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? R0() : inputIndex == 1 ? P0() : inputIndex == 2 ? S0() : inputIndex == 3 ? O0() : "";
    }

    @Override
    public void j0() {
        super.j0();
    }

    @Override
    public void k0() {
        super.k0();
    }

    @Override
    public void m0() {
        super.m0();
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_POPUP_DIALOG_ONE_BUTTON);
    }
}
