package android.animation;

import android.graphics.Path;
import android.graphics.PointF;
import android.util.Property;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/animation/PropertyValuesHolder.class
 */
public class PropertyValuesHolder implements Cloneable {
    PropertyValuesHolder() {
        throw new RuntimeException("Stub!");
    }

    public static PropertyValuesHolder ofInt(String propertyName, int... values) {
        throw new RuntimeException("Stub!");
    }

    public static PropertyValuesHolder ofInt(Property<?, Integer> property, int... values) {
        throw new RuntimeException("Stub!");
    }

    public static PropertyValuesHolder ofMultiInt(String propertyName, int[][] values) {
        throw new RuntimeException("Stub!");
    }

    public static PropertyValuesHolder ofMultiInt(String propertyName, Path path) {
        throw new RuntimeException("Stub!");
    }

    @SafeVarargs
    public static <V> PropertyValuesHolder ofMultiInt(String propertyName, TypeConverter<V, int[]> converter, TypeEvaluator<V> evaluator, V... values) {
        throw new RuntimeException("Stub!");
    }

    public static <T> PropertyValuesHolder ofMultiInt(String propertyName, TypeConverter<T, int[]> converter, TypeEvaluator<T> evaluator, Keyframe... values) {
        throw new RuntimeException("Stub!");
    }

    public static PropertyValuesHolder ofFloat(String propertyName, float... values) {
        throw new RuntimeException("Stub!");
    }

    public static PropertyValuesHolder ofFloat(Property<?, Float> property, float... values) {
        throw new RuntimeException("Stub!");
    }

    public static PropertyValuesHolder ofMultiFloat(String propertyName, float[][] values) {
        throw new RuntimeException("Stub!");
    }

    public static PropertyValuesHolder ofMultiFloat(String propertyName, Path path) {
        throw new RuntimeException("Stub!");
    }

    @SafeVarargs
    public static <V> PropertyValuesHolder ofMultiFloat(String propertyName, TypeConverter<V, float[]> converter, TypeEvaluator<V> evaluator, V... values) {
        throw new RuntimeException("Stub!");
    }

    public static <T> PropertyValuesHolder ofMultiFloat(String propertyName, TypeConverter<T, float[]> converter, TypeEvaluator<T> evaluator, Keyframe... values) {
        throw new RuntimeException("Stub!");
    }

    public static PropertyValuesHolder ofObject(String propertyName, TypeEvaluator evaluator, Object... values) {
        throw new RuntimeException("Stub!");
    }

    public static PropertyValuesHolder ofObject(String propertyName, TypeConverter<PointF, ?> converter, Path path) {
        throw new RuntimeException("Stub!");
    }

    @SafeVarargs
    public static <V> PropertyValuesHolder ofObject(Property property, TypeEvaluator<V> evaluator, V... values) {
        throw new RuntimeException("Stub!");
    }

    @SafeVarargs
    public static <T, V> PropertyValuesHolder ofObject(Property<?, V> property, TypeConverter<T, V> converter, TypeEvaluator<T> evaluator, T... values) {
        throw new RuntimeException("Stub!");
    }

    public static <V> PropertyValuesHolder ofObject(Property<?, V> property, TypeConverter<PointF, V> converter, Path path) {
        throw new RuntimeException("Stub!");
    }

    public static PropertyValuesHolder ofKeyframe(String propertyName, Keyframe... values) {
        throw new RuntimeException("Stub!");
    }

    public static PropertyValuesHolder ofKeyframe(Property property, Keyframe... values) {
        throw new RuntimeException("Stub!");
    }

    public void setIntValues(int... values) {
        throw new RuntimeException("Stub!");
    }

    public void setFloatValues(float... values) {
        throw new RuntimeException("Stub!");
    }

    public void setKeyframes(Keyframe... values) {
        throw new RuntimeException("Stub!");
    }

    public void setObjectValues(Object... values) {
        throw new RuntimeException("Stub!");
    }

    public void setConverter(TypeConverter converter) {
        throw new RuntimeException("Stub!");
    }

    public PropertyValuesHolder m84clone() {
        throw new RuntimeException("Stub!");
    }

    public void setEvaluator(TypeEvaluator evaluator) {
        throw new RuntimeException("Stub!");
    }

    public void setPropertyName(String propertyName) {
        throw new RuntimeException("Stub!");
    }

    public void setProperty(Property property) {
        throw new RuntimeException("Stub!");
    }

    public String getPropertyName() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
