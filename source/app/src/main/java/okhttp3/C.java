package okhttp3;

import com.tonyodev.fetch2core.FetchCoreUtils;
import java.net.URL;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Nullable;
import okhttp3.u;
import org.eclipse.jdt.internal.core.JavaElement;

public final class C {

    public final v f99102a;

    public final String f99103b;

    public final u f99104c;

    @Nullable
    public final D f99105d;

    public final Map<Class<?>, Object> f99106e;

    @Nullable
    public volatile C14584d f99107f;

    public C(a aVar) {
        this.f99102a = aVar.f99108a;
        this.f99103b = aVar.f99109b;
        this.f99104c = aVar.f99110c.h();
        this.f99105d = aVar.f99111d;
        this.f99106e = Gg.c.w(aVar.f99112e);
    }

    @Nullable
    public D a() {
        return this.f99105d;
    }

    public C14584d b() {
        C14584d c14584d = this.f99107f;
        if (c14584d != null) {
            return c14584d;
        }
        C14584d m10 = C14584d.m(this.f99104c);
        this.f99107f = m10;
        return m10;
    }

    @Nullable
    public String c(String str) {
        return this.f99104c.d(str);
    }

    public List<String> d(String str) {
        return this.f99104c.o(str);
    }

    public u e() {
        return this.f99104c;
    }

    public boolean f() {
        return this.f99102a.q();
    }

    public String g() {
        return this.f99103b;
    }

    public a h() {
        return new a(this);
    }

    @Nullable
    public Object i() {
        return j(Object.class);
    }

    @Nullable
    public <T> T j(Class<? extends T> cls) {
        return cls.cast(this.f99106e.get(cls));
    }

    public v k() {
        return this.f99102a;
    }

    public String toString() {
        return "Request{method=" + this.f99103b + ", url=" + ((Object) this.f99102a) + ", tags=" + ((Object) this.f99106e) + JavaElement.JEM_ANNOTATION;
    }

    public static class a {

        @Nullable
        public v f99108a;

        public String f99109b;

        public u.a f99110c;

        @Nullable
        public D f99111d;

        public Map<Class<?>, Object> f99112e;

        public a() {
            this.f99112e = Collections.emptyMap();
            this.f99109b = FetchCoreUtils.GET_REQUEST_METHOD;
            this.f99110c = new u.a();
        }

        public a a(String str, String str2) {
            this.f99110c.b(str, str2);
            return this;
        }

        public C b() {
            if (this.f99108a != null) {
                return new C(this);
            }
            throw new IllegalStateException("url == null");
        }

        public a c(C14584d c14584d) {
            String c14584d2 = c14584d.toString();
            return c14584d2.isEmpty() ? n("Cache-Control") : h("Cache-Control", c14584d2);
        }

        public a d() {
            return e(Gg.c.f7801d);
        }

        public a e(@Nullable D d10) {
            return j("DELETE", d10);
        }

        public a f() {
            return j(FetchCoreUtils.GET_REQUEST_METHOD, null);
        }

        public a g() {
            return j(FetchCoreUtils.HEAD_REQUEST_METHOD, null);
        }

        public a h(String str, String str2) {
            this.f99110c.k(str, str2);
            return this;
        }

        public a i(u uVar) {
            this.f99110c = uVar.i();
            return this;
        }

        public a j(String str, @Nullable D d10) {
            if (str == null) {
                throw new NullPointerException("method == null");
            }
            if (str.length() == 0) {
                throw new IllegalArgumentException("method.length() == 0");
            }
            if (d10 != null && !Lg.f.b(str)) {
                throw new IllegalArgumentException("method " + str + " must not have a request body.");
            }
            if (d10 != null || !Lg.f.e(str)) {
                this.f99109b = str;
                this.f99111d = d10;
                return this;
            }
            throw new IllegalArgumentException("method " + str + " must have a request body.");
        }

        public a k(D d10) {
            return j("PATCH", d10);
        }

        public a l(D d10) {
            return j("POST", d10);
        }

        public a m(D d10) {
            return j("PUT", d10);
        }

        public a n(String str) {
            this.f99110c.j(str);
            return this;
        }

        public <T> a o(Class<? super T> cls, @Nullable T t10) {
            if (cls == null) {
                throw new NullPointerException("type == null");
            }
            if (t10 == null) {
                this.f99112e.remove(cls);
            } else {
                if (this.f99112e.isEmpty()) {
                    this.f99112e = new LinkedHashMap();
                }
                this.f99112e.put(cls, cls.cast(t10));
            }
            return this;
        }

        public a p(@Nullable Object obj) {
            return o(Object.class, obj);
        }

        public a q(String str) {
            if (str == null) {
                throw new NullPointerException("url == null");
            }
            if (str.regionMatches(true, 0, "ws:", 0, 3)) {
                str = "http:" + str.substring(3);
            } else if (str.regionMatches(true, 0, "wss:", 0, 4)) {
                str = "https:" + str.substring(4);
            }
            return s(v.m(str));
        }

        public a r(URL url) {
            if (url != null) {
                return s(v.m(url.toString()));
            }
            throw new NullPointerException("url == null");
        }

        public a s(v vVar) {
            if (vVar == null) {
                throw new NullPointerException("url == null");
            }
            this.f99108a = vVar;
            return this;
        }

        public a(C c10) {
            Map<Class<?>, Object> linkedHashMap;
            this.f99112e = Collections.emptyMap();
            this.f99108a = c10.f99102a;
            this.f99109b = c10.f99103b;
            this.f99111d = c10.f99105d;
            if (c10.f99106e.isEmpty()) {
                linkedHashMap = Collections.emptyMap();
            } else {
                linkedHashMap = new LinkedHashMap<>(c10.f99106e);
            }
            this.f99112e = linkedHashMap;
            this.f99110c = c10.f99104c.i();
        }
    }
}
