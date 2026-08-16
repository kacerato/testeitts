package ue;

import Nm.c;
import Um.v;
import Vm.d;
import ag.a0;
import android.content.Context;
import android.text.Spanned;
import android.widget.TextView;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import qe.AbstractC15072a;
import qe.C15097z;
import qe.InterfaceC15084m;
import ue.C15603e;
import ue.C15606h;

public class C15602d extends AbstractC15072a {

    public final C15606h f120485a;

    public final b f120486b;

    public static class a {

        public static final int[] f120487a;

        static {
            int[] iArr = new int[c.a.values().length];
            f120487a = iArr;
            try {
                iArr[c.a.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f120487a[c.a.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static class b {

        public final C15606h f120488a;

        public List<C15603e.C2048e> f120489b;

        public boolean f120490c;

        public int f120491d;

        public class a implements InterfaceC15084m.c<Nm.c> {
            public a() {
            }

            @Override
            public void a(@NonNull InterfaceC15084m interfaceC15084m, @NonNull Nm.c cVar) {
                int length = interfaceC15084m.length();
                interfaceC15084m.i(cVar);
                if (b.this.f120489b == null) {
                    b.this.f120489b = new ArrayList(2);
                }
                b.this.f120489b.add(new C15603e.C2048e(b.i(cVar.p()), interfaceC15084m.w().k(length)));
                b.this.f120490c = cVar.q();
            }
        }

        public class C2046b implements InterfaceC15084m.c<Nm.d> {
            public C2046b() {
            }

            @Override
            public void a(@NonNull InterfaceC15084m interfaceC15084m, @NonNull Nm.d dVar) {
                b.this.j(interfaceC15084m, dVar);
            }
        }

        public class c implements InterfaceC15084m.c<Nm.e> {
            public c() {
            }

            @Override
            public void a(@NonNull InterfaceC15084m interfaceC15084m, @NonNull Nm.e eVar) {
                b.this.j(interfaceC15084m, eVar);
            }
        }

        public class C2047d implements InterfaceC15084m.c<Nm.b> {
            public C2047d() {
            }

            @Override
            public void a(@NonNull InterfaceC15084m interfaceC15084m, @NonNull Nm.b bVar) {
                interfaceC15084m.i(bVar);
                b.this.f120491d = 0;
            }
        }

        public class e implements InterfaceC15084m.c<Nm.a> {
            public e() {
            }

            @Override
            public void a(@NonNull InterfaceC15084m interfaceC15084m, @NonNull Nm.a aVar) {
                interfaceC15084m.q(aVar);
                int length = interfaceC15084m.length();
                interfaceC15084m.i(aVar);
                interfaceC15084m.b(length, new C15605g());
                interfaceC15084m.C(aVar);
            }
        }

        public b(@NonNull C15606h c15606h) {
            this.f120488a = c15606h;
        }

        public static int i(c.a aVar) {
            if (aVar == null) {
                return 0;
            }
            int i10 = a.f120487a[aVar.ordinal()];
            int i11 = 1;
            if (i10 != 1) {
                i11 = 2;
                if (i10 != 2) {
                    return 0;
                }
            }
            return i11;
        }

        public void g() {
            this.f120489b = null;
            this.f120490c = false;
            this.f120491d = 0;
        }

        public void h(@NonNull InterfaceC15084m.b bVar) {
            bVar.b(Nm.a.class, new e()).b(Nm.b.class, new C2047d()).b(Nm.e.class, new c()).b(Nm.d.class, new C2046b()).b(Nm.c.class, new a());
        }

        public final void j(@NonNull InterfaceC15084m interfaceC15084m, @NonNull v vVar) {
            int length = interfaceC15084m.length();
            interfaceC15084m.i(vVar);
            if (this.f120489b != null) {
                C15097z w10 = interfaceC15084m.w();
                int length2 = w10.length();
                boolean z10 = length2 > 0 && '\n' != w10.charAt(length2 - 1);
                if (z10) {
                    interfaceC15084m.F();
                }
                w10.append(a0.f32065g);
                C15603e c15603e = new C15603e(this.f120488a, this.f120489b, this.f120490c, this.f120491d % 2 == 1);
                this.f120491d = this.f120490c ? 0 : this.f120491d + 1;
                if (z10) {
                    length++;
                }
                interfaceC15084m.b(length, c15603e);
                this.f120489b = null;
            }
        }
    }

    public interface c {
        void a(@NonNull C15606h.a aVar);
    }

    public C15602d(@NonNull C15606h c15606h) {
        this.f120485a = c15606h;
        this.f120486b = new b(c15606h);
    }

    @NonNull
    public static C15602d l(@NonNull Context context) {
        return new C15602d(C15606h.g(context));
    }

    @NonNull
    public static C15602d m(@NonNull c cVar) {
        C15606h.a aVar = new C15606h.a();
        cVar.a(aVar);
        return new C15602d(aVar.g());
    }

    @NonNull
    public static C15602d n(@NonNull C15606h c15606h) {
        return new C15602d(c15606h);
    }

    @Override
    public void b(@NonNull TextView textView) {
        AbstractC15604f.b(textView);
    }

    @Override
    public void c(@NonNull d.b bVar) {
        bVar.j(Collections.singleton(Nm.f.d()));
    }

    @Override
    public void d(@NonNull v vVar) {
        this.f120486b.g();
    }

    @Override
    public void j(@NonNull InterfaceC15084m.b bVar) {
        this.f120486b.h(bVar);
    }

    @Override
    public void k(@NonNull TextView textView, @NonNull Spanned spanned) {
        AbstractC15604f.c(textView);
    }

    @NonNull
    public C15606h o() {
        return this.f120485a;
    }
}
