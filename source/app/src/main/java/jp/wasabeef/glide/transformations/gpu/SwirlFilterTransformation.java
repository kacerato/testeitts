package jp.wasabeef.glide.transformations.gpu;

import C.e;
import android.graphics.PointF;
import androidx.annotation.NonNull;
import java.security.MessageDigest;
import jp.co.cyberagent.android.gpuimage.filter.GPUImageSwirlFilter;

public class SwirlFilterTransformation extends GPUFilterTransformation {
    private static final String ID = "jp.wasabeef.glide.transformations.gpu.SwirlFilterTransformation.1";
    private static final int VERSION = 1;
    private final float angle;
    private final PointF center;
    private final float radius;

    public SwirlFilterTransformation() {
        this(0.5f, 1.0f, new PointF(0.5f, 0.5f));
    }

    @Override
    public boolean equals(Object o10) {
        if (o10 instanceof SwirlFilterTransformation) {
            SwirlFilterTransformation swirlFilterTransformation = (SwirlFilterTransformation) o10;
            float f10 = swirlFilterTransformation.radius;
            float f11 = this.radius;
            if (f10 == f11 && swirlFilterTransformation.angle == f11) {
                PointF pointF = swirlFilterTransformation.center;
                PointF pointF2 = this.center;
                if (pointF.equals(pointF2.f32425x, pointF2.f32426y)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public int hashCode() {
        return (-981084566) + ((int) (this.radius * 1000.0f)) + ((int) (this.angle * 10.0f)) + this.center.hashCode();
    }

    @Override
    public String toString() {
        return "SwirlFilterTransformation(radius=" + this.radius + ",angle=" + this.angle + ",center=" + this.center.toString() + ")";
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update((ID + this.radius + this.angle + this.center.hashCode()).getBytes(e.f1956b));
    }

    public SwirlFilterTransformation(float radius, float angle, PointF center) {
        super(new GPUImageSwirlFilter());
        this.radius = radius;
        this.angle = angle;
        this.center = center;
        GPUImageSwirlFilter gPUImageSwirlFilter = (GPUImageSwirlFilter) getFilter();
        gPUImageSwirlFilter.setRadius(radius);
        gPUImageSwirlFilter.setAngle(angle);
        gPUImageSwirlFilter.setCenter(center);
    }
}
