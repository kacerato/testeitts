package qe;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import qe.InterfaceC15080i;
import re.C15171a;

public class C15092u implements InterfaceC15080i.b {

    public final List<InterfaceC15080i> f107833a;

    public final List<InterfaceC15080i> f107834b;

    public final Set<InterfaceC15080i> f107835c = new HashSet(3);

    public C15092u(@NonNull List<InterfaceC15080i> list) {
        this.f107833a = list;
        this.f107834b = new ArrayList(list.size());
    }

    @Nullable
    public static <P extends InterfaceC15080i> P d(@NonNull List<InterfaceC15080i> list, @NonNull Class<P> cls) {
        Iterator<InterfaceC15080i> it = list.iterator();
        while (it.hasNext()) {
            P p10 = (P) it.next();
            if (cls.isAssignableFrom(p10.getClass())) {
                return p10;
            }
        }
        return null;
    }

    public final void a(@NonNull InterfaceC15080i interfaceC15080i) {
        if (this.f107834b.contains(interfaceC15080i)) {
            return;
        }
        if (this.f107835c.contains(interfaceC15080i)) {
            throw new IllegalStateException("Cyclic dependency chain found: " + ((Object) this.f107835c));
        }
        this.f107835c.add(interfaceC15080i);
        interfaceC15080i.a(this);
        this.f107835c.remove(interfaceC15080i);
        if (this.f107834b.contains(interfaceC15080i)) {
            return;
        }
        if (C15171a.class.isAssignableFrom(interfaceC15080i.getClass())) {
            this.f107834b.add(0, interfaceC15080i);
        } else {
            this.f107834b.add(interfaceC15080i);
        }
    }

    @Override
    @NonNull
    public <P extends InterfaceC15080i> P b(@NonNull Class<P> cls) {
        return (P) e(cls);
    }

    @Override
    public <P extends InterfaceC15080i> void c(@NonNull Class<P> cls, @NonNull InterfaceC15080i.a<? super P> aVar) {
        aVar.a(e(cls));
    }

    @NonNull
    public final <P extends InterfaceC15080i> P e(@NonNull Class<P> cls) {
        P p10 = (P) d(this.f107834b, cls);
        if (p10 == null) {
            p10 = (P) d(this.f107833a, cls);
            if (p10 == null) {
                throw new IllegalStateException("Requested plugin is not added: " + cls.getName() + ", plugins: " + ((Object) this.f107833a));
            }
            a(p10);
        }
        return p10;
    }

    @NonNull
    public List<InterfaceC15080i> f() {
        Iterator<InterfaceC15080i> it = this.f107833a.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
        return this.f107834b;
    }
}
