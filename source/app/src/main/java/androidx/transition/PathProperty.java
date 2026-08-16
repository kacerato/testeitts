package androidx.transition;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.util.Property;

class PathProperty<T> extends Property<T, Float> {
    private float mCurrentFraction;
    private final float mPathLength;
    private final PathMeasure mPathMeasure;
    private final PointF mPointF;
    private final float[] mPosition;
    private final Property<T, PointF> mProperty;

    public PathProperty(Property<T, PointF> property, Path path) {
        super(Float.class, property.getName());
        this.mPosition = new float[2];
        this.mPointF = new PointF();
        this.mProperty = property;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        this.mPathMeasure = pathMeasure;
        this.mPathLength = pathMeasure.getLength();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Float get(Object obj) {
        return get((PathProperty<T>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void set(Object obj, Float f10) {
        set2((PathProperty<T>) obj, f10);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Float get(T t10) {
        return Float.valueOf(this.mCurrentFraction);
    }

    public void set2(T t10, Float f10) {
        this.mCurrentFraction = f10.floatValue();
        this.mPathMeasure.getPosTan(this.mPathLength * f10.floatValue(), this.mPosition, null);
        PointF pointF = this.mPointF;
        float[] fArr = this.mPosition;
        pointF.f32425x = fArr[0];
        pointF.f32426y = fArr[1];
        this.mProperty.set(t10, pointF);
    }
}
