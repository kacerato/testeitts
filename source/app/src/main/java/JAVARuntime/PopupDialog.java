package JAVARuntime;

import android.app.Activity;
import cn.pedant.SweetAlert.SweetAlertDialog;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:PopupDialog.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:PopupDialog.class
  classes.dex
 */
@ClassCategory(cat = {"Input"})
public class PopupDialog {
    public static final int SUCCESS = 48;
    public static final int ERROR = 49;
    public static final int ALERT = 50;
    public static final int PROGRESS = 51;
    private transient boolean calledFromEngine = false;

    public class AnonymousClass1 implements java.lang.Runnable {
        final Activity val$activity;
        final String val$message;
        final String val$title;
        final int val$type;

        public AnonymousClass1(final int val$type, final Activity val$activity, final String val$title, final String val$message) {
            this.val$type = val$type;
            this.val$activity = val$activity;
            this.val$title = val$title;
            this.val$message = val$message;
        }

        @Override
        public void run() {
            PopupDialog.access$000(PopupDialog.this, this.val$type, this.val$activity, this.val$title, this.val$message);
        }
    }

    public class AnonymousClass10 implements java.lang.Runnable {
        final Listener val$popupDialogListener;
        final String val$text;

        public AnonymousClass10(final String val$text, final Listener val$popupDialogListener) {
            this.val$text = val$text;
            this.val$popupDialogListener = val$popupDialogListener;
        }

        @Override
        public void run() {
            PopupDialog.this.dialog.setCancelText(this.val$text);
            PopupDialog.this.dialog.setCancelClickListener(new SweetAlertDialog.OnSweetClickListener() {
                @Override
                public void onClick(SweetAlertDialog sweetAlertDialog) {
                    if (PopupDialog.access$100(PopupDialog.this)) {
                        PopupDialog.access$200(PopupDialog.this, new Runnable() {
                            @Override
                            public void run() {
                                AnonymousClass10.this.val$popupDialogListener.onClicked();
                            }
                        });
                    } else {
                        AnonymousClass10.this.val$popupDialogListener.onClicked();
                    }
                }
            });
        }
    }

    public class AnonymousClass11 implements SweetAlertDialog.OnSweetClickListener {
        final Listener val$popupDialogListener;

        public AnonymousClass11(final Listener val$popupDialogListener) {
            this.val$popupDialogListener = val$popupDialogListener;
        }

        @Override
        public void onClick(SweetAlertDialog sweetAlertDialog) {
            if (PopupDialog.access$100(PopupDialog.this)) {
                PopupDialog.access$200(PopupDialog.this, new Runnable() {
                    @Override
                    public void run() {
                        AnonymousClass11.this.val$popupDialogListener.onClicked();
                    }
                });
            } else {
                this.val$popupDialogListener.onClicked();
            }
        }
    }

    public class AnonymousClass12 implements java.lang.Runnable {
        final Listener val$popupDialogListener;
        final String val$text;

        public AnonymousClass12(final String val$text, final Listener val$popupDialogListener) {
            this.val$text = val$text;
            this.val$popupDialogListener = val$popupDialogListener;
        }

        @Override
        public void run() {
            PopupDialog.this.dialog.setNeutralText(this.val$text);
            PopupDialog.this.dialog.setNeutralClickListener(new SweetAlertDialog.OnSweetClickListener() {
                @Override
                public void onClick(SweetAlertDialog sweetAlertDialog) {
                    if (PopupDialog.access$100(PopupDialog.this)) {
                        PopupDialog.access$200(PopupDialog.this, new Runnable() {
                            @Override
                            public void run() {
                                AnonymousClass12.this.val$popupDialogListener.onClicked();
                            }
                        });
                    } else {
                        AnonymousClass12.this.val$popupDialogListener.onClicked();
                    }
                }
            });
        }
    }

    public class AnonymousClass13 implements SweetAlertDialog.OnSweetClickListener {
        final Listener val$popupDialogListener;

        public AnonymousClass13(final Listener val$popupDialogListener) {
            this.val$popupDialogListener = val$popupDialogListener;
        }

        @Override
        public void onClick(SweetAlertDialog sweetAlertDialog) {
            if (PopupDialog.access$100(PopupDialog.this)) {
                PopupDialog.access$200(PopupDialog.this, new Runnable() {
                    @Override
                    public void run() {
                        AnonymousClass13.this.val$popupDialogListener.onClicked();
                    }
                });
            } else {
                this.val$popupDialogListener.onClicked();
            }
        }
    }

    public class AnonymousClass14 implements java.lang.Runnable {
        final String val$value;

        public AnonymousClass14(final String val$value) {
            this.val$value = val$value;
        }

        @Override
        public void run() {
            PopupDialog.this.dialog.setTitleText(this.val$value);
        }
    }

