package jp.wasabeef.glide.transformations.gpu;

import C.e;
import androidx.annotation.NonNull;
import java.security.MessageDigest;
import jp.co.cyberagent.android.gpuimage.filter.GPUImagePixelationFilter;

public class PixelationFilterTransformation extends GPUFilterTransformation {
    private static final String ID = "jp.wasabeef.glide.transformations.gpu.PixelationFilterTransformation.1";
    private static final int VERSION = 1;
    private final float pixel;

    public PixelationFilterTransformation() {
        this(10.0f);
    }

    @Override
    public boolean equals(Object o10) {
        return o10 instanceof PixelationFilterTransformation;
    }

    @Override
    public int hashCode() {
        return 1525023660 + ((int) (this.pixel * 10.0f));
    }

    @Override
    public String toString() {
        return "PixelationFilterTransformation(pixel=" + this.pixel + ")";
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update((ID + this.pixel).getBytes(e.f1956b));
    }

    public PixelationFilterTransformation(float pixel) {
        super(new GPUImagePixelationFilter());
        this.pixel = pixel;
        ((GPUImagePixelationFilter) getFilter()).setPixel(pixel);
    }
}
