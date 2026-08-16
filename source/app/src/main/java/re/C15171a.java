package re;

import Um.A;
import Um.AbstractC3153b;
import Um.B;
import Um.C3154c;
import Um.q;
import Um.r;
import Um.t;
import Um.u;
import Um.v;
import Um.w;
import Um.x;
import Um.y;
import Um.z;
import ag.a0;
import android.text.Spannable;
import android.text.Spanned;
import android.text.method.LinkMovementMethod;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import qe.AbstractC15072a;
import qe.C15078g;
import qe.InterfaceC15082k;
import qe.InterfaceC15084m;
import qe.InterfaceC15093v;
import qe.InterfaceC15096y;
import re.AbstractC15172b;
import se.C15280a;
import se.C15281b;
import se.C15282c;
import se.C15283d;
import se.C15284e;
import se.C15285f;
import se.C15286g;
import se.C15287h;
import se.C15288i;
import te.C15409k;
import te.C15412n;
import w2.C15883c;

public class C15171a extends AbstractC15072a {

    public final List<p> f108893a = new ArrayList(0);

    public boolean f108894b;

    public class C1995a implements InterfaceC15084m.c<B> {
        @Override
        public void a(@NonNull InterfaceC15084m interfaceC15084m, @NonNull B b10) {
            interfaceC15084m.q(b10);
            int length = interfaceC15084m.length();
            interfaceC15084m.w().append(a0.f32065g);
            interfaceC15084m.n(b10, length);
            interfaceC15084m.C(b10);
        }
    }

    public class b implements InterfaceC15084m.c<Um.m> {
        @Override
        public void a(@NonNull InterfaceC15084m interfaceC15084m, @NonNull Um.m mVar) {
            interfaceC15084m.q(mVar);
            int length = interfaceC15084m.length();
            interfaceC15084m.i(mVar);
            AbstractC15172b.f108899d.h(interfaceC15084m.h(), Integer.valueOf(mVar.q()));
            interfaceC15084m.n(mVar, length);
            interfaceC15084m.C(mVar);
        }
    }

    public class c implements InterfaceC15084m.c<y> {
        @Override
        public void a(@NonNull InterfaceC15084m interfaceC15084m, @NonNull y yVar) {
            interfaceC15084m.w().append(C15883c.f126249O);
        }
    }

    public class d implements InterfaceC15084m.c<Um.l> {
        @Override
        public void a(@NonNull InterfaceC15084m interfaceC15084m, @NonNull Um.l lVar) {
            interfaceC15084m.p();
        }
    }

    public class e implements InterfaceC15084m.c<x> {
        @Override
        public void a(@NonNull InterfaceC15084m interfaceC15084m, @NonNull x xVar) {
            boolean B10 = C15171a.B(xVar);
            if (!B10) {
                interfaceC15084m.q(xVar);
            }
            int length = interfaceC15084m.length();
            interfaceC15084m.i(xVar);
            AbstractC15172b.f108901f.h(interfaceC15084m.h(), Boolean.valueOf(B10));
            interfaceC15084m.n(xVar, length);
            if (B10) {
                return;
            }
            interfaceC15084m.C(xVar);
        }
    }

    public class f implements InterfaceC15084m.c<r> {
        @Override
        public void a(@NonNull InterfaceC15084m interfaceC15084m, @NonNull r rVar) {
            int length = interfaceC15084m.length();
            interfaceC15084m.i(rVar);
            AbstractC15172b.f108900e.h(interfaceC15084m.h(), rVar.p());
            interfaceC15084m.n(rVar, length);
        }
    }

    public class g implements InterfaceC15084m.c<A> {
        public g() {
        }

        @Override
        public void a(@NonNull InterfaceC15084m interfaceC15084m, @NonNull A a10) {
            String p10 = a10.p();
            interfaceC15084m.w().f(p10);
            if (C15171a.this.f108893a.isEmpty()) {
                return;
            }
            int length = interfaceC15084m.length() - p10.length();
            Iterator it = C15171a.this.f108893a.iterator();
            while (it.hasNext()) {
                ((p) it.next()).a(interfaceC15084m, p10, length);
            }
        }
    }

    public class h implements InterfaceC15084m.c<z> {
        @Override
        public void a(@NonNull InterfaceC15084m interfaceC15084m, @NonNull z zVar) {
            int length = interfaceC15084m.length();
            interfaceC15084m.i(zVar);
            interfaceC15084m.n(zVar, length);
        }
    }

