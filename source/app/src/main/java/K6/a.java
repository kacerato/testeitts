package K6;

import M6.b;
import com.google.protobuf.C12667d1;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.Editor.Panels.Scripting.Interfaces.SuperClasses.TextInterface;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import d8.r;
import i8.C13590a;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
import k8.C13950c;
import okhttp3.v;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class a {

    public static final String f10863h = "/*CURSOR*/";

    public final K6.b f10864a = new K6.b();

    public final d f10865b = new d();

    public final c f10866c = new c();

    public final L6.k f10867d = new L6.k();

    public final AtomicLong f10868e = new AtomicLong();

    public final AtomicLong f10869f = new AtomicLong();

    public volatile String f10870g = "";

    public class RunnableC0362a implements Runnable {

        public final String f10871b;

        public final String f10872c;

        public final int f10873d;

        public final int f10874e;

        public final List f10875f;

        public final TextInterface f10876g;

        public final String f10877h;

        public final long f10878i;

        public final boolean f10879j;

        public RunnableC0362a(final String val$fullScript, final String val$fullLineText, final int val$originalLineNumber, final int val$cursorPosition, final List val$loadedClassList, final TextInterface val$textInterface, final String val$className, final long val$requestId, final boolean val$isDeletingText) {
            this.f10871b = val$fullScript;
            this.f10872c = val$fullLineText;
            this.f10873d = val$originalLineNumber;
            this.f10874e = val$cursorPosition;
            this.f10875f = val$loadedClassList;
            this.f10876g = val$textInterface;
            this.f10877h = val$className;
            this.f10878i = val$requestId;
            this.f10879j = val$isDeletingText;
        }

        @Override
        public void run() {
            try {
                a.this.k(this.f10871b, this.f10872c, this.f10873d, this.f10874e, this.f10875f, this.f10876g, this.f10877h, this.f10878i, this.f10879j);
            } catch (Error | Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class b implements Comparator<M6.b> {
        public b() {
        }

        @Override
        public int compare(M6.b left, M6.b right) {
            String str = left.f14568b;
            if (str == null) {
                str = left.f14567a;
            }
            String str2 = right.f14568b;
            if (str2 == null) {
                str2 = right.f14567a;
            }
            int compare = Integer.compare(a.this.t(str).length(), a.this.t(str2).length());
            if (compare != 0) {
                return compare;
            }
            boolean j10 = a.this.j(str);
            if (j10 != a.this.j(str2)) {
                return j10 ? -1 : 1;
            }
            String str3 = left.f14567a;
            if (str3 == null) {
                str3 = "";
            }
            String str4 = right.f14567a;
            return str3.compareToIgnoreCase(str4 != null ? str4 : "");
        }
    }

    public final String d(M6.b suggestion) {
        if (suggestion == null) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(s(suggestion.f14567a));
        sb2.append('|');
        sb2.append(s(suggestion.f14568b));
        sb2.append('|');
        sb2.append(s(suggestion.f14577k));
        sb2.append('|');
        sb2.append(s(suggestion.f14578l));
        sb2.append('|');
        sb2.append(s(suggestion.f14576j));
        sb2.append('|');
        sb2.append(suggestion.f14572f);
        sb2.append('|');
        sb2.append(suggestion.f14573g);
        sb2.append('|');
        sb2.append(s(suggestion.f14581o));
        sb2.append('|');
        List<String> list = suggestion.f14580n;
        if (list != null && !list.isEmpty()) {
            Iterator<String> it = suggestion.f14580n.iterator();
            while (it.hasNext()) {
                sb2.append(s(it.next()));
                sb2.append(IIndexConstants.PARAMETER_SEPARATOR);
            }
        }
        return sb2.toString();
    }

    public final boolean e(List<M6.b> suggestions) {
        if (suggestions == null || suggestions.isEmpty() || suggestions.get(0) == null || suggestions.get(0).f14583q == null) {
            return false;
        }
        String h10 = h(suggestions.get(0).f14583q.f14584a);
        if (h10 == null || h10.isEmpty()) {
            String d10 = h.d(suggestions.get(0).f14583q.f14584a);
            if (d10 == null) {
                d10 = "";
            }
            h10 = d10;
        }
        return h10.length() >= 3;
    }

    public final int f(String left, String right) {
        int i10 = 0;
        if (left != null && right != null) {
            int min = Math.min(left.length(), right.length());
            while (i10 < min && Character.toLowerCase(left.charAt(i10)) == Character.toLowerCase(right.charAt(i10))) {
                i10++;
            }
        }
        return i10;
    }

    public final void g(TextInterface textInterface, List<M6.b> suggestions, boolean allowAutomaticApplication) {
        if (textInterface != null && textInterface.isTypingTemporarilyBlockedPublic() && !textInterface.isProgrammaticTextChangeAllowedPublic()) {
            textInterface.clearSuggestions();
            return;
        }
        if (!allowAutomaticApplication) {
            textInterface.showSuggestions(suggestions);
            return;
        }
        boolean e10 = e(suggestions);
        M6.b i10 = i(suggestions);
        if (e10 && i10 != null && !d(i10).equals(this.f10870g)) {
            textInterface.applySuggestion(i10);
            textInterface.blockTypingFor(400L);
            textInterface.clearSuggestions();
            this.f10870g = d(i10);
            return;
        }
        if (e10 && EditorSettings.a().codeCompletion.b() && suggestions.size() == 1 && !d(suggestions.get(0)).equals(this.f10870g)) {
            M6.b bVar = suggestions.get(0);
            textInterface.applySuggestion(bVar);
            textInterface.blockTypingFor(400L);
            textInterface.clearSuggestions();
            this.f10870g = d(bVar);
            return;
        }
        if (EditorSettings.a().codeCompletion.d() && suggestions.size() >= 2 && !e.f(suggestions)) {
            String str = suggestions.get(0).f14568b;
            String h10 = h(suggestions.get(0).f14583q == null ? null : suggestions.get(0).f14583q.f14584a);
            int length = h10 == null ? 0 : h10.length();
            for (int i11 = 1; i11 < suggestions.size(); i11++) {
                String str2 = suggestions.get(i11).f14568b;
                int min = Math.min(str.length(), str2.length());
                int i12 = 0;
                while (i12 < min && str.charAt(i12) == str2.charAt(i12)) {
                    i12++;
                }
                str = str.substring(0, i12);
                if (str.isEmpty()) {
                    break;
                }
            }
            if (Math.max(0, str.length() - length) >= 3 && !d(suggestions.get(0)).equals(this.f10870g)) {
                M6.b bVar2 = suggestions.get(0);
                bVar2.f14572f = false;
                bVar2.f14573g = false;
                bVar2.f14567a = str;
                bVar2.f14568b = str;
                textInterface.applySuggestion(bVar2);
                textInterface.blockTypingFor(400L);
                this.f10870g = d(bVar2);
                return;
            }
        }
        textInterface.showSuggestions(suggestions);
    }

    public final String h(String lineText) {
        int b10;
        if (lineText == null || lineText.isEmpty() || (b10 = h.b(lineText)) < 0) {
            return "";
        }
        int length = lineText.length();
        while (length > b10 && !Character.isJavaIdentifierPart(lineText.charAt(length - 1))) {
            length--;
        }
        return length <= b10 ? "" : lineText.substring(b10, length).trim();
    }

    public final M6.b i(List<M6.b> suggestions) {
        b.a aVar;
        String str;
        String str2;
        if (EditorSettings.a().codeCompletion.e() && EditorSettings.a().codeCompletion.d() && suggestions != null && suggestions.size() >= 2) {
            int i10 = 0;
            M6.b bVar = suggestions.get(0);
            if (bVar != null && (aVar = bVar.f14583q) != null && (str = aVar.f14584a) != null) {
                String h10 = h(str);
                if (h10 == null || h10.isEmpty()) {
                    String d10 = h.d(bVar.f14583q.f14584a);
                    if (d10 == null) {
                        d10 = "";
                    }
                    h10 = d10;
                }
                if (h10.isEmpty()) {
                    return null;
                }
                SteppedArrayList<M6.b> steppedArrayList = new SteppedArrayList();
                for (M6.b bVar2 : suggestions) {
                    if (bVar2 != null && bVar2.f14572f && (str2 = bVar2.f14581o) != null && !str2.isEmpty()) {
                        String str3 = bVar2.f14568b;
                        if (str3 == null) {
                            str3 = bVar2.f14567a;
                        }
                        int f10 = f(h10, t(str3));
                        if (f10 > 0) {
                            if (f10 > i10) {
                                steppedArrayList.clear();
                                steppedArrayList.add(bVar2);
                                i10 = f10;
                            } else if (f10 == i10) {
                                steppedArrayList.add(bVar2);
                            }
                        }
                    }
                }
                if (steppedArrayList.isEmpty()) {
                    return null;
                }
                steppedArrayList.sort(new b());
                for (M6.b bVar3 : steppedArrayList) {
                    String str4 = bVar3.f14581o;
                    if (str4 != null && !str4.isEmpty()) {
                        return bVar3;
                    }
                }
            }
        }
        return null;
    }

    public final boolean j(String value) {
        if (value == null) {
            return false;
        }
        return value.regionMatches(true, 0, "myObject.", 0, 9);
    }

    public final void k(String fullScript, String fullLineText, int originalLineNumber, int cursorPosition, List<r> loadedClassList, TextInterface textInterface, String className, long requestId, boolean isDeletingText) {
        int i10;
        String str;
        L6.j jVar;
        Class<?> cls;
        if (textInterface != null && textInterface.isTypingTemporarilyBlockedPublic() && !textInterface.isProgrammaticTextChangeAllowedPublic()) {
            textInterface.clearSuggestions();
            return;
        }
        String f10 = h.f(fullScript, cursorPosition);
        String substring = fullLineText.length() >= f10.length() ? fullLineText.substring(f10.length()) : "";
        C13950c c13950c = new C13950c("test");
        c13950c.i(fullScript);
        c13950c.h(originalLineNumber, c13950c.e(originalLineNumber) + "/*CURSOR*/");
        String p10 = p(c13950c.d());
        c13950c.i(p10);
        int i11 = 0;
        while (true) {
            if (i11 >= c13950c.f()) {
                i10 = originalLineNumber;
                break;
            } else {
                if (c13950c.e(i11).contains("/*CURSOR*/")) {
                    i10 = i11;
                    break;
                }
                i11++;
            }
        }
        if (isDeletingText) {
            this.f10870g = "";
        }
        if (m(f10)) {
            textInterface.clearSuggestions();
            return;
        }
        if (l(p10, f10, cursorPosition)) {
            textInterface.clearSuggestions();
            return;
        }
        if (this.f10866c.i(p10, f10, i10)) {
            this.f10870g = "";
            textInterface.clearSuggestions();
            return;
        }
        L6.j jVar2 = r8;
        int i12 = i10;
        int i13 = 0;
        L6.j jVar3 = new L6.j(p10, f10, substring, cursorPosition, i12, this.f10866c.q(p10, f10, i10));
        List<M6.b> b10 = this.f10867d.b(jVar2);
        int i14 = 1;
        if (!b10.isEmpty()) {
            if (n(requestId)) {
                g(textInterface, b10, !isDeletingText);
                return;
            }
            return;
        }
        List<f> a10 = this.f10864a.a(p10, i12, loadedClassList, className);
        if (n(requestId)) {
            String b11 = this.f10865b.b(f10);
            if (b11 != null && !b11.isEmpty()) {
                List<M6.b> a11 = e.a(a10, f10, substring, originalLineNumber, cursorPosition, b11);
                this.f10867d.c(a11, jVar2);
                if (n(requestId)) {
                    if (a11.isEmpty()) {
                        textInterface.clearSuggestions();
                        return;
                    } else {
                        g(textInterface, a11, !isDeletingText);
                        return;
                    }
                }
                return;
            }
            String[] e10 = h.e(f10);
            if (!this.f10865b.d(f10) || e10.length == 0) {
                String str2 = e10.length > 0 ? e10[e10.length - 1] : "";
                if (str2.isEmpty()) {
                    textInterface.clearSuggestions();
                    return;
                }
                SteppedArrayList steppedArrayList = new SteppedArrayList();
                for (f fVar : a10) {
                    if (e.g(fVar, str2)) {
                        steppedArrayList.add(M6.b.a(fVar, f10, substring, originalLineNumber, cursorPosition));
                    }
                }
                this.f10867d.c(steppedArrayList, jVar2);
                q(steppedArrayList, str2);
                g(textInterface, steppedArrayList, !isDeletingText);
                return;
            }
            f e11 = e.e(a10, e10[0]);
            if (e11 != null) {
                Class<?> r10 = r(e11.f10887b);
                boolean z10 = e11.f10898m;
                if (r10 != null) {
                    while (true) {
                        if (i14 >= e10.length) {
                            str = "";
                            break;
                        }
                        str = e10[i14];
                        Class<?> cls2 = null;
                        try {
                            Field field = r10.getField(str);
                            if (field != null) {
                                cls2 = field.getType();
                            }
                        } catch (NoSuchFieldException unused) {
                        }
                        if (cls2 == null) {
                            Method[] methods = r10.getMethods();
                            int length = methods.length;
                            int i15 = i13;
                            while (i15 < length) {
                                Method method = methods[i15];
                                String lowerCase = method.getName().toLowerCase();
                                Class<?> cls3 = cls2;
                                StringBuilder sb2 = new StringBuilder();
                                Method[] methodArr = methods;
                                sb2.append("get");
                                sb2.append(str);
                                if (lowerCase.equalsIgnoreCase(sb2.toString())) {
                                    cls = method.getReturnType();
                                    break;
                                } else {
                                    i15++;
                                    cls2 = cls3;
                                    methods = methodArr;
                                }
                            }
                        }
                        cls = cls2;
                        if (cls == null) {
                            break;
                        }
                        i14++;
                        r10 = cls;
                        i13 = 0;
                        z10 = false;
                    }
                    List<f> b12 = this.f10864a.b(r10, z10);
                    SteppedArrayList steppedArrayList2 = new SteppedArrayList();
                    for (f fVar2 : b12) {
                        if (str.isEmpty() || e.g(fVar2, str)) {
                            jVar = jVar2;
                            steppedArrayList2.add(M6.b.a(fVar2, f10, substring, originalLineNumber, cursorPosition));
                        } else {
                            jVar = jVar2;
                        }
                        jVar2 = jVar;
                    }
                    L6.j jVar4 = jVar2;
                    List<M6.b> a12 = this.f10867d.a(jVar4);
                    if (!a12.isEmpty()) {
                        steppedArrayList2.addAll(0, a12);
                    }
                    this.f10867d.c(steppedArrayList2, jVar4);
                    q(steppedArrayList2, str);
                    g(textInterface, steppedArrayList2, false);
                    return;
                }
            }
            textInterface.clearSuggestions();
        }
    }

    public final boolean l(String fullScript, String lineText, int cursorPosition) {
        String substring;
        int lastIndexOf;
        if (lineText == null || lineText.isEmpty()) {
            return false;
        }
        if (lineText.indexOf("//") >= 0) {
            return true;
        }
        return fullScript != null && !fullScript.isEmpty() && (lastIndexOf = (substring = fullScript.substring(0, Math.max(0, Math.min(cursorPosition, fullScript.length())))).lastIndexOf("/*")) >= 0 && substring.lastIndexOf("*/") < lastIndexOf;
    }

    public final boolean m(String lineText) {
        if (lineText == null || lineText.isEmpty()) {
            return false;
        }
        boolean z10 = false;
        boolean z11 = false;
        for (int i10 = 0; i10 < lineText.length(); i10++) {
            char charAt = lineText.charAt(i10);
            if (z11) {
                z11 = false;
            } else if (charAt == '\\') {
                z11 = true;
            } else if (charAt == '\"') {
                z10 = !z10;
            }
        }
        return z10;
    }

    public final boolean n(long requestId) {
        return this.f10869f.get() == requestId;
    }

    public final String o(String typeName) {
        if (typeName == null) {
            return "";
        }
        String trim = typeName.trim();
        int indexOf = trim.indexOf(60);
        if (indexOf >= 0) {
            trim = trim.substring(0, indexOf);
        }
        while (trim.endsWith(v.f99450n)) {
            trim = trim.substring(0, trim.length() - 2);
        }
        return trim.trim();
    }

    public final String p(String fullScript) {
        C13590a c13590a = new C13590a();
        C13950c c13950c = new C13950c("test");
        c13950c.i(fullScript);
        do {
        } while (c13590a.a(c13950c, null));
        return c13950c.d();
    }

    public final void q(List<M6.b> suggestions, String lastToken) {
        if (suggestions.size() == 1) {
            M6.b bVar = suggestions.get(0);
            if (!bVar.f14572f && bVar.f14568b.equalsIgnoreCase(lastToken)) {
                suggestions.clear();
            }
            if (bVar.f14572f && bVar.f14568b.equalsIgnoreCase(lastToken) && !bVar.f14573g) {
                suggestions.clear();
            }
        }
    }

    public final Class<?> r(String typeName) {
        String o10 = o(typeName);
        if (o10.isEmpty()) {
            return null;
        }
        try {
            return Class.forName(o10);
        } catch (Throwable unused) {
            Class<?> u10 = d8.k.u(o10);
            if (u10 != null) {
                return u10;
            }
            if (o10.indexOf(46) < 0) {
                Class<?> u11 = u("java.util." + o10);
                if (u11 != null) {
                    return u11;
                }
                Class<?> u12 = u("java.lang." + o10);
                if (u12 != null) {
                    return u12;
                }
                Class<?> u13 = u("JAVARuntime.AList");
                if (u13 != null && C12667d1.f69075a.equalsIgnoreCase(o10)) {
                    return u13;
                }
                Class<?> u14 = u("JAVARuntime." + o10);
                if (u14 != null) {
                    return u14;
                }
            }
            return null;
        }
    }

    public final String s(String value) {
        return value == null ? "" : value;
    }

    public final String t(String value) {
        return value == null ? "" : value.regionMatches(true, 0, "myObject.", 0, 9) ? value.substring(9) : value;
    }

    public final Class<?> u(String fqcn) {
        try {
            return Class.forName(fqcn);
        } catch (Throwable unused) {
            return null;
        }
    }

    public void v(String fullScript, String fullLineText, int originalLineNumber, int cursorPosition, List<r> loadedClassList, TextInterface textInterface, String className) {
        w(fullScript, fullLineText, originalLineNumber, cursorPosition, loadedClassList, textInterface, className, false);
    }

    public void w(String fullScript, String fullLineText, int originalLineNumber, int cursorPosition, List<r> loadedClassList, TextInterface textInterface, String className, boolean isDeletingText) {
        long incrementAndGet = this.f10868e.incrementAndGet();
        this.f10869f.set(incrementAndGet);
        O9.b.d(new RunnableC0362a(fullScript, fullLineText, originalLineNumber, cursorPosition, loadedClassList, textInterface, className, incrementAndGet, isDeletingText));
    }
}