    public class AnonymousClass15 implements java.lang.Runnable {
        final String val$value;

        public AnonymousClass15(final String val$value) {
            this.val$value = val$value;
        }

        @Override
        public void run() {
            PopupDialog.this.dialog.setContentText(this.val$value);
        }
    }

    public class AnonymousClass16 implements java.lang.Runnable {
        final int val$type;

        public AnonymousClass16(final int val$type) {
            this.val$type = val$type;
        }

        @Override
        public void run() {
            switch (this.val$type) {
                case 48:
                    PopupDialog.this.dialog.changeAlertType(2);
                    return;
                case 49:
                    PopupDialog.this.dialog.changeAlertType(1);
                    return;
                case 50:
                    PopupDialog.this.dialog.changeAlertType(3);
                    return;
                case 51:
                    PopupDialog.this.dialog.changeAlertType(5);
                    return;
                default:
                    return;
            }
        }
    }

    public class AnonymousClass17 implements java.lang.Runnable {
        public AnonymousClass17() {
        }

        @Override
        public void run() {
            PopupDialog.this.dialog.show();
        }
    }

    public class AnonymousClass18 implements java.lang.Runnable {
        public AnonymousClass18() {
        }

        @Override
        public void run() {
            PopupDialog.this.dialog.dismissWithAnimation();
        }
    }

    public class AnonymousClass2 implements java.lang.Runnable {
        final PopupDialogListener val$popupDialogListener;
        final String val$text;

        public AnonymousClass2(final String val$text, final PopupDialogListener val$popupDialogListener) {
            this.val$text = val$text;
            this.val$popupDialogListener = val$popupDialogListener;
        }

        @Override
        public void run() {
            PopupDialog.this.dialog.setConfirmText(this.val$text);
            PopupDialog.this.dialog.setConfirmClickListener(new SweetAlertDialog.OnSweetClickListener() {
                @Override
                public void onClick(SweetAlertDialog sweetAlertDialog) {
                    if (PopupDialog.access$100(PopupDialog.this)) {
                        PopupDialog.access$200(PopupDialog.this, new Runnable() {
                            @Override
                            public void run() {
                                AnonymousClass2.this.val$popupDialogListener.onClicked();
                            }
                        });
                    } else {
                        AnonymousClass2.this.val$popupDialogListener.onClicked();
                    }
                }
            });
        }
    }

    public class AnonymousClass3 implements SweetAlertDialog.OnSweetClickListener {
        final PopupDialogListener val$popupDialogListener;

        public AnonymousClass3(final PopupDialogListener val$popupDialogListener) {
            this.val$popupDialogListener = val$popupDialogListener;
        }

        @Override
        public void onClick(SweetAlertDialog sweetAlertDialog) {
            if (PopupDialog.access$100(PopupDialog.this)) {
                PopupDialog.access$200(PopupDialog.this, new Runnable() {
                    @Override
                    public void run() {
                        AnonymousClass3.this.val$popupDialogListener.onClicked();
                    }
                });
            } else {
                this.val$popupDialogListener.onClicked();
            }
        }
    }

    public class AnonymousClass4 implements java.lang.Runnable {
        final PopupDialogListener val$popupDialogListener;
        final String val$text;

        public AnonymousClass4(final String val$text, final PopupDialogListener val$popupDialogListener) {
            this.val$text = val$text;
            this.val$popupDialogListener = val$popupDialogListener;
        }

        @Override
        public void run() {
            PopupDialog.this.dialog.setCancelText(this.val$text);
            PopupDialog.this.dialog.setCancelClickListener(new SweetAlertDialog.OnSweetClickListener() {
                @Override
                public void onClick(SweetAlertDialog sweetAlertDialog) {
                    if (PopupDialog.access$100(PopupDialog.this)) {
                        PopupDialog.access$200(PopupDialog.this, new Runnable() {
                            @Override
                            public void run() {
                                AnonymousClass4.this.val$popupDialogListener.onClicked();
                            }
                        });
                    } else {
                        AnonymousClass4.this.val$popupDialogListener.onClicked();
                    }
                }
            });
        }
    }

    public class AnonymousClass5 implements SweetAlertDialog.OnSweetClickListener {
        final PopupDialogListener val$popupDialogListener;

        public AnonymousClass5(final PopupDialogListener val$popupDialogListener) {
            this.val$popupDialogListener = val$popupDialogListener;
        }

        @Override
        public void onClick(SweetAlertDialog sweetAlertDialog) {
            if (PopupDialog.access$100(PopupDialog.this)) {
                PopupDialog.access$200(PopupDialog.this, new Runnable() {
                    @Override
                    public void run() {
                        AnonymousClass5.this.val$popupDialogListener.onClicked();
                    }
                });
            } else {
                this.val$popupDialogListener.onClicked();
            }
        }
    }

