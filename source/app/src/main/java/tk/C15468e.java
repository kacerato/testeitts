package tk;

import android.content.ClipDescription;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import org.bouncycastle.util.w;
import org.eclipse.jdt.internal.core.JavadocConstants;

public class C15468e implements org.bouncycastle.util.l<String> {

    public final Map<String, List> f117714b;

    public final List<String> f117715c;

    public final String f117716d;

    public String f117717e;

    public boolean f117718f;

    public String f117719g;

    public Map<String, String> f117720h;

    public static class a {

        public final String f117721a;

        public final String f117722b;

        public a(String str, String str2) {
            this.f117721a = str;
            this.f117722b = str2;
        }

        public a(a aVar) {
            this.f117721a = aVar.f117721a;
            this.f117722b = aVar.f117722b;
        }
    }

    public C15468e(InputStream inputStream, String str) throws IOException {
        this(m(inputStream), str);
    }

    public static List<String> m(InputStream inputStream) throws IOException {
        ArrayList arrayList = new ArrayList();
        C15469f c15469f = new C15469f(inputStream);
        while (true) {
            String a10 = c15469f.a();
            if (a10 == null || a10.length() == 0) {
                break;
            }
            arrayList.add(a10);
        }
        return arrayList;
    }

    public boolean a(String str) {
        return this.f117714b.containsKey(str);
    }

    public final Map<String, String> b(String str) {
        String[] split = str.split(";");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (int i10 = 0; i10 != split.length; i10++) {
            String str2 = split[i10];
            int indexOf = str2.indexOf(61);
            if (indexOf < 0) {
                throw new IllegalArgumentException("malformed Content-Type header");
            }
            linkedHashMap.put(str2.substring(0, indexOf).trim(), str2.substring(indexOf + 1).trim());
        }
        return Collections.unmodifiableMap(linkedHashMap);
    }

    public void c(OutputStream outputStream) throws IOException {
        Iterator<String> it = this.f117715c.iterator();
        while (it.hasNext()) {
            outputStream.write(w.n(it.next().toString()));
            outputStream.write(13);
            outputStream.write(10);
        }
    }

    public String d() {
        return this.f117717e;
    }

    public String g() {
        return this.f117716d;
    }

    public String h() {
        return this.f117719g;
    }

    public Map<String, String> i() {
        return this.f117720h;
    }

    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this) {
            isEmpty = this.f117714b.isEmpty();
        }
        return isEmpty;
    }

    @Override
    public Iterator<String> iterator() {
        return this.f117714b.o().iterator();
    }

    public Iterator<String> j() {
        return this.f117714b.o().iterator();
    }

    public String[] k(String str) {
        synchronized (this) {
            try {
                List list = this.f117714b.get(str);
                if (list == null) {
                    return null;
                }
                String[] strArr = new String[list.size()];
                for (int i10 = 0; i10 < list.size(); i10++) {
                    strArr[i10] = ((a) list.get(i10)).f117722b;
                }
                return strArr;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean l() {
        return this.f117718f;
    }

    public final void n(String str, String str2) {
        synchronized (this) {
            try {
                a aVar = new a(str, str2);
                List list = this.f117714b.get(str);
                if (list == null) {
                    list = new ArrayList();
                    this.f117714b.put(str, list);
                }
                list.add(aVar);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public C15468e(String str, String str2) {
        this.f117714b = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        ArrayList arrayList = new ArrayList();
        this.f117715c = arrayList;
        arrayList.add("Content-Type: " + str);
        n("Content-Type", str);
        String str3 = k("Content-Type") == null ? ClipDescription.MIMETYPE_TEXT_PLAIN : k("Content-Type")[0];
        int indexOf = str3.indexOf(59);
        if (indexOf < 0) {
            this.f117720h = Collections.EMPTY_MAP;
        } else {
            String substring = str3.substring(0, indexOf);
            this.f117720h = b(str3.substring(indexOf + 1).trim());
            str3 = substring;
        }
        this.f117716d = k("Content-Transfer-Encoding") != null ? k("Content-Transfer-Encoding")[0] : str2;
        if (str3.indexOf("multipart") < 0) {
            this.f117717e = null;
            this.f117718f = false;
            return;
        }
        this.f117718f = true;
        String str4 = this.f117720h.get("boundary");
        if (str4.startsWith(JavadocConstants.ANCHOR_PREFIX_END) && str4.endsWith(JavadocConstants.ANCHOR_PREFIX_END)) {
            str4 = str4.substring(1, str4.length() - 1);
        }
        this.f117717e = str4;
    }

    public C15468e(List<String> list, String str) {
        Map<String, String> b10;
        this.f117714b = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        this.f117715c = list;
        String str2 = "";
        for (String str3 : list) {
            if (str3.startsWith(" ") || str3.startsWith("\t")) {
                str2 = str2 + str3.trim();
            } else {
                if (str2.length() != 0) {
                    n(str2.substring(0, str2.indexOf(58)).trim(), str2.substring(str2.indexOf(58) + 1).trim());
                }
                str2 = str3;
            }
        }
        if (str2.trim().length() != 0) {
            n(str2.substring(0, str2.indexOf(58)).trim(), str2.substring(str2.indexOf(58) + 1).trim());
        }
        String str4 = k("Content-Type") == null ? ClipDescription.MIMETYPE_TEXT_PLAIN : k("Content-Type")[0];
        int indexOf = str4.indexOf(59);
        if (indexOf < 0) {
            this.f117719g = str4;
            b10 = Collections.EMPTY_MAP;
        } else {
            this.f117719g = str4.substring(0, indexOf);
            b10 = b(str4.substring(indexOf + 1).trim());
        }
        this.f117720h = b10;
        this.f117716d = k("Content-Transfer-Encoding") != null ? k("Content-Transfer-Encoding")[0] : str;
        if (this.f117719g.indexOf("multipart") < 0) {
            this.f117717e = null;
            this.f117718f = false;
        } else {
            this.f117718f = true;
            String str5 = this.f117720h.get("boundary");
            this.f117717e = str5.substring(1, str5.length() - 1);
        }
    }
}
