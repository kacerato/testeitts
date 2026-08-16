package JAVARuntime;

import android.app.Activity;
import android.content.DialogInterface;
import android.widget.EditText;
import d8.m;
import o8.InterfaceC14490d;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:InputDialog.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:InputDialog.class
  classes.dex
 */
@ClassCategory(cat = {"Input"})
public class InputDialog {
    private transient boolean calledFromEngine = false;

    public class AnonymousClass1 implements java.lang.Runnable {
        final Activity val$activity;
        final String val$cancelButton;
        final String val$defaultText;
        final String val$doneButton;
        final InputDialogListener val$listener;
        final String val$title;
        final Type val$type;

        public AnonymousClass1(final String val$title, final String val$defaultText, final String val$doneButton, final String val$cancelButton, final InputDialogListener val$listener, final Activity val$activity, final Type val$type) {
            this.val$title = val$title;
            this.val$defaultText = val$defaultText;
            this.val$doneButton = val$doneButton;
            this.val$cancelButton = val$cancelButton;
            this.val$listener = val$listener;
            this.val$activity = val$activity;
            this.val$type = val$type;
        }

        @Override
        public void run() {
            InputDialog.access$000(InputDialog.this, this.val$title, this.val$defaultText, this.val$doneButton, this.val$cancelButton, this.val$listener, this.val$activity, this.val$type);
        }
    }

    public class AnonymousClass2 implements DialogInterface.OnClickListener {
        final EditText val$input;
        final InputDialogListener val$listener;

        public AnonymousClass2(final InputDialogListener val$listener, final EditText val$input) {
            this.val$listener = val$listener;
            this.val$input = val$input;
        }

        @Override
        public void onClick(DialogInterface dialog, int which) {
            dialog.dismiss();
            if (InputDialog.access$100(InputDialog.this)) {
                InputDialog.access$200(InputDialog.this, new Runnable() {
                    @Override
                    public void run() {
                        m.d(new InterfaceC14490d() {
                            @Override
                            public void run() {
                                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                anonymousClass2.val$listener.onFinish(anonymousClass2.val$input.getText().toString());
                            }
                        });
                    }
                });
            } else {
                m.d(new InterfaceC14490d() {
                    @Override
                    public void run() {
                        AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                        anonymousClass2.val$listener.onFinish(anonymousClass2.val$input.getText().toString());
                    }
                });
            }
        }
    }

    public class AnonymousClass3 implements DialogInterface.OnClickListener {
        final InputDialogListener val$listener;

        public AnonymousClass3(final InputDialogListener val$listener) {
            this.val$listener = val$listener;
        }

        @Override
        public void onClick(DialogInterface dialog, int which) {
            dialog.cancel();
            if (InputDialog.access$100(InputDialog.this)) {
                InputDialog.access$200(InputDialog.this, new Runnable() {
                    @Override
                    public void run() {
                        m.d(new InterfaceC14490d() {
                            @Override
                            public void run() {
                                AnonymousClass3.this.val$listener.onCancel();
                            }
                        });
                    }
                });
            } else {
                m.d(new InterfaceC14490d() {
                    @Override
                    public void run() {
                        AnonymousClass3.this.val$listener.onCancel();
                    }
                });
            }
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:InputDialog$Type.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:InputDialog$Type.class
  classes.dex
 */
    public enum Type {
        String,
        Float,
        Int;

        public static Type[] valuesCustom() {
            Type[] valuesCustom = values();
            int length = valuesCustom.length;
            Type[] typeArr = new Type[length];
            java.lang.System.arraycopy(valuesCustom, 0, typeArr, 0, length);
            return typeArr;
        }
    }

    public InputDialog(String str, InputDialogListener inputDialogListener) {
    }

    public InputDialog(String str, Type type, InputDialogListener inputDialogListener) {
    }

    public InputDialog(String str, String str2, InputDialogListener inputDialogListener) {
    }

    public InputDialog(String str, String str2, Type type, InputDialogListener inputDialogListener) {
    }

    public InputDialog(String str, String str2, String str3, InputDialogListener inputDialogListener) {
    }

    public InputDialog(String str, String str2, String str3, String str4, InputDialogListener inputDialogListener) {
    }

    public InputDialog(String str, String str2, String str3, String str4, Type type, InputDialogListener inputDialogListener) {
    }
}
