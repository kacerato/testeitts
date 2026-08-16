package java.lang.ref;

import jdk.internal.RequiresIdentity;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/ref/SoftReference.class
 */
public class SoftReference<T> extends Reference<T> {
    private static long clock;
    private long timestamp;

    public SoftReference(@RequiresIdentity T referent) {
        super(referent);
        this.timestamp = clock;
    }

    public SoftReference(@RequiresIdentity T referent, ReferenceQueue<? super T> q10) {
        super(referent, q10);
        this.timestamp = clock;
    }

    @Override
    public T get() {
        T t10 = (T) super.get();
        if (t10 != null && this.timestamp != clock) {
            this.timestamp = clock;
        }
        return t10;
    }
}
