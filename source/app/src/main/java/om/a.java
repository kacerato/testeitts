package Om;

import Nm.c;
import Nm.e;
import Um.AbstractC3153b;
import Wm.f;
import Wm.g;
import Wm.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jdt.internal.core.JavaElement;

public class a extends Wm.a {

    public final Nm.a f20548a;

    public final List<CharSequence> f20549b;

    public final List<c.a> f20550c;

    public final List<String> f20551d;

    public boolean f20552e;

    public static class b extends Wm.b {
        @Override
        public f a(h hVar, g gVar) {
            List l10;
            CharSequence b10 = hVar.b();
            CharSequence b11 = gVar.b();
            if (b11 != null && b11.toString().contains("|") && !b11.toString().contains("\n") && (l10 = a.l(b10.subSequence(hVar.getIndex(), b10.length()))) != null && !l10.isEmpty()) {
                List m10 = a.m(b11);
                if (l10.size() >= m10.size()) {
                    return f.d(new a(l10, m10)).b(hVar.getIndex()).e();
                }
            }
            return f.c();
        }
    }

    public static c.a j(boolean z10, boolean z11) {
        if (z10 && z11) {
            return c.a.CENTER;
        }
        if (z10) {
            return c.a.LEFT;
        }
        if (z11) {
            return c.a.RIGHT;
        }
        return null;
    }

    public static List<c.a> l(CharSequence charSequence) {
        boolean z10;
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        boolean z11 = false;
        int i11 = 0;
        while (i10 < charSequence.length()) {
            char charAt = charSequence.charAt(i10);
            if (charAt == '\t' || charAt == ' ') {
                i10++;
            } else {
                boolean z12 = true;
                if (charAt == '-' || charAt == ':') {
                    if (i11 == 0 && !arrayList.isEmpty()) {
                        return null;
                    }
                    if (charAt == ':') {
                        i10++;
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    boolean z13 = false;
                    while (i10 < charSequence.length() && charSequence.charAt(i10) == '-') {
                        i10++;
                        z13 = true;
                    }
                    if (!z13) {
                        return null;
                    }
                    if (i10 >= charSequence.length() || charSequence.charAt(i10) != ':') {
                        z12 = false;
                    } else {
                        i10++;
                    }
                    arrayList.add(j(z10, z12));
                    i11 = 0;
                } else {
                    if (charAt != '|') {
                        return null;
                    }
                    i10++;
                    i11++;
                    if (i11 > 1) {
                        return null;
                    }
                    z11 = true;
                }
            }
        }
        if (z11) {
            return arrayList;
        }
        return null;
    }

    public static List<String> m(CharSequence charSequence) {
        String trim = charSequence.toString().trim();
        if (trim.startsWith("|")) {
            trim = trim.substring(1);
        }
        ArrayList arrayList = new ArrayList();
        StringBuilder sb2 = new StringBuilder();
        int i10 = 0;
        while (i10 < trim.length()) {
            char charAt = trim.charAt(i10);
            if (charAt == '\\') {
                int i11 = i10 + 1;
                if (i11 >= trim.length() || trim.charAt(i11) != '|') {
                    sb2.append(JavaElement.JEM_ESCAPE);
                } else {
                    sb2.append('|');
                    i10 = i11;
                }
            } else if (charAt != '|') {
                sb2.append(charAt);
            } else {
                arrayList.add(sb2.toString());
                sb2.setLength(0);
            }
            i10++;
        }
        if (sb2.length() > 0) {
            arrayList.add(sb2.toString());
        }
        return arrayList;
    }

    @Override
    public boolean b() {
        return true;
    }

    @Override
    public void c(CharSequence charSequence) {
        if (this.f20552e) {
            this.f20552e = false;
        } else {
            this.f20549b.add(charSequence);
        }
    }

    @Override
    public Wm.c d(h hVar) {
        return hVar.b().toString().contains("|") ? Wm.c.b(hVar.getIndex()) : Wm.c.d();
    }

    @Override
    public void e(Vm.a aVar) {
        int size = this.f20551d.size();
        Nm.d dVar = new Nm.d();
        this.f20548a.d(dVar);
        e eVar = new e();
        dVar.d(eVar);
        for (int i10 = 0; i10 < size; i10++) {
            Nm.c k10 = k(this.f20551d.get(i10), i10, aVar);
            k10.s(true);
            eVar.d(k10);
        }
        Iterator<CharSequence> it = this.f20549b.iterator();
        Nm.b bVar = null;
        while (it.hasNext()) {
            List<String> m10 = m(it.next());
            e eVar2 = new e();
            int i11 = 0;
            while (i11 < size) {
                eVar2.d(k(i11 < m10.size() ? m10.get(i11) : "", i11, aVar));
                i11++;
            }
            if (bVar == null) {
                bVar = new Nm.b();
                this.f20548a.d(bVar);
            }
            bVar.d(eVar2);
        }
    }

    @Override
    public AbstractC3153b getBlock() {
        return this.f20548a;
    }

    public final Nm.c k(String str, int i10, Vm.a aVar) {
        Nm.c cVar = new Nm.c();
        if (i10 < this.f20550c.size()) {
            cVar.r(this.f20550c.get(i10));
        }
        aVar.a(str.trim(), cVar);
        return cVar;
    }

    public a(List<c.a> list, List<String> list2) {
        this.f20548a = new Nm.a();
        this.f20549b = new ArrayList();
        this.f20552e = true;
        this.f20550c = list;
        this.f20551d = list2;
    }
}
