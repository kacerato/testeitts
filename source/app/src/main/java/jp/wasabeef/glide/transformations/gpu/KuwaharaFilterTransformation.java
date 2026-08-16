package jp.wasabeef.glide.transformations.gpu;

import C.e;
import androidx.annotation.NonNull;
import java.security.MessageDigest;
import jp.co.cyberagent.android.gpuimage.filter.GPUImageKuwaharaFilter;

public class KuwaharaFilterTransformation extends GPUFilterTransformation {
    private static final String ID = "jp.wasabeef.glide.transformations.gpu.KuwaharaFilterTransformation.1";
    private static final int VERSION = 1;
    private final int radius;

    public KuwaharaFilterTransformation() {
        this(25);
    }

    @Override
    public boolean equals(Object o10) {
        return o10 instanceof KuwaharaFilterTransformation;
    }

    @Override
    public int hashCode() {
        return (-1859800423) + (this.radius * 10);
    }

    @Override
    public String toString() {
        return "KuwaharaFilterTransformation(radius=" + this.radius + ")";
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update((ID + this.radius).getBytes(e.f1956b));
    }

    public KuwaharaFilterTransformation(int radius) {
        super(new GPUImageKuwaharaFilter());
        this.radius = radius;
        ((GPUImageKuwaharaFilter) getFilter()).setRadius(radius);
    }
}
