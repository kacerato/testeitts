package com.google.common.util.concurrent;

import com.google.common.collect.C12506c2;
import com.google.common.collect.D2;
import com.google.common.util.concurrent.t0;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@A
@v2.c
@InterfaceC15800a
public final class t0 implements E0 {

    public final ExecutorService f67512a;

    public class a implements InvocationHandler {

        public final Object f67513a;

        public final long f67514b;

        public final TimeUnit f67515c;

        public final Set f67516d;

        public a(Object obj, long j10, TimeUnit timeUnit, Set set) {
            this.f67513a = obj;
            this.f67514b = j10;
            this.f67515c = timeUnit;
            this.f67516d = set;
        }

        public static Object b(Method method, Object obj, Object[] objArr) throws Exception {
            try {
                return method.invoke(obj, objArr);
            } catch (InvocationTargetException e10) {
                throw t0.n(e10, false);
            }
        }

        @Override
        @CheckForNull
        public Object invoke(Object obj, final Method method, @CheckForNull final Object[] objArr) throws Throwable {
            final Object obj2 = this.f67513a;
            return t0.this.h(new Callable() {
                @Override
                public final Object call() {
                    Object b10;
                    b10 = t0.a.b(Method.this, obj2, objArr);
                    return b10;
                }
            }, this.f67514b, this.f67515c, this.f67516d.contains(method));
        }
    }

    public t0(ExecutorService executorService) {
        this.f67512a = (ExecutorService) w2.H.E(executorService);
    }

    public static void i(long j10) {
        w2.H.p(j10 > 0, "timeout must be positive: %s", j10);
    }

    public static t0 j(ExecutorService executorService) {
        return new t0(executorService);
    }

    public static boolean k(Method method) {
        for (Class<?> cls : method.getExceptionTypes()) {
            if (cls == InterruptedException.class) {
                return true;
            }
        }
        return false;
    }

    public static Set<Method> l(Class<?> cls) {
        HashSet u10 = D2.u();
        for (Method method : cls.getMethods()) {
            if (k(method)) {
                u10.add(method);
            }
        }
        return u10;
    }

    public static <T> T m(Class<T> cls, InvocationHandler invocationHandler) {
        return cls.cast(Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, invocationHandler));
    }

    public static Exception n(Exception exc, boolean z10) throws Exception {
        Throwable cause = exc.getCause();
        if (cause == null) {
            throw exc;
        }
        if (z10) {
            cause.setStackTrace((StackTraceElement[]) C12506c2.f(cause.getStackTrace(), exc.getStackTrace(), StackTraceElement.class));
        }
        if (cause instanceof Exception) {
            throw ((Exception) cause);
        }
        if (cause instanceof Error) {
            throw ((Error) cause);
        }
        throw exc;
    }

    @Override
    public void a(Runnable runnable, long j10, TimeUnit timeUnit) throws TimeoutException {
        w2.H.E(runnable);
        w2.H.E(timeUnit);
        i(j10);
        Future<?> submit = this.f67512a.submit(runnable);
        try {
            H0.g(submit, j10, timeUnit);
        } catch (ExecutionException e10) {
            p(e10.getCause());
            throw new AssertionError();
        } catch (TimeoutException e11) {
            submit.cancel(true);
            throw e11;
        }
    }

    @Override
    @I2.a
    public <T> T b(Callable<T> callable, long j10, TimeUnit timeUnit) throws TimeoutException, ExecutionException {
        w2.H.E(callable);
        w2.H.E(timeUnit);
        i(j10);
        Future<T> submit = this.f67512a.submit(callable);
        try {
            return (T) H0.g(submit, j10, timeUnit);
        } catch (ExecutionException e10) {
            o(e10.getCause());
            throw new AssertionError();
        } catch (TimeoutException e11) {
            submit.cancel(true);
            throw e11;
        }
    }

    @Override
    @I2.a
    public <T> T c(Callable<T> callable, long j10, TimeUnit timeUnit) throws TimeoutException, InterruptedException, ExecutionException {
        w2.H.E(callable);
        w2.H.E(timeUnit);
        i(j10);
        Future<T> submit = this.f67512a.submit(callable);
        try {
            return submit.get(j10, timeUnit);
        } catch (InterruptedException e10) {
            e = e10;
            submit.cancel(true);
            throw e;
        } catch (ExecutionException e11) {
            o(e11.getCause());
            throw new AssertionError();
        } catch (TimeoutException e12) {
            e = e12;
            submit.cancel(true);
            throw e;
        }
    }

    @Override
    public void d(Runnable runnable, long j10, TimeUnit timeUnit) throws TimeoutException, InterruptedException {
        w2.H.E(runnable);
        w2.H.E(timeUnit);
        i(j10);
        Future<?> submit = this.f67512a.submit(runnable);
        try {
            submit.get(j10, timeUnit);
        } catch (InterruptedException e10) {
            e = e10;
            submit.cancel(true);
            throw e;
        } catch (ExecutionException e11) {
            p(e11.getCause());
            throw new AssertionError();
        } catch (TimeoutException e12) {
            e = e12;
            submit.cancel(true);
            throw e;
        }
    }

    @Override
    public <T> T e(T t10, Class<T> cls, long j10, TimeUnit timeUnit) {
        w2.H.E(t10);
        w2.H.E(cls);
        w2.H.E(timeUnit);
        i(j10);
        w2.H.e(cls.isInterface(), "interfaceType must be an interface type");
        return (T) m(cls, new a(t10, j10, timeUnit, l(cls)));
    }

    public final <T> T h(Callable<T> callable, long j10, TimeUnit timeUnit, boolean z10) throws Exception {
        w2.H.E(callable);
        w2.H.E(timeUnit);
        i(j10);
        Future<T> submit = this.f67512a.submit(callable);
        try {
            if (!z10) {
                return (T) H0.g(submit, j10, timeUnit);
            }
            try {
                return submit.get(j10, timeUnit);
            } catch (InterruptedException e10) {
                submit.cancel(true);
                throw e10;
            }
        } catch (ExecutionException e11) {
            throw n(e11, true);
        } catch (TimeoutException e12) {
            submit.cancel(true);
            throw new UncheckedTimeoutException(e12);
        }
    }

    public final void o(Throwable th2) throws ExecutionException {
        if (th2 instanceof Error) {
            throw new ExecutionError((Error) th2);
        }
        if (!(th2 instanceof RuntimeException)) {
            throw new ExecutionException(th2);
        }
        throw new UncheckedExecutionException(th2);
    }

    public final void p(Throwable th2) {
        if (!(th2 instanceof Error)) {
            throw new UncheckedExecutionException(th2);
        }
        throw new ExecutionError((Error) th2);
    }
}
