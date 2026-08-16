package com.karumi.dexter.listener.multi;

import android.view.View;
import androidx.annotation.StringRes;
import com.google.android.material.snackbar.Snackbar;
import com.karumi.dexter.MultiplePermissionsReport;
import com.karumi.dexter.listener.SettingsClickListener;
import com.karumi.dexter.listener.SnackbarUtils;

public class SnackbarOnAnyPermanentlyDeniedMultiplePermissionsListener extends BaseMultiplePermissionsListener {
    private final String buttonText;
    private final int duration;
    private final View.OnClickListener onButtonClickListener;
    private final Snackbar.b snackbarCallback;
    private final String text;
    private final View view;

    public static class Builder {
        private String buttonText;
        private int duration = 0;
        private View.OnClickListener onClickListener;
        private Snackbar.b snackbarCallback;
        private final String text;
        private final View view;

        private Builder(View view, String str) {
            this.view = view;
            this.text = str;
        }

        public static Builder with(View view, @StringRes int i10) {
            return with(view, view.getContext().getString(i10));
        }

        public SnackbarOnAnyPermanentlyDeniedMultiplePermissionsListener build() {
            return new SnackbarOnAnyPermanentlyDeniedMultiplePermissionsListener(this.view, this.text, this.buttonText, this.onClickListener, this.snackbarCallback, this.duration);
        }

        public Builder withButton(@StringRes int i10, View.OnClickListener onClickListener) {
            return withButton(this.view.getContext().getString(i10), onClickListener);
        }

        public Builder withCallback(Snackbar.b bVar) {
            this.snackbarCallback = bVar;
            return this;
        }

        public Builder withDuration(int i10) {
            this.duration = i10;
            return this;
        }

        public Builder withOpenSettingsButton(@StringRes int i10) {
            return withOpenSettingsButton(this.view.getContext().getString(i10));
        }

        public static Builder with(View view, String str) {
            return new Builder(view, str);
        }

        public Builder withButton(String str, View.OnClickListener onClickListener) {
            this.buttonText = str;
            this.onClickListener = onClickListener;
            return this;
        }

        public Builder withOpenSettingsButton(String str) {
            this.buttonText = str;
            this.onClickListener = new SettingsClickListener();
            return this;
        }
    }

    private SnackbarOnAnyPermanentlyDeniedMultiplePermissionsListener(View view, String str, String str2, View.OnClickListener onClickListener, Snackbar.b bVar, int i10) {
        this.view = view;
        this.text = str;
        this.buttonText = str2;
        this.onButtonClickListener = onClickListener;
        this.snackbarCallback = bVar;
        this.duration = i10;
    }

    @Override
    public void onPermissionsChecked(MultiplePermissionsReport multiplePermissionsReport) {
        super.onPermissionsChecked(multiplePermissionsReport);
        if (multiplePermissionsReport.isAnyPermissionPermanentlyDenied()) {
            return;
        }
        SnackbarUtils.show(this.view, this.text, this.duration, this.buttonText, this.onButtonClickListener, this.snackbarCallback);
    }
}
