package jp.wasabeef.glide.transformations.gpu;

import C.e;
import android.content.Context;
import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.security.MessageDigest;
import jp.co.cyberagent.android.gpuimage.GPUImage;
import jp.co.cyberagent.android.gpuimage.filter.GPUImageFilter;
import jp.wasabeef.glide.transformations.BitmapTransformation;

public class GPUFilterTransformation extends BitmapTransformation {
    private static final String ID = "jp.wasabeef.glide.transformations.gpu.GPUFilterTransformation.1";
    private static final byte[] ID_BYTES = ID.getBytes(e.f1956b);
    private static final int VERSION = 1;
    private final GPUImageFilter gpuImageFilter;

    public GPUFilterTransformation(GPUImageFilter filter) {
        this.gpuImageFilter = filter;
    }

    @Override
    public boolean equals(Object o10) {
        return o10 instanceof GPUFilterTransformation;
    }

    public <T> T getFilter() {
        return (T) this.gpuImageFilter;
    }

    @Override
    public int hashCode() {
        return 1751294359;
    }

    public String toString() {
        return getClass().getSimpleName();
    }

    @Override
    public Bitmap transform(@NonNull Context context, @NonNull F.e pool, @NonNull Bitmap toTransform, int outWidth, int outHeight) {
        GPUImage gPUImage = new GPUImage(context);
        gPUImage.setImage(toTransform);
        gPUImage.setFilter(this.gpuImageFilter);
        return gPUImage.getBitmapWithFilterApplied();
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(ID_BYTES);
    }
}
