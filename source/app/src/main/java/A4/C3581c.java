package a4;

import a4.C3580b;
import android.app.Activity;
import android.widget.Toast;
import b8.g;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;
import rc.C15169a;

public class C3581c {

    public static final List<C3580b> f31839a = new SteppedArrayList();

    public static final List<C3580b> f31840b = new SteppedArrayList();

    public class a implements x8.b {
        @Override
        public void a() {
            C3581c.d();
        }

        @Override
        public void b() {
        }
    }

    public class b implements InterfaceC3579a {

        public class a implements g {
            public a() {
            }

            @Override
            public void a(Activity activity) {
                Toast.makeText(activity, "Project saved!", 0).show();
            }

            @Override
            public void b(Activity activity) {
            }
        }

        @Override
        public void run() {
            W7.b.f27308h.f(N7.c.o(), new a());
        }
    }

    public class C0840c implements InterfaceC3579a {

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                Panel3DView.x1();
            }
        }

        @Override
        public void run() {
            N7.c.j0(new a());
        }
    }

    public static class d {

        public static final int[] f31843a;

        static {
            int[] iArr = new int[C3580b.a.values().length];
            f31843a = iArr;
            try {
                iArr[C3580b.a.DOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f31843a[C3580b.a.PRESSED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    static {
        com.itsmagic.engine.Core.Components.ProjectController.a.h(new a());
    }

    public static void b(C3580b shortcut) {
        shortcut.getClass();
        List<C3580b> list = f31839a;
        synchronized (list) {
            try {
                if (!list.contains(shortcut)) {
                    list.add(shortcut);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void c(C3580b s10) {
        boolean z10;
        int i10;
        if (s10.d().length == 0) {
            z10 = false;
        } else {
            z10 = true;
            for (0; i10 < s10.d().length; i10 + 1) {
                String str = s10.d()[i10];
                int i11 = d.f31843a[s10.f().ordinal()];
                if (i11 == 1) {
                    i10 = C15169a.f108811t.k(str) ? i10 + 1 : 0;
                    z10 = false;
                } else {
                    if (i11 != 2) {
                        throw new RuntimeException(((Object) s10.f()) + " invalid");
                    }
                    if (C15169a.f108811t.l(str)) {
                    }
                    z10 = false;
                }
            }
        }
        if (z10) {
            if (s10.c() == null) {
                s10.e().run();
                return;
            }
            if (C15169a.f108812u.q()) {
                if (s10.c().o0()) {
                    s10.e().run();
                }
            } else if (C15169a.n(0).q() && s10.c().s0(C15169a.n(0))) {
                s10.e().run();
            }
        }
    }

    public static void d() {
        List<C3580b> list = f31840b;
        synchronized (list) {
            list.clear();
            list.add(new C3580b(C3580b.a(EditorSettings.a().shortcut_saveProject)).j(new b()));
            list.add(new C3580b(C3580b.a(EditorSettings.a().shortcut_focusCamera)).j(new C0840c()));
        }
    }

    public static void e(C3580b shortcut) {
        shortcut.getClass();
        List<C3580b> list = f31839a;
        synchronized (list) {
            list.remove(shortcut);
        }
    }

    public static void f() {
        synchronized (f31839a) {
            synchronized (f31840b) {
                int i10 = 0;
                int i11 = 0;
                while (true) {
                    try {
                        List<C3580b> list = f31839a;
                        if (i11 >= list.size()) {
                            break;
                        }
                        c(list.get(i11));
                        i11++;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                while (true) {
                    List<C3580b> list2 = f31840b;
                    if (i10 < list2.size()) {
                        c(list2.get(i10));
                        i10++;
                    }
                }
            }
        }
    }
}
