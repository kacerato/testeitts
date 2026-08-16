package fg;

import android.os.Build;
import eg.InterfaceC13101N;
import java.lang.Thread;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.AbstractC16183a;
import yf.j;

public final class C13218b extends AbstractC16183a implements InterfaceC13101N {

    @Nullable
    private volatile Object _preHandler;

    public C13218b() {
        super(InterfaceC13101N.f85628x4);
        this._preHandler = this;
    }

    @Override
    public void q(@NotNull j jVar, @NotNull Throwable th2) {
        if (Build.VERSION.SDK_INT < 28) {
            Method s10 = s();
            Object invoke = s10 != null ? s10.invoke(null, null) : null;
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = invoke instanceof Thread.UncaughtExceptionHandler ? (Thread.UncaughtExceptionHandler) invoke : null;
            if (uncaughtExceptionHandler != null) {
                uncaughtExceptionHandler.uncaughtException(Thread.currentThread(), th2);
            }
        }
    }

    public final Method s() {
        Object obj = this._preHandler;
        if (obj != this) {
            return (Method) obj;
        }
        Method method = null;
        try {
            Method declaredMethod = Thread.class.getDeclaredMethod("getUncaughtExceptionPreHandler", null);
            if (Modifier.isPublic(declaredMethod.getModifiers())) {
                if (Modifier.isStatic(declaredMethod.getModifiers())) {
                    method = declaredMethod;
                }
            }
        } catch (Throwable unused) {
        }
        this._preHandler = method;
        return method;
    }
}
