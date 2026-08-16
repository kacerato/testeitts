package com.karumi.dexter.listener;

import android.view.View;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.Snackbar;

public class SnackbarUtils {
    public static void show(View view, String str, int i10, String str2, View.OnClickListener onClickListener, BaseTransientBottomBar.t<Snackbar> tVar) {
        Snackbar s02 = Snackbar.s0(view, str, i10);
        if (str2 != null && onClickListener != null) {
            s02.v0(str2, onClickListener);
        }
        if (tVar != null) {
            s02.r(tVar);
        }
        s02.f0();
    }
}
