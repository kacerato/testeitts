package F7;

import F7.i;
import android.app.Activity;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.Iterator;
import java.util.List;

public class l<T extends i> {

    public final RecyclerView f6691a;

    public f<T> f6692b;

    public T f6693c;

    public final k<T> f6694d;

    public class a implements g<T> {
        public a() {
        }

        @Override
        public void b(T element, View v10) {
            l.this.f6694d.b(element, v10);
        }

        @Override
        public void c(T eElement) {
            if (eElement.f6684f.f6678c) {
                l.this.h(eElement);
            } else {
                l.this.r(eElement);
            }
        }

        @Override
        public void d(T element) {
            l.this.D(element);
        }
    }

    public l(RecyclerView recyclerView, k<T> treeInterface) {
        if (treeInterface == null) {
            throw new NullPointerException("interface can't be null");
        }
        Activity o10 = N7.c.o();
        this.f6691a = recyclerView;
        this.f6694d = treeInterface;
        i(o10);
    }

    public static <T extends i> i m(T parent, T element) {
        h hVar;
        List<i> list;
        for (i iVar : parent.f6684f.f6677b) {
            if (iVar.f6682d && (hVar = iVar.f6684f) != null && (list = hVar.f6677b) != null) {
                if (list.contains(element)) {
                    return iVar;
                }
                i m10 = m(iVar, element);
                if (m10 != null) {
                    return m10;
                }
            }
        }
        return null;
    }

    public void A(T element, boolean force) {
        if (element == null) {
            throw new NullPointerException("element can't be null");
        }
        h hVar = element.f6684f;
        if (hVar.f6678c && force) {
            hVar.f6678c = false;
        }
        r(element);
    }

    public void B(T element) {
        int o10 = this.f6692b.o(element);
        if (o10 >= 0) {
            this.f6691a.scrollToPosition(o10);
        }
    }

    public void C(List<T> elements) {
        if (elements == null) {
            throw new NullPointerException("elements can't be null");
        }
        for (int i10 = 0; i10 < this.f6692b.getItemCount(); i10++) {
            f(this.f6692b.p(i10));
        }
        Iterator<T> it = elements.iterator();
        while (it.hasNext()) {
            f(it.next());
        }
        this.f6692b.v(elements);
        l();
        this.f6694d.a();
    }

    public void D(T element) {
        this.f6693c = element;
        this.f6692b.w(element);
        this.f6694d.e(element);
    }

    public void E(T eElement) {
        if (eElement.f6684f.f6678c) {
            h(eElement);
        } else {
            r(eElement);
        }
    }

    public void d(T element) {
        if (element == null) {
            throw new NullPointerException("element can't be null");
        }
        f(element);
        this.f6692b.l(element);
        l();
        this.f6694d.a();
    }

    public void e(T element, int index) {
        if (element == null) {
            throw new NullPointerException("element can't be null");
        }
        f(element);
        this.f6692b.k(index, element);
        l();
        this.f6694d.a();
    }

