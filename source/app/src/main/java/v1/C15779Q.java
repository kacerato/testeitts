package v1;

import android.app.Activity;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.tasks.DuplicateTaskCompletionException;
import com.google.android.gms.tasks.RuntimeExecutionException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

public final class C15779Q<TResult> extends AbstractC15790k<TResult> {

    public final Object f121131a = new Object();

    public final C15774L f121132b = new C15774L();

    public boolean f121133c;

    public volatile boolean f121134d;

    @Nullable
    public Object f121135e;

    public Exception f121136f;

    public final boolean A() {
        synchronized (this.f121131a) {
            try {
                if (this.f121133c) {
                    return false;
                }
                this.f121133c = true;
                this.f121134d = true;
                this.f121132b.b(this);
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean B(@NonNull Exception exc) {
        G0.A.s(exc, "Exception must not be null");
        synchronized (this.f121131a) {
            try {
                if (this.f121133c) {
                    return false;
                }
                this.f121133c = true;
                this.f121136f = exc;
                this.f121132b.b(this);
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean C(@Nullable Object obj) {
        synchronized (this.f121131a) {
            try {
                if (this.f121133c) {
                    return false;
                }
                this.f121133c = true;
                this.f121135e = obj;
                this.f121132b.b(this);
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void D() {
        G0.A.y(this.f121133c, "Task is not yet complete");
    }

    public final void E() {
        if (this.f121134d) {
            throw new CancellationException("Task is already canceled.");
        }
    }

    public final void F() {
        if (this.f121133c) {
            throw DuplicateTaskCompletionException.of(this);
        }
    }

    public final void G() {
        synchronized (this.f121131a) {
            try {
                if (this.f121133c) {
                    this.f121132b.b(this);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    @NonNull
    public final AbstractC15790k<TResult> a(@NonNull Activity activity, @NonNull InterfaceC15783d interfaceC15783d) {
        C15764B c15764b = new C15764B(C15792m.f121145a, interfaceC15783d);
        this.f121132b.a(c15764b);
        C15778P.m(activity).n(c15764b);
        G();
        return this;
    }

    @Override
    @NonNull
    public final AbstractC15790k<TResult> b(@NonNull Executor executor, @NonNull InterfaceC15783d interfaceC15783d) {
        this.f121132b.a(new C15764B(executor, interfaceC15783d));
        G();
        return this;
    }

    @Override
    @NonNull
    public final AbstractC15790k<TResult> c(@NonNull InterfaceC15783d interfaceC15783d) {
        b(C15792m.f121145a, interfaceC15783d);
        return this;
    }

    @Override
    @NonNull
    public final AbstractC15790k<TResult> d(@NonNull Activity activity, @NonNull InterfaceC15784e<TResult> interfaceC15784e) {
        C15766D c15766d = new C15766D(C15792m.f121145a, interfaceC15784e);
        this.f121132b.a(c15766d);
        C15778P.m(activity).n(c15766d);
        G();
        return this;
    }

    @Override
    @NonNull
    public final AbstractC15790k<TResult> e(@NonNull Executor executor, @NonNull InterfaceC15784e<TResult> interfaceC15784e) {
        this.f121132b.a(new C15766D(executor, interfaceC15784e));
        G();
        return this;
    }

    @Override
    @NonNull
    public final AbstractC15790k<TResult> f(@NonNull InterfaceC15784e<TResult> interfaceC15784e) {
        this.f121132b.a(new C15766D(C15792m.f121145a, interfaceC15784e));
        G();
        return this;
    }

    @Override
    @NonNull
    public final AbstractC15790k<TResult> g(@NonNull Activity activity, @NonNull InterfaceC15785f interfaceC15785f) {
        C15768F c15768f = new C15768F(C15792m.f121145a, interfaceC15785f);
        this.f121132b.a(c15768f);
        C15778P.m(activity).n(c15768f);
        G();
        return this;
    }

    @Override
    @NonNull
    public final AbstractC15790k<TResult> h(@NonNull Executor executor, @NonNull InterfaceC15785f interfaceC15785f) {
        this.f121132b.a(new C15768F(executor, interfaceC15785f));
        G();
        return this;
    }

    @Override
    @NonNull
    public final AbstractC15790k<TResult> i(@NonNull InterfaceC15785f interfaceC15785f) {
        h(C15792m.f121145a, interfaceC15785f);
        return this;
    }

    @Override
    @NonNull
    public final AbstractC15790k<TResult> j(@NonNull Activity activity, @NonNull InterfaceC15786g<? super TResult> interfaceC15786g) {
        C15770H c15770h = new C15770H(C15792m.f121145a, interfaceC15786g);
        this.f121132b.a(c15770h);
        C15778P.m(activity).n(c15770h);
        G();
        return this;
    }

    @Override
    @NonNull
    public final AbstractC15790k<TResult> k(@NonNull Executor executor, @NonNull InterfaceC15786g<? super TResult> interfaceC15786g) {
        this.f121132b.a(new C15770H(executor, interfaceC15786g));
        G();
        return this;
    }

    @Override
    @NonNull
    public final AbstractC15790k<TResult> l(@NonNull InterfaceC15786g<? super TResult> interfaceC15786g) {
        k(C15792m.f121145a, interfaceC15786g);
        return this;
    }

    @Override
    @NonNull
    public final <TContinuationResult> AbstractC15790k<TContinuationResult> m(@NonNull Executor executor, @NonNull InterfaceC15782c<TResult, TContinuationResult> interfaceC15782c) {
        C15779Q c15779q = new C15779Q();
        this.f121132b.a(new x(executor, interfaceC15782c, c15779q));
        G();
        return c15779q;
    }

    @Override
    @NonNull
    public final <TContinuationResult> AbstractC15790k<TContinuationResult> n(@NonNull InterfaceC15782c<TResult, TContinuationResult> interfaceC15782c) {
        return m(C15792m.f121145a, interfaceC15782c);
    }

    @Override
    @NonNull
    public final <TContinuationResult> AbstractC15790k<TContinuationResult> o(@NonNull Executor executor, @NonNull InterfaceC15782c<TResult, AbstractC15790k<TContinuationResult>> interfaceC15782c) {
        C15779Q c15779q = new C15779Q();
        this.f121132b.a(new z(executor, interfaceC15782c, c15779q));
        G();
        return c15779q;
    }

    @Override
    @NonNull
    public final <TContinuationResult> AbstractC15790k<TContinuationResult> p(@NonNull InterfaceC15782c<TResult, AbstractC15790k<TContinuationResult>> interfaceC15782c) {
        return o(C15792m.f121145a, interfaceC15782c);
    }

    @Override
    @Nullable
    public final Exception q() {
        Exception exc;
        synchronized (this.f121131a) {
            exc = this.f121136f;
        }
        return exc;
    }

    @Override
    public final TResult r() {
        TResult tresult;
        synchronized (this.f121131a) {
            try {
                D();
                E();
                Exception exc = this.f121136f;
                if (exc != null) {
                    throw new RuntimeExecutionException(exc);
                }
                tresult = (TResult) this.f121135e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return tresult;
    }

    @Override
    public final <X extends Throwable> TResult s(@NonNull Class<X> cls) throws Throwable {
        TResult tresult;
        synchronized (this.f121131a) {
            try {
                D();
                E();
                if (cls.isInstance(this.f121136f)) {
                    throw cls.cast(this.f121136f);
                }
                Exception exc = this.f121136f;
                if (exc != null) {
                    throw new RuntimeExecutionException(exc);
                }
                tresult = (TResult) this.f121135e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return tresult;
    }

    @Override
    public final boolean t() {
        return this.f121134d;
    }

    @Override
    public final boolean u() {
        boolean z10;
        synchronized (this.f121131a) {
            z10 = this.f121133c;
        }
        return z10;
    }

    @Override
    public final boolean v() {
        boolean z10;
        synchronized (this.f121131a) {
            try {
                z10 = false;
                if (this.f121133c && !this.f121134d && this.f121136f == null) {
                    z10 = true;
                }
            } finally {
            }
        }
        return z10;
    }

    @Override
    @NonNull
    public final <TContinuationResult> AbstractC15790k<TContinuationResult> w(Executor executor, InterfaceC15789j<TResult, TContinuationResult> interfaceC15789j) {
        C15779Q c15779q = new C15779Q();
        this.f121132b.a(new C15772J(executor, interfaceC15789j, c15779q));
        G();
        return c15779q;
    }

    @Override
    @NonNull
    public final <TContinuationResult> AbstractC15790k<TContinuationResult> x(@NonNull InterfaceC15789j<TResult, TContinuationResult> interfaceC15789j) {
        Executor executor = C15792m.f121145a;
        C15779Q c15779q = new C15779Q();
        this.f121132b.a(new C15772J(executor, interfaceC15789j, c15779q));
        G();
        return c15779q;
    }

    public final void y(@NonNull Exception exc) {
        G0.A.s(exc, "Exception must not be null");
        synchronized (this.f121131a) {
            F();
            this.f121133c = true;
            this.f121136f = exc;
        }
        this.f121132b.b(this);
    }

    public final void z(@Nullable Object obj) {
        synchronized (this.f121131a) {
            F();
            this.f121133c = true;
            this.f121135e = obj;
        }
        this.f121132b.b(this);
    }
}
