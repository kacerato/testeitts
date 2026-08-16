package J;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public final class j implements h {

    public final Map<String, List<i>> f10106c;

    public volatile Map<String, String> f10107d;

    public static final class a {

        public static final String f10108d = "User-Agent";

        public static final String f10109e;

        public static final Map<String, List<i>> f10110f;

        public boolean f10111a = true;

        public Map<String, List<i>> f10112b = f10110f;

        public boolean f10113c = true;

        static {
            String g10 = g();
            f10109e = g10;
            HashMap hashMap = new HashMap(2);
            if (!TextUtils.isEmpty(g10)) {
                hashMap.put("User-Agent", Collections.singletonList(new b(g10)));
            }
            f10110f = Collections.unmodifiableMap(hashMap);
        }

        @VisibleForTesting
        public static String g() {
            String property = System.getProperty("http.agent");
            if (TextUtils.isEmpty(property)) {
                return property;
            }
            int length = property.length();
            StringBuilder sb2 = new StringBuilder(property.length());
            for (int i10 = 0; i10 < length; i10++) {
                char charAt = property.charAt(i10);
                if ((charAt > 31 || charAt == '\t') && charAt < '\u007f') {
                    sb2.append(charAt);
                } else {
                    sb2.append('?');
                }
            }
            return sb2.toString();
        }

        public a a(@NonNull String str, @NonNull i iVar) {
            if (this.f10113c && "User-Agent".equalsIgnoreCase(str)) {
                return h(str, iVar);
            }
            e();
            f(str).add(iVar);
            return this;
        }

        public a b(@NonNull String str, @NonNull String str2) {
            return a(str, new b(str2));
        }

        public j c() {
            this.f10111a = true;
            return new j(this.f10112b);
        }

        public final Map<String, List<i>> d() {
            HashMap hashMap = new HashMap(this.f10112b.size());
            for (Map.Entry<String, List<i>> entry : this.f10112b.entrySet()) {
                hashMap.put(entry.getKey(), new ArrayList(entry.getValue()));
            }
            return hashMap;
        }

        public final void e() {
            if (this.f10111a) {
                this.f10111a = false;
                this.f10112b = d();
            }
        }

        public final List<i> f(String str) {
            List<i> list = this.f10112b.get(str);
            if (list != null) {
                return list;
            }
            ArrayList arrayList = new ArrayList();
            this.f10112b.put(str, arrayList);
            return arrayList;
        }

        public a h(@NonNull String str, @Nullable i iVar) {
            e();
            if (iVar == null) {
                this.f10112b.remove(str);
            } else {
                List<i> f10 = f(str);
                f10.clear();
                f10.add(iVar);
            }
            if (this.f10113c && "User-Agent".equalsIgnoreCase(str)) {
                this.f10113c = false;
            }
            return this;
        }

        public a i(@NonNull String str, @Nullable String str2) {
            return h(str, str2 == null ? null : new b(str2));
        }
    }

    public static final class b implements i {

        @NonNull
        public final String f10114a;

        public b(@NonNull String str) {
            this.f10114a = str;
        }

        @Override
        public String a() {
            return this.f10114a;
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                return this.f10114a.equals(((b) obj).f10114a);
            }
            return false;
        }

        public int hashCode() {
            return this.f10114a.hashCode();
        }

        public String toString() {
            return "StringHeaderFactory{value='" + this.f10114a + JavaElement.JEM_MODULAR_CLASSFILE + JavaElement.JEM_ANNOTATION;
        }
    }

    public j(Map<String, List<i>> map) {
        this.f10106c = Collections.unmodifiableMap(map);
    }

    @NonNull
    public final String a(@NonNull List<i> list) {
        StringBuilder sb2 = new StringBuilder();
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            String a10 = list.get(i10).a();
            if (!TextUtils.isEmpty(a10)) {
                sb2.append(a10);
                if (i10 != list.size() - 1) {
                    sb2.append(IIndexConstants.PARAMETER_SEPARATOR);
                }
            }
        }
        return sb2.toString();
    }

    public final Map<String, String> b() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, List<i>> entry : this.f10106c.entrySet()) {
            String a10 = a(entry.getValue());
            if (!TextUtils.isEmpty(a10)) {
                hashMap.put(entry.getKey(), a10);
            }
        }
        return hashMap;
    }

    public boolean equals(Object obj) {
        if (obj instanceof j) {
            return this.f10106c.equals(((j) obj).f10106c);
        }
        return false;
    }

    @Override
    public Map<String, String> getHeaders() {
        if (this.f10107d == null) {
            synchronized (this) {
                try {
                    if (this.f10107d == null) {
                        this.f10107d = Collections.unmodifiableMap(b());
                    }
                } finally {
                }
            }
        }
        return this.f10107d;
    }

    public int hashCode() {
        return this.f10106c.hashCode();
    }

    public String toString() {
        return "LazyHeaders{headers=" + ((Object) this.f10106c) + JavaElement.JEM_ANNOTATION;
    }
}
