package qe;

import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import qe.AbstractC15076e;

public class C15079h extends AbstractC15076e {

    public final TextView.BufferType f106154a;

    public final Vm.d f106155b;

    public final AbstractC15085n f106156c;

    public final C15078g f106157d;

    public final List<InterfaceC15080i> f106158e;

    @Nullable
    public final AbstractC15076e.b f106159f;

    public final boolean f106160g;

    public class a implements Runnable {

        public final TextView f106161b;

        public a(TextView textView) {
            this.f106161b = textView;
        }

        @Override
        public void run() {
            Iterator it = C15079h.this.f106158e.iterator();
            while (it.hasNext()) {
                ((InterfaceC15080i) it.next()).b(this.f106161b);
            }
        }
    }

    public C15079h(@NonNull TextView.BufferType bufferType, @Nullable AbstractC15076e.b bVar, @NonNull Vm.d dVar, @NonNull AbstractC15085n abstractC15085n, @NonNull C15078g c15078g, @NonNull List<InterfaceC15080i> list, boolean z10) {
        this.f106154a = bufferType;
        this.f106159f = bVar;
        this.f106155b = dVar;
        this.f106156c = abstractC15085n;
        this.f106157d = c15078g;
        this.f106158e = list;
        this.f106160g = z10;
    }

    @Override
    @NonNull
    public C15078g c() {
        return this.f106157d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Object, qe.i] */
    @Override
    @Nullable
    public <P extends InterfaceC15080i> P e(@NonNull Class<P> cls) {
        P p10 = null;
        for (InterfaceC15080i interfaceC15080i : this.f106158e) {
            if (cls.isAssignableFrom(interfaceC15080i.getClass())) {
                p10 = interfaceC15080i;
            }
        }
        return p10;
    }

    @Override
    @NonNull
    public List<? extends InterfaceC15080i> f() {
        return Collections.unmodifiableList(this.f106158e);
    }

    @Override
    public boolean g(@NonNull Class<? extends InterfaceC15080i> cls) {
        return e(cls) != null;
    }

    @Override
    @NonNull
    public Um.v h(@NonNull String str) {
        Iterator<InterfaceC15080i> it = this.f106158e.iterator();
        while (it.hasNext()) {
            str = it.next().g(str);
        }
        return this.f106155b.c(str);
    }

    @Override
    @NonNull
    public Spanned i(@NonNull Um.v vVar) {
        Iterator<InterfaceC15080i> it = this.f106158e.iterator();
        while (it.hasNext()) {
            it.next().d(vVar);
        }
        InterfaceC15084m a10 = this.f106156c.a();
        vVar.c(a10);
        Iterator<InterfaceC15080i> it2 = this.f106158e.iterator();
        while (it2.hasNext()) {
            it2.next().i(vVar, a10);
        }
        return a10.w().q();
    }

    @Override
    @NonNull
    public <P extends InterfaceC15080i> P j(@NonNull Class<P> cls) {
        P p10 = (P) e(cls);
        if (p10 != null) {
            return p10;
        }
        throw new IllegalStateException(String.format(Locale.US, "Requested plugin `%s` is not registered with this Markwon instance", cls.getName()));
    }

    @Override
    public void k(@NonNull TextView textView, @NonNull String str) {
        l(textView, m(str));
    }

    @Override
    public void l(@NonNull TextView textView, @NonNull Spanned spanned) {
        Iterator<InterfaceC15080i> it = this.f106158e.iterator();
        while (it.hasNext()) {
            it.next().k(textView, spanned);
        }
        AbstractC15076e.b bVar = this.f106159f;
        if (bVar != null) {
            bVar.a(textView, spanned, this.f106154a, new a(textView));
            return;
        }
        textView.setText(spanned, this.f106154a);
        Iterator<InterfaceC15080i> it2 = this.f106158e.iterator();
        while (it2.hasNext()) {
            it2.next().b(textView);
        }
    }

    @Override
    @NonNull
    public Spanned m(@NonNull String str) {
        Spanned i10 = i(h(str));
        return (TextUtils.isEmpty(i10) && this.f106160g && !TextUtils.isEmpty(str)) ? new SpannableStringBuilder(str) : i10;
    }
}
