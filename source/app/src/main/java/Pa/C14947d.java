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

public class C14947d extends AbstractC14944a implements F {

    public static final String f103738o = "PopupDialogThreeButtons";

    public static final int f103739p = 3;

    public static final int f103740q = 4;

    public static final int f103741r = 5;

    public static final int f103742s = 0;

    public static final int f103743t = 1;

    public static final int f103744u = 2;

    public final NoCodeSlot[] f103745m;

    public final NoCodeSlot[] f103746n;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C14947d();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C14947d.class;
        }

        @Override
        public String c() {
            return C14947d.f103738o;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C14947d.class);
        }

        @Override
        public String e() {
            return "Actions/Input";
        }

        @Override
        public String f() {
            return "Popup Dialog 3 Buttons";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C14947d() {
        H h10 = H.TEXT;
        this.f103745m = new NoCodeSlot[]{new NoCodeSlot("Title", h10).c(Lang.l(Lang.T.NOCODE_SLOT_TITLE)), new NoCodeSlot("Message", h10).c(Lang.l(Lang.T.NOCODE_SLOT_MESSAGE)), new NoCodeSlot(FileRequest.FIELD_TYPE, H.POPUP_DIALOG_TYPE).c(Lang.l(Lang.T.NOCODE_SLOT_TYPE)), new NoCodeSlot("Cancel Button", h10).c(Lang.l(Lang.T.NOCODE_SLOT_CANCEL_BUTTON)), new NoCodeSlot("Confirm Button", h10).c(Lang.l(Lang.T.NOCODE_SLOT_CONFIRM_BUTTON)), new NoCodeSlot("Mid Button", h10).c(Lang.l(Lang.T.NOCODE_SLOT_MID_BUTTON))};
        H h11 = H.BRANCH;
        this.f103746n = new NoCodeSlot[]{new NoCodeSlot("On Cancel", h11).c(Lang.l(Lang.T.NOCODE_SLOT_ON_CANCEL)), new NoCodeSlot("On Confirm", h11).c(Lang.l(Lang.T.NOCODE_SLOT_ON_CONFIRM)), new NoCodeSlot("On Mid", h11).c(Lang.l(Lang.T.NOCODE_SLOT_ON_MID))};
        this.serializedNodeType = f103738o;
    }

    @Override
    public void E0() {
        super.E0();
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f103745m;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f103746n;
    }

    @Override
    public EnumC13304B M() {
        return super.M();
    }

    @Override
    public void M0(PopupDialog dialog, long sessionId) {
        I0(dialog, sessionId, 0, this.f103745m[3]);
        J0(dialog, sessionId, 1, this.f103745m[4]);
        K0(dialog, sessionId, 2, this.f103745m[5]);
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Popup Dialog 3 Buttons";
    }

    @Override
    public int T0() {
        return 0;
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? R0() : inputIndex == 1 ? P0() : inputIndex == 2 ? S0() : inputIndex == 3 ? N0() : inputIndex == 4 ? O0() : inputIndex == 5 ? Q0() : "";
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
        return Lang.l(Lang.T.NOCODE_POPUP_DIALOG_THREE_BUTTONS);
    }
}
