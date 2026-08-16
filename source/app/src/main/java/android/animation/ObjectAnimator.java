package android.animation;

import android.graphics.Path;
import android.graphics.PointF;
import android.util.Property;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/animation/ObjectAnimator.class
 */
public final class ObjectAnimator extends ValueAnimator {
    public ObjectAnimator() {
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

    public static ObjectAnimator ofInt(Object target, String propertyName, int... values) {
        throw new RuntimeException("Stub!");
    }

    public static ObjectAnimator ofInt(Object target, String xPropertyName, String yPropertyName, Path path) {
        throw new RuntimeException("Stub!");
    }

    public static <T> ObjectAnimator ofInt(T target, Property<T, Integer> property, int... values) {
        throw new RuntimeException("Stub!");
    }

    public static <T> ObjectAnimator ofInt(T target, Property<T, Integer> xProperty, Property<T, Integer> yProperty, Path path) {
        throw new RuntimeException("Stub!");
    }

    public static ObjectAnimator ofMultiInt(Object target, String propertyName, int[][] values) {
        throw new RuntimeException("Stub!");
    }

    public static ObjectAnimator ofMultiInt(Object target, String propertyName, Path path) {
        throw new RuntimeException("Stub!");
    }

    @SafeVarargs
    public static <T> ObjectAnimator ofMultiInt(Object target, String propertyName, TypeConverter<T, int[]> converter, TypeEvaluator<T> evaluator, T... values) {
        throw new RuntimeException("Stub!");
    }

    public static ObjectAnimator ofArgb(Object target, String propertyName, int... values) {
        throw new RuntimeException("Stub!");
    }

    public static <T> ObjectAnimator ofArgb(T target, Property<T, Integer> property, int... values) {
        throw new RuntimeException("Stub!");
    }

    public static ObjectAnimator ofFloat(Object target, String propertyName, float... values) {
        throw new RuntimeException("Stub!");
    }

    public static ObjectAnimator ofFloat(Object target, String xPropertyName, String yPropertyName, Path path) {
        throw new RuntimeException("Stub!");
    }

    public static <T> ObjectAnimator ofFloat(T target, Property<T, Float> property, float... values) {
        throw new RuntimeException("Stub!");
    }

    public static <T> ObjectAnimator ofFloat(T target, Property<T, Float> xProperty, Property<T, Float> yProperty, Path path) {
        throw new RuntimeException("Stub!");
    }

    public static ObjectAnimator ofMultiFloat(Object target, String propertyName, float[][] values) {
        throw new RuntimeException("Stub!");
    }

    public static ObjectAnimator ofMultiFloat(Object target, String propertyName, Path path) {
        throw new RuntimeException("Stub!");
    }

    @SafeVarargs
    public static <T> ObjectAnimator ofMultiFloat(Object target, String propertyName, TypeConverter<T, float[]> converter, TypeEvaluator<T> evaluator, T... values) {
        throw new RuntimeException("Stub!");
    }

    public static ObjectAnimator ofObject(Object target, String propertyName, TypeEvaluator evaluator, Object... values) {
        throw new RuntimeException("Stub!");
    }

    public static ObjectAnimator ofObject(Object target, String propertyName, TypeConverter<PointF, ?> converter, Path path) {
        throw new RuntimeException("Stub!");
    }

    @SafeVarargs
    public static <T, V> ObjectAnimator ofObject(T target, Property<T, V> property, TypeEvaluator<V> evaluator, V... values) {
        throw new RuntimeException("Stub!");
    }

    @SafeVarargs
    public static <T, V, P> ObjectAnimator ofObject(T target, Property<T, P> property, TypeConverter<V, P> converter, TypeEvaluator<V> evaluator, V... values) {
        throw new RuntimeException("Stub!");
    }

    public static <T, V> ObjectAnimator ofObject(T target, Property<T, V> property, TypeConverter<PointF, V> converter, Path path) {
        throw new RuntimeException("Stub!");
    }

    public static ObjectAnimator ofPropertyValuesHolder(Object target, PropertyValuesHolder... values) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setIntValues(int... values) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setFloatValues(float... values) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setObjectValues(Object... values) {
        throw new RuntimeException("Stub!");
    }

    public void setAutoCancel(boolean cancel) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void start() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ObjectAnimator setDuration(long duration) {
        throw new RuntimeException("Stub!");
    }

    public Object getTarget() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setTarget(Object target) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setupStartValues() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setupEndValues() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ObjectAnimator mo82clone() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
