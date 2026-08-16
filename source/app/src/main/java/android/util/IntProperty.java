package android.util;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/util/IntProperty.class
 */
public abstract class IntProperty<T> extends Property<T, Integer> {
    public abstract void setValue(T t10, int i10);

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void set(Object obj, Integer num) {
        set2((IntProperty<T>) obj, num);
    }

    public IntProperty(String name) {
        super((Class) null, (String) null);
        throw new RuntimeException("Stub!");
    }

    public final void set2(T object, Integer value) {
        throw new RuntimeException("Stub!");
    }
}
