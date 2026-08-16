package jp.wasabeef.glide.transformations.gpu;

import C.e;
import androidx.annotation.NonNull;
import java.security.MessageDigest;
import jp.co.cyberagent.android.gpuimage.filter.GPUImageBrightnessFilter;

public class BrightnessFilterTransformation extends GPUFilterTransformation {
    private static final String ID = "jp.wasabeef.glide.transformations.gpu.BrightnessFilterTransformation.1";
    private static final int VERSION = 1;
    private final float brightness;

    public BrightnessFilterTransformation() {
        this(0.0f);
    }

    @Override
    public boolean equals(Object o10) {
        return (o10 instanceof BrightnessFilterTransformation) && ((BrightnessFilterTransformation) o10).brightness == this.brightness;
    }

    @Override
    public int hashCode() {
        return (-1311211954) + ((int) ((this.brightness + 1.0f) * 10.0f));
    }

    @Override
    public String toString() {
        return "BrightnessFilterTransformation(brightness=" + this.brightness + ")";
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update((ID + this.brightness).getBytes(e.f1956b));
    }

    public BrightnessFilterTransformation(float brightness) {
        super(new GPUImageBrightnessFilter());
        this.brightness = brightness;
        ((GPUImageBrightnessFilter) getFilter()).setBrightness(brightness);
    }
}
