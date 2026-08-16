package B0;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;

public class C2335u extends DialogFragment {

    public Dialog f1302b;

    public DialogInterface.OnCancelListener f1303c;

    @Nullable
    public Dialog f1304d;

    @NonNull
    public static C2335u e(@NonNull Dialog dialog) {
        return f(dialog, null);
    }

    @NonNull
    public static C2335u f(@NonNull Dialog dialog, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        C2335u c2335u = new C2335u();
        Dialog dialog2 = (Dialog) G0.A.s(dialog, "Cannot display null dialog");
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        c2335u.f1302b = dialog2;
        if (onCancelListener != null) {
            c2335u.f1303c = onCancelListener;
        }
        return c2335u;
    }

    @Override
    public void onCancel(@NonNull DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f1303c;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog dialog = this.f1302b;
        if (dialog != null) {
            return dialog;
        }
        setShowsDialog(false);
        if (this.f1304d == null) {
            this.f1304d = new AlertDialog.Builder((Context) G0.A.r(getContext())).create();
        }
        return this.f1304d;
    }

    @Override
    public void show(@NonNull FragmentManager fragmentManager, @Nullable String str) {
        super.show(fragmentManager, str);
    }
}
