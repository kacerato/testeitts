package P3;

import D5.n;
import Z6.g;
import Z6.i;
import android.content.Context;
import android.view.View;
import cn.pedant.SweetAlert.SweetAlertDialog;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import id.C13696a;
import java.io.File;
import java.util.List;
import java.util.Locale;
import org.eclipse.jdt.internal.core.JavaElement;

public class a extends com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a {

    public class RunnableC0498a implements Runnable {

        public final String[] f20653b;

        public final File f20654c;

        public RunnableC0498a(final String[] val$formatedSize, final File val$file) {
            this.f20653b = val$formatedSize;
            this.f20654c = val$file;
        }

        @Override
        public void run() {
            this.f20653b[0] = a.this.J(this.f20654c);
        }
    }

    public class b implements n {

        public final String[] f20656a;

        public b(final String[] val$formatedSize) {
            this.f20656a = val$formatedSize;
        }

        @Override
        public String getText() {
            return "Total cache size: " + this.f20656a[0];
        }
    }

    public class c implements D5.a {

        public final Context f20658a;

        public c(final Context val$context) {
            this.f20658a = val$context;
        }

        @Override
        public void a(View view, int adapterPosition) {
            a.this.K(this.f20658a);
        }
    }

    public class d implements SweetAlertDialog.OnSweetClickListener {
        public d() {
        }

        @Override
        public void onClick(SweetAlertDialog sweetAlertDialog) {
            sweetAlertDialog.dismissWithAnimation();
            a.this.H();
        }
    }

    public class e implements SweetAlertDialog.OnSweetClickListener {
        public e() {
        }

        @Override
        public void onClick(SweetAlertDialog sweetAlertDialog) {
            sweetAlertDialog.dismissWithAnimation();
        }
    }

    public class f implements g.c {

        public class RunnableC0499a implements Runnable {

            public final g f20663b;

            public class RunnableC0500a implements Runnable {

                public final boolean f20665b;

                public RunnableC0500a(final boolean val$cleared) {
                    this.f20665b = val$cleared;
                }

                @Override
                public void run() {
                    RunnableC0499a.this.f20663b.q1();
                    if (this.f20665b) {
                        System.exit(0);
                    } else {
                        a.this.A();
                        i.y1("Cache", "Failed to clear the cache folder.");
                    }
                }
            }

            public RunnableC0499a(final g val$popup) {
                this.f20663b = val$popup;
            }

            @Override
            public void run() {
                N7.c.j0(new RunnableC0500a(a.this.I()));
            }
        }

        public f() {
        }

        @Override
        public void a(g popup, FloatingPanelArea area) {
            new Thread(new RunnableC0499a(popup), "ClearCacheSettings").start();
        }
    }

    public a() {
        super("Cache");
    }

    public final void H() {
        g.s1("Clearing cache...", new f());
    }

    public final boolean I() {
        File file = new File(W7.b.f27306f.f2458a.f());
        String replace = file.getAbsolutePath().replace(JavaElement.JEM_ESCAPE, '/');
        if (replace.trim().isEmpty() || !replace.endsWith("/ITsMagic/cache")) {
            return false;
        }
        boolean z10 = true;
        if (!file.exists()) {
            return file.mkdirs() || file.exists();
        }
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (!C13696a.g(file2)) {
                    z10 = false;
                }
            }
        }
        if (file.exists() || file.mkdirs()) {
            return z10;
        }
        return false;
    }

    public final String J(File file) {
        float j10 = ((float) C13696a.j(file)) / 1048576.0f;
        return j10 >= 1024.0f ? String.format(Locale.US, "%.2f GB", Float.valueOf(j10 / 1024.0f)) : String.format(Locale.US, "%.2f MB", Float.valueOf(j10));
    }

    public final void K(Context context) {
        if (context == null) {
            i.y1("Cache", "Failed to open the clear cache dialog.");
            return;
        }
        SweetAlertDialog sweetAlertDialog = new SweetAlertDialog(context, 3);
        sweetAlertDialog.setTitleText("Clear cache");
        sweetAlertDialog.setContentText("Do you want to remove all cached files from the editor? The app will be closed right after the cache is cleared.");
        sweetAlertDialog.setConfirmText("Clear");
        sweetAlertDialog.setCancelText("Cancel");
        sweetAlertDialog.setConfirmClickListener(new d());
        sweetAlertDialog.setCancelClickListener(new e());
        sweetAlertDialog.show();
    }

    @Override
    public List<C5.b> y(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        String[] strArr = {"..."};
        O9.b.d(new RunnableC0498a(strArr, new File(W7.b.f27306f.f2458a.f())));
        steppedArrayList.add(new C5.b("Total cache size: " + strArr[0], 12, new b(strArr)));
        steppedArrayList.add(new C5.b(new c(context), "Clear cache"));
        return steppedArrayList;
    }
}
