package nn;

public class b implements u {
    @Override
    public float[] b(float[] start, float[] end, float u10) {
        float f10 = u10 * 2.0f;
        return new float[]{a(start[0], end[0], Math.min(f10, 1.0f)), a(start[1], end[1], Math.max(0.0f, f10 - 1.0f)), a(start[2], end[2], Math.min(f10, 1.0f))};
    }
}
