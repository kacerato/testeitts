package ag;

import ag.C3636s;
import ag.r;
import java.util.Iterator;
import java.util.List;
import java.util.regex.MatchResult;
import java.util.regex.Matcher;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.AbstractC14963b;
import pf.AbstractC14967d;

public final class C3636s implements r {

    @NotNull
    public final Matcher f32162a;

    @NotNull
    public final CharSequence f32163b;

    @NotNull
    public final InterfaceC3634p f32164c;

    @Nullable
    public List<String> f32165d;

    public static final class a extends AbstractC14967d<String> {
        public a() {
        }

        @Override
        public int b() {
            return C3636s.this.e().groupCount() + 1;
        }

        @Override
        public final boolean contains(Object obj) {
            if (obj instanceof String) {
                return contains((String) obj);
            }
            return false;
        }

        public int d(String str) {
            return super.indexOf(str);
        }

        public int e(String str) {
            return super.lastIndexOf(str);
        }

        @Override
        public final int indexOf(Object obj) {
            if (obj instanceof String) {
                return d((String) obj);
            }
            return -1;
        }

        @Override
        public final int lastIndexOf(Object obj) {
            if (obj instanceof String) {
                return e((String) obj);
            }
            return -1;
        }

        public boolean contains(String str) {
            return super.contains((Object) str);
        }

        @Override
        public String get(int i10) {
            String group = C3636s.this.e().group(i10);
            return group == null ? "" : group;
        }
    }

    public C3636s(@NotNull Matcher matcher, @NotNull CharSequence input) {
        kotlin.jvm.internal.M.p(matcher, "matcher");
        kotlin.jvm.internal.M.p(input, "input");
        this.f32162a = matcher;
        this.f32163b = input;
        this.f32164c = new b();
    }

    @Override
    @NotNull
    public r.b a() {
        return r.a.a(this);
    }

    @Override
    @NotNull
    public InterfaceC3634p b() {
        return this.f32164c;
    }

    @Override
    @NotNull
    public List<String> c() {
        if (this.f32165d == null) {
            this.f32165d = new a();
        }
        List<String> list = this.f32165d;
        kotlin.jvm.internal.M.m(list);
        return list;
    }

    public final MatchResult e() {
        return this.f32162a;
    }

    @Override
    @NotNull
    public Vf.l getRange() {
        return C3640w.c(e());
    }

    @Override
    @NotNull
    public String getValue() {
        String group = e().group();
        kotlin.jvm.internal.M.o(group, "group(...)");
        return group;
    }

    @Override
    @Nullable
    public r next() {
        int end = e().end() + (e().end() == e().start() ? 1 : 0);
        if (end > this.f32163b.length()) {
            return null;
        }
        Matcher matcher = this.f32162a.pattern().matcher(this.f32163b);
        kotlin.jvm.internal.M.o(matcher, "matcher(...)");
        return C3640w.a(matcher, end, this.f32163b);
    }

    public static final class b extends AbstractC14963b<C3633o> implements InterfaceC3635q {
        public b() {
        }

        public static final C3633o f(b bVar, int i10) {
            return bVar.get(i10);
        }

        @Override
        public int b() {
            return C3636s.this.e().groupCount() + 1;
        }

        @Override
        public final boolean contains(Object obj) {
            if (obj == null ? true : obj instanceof C3633o) {
                return e((C3633o) obj);
            }
            return false;
        }

        public boolean e(C3633o c3633o) {
            return super.contains(c3633o);
        }

        @Override
        public C3633o get(int i10) {
            Vf.l d10 = C3640w.d(C3636s.this.e(), i10);
            if (d10.getStart().intValue() < 0) {
                return null;
            }
            String group = C3636s.this.e().group(i10);
            kotlin.jvm.internal.M.o(group, "group(...)");
            return new C3633o(group, d10);
        }

        @Override
        public boolean isEmpty() {
            return false;
        }

        @Override
        public Iterator<C3633o> iterator() {
            return Xf.K.N1(pf.S.E1(pf.H.K(this)), new Mf.l() {
                @Override
                public final Object invoke(Object obj) {
                    C3633o f10;
                    f10 = C3636s.b.f(C3636s.b.this, ((Integer) obj).intValue());
                    return f10;
                }
            }).iterator();
        }

        @Override
        public C3633o get(String name) {
            kotlin.jvm.internal.M.p(name, "name");
            return Ef.n.f5775a.c(C3636s.this.e(), name);
        }
    }
}
