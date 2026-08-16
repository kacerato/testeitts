package jp.wasabeef.glide.transformations.gpu;

import C.e;
import androidx.annotation.NonNull;
import java.security.MessageDigest;
import jp.co.cyberagent.android.gpuimage.filter.GPUImageContrastFilter;

public class ContrastFilterTransformation extends GPUFilterTransformation {
    private static final String ID = "jp.wasabeef.glide.transformations.gpu.ContrastFilterTransformation.1";
    private static final int VERSION = 1;
    private final float contrast;

    public ContrastFilterTransformation() {
        this(1.0f);
    }

    @Override
    public boolean equals(Object o10) {
        return o10 instanceof ContrastFilterTransformation;
    }

    @Override
    public int hashCode() {
        return (-306633601) + ((int) (this.contrast * 10.0f));
    }

    @Override
    public String toString() {
        return "ContrastFilterTransformation(contrast=" + this.contrast + ")";
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update((ID + this.contrast).getBytes(e.f1956b));
    }

    public ContrastFilterTransformation(float contrast) {
        super(new GPUImageContrastFilter());
        this.contrast = contrast;
        ((GPUImageContrastFilter) getFilter()).setContrast(contrast);
    }
}
