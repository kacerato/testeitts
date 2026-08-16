package android.icu.util;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/util/Freezable.class
 */
public interface Freezable<T> extends Cloneable {
    boolean isFrozen();

    T freeze();

    T cloneAsThawed();
}
