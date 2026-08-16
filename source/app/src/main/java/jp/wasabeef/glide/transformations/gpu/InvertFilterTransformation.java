package jp.wasabeef.glide.transformations.gpu;

import C.e;
import androidx.annotation.NonNull;
import java.security.MessageDigest;
import jp.co.cyberagent.android.gpuimage.filter.GPUImageColorInvertFilter;

public class InvertFilterTransformation extends GPUFilterTransformation {
    private static final String ID = "jp.wasabeef.glide.transformations.gpu.InvertFilterTransformation.1";
    private static final int VERSION = 1;

    public InvertFilterTransformation() {
        super(new GPUImageColorInvertFilter());
    }

    @Override
    public boolean equals(Object o10) {
        return o10 instanceof InvertFilterTransformation;
    }

    @Override
    public int hashCode() {
        return 2014901395;
    }

    @Override
    public String toString() {
        return "InvertFilterTransformation()";
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(ID.getBytes(e.f1956b));
    }
}
