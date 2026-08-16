package G0;

import B0.C2320e;
import B0.C2323h;
import D0.InterfaceC2438d;
import D0.InterfaceC2452k;
import android.accounts.Account;
import android.content.Context;
import android.os.Handler;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.api.AbstractC11908l;
import com.google.android.gms.common.api.C11894a;
import com.google.android.gms.common.api.Scope;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Executor;

@C0.a
public abstract class AbstractC2580n<T extends IInterface> extends AbstractC2564f<T> implements C11894a.f, InterfaceC2555a0 {

    @Nullable
    public static volatile Executor f7462Q;

    public final C2570i f7463N;

    public final Set f7464O;

    @Nullable
    public final Account f7465P;

    @C0.a
    @VisibleForTesting
    public AbstractC2580n(@NonNull Context context, @NonNull Handler handler, int i10, @NonNull C2570i c2570i) {
        super(context, handler, AbstractC2582o.e(context), C2323h.x(), i10, null, null);
        this.f7463N = (C2570i) A.r(c2570i);
        this.f7465P = c2570i.b();
        this.f7464O = u0(c2570i.e());
    }

    @Override
    @Nullable
    public final Account B() {
        return this.f7465P;
    }

    @Override
    @Nullable
    @C0.a
    public Executor E() {
        return null;
    }

    @Override
    @NonNull
    @C0.a
    public final Set<Scope> L() {
        return this.f7464O;
    }

    @Override
    @NonNull
    @C0.a
    public Set<Scope> i() {
        return g() ? this.f7464O : Collections.emptySet();
    }

    @Override
    @NonNull
    @C0.a
    public C2320e[] p() {
        return new C2320e[0];
    }

    @NonNull
    @C0.a
    public final C2570i s0() {
        return this.f7463N;
    }

    @NonNull
    @C0.a
    public Set<Scope> t0(@NonNull Set<Scope> set) {
        return set;
    }

    public final Set u0(@NonNull Set set) {
        Set<Scope> t02 = t0(set);
        Iterator<Scope> it = t02.iterator();
        while (it.hasNext()) {
            if (!set.contains(it.next())) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        return t02;
    }

    @C0.a
    public AbstractC2580n(@NonNull Context context, @NonNull Looper looper, int i10, @NonNull C2570i c2570i) {
        this(context, looper, AbstractC2582o.e(context), C2323h.x(), i10, c2570i, null, null);
    }

    @C0.a
    @Deprecated
    public AbstractC2580n(@NonNull Context context, @NonNull Looper looper, int i10, @NonNull C2570i c2570i, @NonNull AbstractC11908l.b bVar, @NonNull AbstractC11908l.c cVar) {
        this(context, looper, i10, c2570i, (InterfaceC2438d) bVar, (InterfaceC2452k) cVar);
    }

    @C0.a
    public AbstractC2580n(@NonNull Context context, @NonNull Looper looper, int i10, @NonNull C2570i c2570i, @NonNull InterfaceC2438d interfaceC2438d, @NonNull InterfaceC2452k interfaceC2452k) {
        this(context, looper, AbstractC2582o.e(context), C2323h.x(), i10, c2570i, (InterfaceC2438d) A.r(interfaceC2438d), (InterfaceC2452k) A.r(interfaceC2452k));
    }

    @VisibleForTesting
    public AbstractC2580n(@NonNull Context context, @NonNull Looper looper, @NonNull AbstractC2582o abstractC2582o, @NonNull C2323h c2323h, int i10, @NonNull C2570i c2570i, @Nullable InterfaceC2438d interfaceC2438d, @Nullable InterfaceC2452k interfaceC2452k) {
        super(context, looper, abstractC2582o, c2323h, i10, interfaceC2438d == null ? null : new Y(interfaceC2438d), interfaceC2452k == null ? null : new Z(interfaceC2452k), c2570i.m());
        this.f7463N = c2570i;
        this.f7465P = c2570i.b();
        this.f7464O = u0(c2570i.e());
    }
}
