package jp.wasabeef.glide.transformations.gpu;

import C.e;
import android.graphics.PointF;
import androidx.annotation.NonNull;
import java.security.MessageDigest;
import java.util.Arrays;
import jp.co.cyberagent.android.gpuimage.filter.GPUImageVignetteFilter;

public class VignetteFilterTransformation extends GPUFilterTransformation {
    private static final String ID = "jp.wasabeef.glide.transformations.gpu.VignetteFilterTransformation.1";
    private static final int VERSION = 1;
    private final PointF center;
    private final float[] vignetteColor;
    private final float vignetteEnd;
    private final float vignetteStart;

    public VignetteFilterTransformation() {
        this(new PointF(0.5f, 0.5f), new float[]{0.0f, 0.0f, 0.0f}, 0.0f, 0.75f);
    }

    @Override
    public boolean equals(Object o10) {
        if (o10 instanceof VignetteFilterTransformation) {
            VignetteFilterTransformation vignetteFilterTransformation = (VignetteFilterTransformation) o10;
            PointF pointF = vignetteFilterTransformation.center;
            PointF pointF2 = this.center;
            if (pointF.equals(pointF2.f32425x, pointF2.f32426y) && Arrays.equals(vignetteFilterTransformation.vignetteColor, this.vignetteColor) && vignetteFilterTransformation.vignetteStart == this.vignetteStart && vignetteFilterTransformation.vignetteEnd == this.vignetteEnd) {
                return true;
            }
        }
        return false;
    }

    @Override
    public int hashCode() {
        return 1874002103 + this.center.hashCode() + Arrays.hashCode(this.vignetteColor) + ((int) (this.vignetteStart * 100.0f)) + ((int) (this.vignetteEnd * 10.0f));
    }

    @Override
    public String toString() {
        return "VignetteFilterTransformation(center=" + this.center.toString() + ",color=" + Arrays.toString(this.vignetteColor) + ",start=" + this.vignetteStart + ",end=" + this.vignetteEnd + ")";
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update((ID + ((Object) this.center) + Arrays.hashCode(this.vignetteColor) + this.vignetteStart + this.vignetteEnd).getBytes(e.f1956b));
    }

    public VignetteFilterTransformation(PointF center, float[] color, float start, float end) {
        super(new GPUImageVignetteFilter());
        this.center = center;
        this.vignetteColor = color;
        this.vignetteStart = start;
        this.vignetteEnd = end;
        GPUImageVignetteFilter gPUImageVignetteFilter = (GPUImageVignetteFilter) getFilter();
        gPUImageVignetteFilter.setVignetteCenter(center);
        gPUImageVignetteFilter.setVignetteColor(color);
        gPUImageVignetteFilter.setVignetteStart(start);
        gPUImageVignetteFilter.setVignetteEnd(end);
    }
}
