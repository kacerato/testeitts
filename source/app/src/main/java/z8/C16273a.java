package z8;

import N7.c;
import android.content.Context;
import cn.pedant.SweetAlert.SweetAlertDialog;
import com.itsmagic.engine2.R;
import java.io.File;

@Deprecated
public class C16273a {

    public class C2255a implements SweetAlertDialog.OnSweetClickListener {

        public final SweetAlertDialog f130760a;

        public C2255a(final SweetAlertDialog val$dialog) {
            this.f130760a = val$dialog;
        }

        @Override
        public void onClick(SweetAlertDialog sweetAlertDialog) {
            this.f130760a.dismissWithAnimation();
        }
    }

    public class b implements SweetAlertDialog.OnSweetClickListener {

        public final SweetAlertDialog f130761a;

        public final Context f130762b;

        public final File f130763c;

        public final z8.b f130764d;

        public class RunnableC2256a implements Runnable {

            public class RunnableC2257a implements Runnable {

                public final boolean f130766b;

                public class C2258a implements SweetAlertDialog.OnSweetClickListener {
                    public C2258a() {
                    }

                    @Override
                    public void onClick(SweetAlertDialog sweetAlertDialog) {
                        z8.b bVar = b.this.f130764d;
                        if (bVar != null) {
                            bVar.a();
                        }
                        b.this.f130761a.dismissWithAnimation();
                    }
                }

                public RunnableC2257a(final boolean val$deleted) {
                    this.f130766b = val$deleted;
                }

                @Override
                public void run() {
                    if (this.f130766b) {
                        z8.b bVar = b.this.f130764d;
                        if (bVar != null) {
                            bVar.b();
                        }
                        b.this.f130761a.dismissWithAnimation();
                        return;
                    }
                    b.this.f130761a.changeAlertType(1);
                    b bVar2 = b.this;
                    bVar2.f130761a.setTitle(bVar2.f130762b.getResources().getString(R.string.activity_editor_something_went_wrong));
                    b bVar3 = b.this;
                    bVar3.f130761a.setContentText(bVar3.f130762b.getResources().getString(R.string.activity_editor_askdelete_icantdeletthisfile));
                    b.this.f130761a.setCancelText("");
                    b bVar4 = b.this;
                    bVar4.f130761a.setContentText(bVar4.f130762b.getResources().getString(R.string.activity_editor_ok));
                    b.this.f130761a.setConfirmClickListener(new C2258a());
                }
            }

            public RunnableC2256a() {
            }

            @Override
            public void run() {
                b bVar = b.this;
                c.j0(new RunnableC2257a(C16273a.a(bVar.f130763c, bVar.f130764d)));
            }
        }

        public b(final SweetAlertDialog val$dialog, final Context val$context, final File val$file, final z8.b val$listener) {
            this.f130761a = val$dialog;
            this.f130762b = val$context;
            this.f130763c = val$file;
            this.f130764d = val$listener;
        }

        @Override
        public void onClick(SweetAlertDialog sweetAlertDialog) {
            this.f130761a.changeAlertType(5);
            this.f130761a.setTitle(this.f130762b.getResources().getString(R.string.activity_editor_askdelete_deleting));
            this.f130761a.setContentText("");
            this.f130761a.setCancelText("");
            this.f130761a.setCancelable(false);
            new Thread(new RunnableC2256a()).start();
        }
    }

    @Deprecated
    public static boolean a(File file, z8.b listener) {
        if (file.isDirectory()) {
            return e(file, listener);
        }
        if (listener != null) {
            listener.c();
        }
        return file.delete();
    }

    public static void b(Context context, String fullpath, z8.b listener) {
        File file = new File(fullpath);
        if (!file.exists() || context == null) {
            if (listener != null) {
                listener.a();
                return;
            }
            return;
        }
        SweetAlertDialog sweetAlertDialog = new SweetAlertDialog(context, 3);
        sweetAlertDialog.setTitleText(context.getResources().getString(R.string.activity_editor_askdelete_tittle_before) + " " + file.getName() + "" + context.getResources().getString(R.string.activity_editor_askdelete_tittle_after)).setContentText(context.getResources().getString(R.string.activity_editor_askdelete_message)).setConfirmText(context.getResources().getString(R.string.activity_editor_doit)).setConfirmClickListener(new b(sweetAlertDialog, context, file, listener)).setCancelText(context.getResources().getString(R.string.activity_editor_cancel)).setCancelClickListener(new C2255a(sweetAlertDialog)).show();
    }

    public static void c(String fullpath, z8.b listener) {
        File file = new File(fullpath);
        if (!file.exists()) {
            if (listener != null) {
                listener.a();
            }
        } else if (a(file, listener)) {
            if (listener != null) {
                listener.b();
            }
        } else if (listener != null) {
            listener.a();
        }
    }

    public static boolean d(File fileOrDirectory) {
        File[] listFiles;
        if (fileOrDirectory == null) {
            return false;
        }
        if (fileOrDirectory.isDirectory() && (listFiles = fileOrDirectory.listFiles()) != null) {
            for (File file : listFiles) {
                d(file);
            }
        }
        return fileOrDirectory.delete();
    }

    public static boolean e(File fileOrDirectory, z8.b listener) {
        File[] listFiles;
        if (fileOrDirectory == null) {
            return false;
        }
        if (fileOrDirectory.isDirectory() && (listFiles = fileOrDirectory.listFiles()) != null) {
            for (File file : listFiles) {
                e(file, listener);
            }
        }
        if (listener != null) {
            listener.c();
        }
        return fileOrDirectory.delete();
    }
}
