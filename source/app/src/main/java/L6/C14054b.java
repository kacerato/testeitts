package l6;

import T5.b;
import com.itsmagic.engine.Activities.Editor.Panels.Marketplace.BackendAPI.v2.Package;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import j6.d;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import ob.b;
import org.openjdk.tools.doclint.DocLint;
import q7.C15045a;
import r4.C15147a;

public class C14054b extends d {

    public final U5.a f96169c;

    public String f96170d;

    public AtomicBoolean f96171e;

    public int f96172f;

    public final List<String> f96173g;

    public class a implements b.a {
        public a() {
        }

        @Override
        public boolean run() {
            if (C14054b.this.f96171e.get()) {
                return true;
            }
            C14054b.this.w();
            return false;
        }
    }

    public class RunnableC1868b implements Runnable {

        public final U5.a f96175b;

        public final C15045a f96176c;

        public class a implements Runnable {

            public final List f96178b;

            public a(final List val$page) {
                this.f96178b = val$page;
            }

            @Override
            public void run() {
                RunnableC1868b.this.f96176c.p1();
                synchronized (C14054b.this.f96173g) {
                    try {
                        if (!C14054b.this.f96173g.isEmpty()) {
                            String str = (String) C14054b.this.f96173g.get(C14054b.this.f96173g.size() - 1);
                            C14054b.this.f96173g.clear();
                            C14054b.this.f96169c.t(str);
                            C14054b.this.f96171e.set(false);
                            C14054b.this.b();
                            return;
                        }
                        SteppedArrayList steppedArrayList = new SteppedArrayList();
                        Iterator it = this.f96178b.iterator();
                        while (it.hasNext()) {
                            steppedArrayList.add(new j6.b((Package) it.next()));
                            C14054b.s(C14054b.this);
                        }
                        C14054b.this.i(steppedArrayList);
                        C14054b.this.f96171e.set(false);
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }

        public RunnableC1868b(final U5.a val$so, final C15045a val$loading) {
            this.f96175b = val$so;
            this.f96176c = val$loading;
        }

        @Override
        public void run() {
            N7.c.j0(new a(C14054b.B(T5.b.l0(this.f96175b.h(), C14054b.x(this.f96175b), C14054b.y(this.f96175b.g()), this.f96175b.j() ? b.k.NotTemplate : b.k.DonotMatter), C14054b.this.f96172f, this.f96175b.d())));
        }
    }

    public C14054b(String title) {
        this.f96169c = new U5.a();
        this.f96171e = new AtomicBoolean();
        this.f96173g = new SteppedArrayList();
        this.f96170d = title;
    }

    public static List<Package> B(List<Package> packages, int offset, int count) {
        if (packages == null || packages.isEmpty()) {
            return new SteppedArrayList();
        }
        int N10 = Nc.b.N(0, offset);
        int min = Math.min(packages.size(), count + N10);
        return N10 >= min ? new SteppedArrayList() : new SteppedArrayList(packages.subList(N10, min));
    }

    public static int s(C14054b c14054b) {
        int i10 = c14054b.f96172f;
        c14054b.f96172f = i10 + 1;
        return i10;
    }

    public static String x(U5.a searchOptions) {
        if (searchOptions == null || searchOptions.i() == null || searchOptions.i().length == 0) {
            return null;
        }
        return searchOptions.i()[0];
    }

    public static String y(String[] tags) {
        if (tags == null || tags.length == 0) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        for (String str : tags) {
            if (str != null && !str.trim().isEmpty()) {
                if (sb2.length() > 0) {
                    sb2.append(DocLint.SEPARATOR);
                }
                sb2.append(str.trim());
            }
        }
        return sb2.toString();
    }

    public void A(String searchtext) {
        if (!this.f96171e.get()) {
            this.f96169c.t(searchtext);
            w();
        } else {
            synchronized (this.f96173g) {
                this.f96173g.add(searchtext);
            }
        }
    }

    @Override
    public void b() {
        if (g()) {
            super.b();
            if (this.f96171e.compareAndSet(false, true)) {
                C15045a t12 = C15045a.t1(e(), C15147a.e.Left);
                U5.a c10 = this.f96169c.c();
                c10.b("itsmagic");
                c10.n(true);
                c10.o(this.f96172f);
                c10.m(12);
                new Thread(new RunnableC1868b(c10, t12)).start();
            }
        }
    }

    @Override
    public String f() {
        return this.f96170d;
    }

    @Override
    public void j() {
        super.j();
        this.f96172f = 0;
    }

    @Override
    public void k() {
        this.f96172f = 0;
        b();
    }

    public void w() {
        if (this.f96171e.get()) {
            K8.a.J(new ob.b(new a()));
        } else {
            j();
            b();
        }
    }

    public void z(String tags) {
        this.f96169c.s(tags);
    }

    public C14054b(String title, String searchText) {
        this.f96169c = new U5.a();
        this.f96171e = new AtomicBoolean();
        this.f96173g = new SteppedArrayList();
        this.f96170d = title;
        A(searchText);
    }

    public C14054b(String title, String searchText, String tags) {
        this.f96169c = new U5.a();
        this.f96171e = new AtomicBoolean();
        this.f96173g = new SteppedArrayList();
        this.f96170d = title;
        A(searchText);
        z(tags);
    }

    public C14054b(int icon, String title) {
        super(icon);
        this.f96169c = new U5.a();
        this.f96171e = new AtomicBoolean();
        this.f96173g = new SteppedArrayList();
        this.f96170d = title;
    }

    public C14054b(int icon, String title, String searchText) {
        super(icon);
        this.f96169c = new U5.a();
        this.f96171e = new AtomicBoolean();
        this.f96173g = new SteppedArrayList();
        this.f96170d = title;
        A(searchText);
    }

    public C14054b(int icon, String title, String searchText, String tags) {
        super(icon);
        this.f96169c = new U5.a();
        this.f96171e = new AtomicBoolean();
        this.f96173g = new SteppedArrayList();
        this.f96170d = title;
        A(searchText);
        z(tags);
    }
}
