package java.lang.reflect;

import java.util.Objects;
import jdk.internal.reflect.CallerSensitive;
import jdk.internal.reflect.Reflection;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/reflect/InvocationHandler.class
 */
public interface InvocationHandler {
    Object invoke(Object obj, Method method, Object[] objArr) throws Throwable;

    @CallerSensitive
    static Object invokeDefault(Object proxy, Method method, Object... args) throws Throwable {
        Objects.requireNonNull(proxy);
        Objects.requireNonNull(method);
        return Proxy.invokeDefault(proxy, method, args, Reflection.getCallerClass());
    }
}
