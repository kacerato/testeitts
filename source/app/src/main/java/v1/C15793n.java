package v1;

import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import l1.HandlerC14042a;

public final class C15793n {
    public static <TResult> TResult a(@NonNull AbstractC15790k<TResult> abstractC15790k) throws ExecutionException, InterruptedException {
        G0.A.p();
        G0.A.n();
        G0.A.s(abstractC15790k, "Task must not be null");
        if (abstractC15790k.u()) {
            return (TResult) s(abstractC15790k);
        }
        C15797s c15797s = new C15797s(null);
        t(abstractC15790k, c15797s);
        c15797s.d();
        return (TResult) s(abstractC15790k);
    }

    public static <TResult> TResult b(@NonNull AbstractC15790k<TResult> abstractC15790k, long j10, @NonNull TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        G0.A.p();
        G0.A.n();
        G0.A.s(abstractC15790k, "Task must not be null");
        G0.A.s(timeUnit, "TimeUnit must not be null");
        if (abstractC15790k.u()) {
            return (TResult) s(abstractC15790k);
        }
        C15797s c15797s = new C15797s(null);
        t(abstractC15790k, c15797s);
        if (c15797s.e(j10, timeUnit)) {
            return (TResult) s(abstractC15790k);
        }
        throw new TimeoutException("Timed out waiting for Task");
    }

    @NonNull
    @Deprecated
    public static <TResult> AbstractC15790k<TResult> c(@NonNull Callable<TResult> callable) {
        return d(C15792m.f121145a, callable);
    }

    @NonNull
    @Deprecated
    public static <TResult> AbstractC15790k<TResult> d(@NonNull Executor executor, @NonNull Callable<TResult> callable) {
        G0.A.s(executor, "Executor must not be null");
        G0.A.s(callable, "Callback must not be null");
        C15779Q c15779q = new C15779Q();
        executor.execute(new U(c15779q, callable));
        return c15779q;
    }

    @NonNull
    public static <TResult> AbstractC15790k<TResult> e() {
        C15779Q c15779q = new C15779Q();
        c15779q.A();
        return c15779q;
    }

    @NonNull
    public static <TResult> AbstractC15790k<TResult> f(@NonNull Exception exc) {
        C15779Q c15779q = new C15779Q();
        c15779q.y(exc);
        return c15779q;
    }

    @NonNull
    public static <TResult> AbstractC15790k<TResult> g(TResult tresult) {
        C15779Q c15779q = new C15779Q();
        c15779q.z(tresult);
        return c15779q;
    }

