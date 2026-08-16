package jp.wasabeef.glide.transformations.gpu;

import C.e;
import androidx.annotation.NonNull;
import java.security.MessageDigest;
import jp.co.cyberagent.android.gpuimage.filter.GPUImageToonFilter;

public class ToonFilterTransformation extends GPUFilterTransformation {
    private static final String ID = "jp.wasabeef.glide.transformations.gpu.ToonFilterTransformation.1";
    private static final int VERSION = 1;
    private final float quantizationLevels;
    private final float threshold;

    public ToonFilterTransformation() {
        this(0.2f, 10.0f);
    }

    @Override
    public boolean equals(Object o10) {
        if (o10 instanceof ToonFilterTransformation) {
            ToonFilterTransformation toonFilterTransformation = (ToonFilterTransformation) o10;
            if (toonFilterTransformation.threshold == this.threshold && toonFilterTransformation.quantizationLevels == this.quantizationLevels) {
                return true;
            }
        }
        return false;
    }

    @Override
    public int hashCode() {
        return 1209810327 + ((int) (this.threshold * 1000.0f)) + ((int) (this.quantizationLevels * 10.0f));
    }

    @Override
    public String toString() {
        return "ToonFilterTransformation(threshold=" + this.threshold + ",quantizationLevels=" + this.quantizationLevels + ")";
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update((ID + this.threshold + this.quantizationLevels).getBytes(e.f1956b));
    }

    public ToonFilterTransformation(float threshold, float quantizationLevels) {
        super(new GPUImageToonFilter());
        this.threshold = threshold;
        this.quantizationLevels = quantizationLevels;
        GPUImageToonFilter gPUImageToonFilter = (GPUImageToonFilter) getFilter();
        gPUImageToonFilter.setThreshold(threshold);
        gPUImageToonFilter.setQuantizationLevels(quantizationLevels);
    }
}
