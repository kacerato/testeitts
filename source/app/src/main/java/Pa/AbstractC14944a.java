package pa;

import JAVARuntime.PopupDialog;
import JAVARuntime.PopupDialogListener;
import android.provider.Telephony;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.G;
import ga.m;

public abstract class AbstractC14944a extends NoCodeNode {

    public static final int f103704j = 0;

    public static final int f103705k = 1;

    public static final int f103706l = 2;

    public transient boolean f103707g;

    public transient int f103708h = -1;

    public transient long f103709i;

    public class C1949a implements PopupDialogListener {

        public final long f103710a;

        public final int f103711b;

        public final PopupDialog f103712c;

        public C1949a(final long val$sessionId, final int val$outputIndex, final PopupDialog val$dialog) {
            this.f103710a = val$sessionId;
            this.f103711b = val$outputIndex;
            this.f103712c = val$dialog;
        }

        @Override
        public void onClicked() {
            AbstractC14944a.this.V0(this.f103710a, this.f103711b, this.f103712c);
        }
    }

    public enum b {
        CONFIRM,
        CANCEL,
        MID
    }

    private void L0() {
        this.f103707g = false;
        this.f103708h = -1;
    }

    private void U0(boolean advanceSession) {
        if (advanceSession) {
            this.f103709i++;
        }
        L0();
    }

    @Override
    public void E0() {
        super.E0();
        if (d0() && this.f103707g && this.f103708h >= 0) {
            u(J()[this.f103708h]);
        }
    }

    public final void H0(PopupDialog dialog, long sessionId, int outputIndex, NoCodeSlot inputSlot, b kind) {
        if (dialog == null || inputSlot == null) {
            return;
        }
        String i02 = m.i0(Q(inputSlot));
        C1949a c1949a = new C1949a(sessionId, outputIndex, dialog);
        int ordinal = kind.ordinal();
        if (ordinal == 0) {
            dialog.setConfirmButton(i02, c1949a);
        } else if (ordinal == 1) {
            dialog.setCancelButton(i02, c1949a);
        } else {
            if (ordinal != 2) {
                return;
            }
            dialog.setMidButton(i02, c1949a);
        }
    }

    public final void I0(PopupDialog dialog, long sessionId, int outputIndex, NoCodeSlot inputSlot) {
        H0(dialog, sessionId, outputIndex, inputSlot, b.CANCEL);
    }

    public final void J0(PopupDialog dialog, long sessionId, int outputIndex, NoCodeSlot inputSlot) {
        H0(dialog, sessionId, outputIndex, inputSlot, b.CONFIRM);
    }

    public final void K0(PopupDialog dialog, long sessionId, int outputIndex, NoCodeSlot inputSlot) {
        H0(dialog, sessionId, outputIndex, inputSlot, b.MID);
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    public abstract void M0(PopupDialog dialog, long sessionId);

    public final String N0() {
        return "cancel";
    }

    public final String O0() {
        return "ok";
    }

    public final String P0() {
        return "";
    }

    public final String Q0() {
        return Telephony.Mms.Part.MSG_ID;
    }

    public final String R0() {
        return "Popup";
    }

    public final String S0() {
        return G.SUCCESS.name();
    }

    public abstract int T0();

    public final void V0(long callbackSession, int outputIndex, PopupDialog dialog) {
        if (callbackSession != this.f103709i) {
            return;
        }
        if (dialog != null) {
            try {
                dialog.dismiss();
            } catch (Exception unused) {
            }
        }
        this.f103708h = outputIndex;
        this.f103707g = true;
    }

    @Override
    public void j0() {
        U0(true);
    }

    @Override
    public void k0() {
        L0();
    }

    @Override
    public void m0() {
        U0(true);
        if (N7.c.o() == null) {
            V0(this.f103709i, T0(), null);
            return;
        }
        long j10 = this.f103709i;
        G d02 = m.d0(Q(F()[2]));
        try {
            PopupDialog popupDialog = new PopupDialog(d02.b(), m.i0(Q(F()[0])), m.i0(Q(F()[1])));
            M0(popupDialog, j10);
            popupDialog.show();
        } catch (Exception unused) {
            V0(j10, T0(), null);
        }
    }
}
