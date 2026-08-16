package android.accounts;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/accounts/AccountManagerFuture.class
 */
public interface AccountManagerFuture<V> {
    boolean cancel(boolean z10);

    boolean isCancelled();

    boolean isDone();

    V getResult() throws OperationCanceledException, IOException, AuthenticatorException;

    V getResult(long j10, TimeUnit timeUnit) throws OperationCanceledException, IOException, AuthenticatorException;
}
