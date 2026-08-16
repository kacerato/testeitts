package android.app;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import java.text.NumberFormat;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/ProgressDialog.class
 */
@Deprecated
public class ProgressDialog extends AlertDialog {
    public static final int STYLE_HORIZONTAL = 1;
    public static final int STYLE_SPINNER = 0;

    public ProgressDialog(Context context) {
        super((Context) null, 0);
        throw new RuntimeException("Stub!");
    }

    public ProgressDialog(Context context, int theme) {
        super((Context) null, 0);
        throw new RuntimeException("Stub!");
    }

    public static ProgressDialog show(Context context, CharSequence title, CharSequence message) {
        throw new RuntimeException("Stub!");
    }

    public static ProgressDialog show(Context context, CharSequence title, CharSequence message, boolean indeterminate) {
        throw new RuntimeException("Stub!");
    }

    public static ProgressDialog show(Context context, CharSequence title, CharSequence message, boolean indeterminate, boolean cancelable) {
        throw new RuntimeException("Stub!");
    }

    public static ProgressDialog show(Context context, CharSequence title, CharSequence message, boolean indeterminate, boolean cancelable, DialogInterface.OnCancelListener cancelListener) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onStart() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onStop() {
        throw new RuntimeException("Stub!");
    }

    public void setProgress(int value) {
        throw new RuntimeException("Stub!");
    }

    public void setSecondaryProgress(int secondaryProgress) {
        throw new RuntimeException("Stub!");
    }

    public int getProgress() {
        throw new RuntimeException("Stub!");
    }

    public int getSecondaryProgress() {
        throw new RuntimeException("Stub!");
    }

    public int getMax() {
        throw new RuntimeException("Stub!");
    }

    public void setMax(int max) {
        throw new RuntimeException("Stub!");
    }

    public void incrementProgressBy(int diff) {
        throw new RuntimeException("Stub!");
    }

    public void incrementSecondaryProgressBy(int diff) {
        throw new RuntimeException("Stub!");
    }

    public void setProgressDrawable(Drawable d10) {
        throw new RuntimeException("Stub!");
    }

    public void setIndeterminateDrawable(Drawable d10) {
        throw new RuntimeException("Stub!");
    }

    public void setIndeterminate(boolean indeterminate) {
        throw new RuntimeException("Stub!");
    }

    public boolean isIndeterminate() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setMessage(CharSequence message) {
        throw new RuntimeException("Stub!");
    }

    public void setProgressStyle(int style) {
        throw new RuntimeException("Stub!");
    }

    public void setProgressNumberFormat(String format) {
        throw new RuntimeException("Stub!");
    }

    public void setProgressPercentFormat(NumberFormat format) {
        throw new RuntimeException("Stub!");
    }
}
