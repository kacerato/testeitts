package android.content;

import android.view.KeyEvent;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/DialogInterface.class
 */
public interface DialogInterface {

    @Deprecated
    public static final int BUTTON1 = -1;

    @Deprecated
    public static final int BUTTON2 = -2;

    @Deprecated
    public static final int BUTTON3 = -3;
    public static final int BUTTON_NEGATIVE = -2;
    public static final int BUTTON_NEUTRAL = -3;
    public static final int BUTTON_POSITIVE = -1;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/DialogInterface$OnCancelListener.class
 */
    public interface OnCancelListener {
        void onCancel(DialogInterface dialogInterface);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/DialogInterface$OnClickListener.class
 */
    public interface OnClickListener {
        void onClick(DialogInterface dialogInterface, int i10);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/DialogInterface$OnDismissListener.class
 */
    public interface OnDismissListener {
        void onDismiss(DialogInterface dialogInterface);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/DialogInterface$OnKeyListener.class
 */
    public interface OnKeyListener {
        boolean onKey(DialogInterface dialogInterface, int i10, KeyEvent keyEvent);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/DialogInterface$OnMultiChoiceClickListener.class
 */
    public interface OnMultiChoiceClickListener {
        void onClick(DialogInterface dialogInterface, int i10, boolean z10);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/DialogInterface$OnShowListener.class
 */
    public interface OnShowListener {
        void onShow(DialogInterface dialogInterface);
    }

    void cancel();

    void dismiss();
}
