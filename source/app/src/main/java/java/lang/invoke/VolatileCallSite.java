package java.lang.invoke;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/invoke/VolatileCallSite.class
 */
public class VolatileCallSite extends CallSite {
    public VolatileCallSite(MethodType type) {
        super(type);
    }

    public VolatileCallSite(MethodHandle target) {
        super(target);
    }

    @Override
    public final MethodHandle getTarget() {
        return getTargetVolatile();
    }

    @Override
    public void setTarget(MethodHandle newTarget) {
        setTargetVolatile(newTarget);
    }

    @Override
    public final MethodHandle dynamicInvoker() {
        return makeDynamicInvoker();
    }
}
