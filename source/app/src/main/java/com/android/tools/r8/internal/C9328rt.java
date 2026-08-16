package com.android.tools.r8.internal;

import com.android.tools.r8.AndroidResourceProvider;
import com.android.tools.r8.CompilationMode;
import com.android.tools.r8.dex.W;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C9328rt;
import com.android.tools.r8.shaking.C11350o3;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import java.util.TreeMap;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import org.apache.commons.lang3.CharUtils;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class C9328rt {

    public final W.a f52161a;

    public final W.b f52162b;

    public final CompilationMode f52163c;

    public final int f52164d;

    public final boolean f52165e;

    public final int f52166f;

    public final C8570nJ.f f52167g;

    public final Optional f52168h;

    public final Optional f52169i;

    public final Optional f52170j;

    public final Optional f52171k;

    public final Optional f52172l;

    public final Optional f52173m;

    public final Optional f52174n;

    public final InterfaceC9975vm f52175o;

    public final C5821Qv f52176p;

    public final C11350o3 f52177q;

    public final List f52178r;

    public final List f52179s;

    public final List f52180t;

    public final boolean f52181u;

    public final boolean f52182v;

    public final AndroidResourceProvider f52183w;

    public final C7608hb0 f52184x;

    public final HashMap f52185y;

    public final String f52186z;

    public static class a {

        public static final boolean f52187A = true;

        public W.b f52189b;

        public CompilationMode f52190c;

        public int f52191d;

        public boolean f52192e;

        public int f52193f;

        public C8570nJ.f f52194g;

        public InterfaceC9975vm f52201n;

        public C5821Qv f52202o;

        public C11350o3 f52203p;

        public List f52204q;

        public List f52205r;

        public List f52206s;

        public AndroidResourceProvider f52207t;

        public C7608hb0 f52208u;

        public W.a f52188a = W.a.f35800c;

        public Optional f52195h = Optional.empty();

        public Optional f52196i = Optional.empty();

        public Optional f52197j = Optional.empty();

        public Optional f52198k = Optional.empty();

        public Optional f52199l = Optional.empty();

        public Optional f52200m = Optional.empty();

        public Optional f52209v = Optional.empty();

        public boolean f52210w = false;

        public boolean f52211x = false;

        public String f52212y = null;

        public final HashMap f52213z = new HashMap();

        public final a a(boolean z10, Consumer consumer) {
            if (z10) {
                consumer.accept(this);
            }
            return this;
        }

        public final a b(boolean z10) {
            this.f52195h = Optional.of(Boolean.valueOf(z10));
            return this;
        }

        public final void c(boolean z10) {
            this.f52197j = Optional.of(Boolean.valueOf(z10));
        }

        public final a d(boolean z10) {
            this.f52199l = Optional.of(Boolean.valueOf(z10));
            return this;
        }

        public final void e(boolean z10) {
            this.f52209v = Optional.of(Boolean.valueOf(z10));
        }

        public final a f(boolean z10) {
            this.f52198k = Optional.of(Boolean.valueOf(z10));
            return this;
        }

        public static Map<String, String> b() {
            final TreeMap treeMap = new TreeMap();
            System.getProperties().stringPropertyNames().forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C9328rt.a.a(Map.this, (String) obj);
                }
            });
            return treeMap;
        }

        public a a(W.a aVar) {
            this.f52188a = aVar;
            return this;
        }

        public final a c() {
            b().forEach(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    C9328rt.a.this.a((String) obj, (String) obj2);
                }
            });
            return this;
        }

        public final a a(boolean z10) {
            this.f52200m = Optional.of(Boolean.valueOf(z10));
            return this;
        }

        public final a a(String str, String str2) {
            this.f52213z.put(str, str2);
            return this;
        }

        public static void a(Map map, String str) {
            if (str.startsWith("com.android.tools.r8.")) {
                map.put(str, System.getProperty(str));
            }
        }

        public C9328rt a() {
            boolean z10 = f52187A;
            if (!z10 && this.f52189b == null) {
                throw new AssertionError();
            }
            if (z10 || this.f52189b == W.b.f35808h || this.f52188a != null) {
                return new C9328rt(this.f52188a, this.f52189b, this.f52190c, this.f52191d, this.f52201n, this.f52192e, this.f52193f, this.f52194g, this.f52195h, this.f52196i, this.f52197j, this.f52198k, this.f52199l, this.f52200m, this.f52202o, this.f52203p, this.f52204q, this.f52205r, this.f52206s, this.f52210w, this.f52211x, this.f52213z, this.f52212y, this.f52207t, this.f52208u, this.f52209v);
            }
            throw new AssertionError();
        }
    }

    public C9328rt(W.a aVar, W.b bVar, CompilationMode compilationMode, int i10, InterfaceC9975vm interfaceC9975vm, boolean z10, int i11, C8570nJ.f fVar, Optional optional, Optional optional2, Optional optional3, Optional optional4, Optional optional5, Optional optional6, C5821Qv c5821Qv, C11350o3 c11350o3, List list, List list2, List list3, boolean z11, boolean z12, HashMap hashMap, String str, AndroidResourceProvider androidResourceProvider, C7608hb0 c7608hb0, Optional optional7) {
        this.f52161a = aVar;
        this.f52162b = bVar;
        this.f52163c = compilationMode;
        this.f52164d = i10;
        this.f52175o = interfaceC9975vm;
        this.f52165e = z10;
        this.f52166f = i11;
        this.f52167g = fVar;
        this.f52168h = optional;
        this.f52169i = optional2;
        this.f52170j = optional3;
        this.f52171k = optional7;
        this.f52172l = optional4;
        this.f52173m = optional5;
        this.f52174n = optional6;
        this.f52176p = c5821Qv;
        this.f52177q = c11350o3;
        this.f52178r = list;
        this.f52179s = list2;
        this.f52180t = list3;
        this.f52181u = z11;
        this.f52182v = z12;
        this.f52185y = hashMap;
        this.f52186z = str;
        this.f52183w = androidResourceProvider;
        this.f52184x = c7608hb0;
    }

    public static void a(StringBuilder sb2, String str, String str2) {
        sb2.append(str);
        sb2.append("=");
        sb2.append(str2);
        sb2.append("\n");
    }

    public final LinkedHashMap b() {
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("tool", Objects.toString(this.f52162b.name()));
        int i10 = this.f52166f;
        if (i10 != -1) {
            linkedHashMap.put("thread-count", Objects.toString(Integer.valueOf(i10)));
        }
        if (this.f52162b != W.b.f35808h) {
            linkedHashMap.put("backend", Objects.toString(this.f52161a.name()));
            linkedHashMap.put("mode", this.f52163c == CompilationMode.DEBUG ? "debug" : "release");
            linkedHashMap.put("min-api", Objects.toString(Integer.valueOf(this.f52164d)));
            linkedHashMap.put("optimize-multidex-for-linear-alloc", Objects.toString(Boolean.valueOf(this.f52165e)));
            linkedHashMap.put("desugar-state", Objects.toString(this.f52167g));
            linkedHashMap.put("enable-missing-library-api-modeling", Objects.toString(Boolean.valueOf(this.f52181u)));
            boolean z10 = this.f52182v;
            if (z10) {
                linkedHashMap.put("android-platform-build", Objects.toString(Boolean.valueOf(z10)));
            }
            a(linkedHashMap, "intermediate", this.f52168h);
            a(linkedHashMap, "include-data-resources", this.f52169i);
            a(linkedHashMap, "isolated-splits", this.f52170j);
            a(linkedHashMap, "optimized-resource-shrinking", this.f52170j);
            a(linkedHashMap, "tree-shaking", this.f52172l);
            a(linkedHashMap, "force-proguard-compatibility", this.f52174n);
            a(linkedHashMap, "optimized-resource-shrinking", this.f52171k);
        } else {
            linkedHashMap.put("trace_references_consumer", Objects.toString(this.f52186z));
        }
        a(linkedHashMap, "minification", this.f52173m);
        ArrayList arrayList = new ArrayList(this.f52185y.o());
        arrayList.sort(new Jo1());
        arrayList.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9328rt.this.a(linkedHashMap, (String) obj);
            }
        });
        return linkedHashMap;
    }

    public final String c() {
        final StringBuilder sb2 = new StringBuilder();
        b().forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C9328rt.a(StringBuilder.this, (String) obj, (String) obj2);
            }
        });
        return sb2.toString();
    }

    public CompilationMode d() {
        return this.f52163c;
    }

    public boolean e() {
        return this.f52185y.containsKey("com.android.tools.r8.enableSameFilePolicy");
    }

    public boolean f() {
        return ((Boolean) this.f52170j.orElse(Boolean.FALSE)).booleanValue();
    }

    public int g() {
        return this.f52164d;
    }

    public final void a(Map map, String str) {
        map.put("system-property-" + str, Objects.toString(this.f52185y.get(str)));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x00f7, code lost:
    
        if (r4.equals("desugar-state") == false) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void a(a aVar, String str) {
        char c10 = 1;
        String trim = str.trim();
        if (trim.isEmpty()) {
            return;
        }
        int indexOf = trim.indexOf(61);
        if (indexOf >= 0) {
            String trim2 = trim.substring(0, indexOf).trim();
            String trim3 = trim.substring(indexOf + 1).trim();
            trim2.getClass();
            switch (trim2.hashCode()) {
                case -1714535540:
                    if (trim2.equals("thread-count")) {
                        c10 = 0;
                        break;
                    }
                    c10 = '\uffff';
                    break;
                case -1572360679:
                    break;
                case -859717383:
                    if (trim2.equals("intermediate")) {
                        c10 = 2;
                        break;
                    }
                    c10 = '\uffff';
                    break;
                case -738179936:
                    if (trim2.equals("optimized-resource-shrinking")) {
                        c10 = 3;
                        break;
                    }
                    c10 = '\uffff';
                    break;
                case -457962420:
                    if (trim2.equals("minification")) {
                        c10 = 4;
                        break;
                    }
                    c10 = '\uffff';
                    break;
                case -347208044:
                    if (trim2.equals("backend")) {
                        c10 = 5;
                        break;
                    }
                    c10 = '\uffff';
                    break;
                case -145476656:
                    if (trim2.equals("optimize-multidex-for-linear-alloc")) {
                        c10 = 6;
                        break;
                    }
                    c10 = '\uffff';
                    break;
                case -82867811:
                    if (trim2.equals("force-proguard-compatibility")) {
                        c10 = 7;
                        break;
                    }
                    c10 = '\uffff';
                    break;
                case 3357091:
                    if (trim2.equals("mode")) {
                        c10 = '\b';
                        break;
                    }
                    c10 = '\uffff';
                    break;
                case 3565976:
                    if (trim2.equals("tool")) {
                        c10 = '\t';
                        break;
                    }
                    c10 = '\uffff';
                    break;
                case 223606663:
                    if (trim2.equals("include-data-resources")) {
                        c10 = '\n';
                        break;
                    }
                    c10 = '\uffff';
                    break;
                case 953666482:
                    if (trim2.equals("android-platform-build")) {
                        c10 = IIndexConstants.INTERFACE_AND_ANNOTATION_SUFFIX;
                        break;
                    }
                    c10 = '\uffff';
                    break;
                case 1062738975:
                    if (trim2.equals("min-api")) {
                        c10 = '\f';
                        break;
                    }
                    c10 = '\uffff';
                    break;
                case 1096335309:
                    if (trim2.equals("isolated-splits")) {
                        c10 = CharUtils.CR;
                        break;
                    }
                    c10 = '\uffff';
                    break;
                case 1733466900:
                    if (trim2.equals("tree-shaking")) {
                        c10 = 14;
                        break;
                    }
                    c10 = '\uffff';
                    break;
                case 1763872211:
                    if (trim2.equals("trace_references_consumer")) {
                        c10 = 15;
                        break;
                    }
                    c10 = '\uffff';
                    break;
                case 1829996623:
                    if (trim2.equals("enable-missing-library-api-modeling")) {
                        c10 = 16;
                        break;
                    }
                    c10 = '\uffff';
                    break;
                default:
                    c10 = '\uffff';
                    break;
            }
            switch (c10) {
                case 0:
                    aVar.f52193f = Integer.parseInt(trim3);
                    return;
                case 1:
                    aVar.f52194g = (C8570nJ.f) Enum.valueOf(C8570nJ.f.class, trim3);
                    return;
                case 2:
                    boolean parseBoolean = Boolean.parseBoolean(trim3);
                    aVar.getClass();
                    aVar.f52195h = Optional.of(Boolean.valueOf(parseBoolean));
                    return;
                case 3:
                    boolean parseBoolean2 = Boolean.parseBoolean(trim3);
                    aVar.getClass();
                    aVar.f52209v = Optional.of(Boolean.valueOf(parseBoolean2));
                    return;
                case 4:
                    boolean parseBoolean3 = Boolean.parseBoolean(trim3);
                    aVar.getClass();
                    aVar.f52199l = Optional.of(Boolean.valueOf(parseBoolean3));
                    return;
                case 5:
                    aVar.a((W.a) Enum.valueOf(W.a.class, trim3));
                    return;
                case 6:
                    aVar.f52192e = Boolean.parseBoolean(trim3);
                    return;
                case 7:
                    boolean parseBoolean4 = Boolean.parseBoolean(trim3);
                    aVar.getClass();
                    aVar.f52200m = Optional.of(Boolean.valueOf(parseBoolean4));
                    return;
                case '\b':
                    if (trim3.equals("debug")) {
                        aVar.f52190c = CompilationMode.DEBUG;
                        return;
                    } else if (trim3.equals("release")) {
                        aVar.f52190c = CompilationMode.RELEASE;
                        return;
                    } else {
                        a(trim2, trim3);
                        throw null;
                    }
                case '\t':
                    aVar.f52189b = (W.b) Enum.valueOf(W.b.class, trim3);
                    return;
                case '\n':
                    aVar.f52196i = Optional.of(Boolean.valueOf(Boolean.parseBoolean(trim3)));
                    return;
                case 11:
                    aVar.f52211x = Boolean.parseBoolean(trim3);
                    return;
                case '\f':
                    aVar.f52191d = Integer.parseInt(trim3);
                    return;
                case '\r':
                    boolean parseBoolean5 = Boolean.parseBoolean(trim3);
                    aVar.getClass();
                    aVar.f52197j = Optional.of(Boolean.valueOf(parseBoolean5));
                    return;
                case 14:
                    boolean parseBoolean6 = Boolean.parseBoolean(trim3);
                    aVar.getClass();
                    aVar.f52198k = Optional.of(Boolean.valueOf(parseBoolean6));
                    return;
                case 15:
                    aVar.f52212y = trim3;
                    return;
                case 16:
                    aVar.f52210w = Boolean.parseBoolean(trim3);
                    return;
                default:
                    if (trim2.startsWith("system-property-")) {
                        aVar.f52213z.put(trim2.substring(16), trim3);
                        return;
                    } else {
                        a(trim2, trim3);
                        throw null;
                    }
            }
        }
        throw new RuntimeException("Invalid dump line. Expected = in line: '" + trim + "'");
    }

    public static void b(final a aVar, String str) {
        C10656zq0.a(str, '\n', new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9328rt.a(C9328rt.a.this, (String) obj);
            }
        });
    }

    public static void a(String str, String str2) {
        throw new RuntimeException("Unknown key value pair: " + str + " = " + str2);
    }

    public String a() {
        return (String) this.f52185y.get("com.android.tools.r8.androidApiExtensionPackages");
    }

    public final void a(final LinkedHashMap linkedHashMap, final String str, Optional optional) {
        optional.ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9328rt.this.a(linkedHashMap, str, obj);
            }
        });
    }

    public final void a(Map map, String str, Object obj) {
        map.put(str, Objects.toString(obj));
    }

    public static a a(W.b bVar) {
        a aVar = new a();
        aVar.f52189b = bVar;
        return aVar;
    }
}
