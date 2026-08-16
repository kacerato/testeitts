package w2;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import javax.annotation.CheckForNull;
import org.eclipse.jdt.internal.core.JavaElement;
import v2.InterfaceC15800a;

@InterfaceC15894k
@v2.b(emulated = true)
public final class M {

    public final AbstractC15885e f126177a;

    public final boolean f126178b;

    public final h f126179c;

    public final int f126180d;

    public class a implements h {

        public final AbstractC15885e f126181a;

        public class C2079a extends g {
            public C2079a(M m10, CharSequence charSequence) {
                super(m10, charSequence);
            }

            @Override
            public int f(int i10) {
                return i10 + 1;
            }

            @Override
            public int g(int i10) {
                return a.this.f126181a.o(this.f126194d, i10);
            }
        }

        public a(AbstractC15885e abstractC15885e) {
            this.f126181a = abstractC15885e;
        }

        @Override
        public g a(M m10, CharSequence charSequence) {
            return new C2079a(m10, charSequence);
        }
    }

    public class b implements h {

        public final String f126183a;

        public class a extends g {
            public a(M m10, CharSequence charSequence) {
                super(m10, charSequence);
            }

            @Override
            public int f(int i10) {
                return i10 + b.this.f126183a.length();
            }

            /* JADX WARN: Code restructure failed: missing block: B:9:0x0026, code lost:
            
                r6 = r6 + 1;
             */
            @Override
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public int g(int i10) {
                int length = b.this.f126183a.length();
                int length2 = this.f126194d.length() - length;
                while (i10 <= length2) {
                    for (int i11 = 0; i11 < length; i11++) {
                        if (this.f126194d.charAt(i11 + i10) != b.this.f126183a.charAt(i11)) {
                            break;
                        }
                    }
                    return i10;
                }
                return -1;
            }
        }

        public b(String str) {
            this.f126183a = str;
        }

        @Override
        public g a(M m10, CharSequence charSequence) {
            return new a(m10, charSequence);
        }
    }

    public class c implements h {

        public final AbstractC15891h f126185a;

        public class a extends g {

            public final AbstractC15890g f126186i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(c cVar, M m10, CharSequence charSequence, AbstractC15890g abstractC15890g) {
                super(m10, charSequence);
                this.f126186i = abstractC15890g;
            }

            @Override
            public int f(int i10) {
                return this.f126186i.a();
            }

            @Override
            public int g(int i10) {
                if (this.f126186i.c(i10)) {
                    return this.f126186i.f();
                }
                return -1;
            }
        }

        public c(AbstractC15891h abstractC15891h) {
            this.f126185a = abstractC15891h;
        }

        @Override
        public g a(M m10, CharSequence charSequence) {
            return new a(this, m10, charSequence, this.f126185a.d(charSequence));
        }
    }

    public class d implements h {

        public final int f126187a;

        public class a extends g {
            public a(M m10, CharSequence charSequence) {
                super(m10, charSequence);
            }

            @Override
            public int f(int i10) {
                return i10;
            }

            @Override
            public int g(int i10) {
                int i11 = i10 + d.this.f126187a;
                if (i11 < this.f126194d.length()) {
                    return i11;
                }
                return -1;
            }
        }

        public d(int i10) {
            this.f126187a = i10;
        }

        @Override
        public g a(M m10, CharSequence charSequence) {
            return new a(m10, charSequence);
        }
    }

    public class e implements Iterable<String> {

        public final CharSequence f126189b;

        public e(CharSequence charSequence) {
            this.f126189b = charSequence;
        }

        @Override
        public Iterator<String> iterator() {
            return M.this.p(this.f126189b);
        }

        public String toString() {
            y p10 = y.p(", ");
            StringBuilder sb2 = new StringBuilder();
            sb2.append('[');
            StringBuilder f10 = p10.f(sb2, this);
            f10.append(JavaElement.JEM_TYPE_PARAMETER);
            return f10.toString();
        }
    }

    @InterfaceC15800a
    public static final class f {

        public static final String f126191c = "Chunk [%s] is not a valid entry";

        public final M f126192a;

        public final M f126193b;

        public f(M m10, M m11, a aVar) {
            this(m10, m11);
        }

        public Map<String, String> a(CharSequence charSequence) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (String str : this.f126192a.n(charSequence)) {
                Iterator p10 = this.f126193b.p(str);
                H.u(p10.hasNext(), f126191c, str);
                String str2 = (String) p10.next();
                H.u(!linkedHashMap.containsKey(str2), "Duplicate key [%s] found.", str2);
                H.u(p10.hasNext(), f126191c, str);
                linkedHashMap.put(str2, (String) p10.next());
                H.u(!p10.hasNext(), f126191c, str);
            }
            return Collections.unmodifiableMap(linkedHashMap);
        }

