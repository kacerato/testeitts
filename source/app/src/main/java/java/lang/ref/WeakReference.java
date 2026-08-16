package java.lang.ref;

import jdk.internal.RequiresIdentity;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/ref/WeakReference.class
 */
public class WeakReference<T> extends Reference<T> {
    public WeakReference(@RequiresIdentity T referent) {
        super(referent);
    }

    public WeakReference(@RequiresIdentity T referent, ReferenceQueue<? super T> q10) {
        super(referent, q10);
    }
}