    public class AnonymousClass6 implements java.lang.Runnable {
        final PopupDialogListener val$popupDialogListener;
        final String val$text;

        public AnonymousClass6(final String val$text, final PopupDialogListener val$popupDialogListener) {
            this.val$text = val$text;
            this.val$popupDialogListener = val$popupDialogListener;
        }

        @Override
        public void run() {
            PopupDialog.this.dialog.setNeutralText(this.val$text);
            PopupDialog.this.dialog.setNeutralClickListener(new SweetAlertDialog.OnSweetClickListener() {
                @Override
                public void onClick(SweetAlertDialog sweetAlertDialog) {
                    if (PopupDialog.access$100(PopupDialog.this)) {
                        PopupDialog.access$200(PopupDialog.this, new Runnable() {
                            @Override
                            public void run() {
                                AnonymousClass6.this.val$popupDialogListener.onClicked();
                            }
                        });
                    } else {
                        AnonymousClass6.this.val$popupDialogListener.onClicked();
                    }
                }
            });
        }
    }

    public class AnonymousClass7 implements SweetAlertDialog.OnSweetClickListener {
        final PopupDialogListener val$popupDialogListener;

        public AnonymousClass7(final PopupDialogListener val$popupDialogListener) {
            this.val$popupDialogListener = val$popupDialogListener;
        }

        @Override
        public void onClick(SweetAlertDialog sweetAlertDialog) {
            if (PopupDialog.access$100(PopupDialog.this)) {
                PopupDialog.access$200(PopupDialog.this, new Runnable() {
                    @Override
                    public void run() {
                        AnonymousClass7.this.val$popupDialogListener.onClicked();
                    }
                });
            } else {
                this.val$popupDialogListener.onClicked();
            }
        }
    }

    public class AnonymousClass8 implements java.lang.Runnable {
        final Listener val$popupDialogListener;
        final String val$text;

        public AnonymousClass8(final String val$text, final Listener val$popupDialogListener) {
            this.val$text = val$text;
            this.val$popupDialogListener = val$popupDialogListener;
        }

        @Override
        public void run() {
            PopupDialog.this.dialog.setConfirmText(this.val$text);
            PopupDialog.this.dialog.setConfirmClickListener(new SweetAlertDialog.OnSweetClickListener() {
                @Override
                public void onClick(SweetAlertDialog sweetAlertDialog) {
                    if (PopupDialog.access$100(PopupDialog.this)) {
                        PopupDialog.access$200(PopupDialog.this, new Runnable() {
                            @Override
                            public void run() {
                                AnonymousClass8.this.val$popupDialogListener.onClicked();
                            }
                        });
                    } else {
                        AnonymousClass8.this.val$popupDialogListener.onClicked();
                    }
                }
            });
        }
    }

    public class AnonymousClass9 implements SweetAlertDialog.OnSweetClickListener {
        final Listener val$popupDialogListener;

        public AnonymousClass9(final Listener val$popupDialogListener) {
            this.val$popupDialogListener = val$popupDialogListener;
        }

        @Override
        public void onClick(SweetAlertDialog sweetAlertDialog) {
            if (PopupDialog.access$100(PopupDialog.this)) {
                PopupDialog.access$200(PopupDialog.this, new Runnable() {
                    @Override
                    public void run() {
                        AnonymousClass9.this.val$popupDialogListener.onClicked();
                    }
                });
            } else {
                this.val$popupDialogListener.onClicked();
            }
        }
    }

    public PopupDialog(int i10) {
    }

    @UnimplementedDoc
    public PopupDialog(String str, String str2) {
    }

    public PopupDialog(int i10, String str, String str2) {
    }

    public void setConfirmButton(String str, PopupDialogListener popupDialogListener) {
    }

    public void setCancelButton(String str, PopupDialogListener popupDialogListener) {
    }

    public void setMidButton(String str, PopupDialogListener popupDialogListener) {
    }

    public void setConfirmButton(String str, Listener listener) {
    }

    public void setCancelButton(String str, Listener listener) {
    }

    public void setMidButton(String str, Listener listener) {
    }

    @DeprecatedInfo(info = {"Incorrect grammar or spelling"})
    @Deprecated
    public String getTittle() {
        return getTitle();
    }

    public String getTitle() {
        return "";
    }

    @DeprecatedInfo(info = {"Incorrect name, use setTitle()"})
    @Deprecated
    public void setName(String str) {
        setTitle(str);
    }

    public void setTitle(String str) {
    }

    public String getMessage() {
        return "";
    }

    public void setMessage(String str) {
    }

    public void changeType(int i10) {
    }

    public void show() {
    }

    public void dismiss() {
    }
}
