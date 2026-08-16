package v1;

import android.app.Activity;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.Executor;

public abstract class AbstractC15790k<TResult> {
    @NonNull
    public AbstractC15790k<TResult> a(@NonNull Activity activity, @NonNull InterfaceC15783d interfaceC15783d) {
        throw new UnsupportedOperationException("addOnCanceledListener is not implemented.");
    }

    @NonNull
    public AbstractC15790k<TResult> b(@NonNull Executor executor, @NonNull InterfaceC15783d interfaceC15783d) {
        throw new UnsupportedOperationException("addOnCanceledListener is not implemented");
    }

    @NonNull
    public AbstractC15790k<TResult> c(@NonNull InterfaceC15783d interfaceC15783d) {
        throw new UnsupportedOperationException("addOnCanceledListener is not implemented.");
    }

    @NonNull
    public AbstractC15790k<TResult> d(@NonNull Activity activity, @NonNull InterfaceC15784e<TResult> interfaceC15784e) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    @NonNull
    public AbstractC15790k<TResult> e(@NonNull Executor executor, @NonNull InterfaceC15784e<TResult> interfaceC15784e) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    @NonNull
    public AbstractC15790k<TResult> f(@NonNull InterfaceC15784e<TResult> interfaceC15784e) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    @NonNull
    public abstract AbstractC15790k<TResult> g(@NonNull Activity activity, @NonNull InterfaceC15785f interfaceC15785f);

    @NonNull
    public abstract AbstractC15790k<TResult> h(@NonNull Executor executor, @NonNull InterfaceC15785f interfaceC15785f);

    @NonNull
    public abstract AbstractC15790k<TResult> i(@NonNull InterfaceC15785f interfaceC15785f);

    @NonNull
    public abstract AbstractC15790k<TResult> j(@NonNull Activity activity, @NonNull InterfaceC15786g<? super TResult> interfaceC15786g);

    @NonNull
    public abstract AbstractC15790k<TResult> k(@NonNull Executor executor, @NonNull InterfaceC15786g<? super TResult> interfaceC15786g);

    @NonNull
    public abstract AbstractC15790k<TResult> l(@NonNull InterfaceC15786g<? super TResult> interfaceC15786g);

    @NonNull
    public <TContinuationResult> AbstractC15790k<TContinuationResult> m(@NonNull Executor executor, @NonNull InterfaceC15782c<TResult, TContinuationResult> interfaceC15782c) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    @NonNull
    public <TContinuationResult> AbstractC15790k<TContinuationResult> n(@NonNull InterfaceC15782c<TResult, TContinuationResult> interfaceC15782c) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    @NonNull
    public <TContinuationResult> AbstractC15790k<TContinuationResult> o(@NonNull Executor executor, @NonNull InterfaceC15782c<TResult, AbstractC15790k<TContinuationResult>> interfaceC15782c) {
        throw new UnsupportedOperationException("continueWithTask is not implemented");
    }

    @NonNull
    public <TContinuationResult> AbstractC15790k<TContinuationResult> p(@NonNull InterfaceC15782c<TResult, AbstractC15790k<TContinuationResult>> interfaceC15782c) {
        throw new UnsupportedOperationException("continueWithTask is not implemented");
    }

    @Nullable
    public abstract Exception q();

    public abstract TResult r();

    public abstract <X extends Throwable> TResult s(@NonNull Class<X> cls) throws Throwable;

    public abstract boolean t();

    public abstract boolean u();

    public abstract boolean v();

    @NonNull
    public <TContinuationResult> AbstractC15790k<TContinuationResult> w(@NonNull Executor executor, @NonNull InterfaceC15789j<TResult, TContinuationResult> interfaceC15789j) {
        throw new UnsupportedOperationException("onSuccessTask is not implemented");
    }

    @NonNull
    public <TContinuationResult> AbstractC15790k<TContinuationResult> x(@NonNull InterfaceC15789j<TResult, TContinuationResult> interfaceC15789j) {
        throw new UnsupportedOperationException("onSuccessTask is not implemented");
    }
}
