package java.lang.invoke;

import java.util.Objects;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/invoke/MutableCallSite.class
 */
public class MutableCallSite extends CallSite {
    public MutableCallSite(MethodType type) {
        super(type);
    }

    public MutableCallSite(MethodHandle target) {
        super(target);
    }

    @Override
    public final MethodHandle getTarget() {
        return this.target;
    }

    @Override
    public void setTarget(MethodHandle newTarget) {
        setTargetNormal(newTarget);
    }

    @Override
    public final MethodHandle dynamicInvoker() {
        return makeDynamicInvoker();
    }

    public static void syncAll(MutableCallSite[] sites) {
        if (sites.length == 0) {
            return;
        }
        MethodHandleStatics.UNSAFE.storeFence();
        for (MutableCallSite site : sites) {
            Objects.requireNonNull(site);
        }
    }
}
