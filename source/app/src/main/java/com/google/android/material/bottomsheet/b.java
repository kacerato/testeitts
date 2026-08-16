package com.google.android.material.bottomsheet;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatDialogFragment;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

public class b extends AppCompatDialogFragment {

    public boolean f64065b;

    public class C0959b extends BottomSheetBehavior.g {
        public C0959b() {
        }

        @Override
        public void a(@NonNull View view, float f10) {
        }

        @Override
        public void b(@NonNull View view, int i10) {
            if (i10 == 5) {
                b.this.f();
            }
        }
    }

    @Override
    public void dismiss() {
        if (h(false)) {
            return;
        }
        super.dismiss();
    }

    @Override
    public void dismissAllowingStateLoss() {
        if (h(true)) {
            return;
        }
        super.dismissAllowingStateLoss();
    }

    public final void f() {
        if (this.f64065b) {
            super.dismissAllowingStateLoss();
        } else {
            super.dismiss();
        }
    }

    public final void g(@NonNull BottomSheetBehavior<?> bottomSheetBehavior, boolean z10) {
        this.f64065b = z10;
        if (bottomSheetBehavior.J() == 5) {
            f();
            return;
        }
        if (getDialog() instanceof com.google.android.material.bottomsheet.a) {
            ((com.google.android.material.bottomsheet.a) getDialog()).j();
        }
        bottomSheetBehavior.o(new C0959b());
        bottomSheetBehavior.h0(5);
    }

    public final boolean h(boolean z10) {
        Dialog dialog = getDialog();
        if (!(dialog instanceof com.google.android.material.bottomsheet.a)) {
            return false;
        }
        com.google.android.material.bottomsheet.a aVar = (com.google.android.material.bottomsheet.a) dialog;
        BottomSheetBehavior<FrameLayout> g10 = aVar.g();
        if (!g10.O() || !aVar.h()) {
            return false;
        }
        g(g10, z10);
        return true;
    }

    @Override
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        return new com.google.android.material.bottomsheet.a(getContext(), getTheme());
    }
}
