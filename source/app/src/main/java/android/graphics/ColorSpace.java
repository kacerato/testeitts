package android.graphics;

import java.util.function.DoubleUnaryOperator;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/ColorSpace.class
 */
public abstract class ColorSpace {
    public static final float[] ILLUMINANT_A = null;
    public static final float[] ILLUMINANT_B = null;
    public static final float[] ILLUMINANT_C = null;
    public static final float[] ILLUMINANT_D50 = null;
    public static final float[] ILLUMINANT_D55 = null;
    public static final float[] ILLUMINANT_D60 = null;
    public static final float[] ILLUMINANT_D65 = null;
    public static final float[] ILLUMINANT_D75 = null;
    public static final float[] ILLUMINANT_E = null;
    public static final int MAX_ID = 63;
    public static final int MIN_ID = -1;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/ColorSpace$Adaptation.class
 */
    public enum Adaptation {
        BRADFORD,
        CIECAT02,
        VON_KRIES
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/ColorSpace$Named.class
 */
    public enum Named {
        ACES,
        ACESCG,
        ADOBE_RGB,
        BT2020,
        BT709,
        CIE_LAB,
        CIE_XYZ,
        DCI_P3,
        DISPLAY_P3,
        EXTENDED_SRGB,
        LINEAR_EXTENDED_SRGB,
        LINEAR_SRGB,
        NTSC_1953,
        PRO_PHOTO_RGB,
        SMPTE_C,
        SRGB
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/ColorSpace$RenderIntent.class
 */
    public enum RenderIntent {
        ABSOLUTE,
        PERCEPTUAL,
        RELATIVE,
        SATURATION
    }

    public abstract boolean isWideGamut();

    public abstract float getMinValue(int i10);

    public abstract float getMaxValue(int i10);

    public abstract float[] toXyz(float[] fArr);

    public abstract float[] fromXyz(float[] fArr);

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/ColorSpace$Model.class
 */
    public enum Model {
        CMYK,
        LAB,
        RGB,
        XYZ;

        public int getComponentCount() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/ColorSpace$Rgb.class
 */
    public static class Rgb extends ColorSpace {

        /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/ColorSpace$Rgb$TransferParameters.class
 */
        public static class TransferParameters {

            public final double f32416a;

            public final double f32417b;

            public final double f32418c;

            public final double f32419d;

            public final double f32420e;

            public final double f32421f;

            public final double f32422g;

            public TransferParameters(double a10, double b10, double c10, double d10, double g10) {
                throw new RuntimeException("Stub!");
            }

            public TransferParameters(double a10, double b10, double c10, double d10, double e10, double f10, double g10) {
                throw new RuntimeException("Stub!");
            }

            public boolean equals(Object o10) {
                throw new RuntimeException("Stub!");
            }

            public int hashCode() {
                throw new RuntimeException("Stub!");
            }
        }

        public Rgb(String name, float[] toXYZ, DoubleUnaryOperator oetf, DoubleUnaryOperator eotf) {
            throw new RuntimeException("Stub!");
        }

        public Rgb(String name, float[] primaries, float[] whitePoint, DoubleUnaryOperator oetf, DoubleUnaryOperator eotf, float min, float max) {
            throw new RuntimeException("Stub!");
        }

        public Rgb(String name, float[] toXYZ, TransferParameters function) {
            throw new RuntimeException("Stub!");
        }

        public Rgb(String name, float[] primaries, float[] whitePoint, TransferParameters function) {
            throw new RuntimeException("Stub!");
        }

        public Rgb(String name, float[] toXYZ, double gamma) {
            throw new RuntimeException("Stub!");
        }

        public Rgb(String name, float[] primaries, float[] whitePoint, double gamma) {
            throw new RuntimeException("Stub!");
        }

        public float[] getWhitePoint(float[] whitePoint) {
            throw new RuntimeException("Stub!");
        }

        public float[] getWhitePoint() {
            throw new RuntimeException("Stub!");
        }

        public float[] getPrimaries(float[] primaries) {
            throw new RuntimeException("Stub!");
        }

        public float[] getPrimaries() {
            throw new RuntimeException("Stub!");
        }

        public float[] getTransform(float[] transform) {
            throw new RuntimeException("Stub!");
        }

        public float[] getTransform() {
            throw new RuntimeException("Stub!");
        }

        public float[] getInverseTransform(float[] inverseTransform) {
            throw new RuntimeException("Stub!");
        }

        public float[] getInverseTransform() {
            throw new RuntimeException("Stub!");
        }

        public DoubleUnaryOperator getOetf() {
            throw new RuntimeException("Stub!");
        }

        public DoubleUnaryOperator getEotf() {
            throw new RuntimeException("Stub!");
        }

        public TransferParameters getTransferParameters() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public boolean isSrgb() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public boolean isWideGamut() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public float getMinValue(int component) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public float getMaxValue(int component) {
            throw new RuntimeException("Stub!");
        }

        public float[] toLinear(float r10, float g10, float b10) {
            throw new RuntimeException("Stub!");
        }

        public float[] toLinear(float[] v10) {
            throw new RuntimeException("Stub!");
        }

        public float[] fromLinear(float r10, float g10, float b10) {
            throw new RuntimeException("Stub!");
        }

        public float[] fromLinear(float[] v10) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public float[] toXyz(float[] v10) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public float[] fromXyz(float[] v10) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public boolean equals(Object o10) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public int hashCode() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/ColorSpace$Connector.class
 */
    public static class Connector {
        Connector() {
            throw new RuntimeException("Stub!");
        }

        public ColorSpace getSource() {
            throw new RuntimeException("Stub!");
        }

        public ColorSpace getDestination() {
            throw new RuntimeException("Stub!");
        }

        public RenderIntent getRenderIntent() {
            throw new RuntimeException("Stub!");
        }

        public float[] transform(float r10, float g10, float b10) {
            throw new RuntimeException("Stub!");
        }

        public float[] transform(float[] v10) {
            throw new RuntimeException("Stub!");
        }
    }

    ColorSpace() {
        throw new RuntimeException("Stub!");
    }

    public String getName() {
        throw new RuntimeException("Stub!");
    }

    public int getId() {
        throw new RuntimeException("Stub!");
    }

    public Model getModel() {
        throw new RuntimeException("Stub!");
    }

    public int getComponentCount() {
        throw new RuntimeException("Stub!");
    }

    public boolean isSrgb() {
        throw new RuntimeException("Stub!");
    }

    public float[] toXyz(float r10, float g10, float b10) {
        throw new RuntimeException("Stub!");
    }

    public float[] fromXyz(float x10, float y10, float z10) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object o10) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public static Connector connect(ColorSpace source, ColorSpace destination) {
        throw new RuntimeException("Stub!");
    }

    public static Connector connect(ColorSpace source, ColorSpace destination, RenderIntent intent) {
        throw new RuntimeException("Stub!");
    }

    public static Connector connect(ColorSpace source) {
        throw new RuntimeException("Stub!");
    }

    public static Connector connect(ColorSpace source, RenderIntent intent) {
        throw new RuntimeException("Stub!");
    }

    public static ColorSpace adapt(ColorSpace colorSpace, float[] whitePoint) {
        throw new RuntimeException("Stub!");
    }

    public static ColorSpace adapt(ColorSpace colorSpace, float[] whitePoint, Adaptation adaptation) {
        throw new RuntimeException("Stub!");
    }

    public static ColorSpace get(Named name) {
        throw new RuntimeException("Stub!");
    }

    public static ColorSpace match(float[] toXYZD50, Rgb.TransferParameters function) {
        throw new RuntimeException("Stub!");
    }
}
