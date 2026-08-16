package jp.wasabeef.glide.transformations.gpu;

import C.e;
import androidx.annotation.NonNull;
import java.security.MessageDigest;
import jp.co.cyberagent.android.gpuimage.filter.GPUImageSepiaToneFilter;

public class SepiaFilterTransformation extends GPUFilterTransformation {
    private static final String ID = "jp.wasabeef.glide.transformations.gpu.SepiaFilterTransformation.1";
    private static final int VERSION = 1;
    private final float intensity;

    public SepiaFilterTransformation() {
        this(1.0f);
    }

    @Override
    public boolean equals(Object o10) {
        return o10 instanceof SepiaFilterTransformation;
    }

    @Override
    public int hashCode() {
        return 895516065 + ((int) (this.intensity * 10.0f));
    }

    @Override
    public String toString() {
        return "SepiaFilterTransformation(intensity=" + this.intensity + ")";
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update((ID + this.intensity).getBytes(e.f1956b));
    }

    public SepiaFilterTransformation(float intensity) {
        super(new GPUImageSepiaToneFilter());
        this.intensity = intensity;
        ((GPUImageSepiaToneFilter) getFilter()).setIntensity(intensity);
    }
}
