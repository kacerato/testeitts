package z4;

import Vc.a;
import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.io.File;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import o7.C14486a;
import q7.C15045a;
import r4.C15147a;
import w3.l;
import w3.o;
import z4.C16260a;

public class b extends EditorPanel {

    public static final String f130655c0 = "Backups";

    public RecyclerView f130656X;

    public C14486a f130657Y;

    public C16260a f130658Z;

    public int f130659a0;

    public int f130660b0;

    public class a implements View.OnTouchListener {
        public a() {
        }

        @Override
        public boolean onTouch(View v10, MotionEvent event) {
            return true;
        }
    }

    public class C2239b implements C16260a.e {
        public C2239b() {
        }

        @Override
        public void a(A4.c element) {
            b.this.f130658Z.o(element);
        }
    }

    public class c extends AbstractViewOnClickListenerC12733a {

        public class a implements o {

            public class C2240a implements C15045a.d {

                public final Intent f130665a;

                public class RunnableC2241a implements Runnable {

                    public final C15045a f130667b;

                    public RunnableC2241a(final C15045a val$loading) {
                        this.f130667b = val$loading;
                    }

                    @Override
                    public void run() {
                        Uri data;
                        try {
                            Intent intent = C2240a.this.f130665a;
                            if (intent != null && (data = intent.getData()) != null) {
                                N7.c.o().grantUriPermission("com.itsmagic.engine", data, 1);
                                a.C0738a c10 = Vc.a.c(N7.c.t(), data);
                                N7.c.v0(c10.f26813c);
                                if (c10.d()) {
                                    final b bVar = b.this;
                                    N7.c.j0(new Runnable() {
                                        @Override
                                        public final void run() {
                                            b.q1(b.this);
                                        }
                                    });
                                }
                            }
                        } finally {
                            this.f130667b.p1();
                        }
                    }
                }

                public C2240a(final Intent val$intent) {
                    this.f130665a = val$intent;
                }

                @Override
                public void a(C15045a loading) {
                    new Thread(new RunnableC2241a(loading)).start();
                }
            }

            public a() {
            }

            @Override
            public void a(int requestCode, int resultCode, Intent intent, Activity activity) {
                C15045a.u1(true, new C2240a(intent));
            }
        }

        public c() {
        }

        @Override
        public void click(View view) {
            l.d(new a());
        }
    }

    public class d implements Comparator<A4.b> {
        public d() {
        }

        @Override
        public int compare(A4.b file1, A4.b file2) {
            long lastModified = file1.a().lastModified() - file2.a().lastModified();
            if (lastModified > 0) {
                return 1;
            }
            return lastModified == 0 ? 0 : -1;
        }
    }

    public b() {
        super(null, f130655c0);
        this.f130660b0 = Nc.d.j(0, 3);
        super.e1(false);
    }

    public static void q1(b bVar) {
        bVar.r1();
    }

    public void r1() {
        this.f130658Z.p();
        t1();
    }

    public static void s1(View anchor, C15147a.e anchorSide) {
        C15147a.h(anchor, new b(), anchorSide, N7.c.g(T6.a.f24083g0), 0.8f);
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.backups_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new a());
        this.f130656X = (RecyclerView) inflate.findViewById(R.id.recyclerView);
        C16260a c16260a = new C16260a(M(), new C2239b());
        this.f130658Z = c16260a;
        this.f130656X.setAdapter(c16260a);
        this.f130657Y = new C14486a(M(), this.f130656X, this.f130658Z, T6.a.f24083g0);
        inflate.findViewById(R.id.importFromAndroid).setOnClickListener(new c());
        t1();
        return inflate;
    }

    @Override
    public EditorPanel k() {
        return super.k();
    }

    @Override
    public void n1() {
        super.n1();
        C14486a c14486a = this.f130657Y;
        if (c14486a != null) {
            c14486a.c();
        }
    }

    @Override
    public void o1() {
        super.o1();
        t1();
    }

    public final void t1() {
        int i10;
        if (this.f130658Z == null) {
            throw new RuntimeException("Not initialized yet!");
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        File file = new File(W7.b.f27306f.f2458a.e(M()));
        if (file.exists()) {
            File[] listFiles = file.listFiles();
            if (listFiles == null || listFiles.length <= 0) {
                return;
            }
            for (File file2 : listFiles) {
                while (true) {
                    if (i10 >= this.f130658Z.getItemCount()) {
                        steppedArrayList.add(new A4.b(file2.getName(), file2));
                        break;
                    }
                    A4.c l10 = this.f130658Z.l(i10);
                    i10 = ((l10 instanceof A4.b) && ((A4.b) l10).b().equals(file2.getName())) ? 0 : i10 + 1;
                }
            }
        }
        try {
            Collections.sort(steppedArrayList, new d());
            Collections.reverse(steppedArrayList);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        Iterator<T> it = steppedArrayList.iterator();
        while (it.hasNext()) {
            this.f130658Z.j((A4.b) it.next());
        }
    }
}
