package java.lang;

import java.lang.ThreadLocal;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/InheritableThreadLocal.class
 */
public class InheritableThreadLocal<T> extends ThreadLocal<T> {
    @Override
    protected T childValue(T parentValue) {
        return parentValue;
    }

    @Override
    ThreadLocal.ThreadLocalMap getMap(Thread t10) {
        return t10.inheritableThreadLocals();
    }

    @Override
    void createMap(Thread t10, T firstValue) {
        t10.setInheritableThreadLocals(new ThreadLocal.ThreadLocalMap(this, firstValue));
    }
}
