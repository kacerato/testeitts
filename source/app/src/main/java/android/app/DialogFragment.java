package android.app;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/DialogFragment.class
 */
public class DialogFragment extends Fragment implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {
    public static final int STYLE_NORMAL = 0;
    public static final int STYLE_NO_FRAME = 2;
    public static final int STYLE_NO_INPUT = 3;
    public static final int STYLE_NO_TITLE = 1;

    public DialogFragment() {
        throw new RuntimeException("Stub!");
    }

    public void setStyle(int style, int theme) {
        throw new RuntimeException("Stub!");
    }

    public void show(FragmentManager manager, String tag) {
        throw new RuntimeException("Stub!");
    }

    public int show(FragmentTransaction transaction, String tag) {
        throw new RuntimeException("Stub!");
    }

    public void dismiss() {
        throw new RuntimeException("Stub!");
    }

    public void dismissAllowingStateLoss() {
        throw new RuntimeException("Stub!");
    }

    public Dialog getDialog() {
        throw new RuntimeException("Stub!");
    }

    public int getTheme() {
        throw new RuntimeException("Stub!");
    }

    public void setCancelable(boolean cancelable) {
        throw new RuntimeException("Stub!");
    }

    public boolean isCancelable() {
        throw new RuntimeException("Stub!");
    }

    public void setShowsDialog(boolean showsDialog) {
        throw new RuntimeException("Stub!");
    }

    public boolean getShowsDialog() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onAttach(Context context) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onDetach() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        throw new RuntimeException("Stub!");
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        throw new RuntimeException("Stub!");
    }

    public void onCancel(DialogInterface dialog) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onDismiss(DialogInterface dialog) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onActivityCreated(Bundle savedInstanceState) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onStart() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onSaveInstanceState(Bundle outState) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onStop() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onDestroyView() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void dump(String prefix, FileDescriptor fd2, PrintWriter writer, String[] args) {
        throw new RuntimeException("Stub!");
    }
}
