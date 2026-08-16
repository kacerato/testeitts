package android.util;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/util/FloatProperty.class
 */
public abstract class FloatProperty<T> extends Property<T, Float> {
    public abstract void setValue(T t10, float f10);

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void set(Object obj, Float f10) {
        set2((FloatProperty<T>) obj, f10);
    }

    public FloatProperty(String name) {
        super((Class) null, (String) null);
        throw new RuntimeException("Stub!");
    }

    public final void set2(T object, Float value) {
        throw new RuntimeException("Stub!");
    }
}
