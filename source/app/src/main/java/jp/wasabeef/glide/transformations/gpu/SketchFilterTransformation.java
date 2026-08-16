package jp.wasabeef.glide.transformations.gpu;

import C.e;
import androidx.annotation.NonNull;
import java.security.MessageDigest;
import jp.co.cyberagent.android.gpuimage.filter.GPUImageSketchFilter;

public class SketchFilterTransformation extends GPUFilterTransformation {
    private static final String ID = "jp.wasabeef.glide.transformations.gpu.SketchFilterTransformation.1";
    private static final int VERSION = 1;

    public SketchFilterTransformation() {
        super(new GPUImageSketchFilter());
    }

    @Override
    public boolean equals(Object o10) {
        return o10 instanceof SketchFilterTransformation;
    }

    @Override
    public int hashCode() {
        return -1790215191;
    }

    @Override
    public String toString() {
        return "SketchFilterTransformation()";
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(ID.getBytes(e.f1956b));
    }
}
