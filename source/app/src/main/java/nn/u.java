package nn;

public interface u {
    default float a(float f10, float g10, float u10) {
        return (g10 * u10) + ((1.0f - u10) * f10);
    }

    float[] b(float[] start, float[] end, float u10);
}