    @NonNull
    public static AbstractC15790k<Void> h(@Nullable Collection<? extends AbstractC15790k<?>> collection) {
        if (collection == null || collection.isEmpty()) {
            return g(null);
        }
        Iterator<? extends AbstractC15790k<?>> it = collection.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new NullPointerException("null tasks are not accepted");
            }
        }
        C15779Q c15779q = new C15779Q();
        C15799u c15799u = new C15799u(collection.size(), c15779q);
        Iterator<? extends AbstractC15790k<?>> it2 = collection.iterator();
        while (it2.hasNext()) {
            t(it2.next(), c15799u);
        }
        return c15779q;
    }

    @NonNull
    public static AbstractC15790k<Void> i(@Nullable AbstractC15790k<?>... abstractC15790kArr) {
        return (abstractC15790kArr == null || abstractC15790kArr.length == 0) ? g(null) : h(Arrays.asList(abstractC15790kArr));
    }

    @NonNull
    public static AbstractC15790k<List<AbstractC15790k<?>>> j(@Nullable Collection<? extends AbstractC15790k<?>> collection) {
        return k(C15792m.f121145a, collection);
    }

    @NonNull
    public static AbstractC15790k<List<AbstractC15790k<?>>> k(@NonNull Executor executor, @Nullable Collection<? extends AbstractC15790k<?>> collection) {
        return (collection == null || collection.isEmpty()) ? g(Collections.emptyList()) : h(collection).o(executor, new C15796q(collection));
    }

    @NonNull
    public static AbstractC15790k<List<AbstractC15790k<?>>> l(@NonNull Executor executor, @Nullable AbstractC15790k<?>... abstractC15790kArr) {
        return (abstractC15790kArr == null || abstractC15790kArr.length == 0) ? g(Collections.emptyList()) : k(executor, Arrays.asList(abstractC15790kArr));
    }

    @NonNull
    public static AbstractC15790k<List<AbstractC15790k<?>>> m(@Nullable AbstractC15790k<?>... abstractC15790kArr) {
        return (abstractC15790kArr == null || abstractC15790kArr.length == 0) ? g(Collections.emptyList()) : j(Arrays.asList(abstractC15790kArr));
    }

    @NonNull
    public static <TResult> AbstractC15790k<List<TResult>> n(@Nullable Collection<? extends AbstractC15790k> collection) {
        return o(C15792m.f121145a, collection);
    }

    @NonNull
    public static <TResult> AbstractC15790k<List<TResult>> o(@NonNull Executor executor, @Nullable Collection<? extends AbstractC15790k> collection) {
        return (collection == null || collection.isEmpty()) ? g(Collections.emptyList()) : (AbstractC15790k<List<TResult>>) h(collection).m(executor, new C15795p(collection));
    }

    @NonNull
    public static <TResult> AbstractC15790k<List<TResult>> p(@NonNull Executor executor, @Nullable AbstractC15790k... abstractC15790kArr) {
        return (abstractC15790kArr == null || abstractC15790kArr.length == 0) ? g(Collections.emptyList()) : o(executor, Arrays.asList(abstractC15790kArr));
    }

    @NonNull
    public static <TResult> AbstractC15790k<List<TResult>> q(@Nullable AbstractC15790k... abstractC15790kArr) {
        return (abstractC15790kArr == null || abstractC15790kArr.length == 0) ? g(Collections.emptyList()) : n(Arrays.asList(abstractC15790kArr));
    }

    @NonNull
    public static <T> AbstractC15790k<T> r(@NonNull AbstractC15790k<T> abstractC15790k, long j10, @NonNull TimeUnit timeUnit) {
        G0.A.s(abstractC15790k, "Task must not be null");
        G0.A.b(j10 > 0, "Timeout must be positive");
        G0.A.s(timeUnit, "TimeUnit must not be null");
        final v vVar = new v();
        final C15791l c15791l = new C15791l(vVar);
        final HandlerC14042a handlerC14042a = new HandlerC14042a(Looper.getMainLooper());
        handlerC14042a.postDelayed(new Runnable() {
            @Override
            public final void run() {
                C15791l.this.d(new TimeoutException());
            }
        }, timeUnit.toMillis(j10));
        abstractC15790k.f(new InterfaceC15784e() {
            @Override
            public final void a(AbstractC15790k abstractC15790k2) {
                HandlerC14042a.this.removeCallbacksAndMessages(null);
                C15791l c15791l2 = c15791l;
                if (abstractC15790k2.v()) {
                    c15791l2.e(abstractC15790k2.r());
                } else {
                    if (abstractC15790k2.t()) {
                        vVar.c();
                        return;
                    }
                    Exception q10 = abstractC15790k2.q();
                    q10.getClass();
                    c15791l2.d(q10);
                }
            }
        });
        return c15791l.a();
    }

    public static Object s(@NonNull AbstractC15790k abstractC15790k) throws ExecutionException {
        if (abstractC15790k.v()) {
            return abstractC15790k.r();
        }
        if (abstractC15790k.t()) {
            throw new CancellationException("Task is already canceled");
        }
        throw new ExecutionException(abstractC15790k.q());
    }

    public static void t(AbstractC15790k abstractC15790k, InterfaceC15798t interfaceC15798t) {
        Executor executor = C15792m.f121146b;
        abstractC15790k.k(executor, interfaceC15798t);
        abstractC15790k.h(executor, interfaceC15798t);
        abstractC15790k.b(executor, interfaceC15798t);
    }
}