        public f(M m10, M m11) {
            this.f126192a = m10;
            this.f126193b = (M) H.E(m11);
        }
    }

    public static abstract class g extends AbstractC15882b<String> {

        public final CharSequence f126194d;

        public final AbstractC15885e f126195e;

        public final boolean f126196f;

        public int f126197g = 0;

        public int f126198h;

        public g(M m10, CharSequence charSequence) {
            this.f126195e = m10.f126177a;
            this.f126196f = m10.f126178b;
            this.f126198h = m10.f126180d;
            this.f126194d = charSequence;
        }

        @Override
        @CheckForNull
        public String a() {
            int g10;
            int i10 = this.f126197g;
            while (true) {
                int i11 = this.f126197g;
                if (i11 == -1) {
                    return b();
                }
                g10 = g(i11);
                if (g10 == -1) {
                    g10 = this.f126194d.length();
                    this.f126197g = -1;
                } else {
                    this.f126197g = f(g10);
                }
                int i12 = this.f126197g;
                if (i12 == i10) {
                    int i13 = i12 + 1;
                    this.f126197g = i13;
                    if (i13 > this.f126194d.length()) {
                        this.f126197g = -1;
                    }
                } else {
                    while (i10 < g10 && this.f126195e.B(this.f126194d.charAt(i10))) {
                        i10++;
                    }
                    while (g10 > i10 && this.f126195e.B(this.f126194d.charAt(g10 - 1))) {
                        g10--;
                    }
                    if (!this.f126196f || i10 != g10) {
                        break;
                    }
                    i10 = this.f126197g;
                }
            }
            int i14 = this.f126198h;
            if (i14 == 1) {
                g10 = this.f126194d.length();
                this.f126197g = -1;
                while (g10 > i10 && this.f126195e.B(this.f126194d.charAt(g10 - 1))) {
                    g10--;
                }
            } else {
                this.f126198h = i14 - 1;
            }
            return this.f126194d.subSequence(i10, g10).toString();
        }

        public abstract int f(int i10);

        public abstract int g(int i10);
    }

    public interface h {
        Iterator<String> a(M m10, CharSequence charSequence);
    }

    public M(h hVar) {
        this(hVar, false, AbstractC15885e.G(), Integer.MAX_VALUE);
    }

    public static M e(int i10) {
        H.e(i10 > 0, "The length may not be less than 1");
        return new M(new d(i10));
    }

    public static M h(char c10) {
        return k(AbstractC15885e.q(c10));
    }

    public static M i(String str) {
        H.e(str.length() != 0, "The separator may not be the empty string.");
        return str.length() == 1 ? h(str.charAt(0)) : new M(new b(str));
    }

    @v2.c
    public static M j(Pattern pattern) {
        return l(new C15906x(pattern));
    }

    public static M k(AbstractC15885e abstractC15885e) {
        H.E(abstractC15885e);
        return new M(new a(abstractC15885e));
    }

    public static M l(AbstractC15891h abstractC15891h) {
        H.u(!abstractC15891h.d("").d(), "The pattern may not match the empty string: %s", abstractC15891h);
        return new M(new c(abstractC15891h));
    }

    @v2.c
    public static M m(String str) {
        return l(G.b(str));
    }

    public M f(int i10) {
        H.k(i10 > 0, "must be greater than zero: %s", i10);
        return new M(this.f126179c, this.f126178b, this.f126177a, i10);
    }

    public M g() {
        return new M(this.f126179c, true, this.f126177a, this.f126180d);
    }

    public Iterable<String> n(CharSequence charSequence) {
        H.E(charSequence);
        return new e(charSequence);
    }

    public List<String> o(CharSequence charSequence) {
        H.E(charSequence);
        Iterator<String> p10 = p(charSequence);
        ArrayList arrayList = new ArrayList();
        while (p10.hasNext()) {
            arrayList.add(p10.next());
        }
        return Collections.unmodifiableList(arrayList);
    }

    public final Iterator<String> p(CharSequence charSequence) {
        return this.f126179c.a(this, charSequence);
    }

    public M q() {
        return r(AbstractC15885e.X());
    }

    public M r(AbstractC15885e abstractC15885e) {
        H.E(abstractC15885e);
        return new M(this.f126179c, this.f126178b, abstractC15885e, this.f126180d);
    }

    @InterfaceC15800a
    public f s(char c10) {
        return u(h(c10));
    }

    @InterfaceC15800a
    public f t(String str) {
        return u(i(str));
    }

    @InterfaceC15800a
    public f u(M m10) {
        return new f(this, m10, null);
    }

    public M(h hVar, boolean z10, AbstractC15885e abstractC15885e, int i10) {
        this.f126179c = hVar;
        this.f126178b = z10;
        this.f126177a = abstractC15885e;
        this.f126180d = i10;
    }
}
