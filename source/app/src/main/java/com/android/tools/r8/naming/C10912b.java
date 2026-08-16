package com.android.tools.r8.naming;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.internal.AbstractC4895Av0;
import com.android.tools.r8.internal.AbstractC8552nC;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C5371Jb;
import com.android.tools.r8.internal.C6237Yb;
import com.android.tools.r8.internal.C6294Zb;
import com.android.tools.r8.internal.C7367g6;
import com.android.tools.r8.internal.C8051kC;
import com.android.tools.r8.internal.InterfaceC5429Kb;
import com.android.tools.r8.internal.UB;
import com.android.tools.r8.internal.VB;
import com.android.tools.r8.kotlin.C10789h1;
import com.android.tools.r8.naming.C10912b;
import com.android.tools.r8.naming.C10957k;
import com.android.tools.r8.position.Position;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;

public class C10912b {

    public static final boolean f55824g = true;

    public final AbstractC8552nC f55825a;

    public C7367g6 f55826b;

    public final ConcurrentHashMap f55827c = new ConcurrentHashMap();

    public final LinkedHashSet f55828d;

    public final HashMap f55829e;

    public List f55830f;

    public static class a extends AbstractC11017w0 {

        public boolean f55831a = false;

        public boolean f55832b = false;

        public final ArrayList f55833c = new ArrayList();

        public final HashMap f55834d = new HashMap();

        public final LinkedHashSet f55835e = new LinkedHashSet();

        public final HashMap f55836f = new HashMap();

        @Override
        public final AbstractC10937g a(String str, String str2, E0 e02) {
            return a(str, str2, (Position) e02);
        }

