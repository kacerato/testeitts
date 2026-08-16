package qe;

import Vm.d;
import android.content.Context;
import android.widget.TextView;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import qe.AbstractC15076e;
import qe.C15078g;
import qe.C15083l;
import qe.C15086o;
import re.C15173c;

public class C15077f implements AbstractC15076e.a {

    public final Context f106135a;

    public AbstractC15076e.b f106138d;

    public final List<InterfaceC15080i> f106136b = new ArrayList(3);

    public TextView.BufferType f106137c = TextView.BufferType.SPANNABLE;

    public boolean f106139e = true;

    public C15077f(@NonNull Context context) {
        this.f106135a = context;
    }

    @NonNull
    public static List<InterfaceC15080i> f(@NonNull List<InterfaceC15080i> list) {
        return new C15092u(list).f();
    }

    @Override
    @NonNull
    public AbstractC15076e.a a(@NonNull InterfaceC15080i interfaceC15080i) {
        this.f106136b.add(interfaceC15080i);
        return this;
    }

    @Override
    @NonNull
    public AbstractC15076e.a b(@NonNull Iterable<? extends InterfaceC15080i> iterable) {
        for (InterfaceC15080i interfaceC15080i : iterable) {
            interfaceC15080i.getClass();
            this.f106136b.add(interfaceC15080i);
        }
        return this;
    }

    @Override
    @NonNull
    public AbstractC15076e build() {
        if (this.f106136b.isEmpty()) {
            throw new IllegalStateException("No plugins were added to this builder. Use #usePlugin method to add them");
        }
        List<InterfaceC15080i> f10 = f(this.f106136b);
        d.b bVar = new d.b();
        C15173c.a k10 = C15173c.k(this.f106135a);
        C15078g.b bVar2 = new C15078g.b();
        C15086o.a aVar = new C15086o.a();
        C15083l.a aVar2 = new C15083l.a();
        for (InterfaceC15080i interfaceC15080i : f10) {
            interfaceC15080i.c(bVar);
            interfaceC15080i.e(k10);
            interfaceC15080i.f(bVar2);
            interfaceC15080i.j(aVar);
            interfaceC15080i.h(aVar2);
        }
        C15078g i10 = bVar2.i(k10.A(), aVar2.build());
        return new C15079h(this.f106137c, this.f106138d, bVar.f(), AbstractC15085n.b(aVar, i10), i10, Collections.unmodifiableList(f10), this.f106139e);
    }

    @Override
    @NonNull
    public AbstractC15076e.a c(@NonNull TextView.BufferType bufferType) {
        this.f106137c = bufferType;
        return this;
    }

    @Override
    @NonNull
    public AbstractC15076e.a d(@NonNull AbstractC15076e.b bVar) {
        this.f106138d = bVar;
        return this;
    }

    @Override
    @NonNull
    public AbstractC15076e.a e(boolean z10) {
        this.f106139e = z10;
        return this;
    }
}