    public class i implements InterfaceC15084m.c<Um.j> {
        @Override
        public void a(@NonNull InterfaceC15084m interfaceC15084m, @NonNull Um.j jVar) {
            int length = interfaceC15084m.length();
            interfaceC15084m.i(jVar);
            interfaceC15084m.n(jVar, length);
        }
    }

    public class j implements InterfaceC15084m.c<C3154c> {
        @Override
        public void a(@NonNull InterfaceC15084m interfaceC15084m, @NonNull C3154c c3154c) {
            interfaceC15084m.q(c3154c);
            int length = interfaceC15084m.length();
            interfaceC15084m.i(c3154c);
            interfaceC15084m.n(c3154c, length);
            interfaceC15084m.C(c3154c);
        }
    }

    public class k implements InterfaceC15084m.c<Um.e> {
        @Override
        public void a(@NonNull InterfaceC15084m interfaceC15084m, @NonNull Um.e eVar) {
            int length = interfaceC15084m.length();
            interfaceC15084m.w().append(a0.f32065g).f(eVar.p()).append(a0.f32065g);
            interfaceC15084m.n(eVar, length);
        }
    }

    public class l implements InterfaceC15084m.c<Um.k> {
        @Override
        public void a(@NonNull InterfaceC15084m interfaceC15084m, @NonNull Um.k kVar) {
            C15171a.L(interfaceC15084m, kVar.t(), kVar.u(), kVar);
        }
    }

    public class m implements InterfaceC15084m.c<q> {
        @Override
        public void a(@NonNull InterfaceC15084m interfaceC15084m, @NonNull q qVar) {
            C15171a.L(interfaceC15084m, null, qVar.q(), qVar);
        }
    }

    public class n implements InterfaceC15084m.c<Um.p> {
        @Override
        public void a(@NonNull InterfaceC15084m interfaceC15084m, @NonNull Um.p pVar) {
            InterfaceC15096y a10 = interfaceC15084m.o().f().a(Um.p.class);
            if (a10 == null) {
                interfaceC15084m.i(pVar);
                return;
            }
            int length = interfaceC15084m.length();
            interfaceC15084m.i(pVar);
            if (length == interfaceC15084m.length()) {
                interfaceC15084m.w().append('\ufffc');
            }
            C15078g o10 = interfaceC15084m.o();
            boolean z10 = pVar.h() instanceof r;
            String b10 = o10.c().b(pVar.p());
            InterfaceC15093v h10 = interfaceC15084m.h();
            ve.g.f121582a.h(h10, b10);
            ve.g.f121583b.h(h10, Boolean.valueOf(z10));
            ve.g.f121584c.h(h10, null);
            interfaceC15084m.b(length, a10.a(o10, h10));
        }
    }

    public class o implements InterfaceC15084m.c<u> {
        @Override
        public void a(@NonNull InterfaceC15084m interfaceC15084m, @NonNull u uVar) {
            int length = interfaceC15084m.length();
            interfaceC15084m.i(uVar);
            AbstractC3153b h10 = uVar.h();
            if (h10 instanceof w) {
                w wVar = (w) h10;
                int t10 = wVar.t();
                AbstractC15172b.f108896a.h(interfaceC15084m.h(), AbstractC15172b.a.ORDERED);
                AbstractC15172b.f108898c.h(interfaceC15084m.h(), Integer.valueOf(t10));
                wVar.v(wVar.t() + 1);
            } else {
                AbstractC15172b.f108896a.h(interfaceC15084m.h(), AbstractC15172b.a.BULLET);
                AbstractC15172b.f108897b.h(interfaceC15084m.h(), Integer.valueOf(C15171a.E(uVar)));
            }
            interfaceC15084m.n(uVar, length);
            if (interfaceC15084m.x(uVar)) {
                interfaceC15084m.p();
            }
        }
    }

    public interface p {
        void a(@NonNull InterfaceC15084m interfaceC15084m, @NonNull String str, int i10);
    }

    public static void A(@NonNull InterfaceC15084m.b bVar) {
        bVar.b(q.class, new m());
    }

    public static boolean B(@NonNull x xVar) {
        AbstractC3153b h10 = xVar.h();
        if (h10 == null) {
            return false;
        }
        v h11 = h10.h();
        if (h11 instanceof t) {
            return ((t) h11).q();
        }
        return false;
    }

    public static void C(@NonNull InterfaceC15084m.b bVar) {
        bVar.b(r.class, new f());
    }

    public static void D(@NonNull InterfaceC15084m.b bVar) {
        bVar.b(u.class, new o());
    }