        public final AbstractC8552nC b() {
            final C8051kC c8051kC = new C8051kC(4);
            this.f55834d.forEach(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    C10912b.a.a(C8051kC.this, (String) obj, (C10957k.a) obj2);
                }
            });
            return c8051kC.b();
        }

        public C10957k.a a(String str, String str2, Position position) {
            final HashMap hashMap = this.f55836f;
            Objects.requireNonNull(hashMap);
            BiConsumer biConsumer = new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    Map.this.put((String) obj, (String) obj2);
                }
            };
            List list = C10957k.f55949h;
            C10957k.a aVar = new C10957k.a(str, str2, biConsumer);
            this.f55834d.put(str, aVar);
            return aVar;
        }

        @Override
        public final void a(String str) {
            if (this.f55831a) {
                this.f55833c.add(str);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v2, types: [java.util.HashMap] */
        /* JADX WARN: Type inference failed for: r0v3 */
        /* JADX WARN: Type inference failed for: r0v5, types: [java.util.Map] */
        public static void a(C8051kC c8051kC, String str, C10957k.a aVar) {
            Map hashMap;
            if (aVar.f55963e.isEmpty()) {
                hashMap = Collections.EMPTY_MAP;
            } else {
                hashMap = new HashMap(aVar.f55963e.size());
                for (Map.Entry entry : aVar.f55963e.entrySet()) {
                    hashMap.put((String) entry.getKey(), new C10957k.c((List) entry.getValue()));
                }
            }
            c8051kC.a(str, new C10957k(aVar.f55960b, aVar.f55959a, aVar.f55961c, aVar.f55962d, hashMap, aVar.f55964f, aVar.f55965g));
        }

        public C10912b a() {
            return new C10912b(b(), this.f55835e, this.f55836f, this.f55833c);
        }

        @Override
        public final AbstractC11017w0 a(com.android.tools.r8.naming.mappinginformation.b bVar) {
            this.f55835e.add(bVar);
            if (this.f55832b) {
                a("# " + bVar.r());
            }
            return this;
        }

        @Override
        public final AbstractC11017w0 a(String str, String str2) {
            this.f55836f.put(str, str2);
            return this;
        }
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class EnumC0915b {

        public static final EnumC0915b f55837b = new EnumC0915b(0, "MISSING_FILE_IS_EMPTY_MAP");

        public static final EnumC0915b f55838c = new EnumC0915b(1, "MISSING_FILE_IS_ERROR");

        public EnumC0915b(int i10, String str) {
        }
    }

    public C10912b(AbstractC8552nC abstractC8552nC, LinkedHashSet linkedHashSet, HashMap hashMap, List list) {
        this.f55825a = abstractC8552nC;
        this.f55828d = linkedHashSet;
        this.f55829e = hashMap;
        this.f55830f = list;
    }

    public static C10912b a(BufferedReader bufferedReader, DiagnosticsHandler diagnosticsHandler, boolean z10, boolean z11, final boolean z12) throws IOException {
        return a(new O(bufferedReader), MapVersion.MAP_VERSION_NONE, diagnosticsHandler, z10, z11, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10912b.a(z12, (C10912b.a) obj);
            }
        });
    }

    public static void b(boolean z10, a aVar) {
        aVar.f55831a = z10;
    }

    public final HashSet c() {
        final HashSet hashSet = new HashSet();
        this.f55825a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Set.this.add(C4932Bl.q((String) obj));
            }
        });
        return hashSet;
    }

    public C7367g6<String, String> d() {
        if (this.f55826b == null) {
            UB ub2 = new UB();
            AbstractC4895Av0 it = this.f55825a.keySet().iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                ub2.a(str, ((C10957k) this.f55825a.get(str)).f55951a);
            }
            VB b10 = ub2.b();
            this.f55826b = new C7367g6(b10, b10.f());
        }
        return this.f55826b;
    }

    public C10912b e() {
        final C8051kC c8051kC = new C8051kC(4);
        Comparator comparing = Comparator.comparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                String str;
                str = ((C10957k) obj).f55951a;
                return str;
            }
        });
        if (!(c8051kC.f49550a == null)) {
            throw new IllegalStateException("valueComparator was already set");
        }
        if (comparing == null) {
            throw new NullPointerException("valueComparator");
        }
        c8051kC.f49550a = comparing;
        this.f55825a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C8051kC.this.a((String) obj, (C10957k) obj2);
            }
        });
        return new C10912b(c8051kC.b(), this.f55828d, this.f55829e, this.f55830f);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C10912b) && this.f55825a.equals(((C10912b) obj).f55825a);
    }

    public final int hashCode() {
        return this.f55825a.hashCode() * 31;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        a(new C5371Jb(new C10789h1(sb2)));
        return sb2.toString();
    }

    public C10957k b(String str) {
        return (C10957k) this.f55825a.get(str);
    }

    public static C10912b c(String str) throws IOException {
        C6237Yb c6237Yb;
        BufferedReader bufferedReader;
        if (str != null) {
            c6237Yb = new C6294Zb(str);
        } else {
            c6237Yb = new C6237Yb(str);
        }
        Reader a10 = c6237Yb.a();
        if (a10 instanceof BufferedReader) {
            bufferedReader = (BufferedReader) a10;
        } else {
            bufferedReader = new BufferedReader(a10);
        }
        return a(bufferedReader, (DiagnosticsHandler) null, false, false, false);
    }

    public Set<com.android.tools.r8.naming.mappinginformation.b> b() {
        return this.f55828d;
    }

    public static void a(boolean z10, a aVar) {
        aVar.f55831a = z10;
    }

    public static a a() {
        return new a();
    }

    public static C10912b a(Path path) throws IOException {
        return a(path, EnumC0915b.f55838c);
    }

    public static C10912b a(Path path, EnumC0915b enumC0915b) throws IOException {
        if (!f55824g && enumC0915b != EnumC0915b.f55837b && enumC0915b != EnumC0915b.f55838c) {
            throw new AssertionError();
        }
        if (enumC0915b == EnumC0915b.f55837b && !path.toFile().exists()) {
            return c("");
        }
        return a(Files.newBufferedReader(path, StandardCharsets.UTF_8), (DiagnosticsHandler) null, false, false, false);
    }

    public static C10912b d(String str) throws IOException {
        C6237Yb c6237Yb;
        BufferedReader bufferedReader;
        if (str != null) {
            c6237Yb = new C6294Zb(str);
        } else {
            c6237Yb = new C6237Yb(str);
        }
        Reader a10 = c6237Yb.a();
        if (a10 instanceof BufferedReader) {
            bufferedReader = (BufferedReader) a10;
        } else {
            bufferedReader = new BufferedReader(a10);
        }
        return a(bufferedReader, (DiagnosticsHandler) null, false, false, true);
    }

    public static C10912b a(P p10, MapVersion mapVersion, DiagnosticsHandler diagnosticsHandler, boolean z10, boolean z11, Consumer consumer) {
        if (diagnosticsHandler == null) {
            diagnosticsHandler = new C5094Ef0();
        }
        G0 g02 = new G0(p10, diagnosticsHandler, z10, z11, mapVersion);
        try {
            a a10 = a();
            consumer.accept(a10);
            g02.b(a10);
            g02.a(a10);
            C10912b a11 = a10.a();
            g02.f55618a.close();
            return a11;
        } catch (Throwable th2) {
            try {
                g02.f55618a.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public String a(String str) {
        C10957k c10957k = (C10957k) this.f55825a.get(str);
        return c10957k == null ? str : c10957k.f55951a;
    }

    public final void a(C8051kC c8051kC, String str, C10957k c10957k) {
        if (this.f55825a.containsKey(str)) {
            return;
        }
        c8051kC.a(str, c10957k);
    }

    public final C10912b a(C10912b c10912b) {
        if (c10912b == null) {
            return this;
        }
        if (c10912b.f55825a.isEmpty() && c10912b.f55830f.isEmpty()) {
            return this;
        }
        if (this.f55825a.isEmpty() && this.f55830f.isEmpty()) {
            return c10912b;
        }
        final C8051kC c8051kC = new C8051kC(4);
        AbstractC8552nC abstractC8552nC = c10912b.f55825a;
        AbstractC4895Av0 it = this.f55825a.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            C10957k c10957k = (C10957k) abstractC8552nC.get(entry.getKey());
            if (c10957k == null) {
                c8051kC.a(entry.getKey(), entry.getValue());
            } else {
                c8051kC.a((String) entry.getKey(), ((C10957k) entry.getValue()).a(c10957k));
            }
        }
        abstractC8552nC.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C10912b.this.a(c8051kC, (String) obj, (C10957k) obj2);
            }
        });
        LinkedHashSet linkedHashSet = new LinkedHashSet(b());
        linkedHashSet.addAll(c10912b.b());
        HashMap hashMap = new HashMap(this.f55829e);
        hashMap.putAll(c10912b.f55829e);
        List list = Collections.EMPTY_LIST;
        if (!this.f55830f.isEmpty() || !c10912b.f55830f.isEmpty()) {
            list = new ArrayList();
            list.addAll(this.f55830f);
            list.addAll(c10912b.f55830f);
        }
        return new C10912b(c8051kC.b(), linkedHashSet, hashMap, list);
    }

    public final void a(InterfaceC5429Kb interfaceC5429Kb) {
        if (!f55824g) {
            Iterator it = e().f55825a.entrySet().iterator();
            for (Map.Entry entry : this.f55825a.entrySet()) {
                Map.Entry entry2 = (Map.Entry) it.next();
                boolean z10 = f55824g;
                if (!z10 && !((String) entry.getKey()).equals(entry2.getKey())) {
                    throw new AssertionError();
                }
                if (!z10 && entry.getValue() != entry2.getValue()) {
                    throw new AssertionError();
                }
            }
        }
        Iterator it2 = this.f55825a.values().iterator();
        while (it2.hasNext()) {
            ((C10957k) it2.next()).a(interfaceC5429Kb);
        }
    }

    public String a(com.android.tools.r8.graph.M2 m22) {
        return C4932Bl.a(m22.f36592f.toString(), this);
    }

    public static C10912b a(String str, DiagnosticsHandler diagnosticsHandler) throws IOException {
        C6237Yb c6237Yb;
        BufferedReader bufferedReader;
        if (str != null) {
            c6237Yb = new C6294Zb(str);
        } else {
            c6237Yb = new C6237Yb(str);
        }
        Reader a10 = c6237Yb.a();
        if (a10 instanceof BufferedReader) {
            bufferedReader = (BufferedReader) a10;
        } else {
            bufferedReader = new BufferedReader(a10);
        }
        return a(bufferedReader, diagnosticsHandler, false, false, false);
    }

    public static C10912b a(String str, DiagnosticsHandler diagnosticsHandler, boolean z10, boolean z11, final boolean z12) throws IOException {
        C6237Yb c6237Yb;
        BufferedReader bufferedReader;
        if (str != null) {
            c6237Yb = new C6294Zb(str);
        } else {
            c6237Yb = new C6237Yb(str);
        }
        Reader a10 = c6237Yb.a();
        if (a10 instanceof BufferedReader) {
            bufferedReader = (BufferedReader) a10;
        } else {
            bufferedReader = new BufferedReader(a10);
        }
        return a(new O(bufferedReader), MapVersion.MAP_VERSION_NONE, diagnosticsHandler, z10, z11, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10912b.b(z12, (C10912b.a) obj);
            }
        });
    }
}
