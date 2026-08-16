package java.lang.ref;

import jdk.internal.RequiresIdentity;
import jdk.internal.vm.annotation.IntrinsicCandidate;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/ref/PhantomReference.class
 */
public class PhantomReference<T> extends Reference<T> {
    @IntrinsicCandidate
    private native boolean refersTo0(Object obj);

    @IntrinsicCandidate
    private native void clear0();

    @Override
    public T get() {
        return null;
    }

    @Override
    boolean refersToImpl(T obj) {
        return refersTo0(obj);
    }

    @Override
    void clearImpl() {
        clear0();
    }

    public PhantomReference(@RequiresIdentity T referent, ReferenceQueue<? super T> q10) {
        super(referent, q10);
    }
}
