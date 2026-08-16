package pa;

import JAVARuntime.InputDialog;
import JAVARuntime.InputDialogListener;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeInputDefault;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.tonyodev.fetch2core.server.FileRequest;
import ga.D;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.m;
import ga.o;
import ga.p;

public class C14945b extends NoCodeNode implements F {

    public static final String f103714n = "InputDialog";

    public static final int f103715o = 0;

    public static final int f103716p = 1;

    public static final int f103717q = 2;

    public static final int f103718r = 3;

    public static final int f103719s = 4;

    public static final int f103720t = 0;

    public static final int f103721u = 1;

    public static final int f103722v = 2;

    public final NoCodeSlot[] f103723g;

    public final NoCodeSlot[] f103724h;

    public transient boolean f103725i;

    public transient boolean f103726j;

    public transient Object f103727k;

    public transient InputDialog.Type f103728l;

    public transient long f103729m;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C14945b();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C14945b.class;
        }

        @Override
        public String c() {
            return C14945b.f103714n;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C14945b.class);
        }

        @Override
        public String e() {
            return "Actions/Input";
        }

        @Override
        public String f() {
            return "Input Dialog";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    public class C1950b implements InputDialogListener {

        public final long f103730a;

        public final InputDialog.Type f103731b;

        public C1950b(final long val$currentSession, final InputDialog.Type val$dialogType) {
            this.f103730a = val$currentSession;
            this.f103731b = val$dialogType;
        }

        @Override
        public void onCancel() {
            C14945b.this.M0(this.f103730a);
        }

        @Override
        public void onFinish(String text) {
            C14945b.this.N0(this.f103730a, text, this.f103731b);
        }
    }

    static {
        o.a(new a());
    }

    public C14945b() {
        H h10 = H.TEXT;
        this.f103723g = new NoCodeSlot[]{new NoCodeSlot("Title", h10).c(Lang.l(Lang.T.NOCODE_SLOT_TITLE)), new NoCodeSlot(FileRequest.FIELD_TYPE, H.INPUT_DIALOG_TYPE).c(Lang.l(Lang.T.NOCODE_SLOT_TYPE)), new NoCodeSlot("Default Text", h10).c(Lang.l(Lang.T.NOCODE_SLOT_DEFAULT_TEXT)), new NoCodeSlot("Cancel Button", h10).c(Lang.l(Lang.T.NOCODE_SLOT_CANCEL_BUTTON)), new NoCodeSlot("Done Button", h10).c(Lang.l(Lang.T.NOCODE_SLOT_DONE_BUTTON))};
        NoCodeSlot c10 = new NoCodeSlot("Result", H.DYNAMIC).c(Lang.l(Lang.T.NOCODE_SLOT_RESULT));
        H h11 = H.BRANCH;
        this.f103724h = new NoCodeSlot[]{c10, new NoCodeSlot("On Success", h11).c(Lang.l(Lang.T.NOCODE_SLOT_ON_SUCCESS)), new NoCodeSlot("On Cancel", h11).c(Lang.l(Lang.T.NOCODE_SLOT_ON_CANCEL))};
        this.f103728l = InputDialog.Type.String;
        this.serializedNodeType = f103714n;
    }

    @Override
    public void E0() {
        super.E0();
        if (d0() && this.f103725i) {
            y0(this.f103724h[0], this.f103727k);
            u(this.f103726j ? this.f103724h[2] : this.f103724h[1]);
        }
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f103723g;
    }

    public final void I0() {
        this.f103725i = false;
        this.f103726j = false;
        this.f103727k = null;
        this.f103728l = InputDialog.Type.String;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f103724h;
    }

    public final InputDialog.Type J0() {
        String str;
        NoCodeInputDefault D10 = D(1);
        return m.Y((D10 == null || (str = D10.stringValue) == null || str.trim().isEmpty()) ? a(1, H.INPUT_DIALOG_TYPE) : D10.stringValue);
    }

    public final Object K0(String text, InputDialog.Type dialogType) {
        return dialogType == InputDialog.Type.Float ? Float.valueOf(m.V(text)) : dialogType == InputDialog.Type.Int ? Float.valueOf((float) m.M(text).g()) : text != null ? text : "";
    }

    public final Object L0(InputDialog.Type dialogType) {
        return dialogType == InputDialog.Type.String ? "" : Float.valueOf(0.0f);
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    public final void M0(long callbackSession) {
        if (callbackSession != this.f103729m) {
            return;
        }
        this.f103726j = true;
        this.f103725i = true;
        this.f103727k = L0(this.f103728l);
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Input Dialog";
    }

    public final void N0(long callbackSession, String text, InputDialog.Type dialogType) {
        if (callbackSession != this.f103729m) {
            return;
        }
        if (dialogType == null) {
            dialogType = InputDialog.Type.String;
        }
        this.f103728l = dialogType;
        this.f103726j = false;
        this.f103725i = true;
        this.f103727k = K0(text, dialogType);
    }

    public final void O0(boolean advanceSession) {
        if (advanceSession) {
            this.f103729m++;
        }
        I0();
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? "Input" : inputIndex == 1 ? InputDialog.Type.String.name() : inputIndex == 2 ? "type here" : inputIndex == 3 ? "cancel" : inputIndex == 4 ? "done" : "";
    }

    @Override
    public void j0() {
        O0(true);
    }

    @Override
    public void k0() {
        I0();
    }

    @Override
    public void m0() {
        O0(true);
        this.f103728l = m.Y(Q(this.f103723g[1]));
        if (N7.c.o() == null) {
            M0(this.f103729m);
            return;
        }
        long j10 = this.f103729m;
        InputDialog.Type type = this.f103728l;
        try {
            new InputDialog(m.i0(Q(this.f103723g[0])), m.i0(Q(this.f103723g[2])), m.i0(Q(this.f103723g[3])), m.i0(Q(this.f103723g[4])), type, new C1950b(j10, type));
        } catch (Exception unused) {
            M0(j10);
        }
    }

    @Override
    public H t0(int index, D resolver) {
        if (index != 0) {
            return super.t0(index, resolver);
        }
        NoCodeData a10 = resolver != null ? resolver.a() : this.f79021a;
        return (a10 == null || a10.Q(B(), 1) == null) ? J0() == InputDialog.Type.String ? H.TEXT : H.NUMBER : H.DYNAMIC;
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_INPUT_DIALOG);
    }
}
