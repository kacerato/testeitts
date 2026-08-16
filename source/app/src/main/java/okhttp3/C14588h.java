package okhttp3;

import java.nio.charset.Charset;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import javax.annotation.Nullable;

public final class C14588h {

    public final String f99243a;

    public final Map<String, String> f99244b;

    public C14588h(String str, Map<String, String> map) {
        if (str == null) {
            throw new NullPointerException("scheme == null");
        }
        if (map != null) {
            this.f99243a = str;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                linkedHashMap.put(entry.getKey() == null ? null : entry.getKey().toLowerCase(Locale.US), entry.getValue());
            }
            this.f99244b = Collections.unmodifiableMap(linkedHashMap);
            return;
        }
        throw new NullPointerException("authParams == null");
    }

    public Map<String, String> a() {
        return this.f99244b;
    }

    public Charset b() {
        String str = this.f99244b.get("charset");
        if (str != null) {
            try {
                return Charset.forName(str);
            } catch (Exception unused) {
            }
        }
        return Gg.c.f7808k;
    }

    public String c() {
        return this.f99244b.get("realm");
    }

    public String d() {
        return this.f99243a;
    }

    public C14588h e(Charset charset) {
        if (charset == null) {
            throw new NullPointerException("charset == null");
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(this.f99244b);
        linkedHashMap.put("charset", charset.name());
        return new C14588h(this.f99243a, linkedHashMap);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof C14588h) {
            C14588h c14588h = (C14588h) obj;
            if (c14588h.f99243a.equals(this.f99243a) && c14588h.f99244b.equals(this.f99244b)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((899 + this.f99243a.hashCode()) * 31) + this.f99244b.hashCode();
    }

    public String toString() {
        return this.f99243a + " authParams=" + ((Object) this.f99244b);
    }

    public C14588h(String str, String str2) {
        if (str == null) {
            throw new NullPointerException("scheme == null");
        }
        if (str2 != null) {
            this.f99243a = str;
            this.f99244b = Collections.singletonMap("realm", str2);
            return;
        }
        throw new NullPointerException("realm == null");
    }
}