    public final void f(i element) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        synchronized (element.f6684f.f6676a) {
            try {
                List<i> list = element.f6684f.f6677b;
                if (list != null) {
                    steppedArrayList.addAll(list);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        Iterator<T> it = steppedArrayList.iterator();
        while (it.hasNext()) {
            f((i) it.next());
        }
        synchronized (element.f6684f.f6676a) {
            element.f6684f.f6677b = null;
        }
    }

    public void g() {
        this.f6692b.m();
    }

    public final void h(T eElement) {
        if (eElement == null) {
            throw new NullPointerException("element can't be null");
        }
        if (eElement.f6684f.f6678c) {
            d.b(eElement, this.f6692b);
            synchronized (eElement.f6684f.f6676a) {
                h hVar = eElement.f6684f;
                hVar.f6677b = null;
                hVar.f6678c = false;
            }
            try {
                this.f6692b.s(eElement);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            try {
                this.f6694d.d(eElement, false);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            try {
                this.f6694d.a();
            } catch (Exception e12) {
                e12.printStackTrace();
            }
        }
    }

    public void i(Activity activity) {
        List<T> c10 = this.f6694d.c();
        this.f6691a.setLayoutManager(new LinearLayoutManager(activity));
        f<T> fVar = new f<>(c10, activity, new a());
        this.f6692b = fVar;
        this.f6691a.setAdapter(fVar);
        this.f6691a.setItemAnimator(null);
        l();
        this.f6694d.a();
    }

    public T j(int i10) {
        return this.f6692b.p(i10);
    }

    public int k() {
        return this.f6692b.getItemCount();
    }

    public final void l() {
        h hVar;
        boolean z10;
        int i10 = 0;
        while (true) {
            for (boolean z11 = true; z11; z11 = false) {
                int H10 = Nc.b.H(i10);
                for (int i11 = H10; i11 < this.f6692b.getItemCount(); i11++) {
                    T p10 = this.f6692b.p(i11);
                    synchronized (p10.f6684f.f6676a) {
                        hVar = p10.f6684f;
                        z10 = hVar.f6677b == null;
                    }
                    if ((hVar.f6678c && z10) || p10.f6683e) {
                        hVar.f6678c = false;
                        r(p10);
                        p10.f6683e = false;
                        i10 = i11 - 1;
                    }
                }
                i10 = H10;
            }
            return;
        }
    }

    public T n(T t10) {
        h hVar;
        List<i> list;
        t10.getClass();
        for (int i10 = 0; i10 < this.f6692b.getItemCount(); i10++) {
            T p10 = this.f6692b.p(i10);
            if (p10.f6682d && (hVar = p10.f6684f) != null && (list = hVar.f6677b) != null) {
                if (list.contains(t10)) {
                    return p10;
                }
                T t11 = (T) m(p10, t10);
                if (t11 != null) {
                    return t11;
                }
            }
        }
        return null;
    }

    public T o() {
        return this.f6693c;
    }

    public void p(String goToFolder) {
        if (goToFolder == null || goToFolder.trim().isEmpty()) {
            return;
        }
        String replace = goToFolder.replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "");
        if (!replace.endsWith(".meta") && Tc.b.D(replace)) {
            replace = Tc.b.u(replace);
        }
        if (replace != null) {
            int i10 = 0;
            while (true) {
                for (boolean z10 = true; z10; z10 = false) {
                    i10++;
                    if (i10 > 50) {
                        return;
                    }
                    for (int i11 = 0; i11 < this.f6692b.getItemCount(); i11++) {
                        T p10 = this.f6692b.p(i11);
                        String replace2 = p10.f6679a.replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "");
                        if (replace2 != null && !replace2.trim().isEmpty()) {
                            if (!replace.endsWith(".meta") || !Tc.b.O(replace).equals(Tc.b.O(replace2))) {
                                if (!replace.equals(replace2)) {
                                    if (p10.f6682d) {
                                        if (!replace.startsWith(replace2)) {
                                            if (q(replace, p10)) {
                                                break;
                                            }
                                        } else if (p10.f6684f.f6678c) {
                                            if (q(replace, p10)) {
                                                break;
                                            }
                                        } else {
                                            r(p10);
                                        }
                                    } else {
                                        continue;
                                    }
                                } else {
                                    D(p10);
                                }
                            } else {
                                D(p10);
                            }
                        } else {
                            if (q(replace, p10)) {
                                break;
                            }
                        }
                    }
                }
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean q(String goToFolder, i parent) {
        List<i> list = parent.f6684f.f6677b;
        if (list == null) {
            return false;
        }
        for (i iVar : list) {
            String replace = iVar.f6679a.replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "");
            if (replace == null || replace.trim().isEmpty()) {
                if (q(goToFolder, iVar)) {
                    return true;
                }
            } else if (goToFolder.endsWith(".meta") && Tc.b.O(goToFolder).equals(Tc.b.O(replace))) {
                D(iVar);
            } else if (goToFolder.equals(replace)) {
                D(iVar);
            } else if (!iVar.f6682d) {
                continue;
            } else if (goToFolder.startsWith(replace)) {
                if (!iVar.f6684f.f6678c) {
                    r(iVar);
                    return true;
                }
                if (q(goToFolder, iVar)) {
                    return true;
                }
            } else if (q(goToFolder, iVar)) {
                return true;
            }
        }
        return false;
    }

    public final void r(T eElement) {
        if (eElement == null) {
            throw new NullPointerException("element can't be null");
        }
        h hVar = eElement.f6684f;
        if (hVar.f6678c) {
            return;
        }
        hVar.f6678c = true;
        eElement.f6683e = false;
        d.b(eElement, this.f6692b);
        List<T> f10 = this.f6694d.f(eElement);
        if (f10 == null) {
            throw new RuntimeException("Never return null lists in tree list interface");
        }
        synchronized (eElement.f6684f.f6676a) {
            eElement.f6684f.f6677b = f10;
        }
        if (!f10.isEmpty()) {
            int o10 = this.f6692b.o(eElement) + 1;
            for (int i10 = 0; i10 < f10.size(); i10++) {
                T t10 = f10.get(i10);
                f(t10);
                this.f6692b.k(o10 + i10, t10);
            }
            l();
            try {
                this.f6694d.a();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        try {
            this.f6694d.d(eElement, true);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public void s() {
        this.f6692b.notifyDataSetChanged();
    }

    public void t(T element) {
        if (element == null) {
            throw new NullPointerException("element can't be null");
        }
        this.f6692b.s(element);
        l();
        this.f6694d.a();
    }

    public void u(T element) {
        if (element == null) {
            throw new NullPointerException("element can't be null");
        }
        this.f6692b.s(element);
        l();
        this.f6694d.a();
        h hVar = element.f6684f;
        if (hVar.f6678c) {
            hVar.f6678c = false;
            r(element);
        }
    }

    public void v() {
        for (int i10 = 0; i10 < this.f6692b.getItemCount(); i10++) {
            f(this.f6692b.p(i10));
        }
        List<T> c10 = this.f6694d.c();
        if (c10 == null) {
            throw new RuntimeException("Never return null lists in tree list interface");
        }
        Iterator<T> it = c10.iterator();
        while (it.hasNext()) {
            f(it.next());
        }
        this.f6692b.v(c10);
        l();
        this.f6694d.a();
    }

    public void w(T element) {
        if (element == null) {
            throw new NullPointerException("element can't be null");
        }
        this.f6692b.t(element);
        l();
        this.f6694d.a();
    }

    public void x(T element) {
        if (element == null) {
            throw new NullPointerException("element can't be null");
        }
        y(element, false);
    }

    public void y(T element, boolean force) {
        if (element == null) {
            throw new NullPointerException("element can't be null");
        }
        h hVar = element.f6684f;
        if (!hVar.f6678c && force) {
            hVar.f6678c = true;
        }
        h(element);
    }

    public void z(T element) {
        if (element == null) {
            throw new NullPointerException("element can't be null");
        }
        A(element, false);
    }
}
