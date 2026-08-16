package B0;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class DialogFragmentC2319d extends DialogFragment {

    public Dialog f1227b;

    public DialogInterface.OnCancelListener f1228c;

    @Nullable
    public Dialog f1229d;

    @NonNull
    public static DialogFragmentC2319d a(@NonNull Dialog dialog) {
        return b(dialog, null);
    }

    @NonNull
    public static DialogFragmentC2319d b(@NonNull Dialog dialog, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        DialogFragmentC2319d dialogFragmentC2319d = new DialogFragmentC2319d();
        Dialog dialog2 = (Dialog) G0.A.s(dialog, "Cannot display null dialog");
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        dialogFragmentC2319d.f1227b = dialog2;
        if (onCancelListener != null) {
            dialogFragmentC2319d.f1228c = onCancelListener;
        }
        return dialogFragmentC2319d;
    }

    @Override
    public void onCancel(@NonNull DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f1228c;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog dialog = this.f1227b;
        if (dialog != null) {
            return dialog;
        }
        setShowsDialog(false);
        if (this.f1229d == null) {
            this.f1229d = new AlertDialog.Builder((Context) G0.A.r(getActivity())).create();
        }
        return this.f1229d;
    }

    @Override
    public void show(@NonNull FragmentManager fragmentManager, @Nullable String str) {
        super.show(fragmentManager, str);
    }
}
