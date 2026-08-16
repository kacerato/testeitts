package androidx.dynamicanimation.animation;

import android.util.FloatProperty;

public abstract class FloatPropertyCompat<T> {
    final String mPropertyName;

    public FloatPropertyCompat(String str) {
        this.mPropertyName = str;
    }

    public static <T> FloatPropertyCompat<T> createFloatPropertyCompat(final FloatProperty<T> floatProperty) {
        return new FloatPropertyCompat<T>(floatProperty.getName()) {
            @Override
            public float getValue(T t10) {
                return floatProperty.get(t10).floatValue();
            }

            @Override
            public void setValue(T t10, float f10) {
                floatProperty.setValue(t10, f10);
            }
        };
    }

    public abstract float getValue(T t10);

    public abstract void setValue(T t10, float f10);
}