    public static int E(@NonNull v vVar) {
        int i10 = 0;
        for (v h10 = vVar.h(); h10 != null; h10 = h10.h()) {
            if (h10 instanceof u) {
                i10++;
            }
        }
        return i10;
    }

    public static void F(@NonNull InterfaceC15084m.b bVar) {
        bVar.b(w.class, new re.d());
    }

    public static void G(@NonNull InterfaceC15084m.b bVar) {
        bVar.b(x.class, new e());
    }

    public static void H(@NonNull InterfaceC15084m.b bVar) {
        bVar.b(y.class, new c());
    }

    public static void I(@NonNull InterfaceC15084m.b bVar) {
        bVar.b(z.class, new h());
    }

    public static void K(@NonNull InterfaceC15084m.b bVar) {
        bVar.b(B.class, new C1995a());
    }

    @VisibleForTesting
    public static void L(@NonNull InterfaceC15084m interfaceC15084m, @Nullable String str, @NonNull String str2, @NonNull v vVar) {
        interfaceC15084m.q(vVar);
        int length = interfaceC15084m.length();
        interfaceC15084m.w().append(a0.f32065g).append('\n').append(interfaceC15084m.o().g().a(str, str2));
        interfaceC15084m.p();
        interfaceC15084m.w().append(a0.f32065g);
        AbstractC15172b.f108902g.h(interfaceC15084m.h(), str);
        interfaceC15084m.n(vVar, length);
        interfaceC15084m.C(vVar);
    }

    public static void p(@NonNull InterfaceC15084m.b bVar) {
        bVar.b(C3154c.class, new j());
    }

    public static void q(@NonNull InterfaceC15084m.b bVar) {
        bVar.b(Um.d.class, new re.d());
    }

    public static void r(@NonNull InterfaceC15084m.b bVar) {
        bVar.b(Um.e.class, new k());
    }

    @NonNull
    public static C15171a s() {
        return new C15171a();
    }

    public static void t(@NonNull InterfaceC15084m.b bVar) {
        bVar.b(Um.j.class, new i());
    }

    @NonNull
    public static Set<Class<? extends AbstractC3153b>> u() {
        return new HashSet(Arrays.asList(C3154c.class, Um.m.class, Um.k.class, Um.n.class, B.class, t.class, q.class));
    }

    public static void v(@NonNull InterfaceC15084m.b bVar) {
        bVar.b(Um.k.class, new l());
    }

    public static void w(@NonNull InterfaceC15084m.b bVar) {
        bVar.b(Um.l.class, new d());
    }

    public static void y(@NonNull InterfaceC15084m.b bVar) {
        bVar.b(Um.m.class, new b());
    }

    public static void z(InterfaceC15084m.b bVar) {
        bVar.b(Um.p.class, new n());
    }

    public final void J(@NonNull InterfaceC15084m.b bVar) {
        bVar.b(A.class, new g());
    }

    @Override
    public void b(@NonNull TextView textView) {
        if (this.f108894b || textView.getMovementMethod() != null) {
            return;
        }
        textView.setMovementMethod(LinkMovementMethod.getInstance());
    }

    @Override
    public void h(@NonNull InterfaceC15082k.a aVar) {
        C15281b c15281b = new C15281b();
        aVar.f(z.class, new C15287h()).f(Um.j.class, new C15283d()).f(C3154c.class, new C15280a()).f(Um.e.class, new C15282c()).f(Um.k.class, c15281b).f(q.class, c15281b).f(u.class, new C15286g()).f(Um.m.class, new C15284e()).f(r.class, new C15285f()).f(B.class, new C15288i());
    }

    @Override
    public void j(@NonNull InterfaceC15084m.b bVar) {
        J(bVar);
        I(bVar);
        t(bVar);
        p(bVar);
        r(bVar);
        v(bVar);
        A(bVar);
        z(bVar);
        q(bVar);
        F(bVar);
        D(bVar);
        K(bVar);
        y(bVar);
        H(bVar);
        w(bVar);
        G(bVar);
        C(bVar);
    }

    @Override
    public void k(@NonNull TextView textView, @NonNull Spanned spanned) {
        C15409k.a(textView, spanned);
        if (spanned instanceof Spannable) {
            C15412n.a((Spannable) spanned, textView);
        }
    }

    @NonNull
    public C15171a o(@NonNull p pVar) {
        this.f108893a.add(pVar);
        return this;
    }

    @NonNull
    public C15171a x(boolean z10) {
        this.f108894b = z10;
        return this;
    }
}
