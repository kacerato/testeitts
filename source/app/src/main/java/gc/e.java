package gc;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class e {

    public static final String f88446i = "rtccIf";

    public static final String f88447j = "rtccElse";

    public static final String f88448k = "rtccEnd";

    public static final String f88449l = "(";

    public static final String f88450m = ")";

    public static final String f88451n = "\n";

    public final Map<String, C13320a> f88452a = new HashMap();

    public final List<C13320a> f88453b;

    public final List<gc.c> f88454c;

    public final Map<String, gc.c> f88455d;

    public final Set<C13320a> f88456e;

    public final Set<gc.c> f88457f;

    public String f88458g;

    public String[] f88459h;

    public class a implements h {
        public a() {
        }

        @Override
        public int a(C13320a condition) {
            return condition.f88433e.size();
        }

        @Override
        public C13321b b(C13320a condition, int idx) {
            return condition.f88433e.get(idx);
        }
    }

    public class b implements i {
        public b() {
        }

        @Override
        public gc.d a(gc.c integer, int idx) {
            return integer.f88442d.get(idx);
        }

        @Override
        public int b(gc.c integer) {
            return integer.f88442d.size();
        }
    }

    public class c implements InterfaceC1707e {
        public c() {
        }

        @Override
        public void a(C13320a condition, C13321b indexer) {
            condition.f88433e.add(indexer);
        }
    }

    public class d implements f {
        public d() {
        }

        @Override
        public void a(gc.c integer, gc.d indexer) {
            integer.f88442d.add(indexer);
        }
    }

    public interface InterfaceC1707e {
        void a(C13320a condition, C13321b indexer);
    }

    public interface f {
        void a(gc.c integer, gc.d indexer);
    }

    public static class g {

        public C13320a f88464a;

        public C13321b f88465b;

        public g(C13320a condition, C13321b indexer) {
            this.f88464a = condition;
            this.f88465b = indexer;
        }
    }

    public interface h {
        int a(C13320a condition);

        C13321b b(C13320a condition, int idx);
    }

    public interface i {
        gc.d a(gc.c integer, int idx);

        int b(gc.c integer);
    }

    public e(List<C13320a> conditionList, List<gc.c> integerList, String fragmentCode) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        this.f88453b = steppedArrayList;
        this.f88454c = new SteppedArrayList();
        this.f88455d = new HashMap();
        this.f88456e = new HashSet();
        this.f88457f = new HashSet();
        if (fragmentCode == null || fragmentCode.isEmpty()) {
            throw null;
        }
        steppedArrayList.addAll(conditionList);
        for (int i10 = 0; i10 < conditionList.size(); i10++) {
            C13320a c13320a = conditionList.get(i10);
            this.f88452a.put(c13320a.getName(), c13320a);
        }
        this.f88454c.addAll(integerList);
        for (int i11 = 0; i11 < integerList.size(); i11++) {
            gc.c cVar = integerList.get(i11);
            this.f88455d.put(cVar.d(), cVar);
        }
        this.f88458g = fragmentCode;
        i();
    }

    public static List<C13320a> e(List<C13320a> conditionList) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i10 = 0; i10 < conditionList.size(); i10++) {
            steppedArrayList.add(conditionList.get(i10).clone());
        }
        return steppedArrayList;
    }

    public static List<gc.c> f(List<gc.c> integerList) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i10 = 0; i10 < integerList.size(); i10++) {
            steppedArrayList.add(integerList.get(i10).clone());
        }
        return steppedArrayList;
    }

    public final String a(String[] lines, h conditionGetIndexer, i integerGetIndexer) {
        boolean z10;
        int i10;
        StringBuilder sb2 = new StringBuilder();
        int i11 = 0;
        while (i11 < lines.length) {
            String str = lines[i11];
            boolean z11 = true;
            for (int i12 = 0; i12 < this.f88453b.size(); i12++) {
                C13320a c13320a = this.f88453b.get(i12);
                for (int i13 = 0; i13 < conditionGetIndexer.a(c13320a); i13++) {
                    C13321b b10 = conditionGetIndexer.b(c13320a, i13);
                    if (b10.f88436a == i11) {
                        if (!c13320a.i()) {
                            int i14 = b10.f88437b;
                            if (i14 >= 0) {
                                i10 = b10.f88436a;
                            } else {
                                i14 = b10.f88438c;
                                i10 = b10.f88436a;
                            }
                            i11 += i14 - i10;
                        }
                    } else if (b10.f88437b == i11) {
                        if (c13320a.i()) {
                            int i15 = b10.f88438c;
                            if (i15 >= 0) {
                                i11 += i15 - b10.f88437b;
                            }
                        }
                    } else if (b10.f88438c != i11) {
                    }
                    z11 = false;
                    z10 = true;
                }
                z10 = false;
                if (z10) {
                    break;
                }
            }
            if (z11) {
                for (int i16 = 0; i16 < this.f88454c.size(); i16++) {
                    gc.c cVar = this.f88454c.get(i16);
                    for (int i17 = 0; i17 < integerGetIndexer.b(cVar); i17++) {
                        if (integerGetIndexer.a(cVar, i17).f88445a == i11) {
                            str = str.replace("rtccInt(" + cVar.d() + ")", "" + cVar.e());
                        }
                    }
                }
                sb2.append(str.toString());
                sb2.append("\n");
            }
            i11++;
        }
        return sb2.toString();
    }

    public String b() {
        return a(this.f88459h, new a(), new b());
    }

    public boolean c() {
        return (this.f88456e.isEmpty() && this.f88457f.isEmpty()) ? false : true;
    }

    public e clone() {
        return new e(e(this.f88453b), f(this.f88454c), this.f88458g);
    }

    public final C13320a g(String name) {
        return this.f88452a.get(name);
    }

    public final gc.c h(String name) {
        return this.f88455d.get(name);
    }

    public final void i() {
        for (int i10 = 0; i10 < this.f88453b.size(); i10++) {
            C13320a c13320a = this.f88453b.get(i10);
            c13320a.f88433e.clear();
            c13320a.f88434g.clear();
            c13320a.f88435i.clear();
        }
        String str = this.f88458g;
        if (str == null || str.isEmpty()) {
            this.f88459h = new String[0];
            return;
        }
        String[] j10 = j(this.f88458g, new c());
        this.f88459h = j10;
        k(j10, new d());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String[] j(String code, InterfaceC1707e addIndexer) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
        String[] split = code.split("\n");
        Tc.b.L().substring(0, 3).toUpperCase();
        for (int i10 = 0; i10 < split.length; i10++) {
            String str = split[i10];
            if (str.contains(f88446i)) {
                String substring = str.substring(str.indexOf(f88446i) + 6);
                if (!substring.contains("(") || !substring.contains(")")) {
                    throw new RuntimeException("MallFormed condition:" + str);
                }
                String substring2 = substring.substring(substring.indexOf("(") + 1, substring.indexOf(")"));
                C13320a g10 = g(substring2);
                if (g10 == null) {
                    throw new IllegalArgumentException("The condition \"" + substring2 + "\" was not registered on this RTCC");
                }
                C13321b c13321b = new C13321b();
                c13321b.f88436a = i10;
                steppedArrayList.add(new g(g10, c13321b));
                steppedArrayList2.add(g10);
            } else if (str.contains(f88447j)) {
                C13320a c13320a = (C13320a) steppedArrayList2.get(steppedArrayList2.size() - 1);
                int size = steppedArrayList.size() - 1;
                while (true) {
                    if (size >= 0) {
                        g gVar = (g) steppedArrayList.get(size);
                        if (gVar.f88464a == c13320a) {
                            gVar.f88465b.f88437b = i10;
                            break;
                        }
                        size--;
                    }
                }
            } else if (str.contains(f88448k)) {
                C13320a c13320a2 = (C13320a) steppedArrayList2.remove(steppedArrayList2.size() - 1);
                int size2 = steppedArrayList.size() - 1;
                while (true) {
                    if (size2 >= 0) {
                        g gVar2 = (g) steppedArrayList.get(size2);
                        if (gVar2.f88464a == c13320a2) {
                            gVar2.f88465b.f88438c = i10;
                            steppedArrayList.remove(gVar2);
                            addIndexer.a(c13320a2, gVar2.f88465b);
                            break;
                        }
                        size2--;
                    }
                }
            }
        }
        return split;
    }

    public final void k(String[] lines, f addIndexer) {
        Tc.b.L().substring(0, 3).toUpperCase();
        for (int i10 = 0; i10 < lines.length; i10++) {
            String str = lines[i10];
            if (str.contains("rtccInt(")) {
                String replace = str.substring(str.indexOf("rtccInt(")).replace("rtccInt(", "");
                String substring = replace.substring(0, replace.indexOf(")"));
                gc.c h10 = h(substring);
                if (h10 == null) {
                    throw new IllegalArgumentException("The integer \"" + substring + "\" was not registered on this RTCC");
                }
                gc.d dVar = new gc.d();
                dVar.f88445a = i10;
                addIndexer.a(h10, dVar);
            }
        }
    }

    public String l() {
        return this.f88458g;
    }

    public void m(String vertexCode) {
        this.f88458g = vertexCode;
    }

    public void n() {
        this.f88456e.clear();
        this.f88457f.clear();
    }

    public void o(String name, boolean value) {
        C13320a g10 = g(name);
        if (g10 == null) {
            throw new IllegalArgumentException("The condition \"" + name + "\" was not registered on this RTCC");
        }
        g10.k(value);
        if (g10.j()) {
            return;
        }
        this.f88456e.add(g10);
        g10.l();
    }

    public void p(String name, int value) {
        gc.c h10 = h(name);
        if (h10 == null) {
            throw new IllegalArgumentException("The integer \"" + name + "\" was not registered on this RTCC");
        }
        h10.g(value);
        if (h10.f()) {
            return;
        }
        this.f88457f.add(h10);
        h10.h();
    }
}
