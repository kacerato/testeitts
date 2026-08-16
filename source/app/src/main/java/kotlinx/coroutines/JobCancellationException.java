package kotlinx.coroutines;

import Lf.g;
import eg.InterfaceC13098K;
import eg.K0;
import java.util.concurrent.CancellationException;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nExceptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Exceptions.kt\nkotlinx/coroutines/JobCancellationException\n+ 2 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,76:1\n26#2:77\n*S KotlinDebug\n*F\n+ 1 Exceptions.kt\nkotlinx/coroutines/JobCancellationException\n*L\n44#1:77\n*E\n"})
public final class JobCancellationException extends CancellationException implements InterfaceC13098K<JobCancellationException> {

    @g
    @NotNull
    public final transient K0 job;

    public JobCancellationException(@NotNull String str, @Nullable Throwable th2, @NotNull K0 k02) {
        super(str);
        this.job = k02;
        if (th2 != null) {
            initCause(th2);
        }
    }

    @Override
    @Nullable
    public JobCancellationException createCopy() {
        return null;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj != this) {
            if (obj instanceof JobCancellationException) {
                JobCancellationException jobCancellationException = (JobCancellationException) obj;
                if (!M.g(jobCancellationException.getMessage(), getMessage()) || !M.g(jobCancellationException.job, this.job) || !M.g(jobCancellationException.getCause(), getCause())) {
                }
            }
            return false;
        }
        return true;
    }

    @Override
    @NotNull
    public Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    public int hashCode() {
        String message = getMessage();
        M.m(message);
        int hashCode = ((message.hashCode() * 31) + this.job.hashCode()) * 31;
        Throwable cause = getCause();
        return hashCode + (cause != null ? cause.hashCode() : 0);
    }

    @Override
    @NotNull
    public String toString() {
        return super.toString() + "; job=" + ((Object) this.job);
    }
}
