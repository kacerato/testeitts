package javax.microedition.khronos.opengles;

import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/microedition/khronos/opengles/GL11Ext.class
 */
public interface GL11Ext extends GL {
    public static final int GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES = 35742;
    public static final int GL_MATRIX_INDEX_ARRAY_OES = 34884;
    public static final int GL_MATRIX_INDEX_ARRAY_POINTER_OES = 34889;
    public static final int GL_MATRIX_INDEX_ARRAY_SIZE_OES = 34886;
    public static final int GL_MATRIX_INDEX_ARRAY_STRIDE_OES = 34888;
    public static final int GL_MATRIX_INDEX_ARRAY_TYPE_OES = 34887;
    public static final int GL_MATRIX_PALETTE_OES = 34880;
    public static final int GL_MAX_PALETTE_MATRICES_OES = 34882;
    public static final int GL_MAX_VERTEX_UNITS_OES = 34468;
    public static final int GL_TEXTURE_CROP_RECT_OES = 35741;
    public static final int GL_WEIGHT_ARRAY_BUFFER_BINDING_OES = 34974;
    public static final int GL_WEIGHT_ARRAY_OES = 34477;
    public static final int GL_WEIGHT_ARRAY_POINTER_OES = 34476;
    public static final int GL_WEIGHT_ARRAY_SIZE_OES = 34475;
    public static final int GL_WEIGHT_ARRAY_STRIDE_OES = 34474;
    public static final int GL_WEIGHT_ARRAY_TYPE_OES = 34473;

    void glTexParameterfv(int i10, int i11, float[] fArr, int i12);

    void glCurrentPaletteMatrixOES(int i10);

    void glDrawTexfOES(float f10, float f11, float f12, float f13, float f14);

    void glDrawTexfvOES(float[] fArr, int i10);

    void glDrawTexfvOES(FloatBuffer floatBuffer);

    void glDrawTexiOES(int i10, int i11, int i12, int i13, int i14);

    void glDrawTexivOES(int[] iArr, int i10);

    void glDrawTexivOES(IntBuffer intBuffer);

    void glDrawTexsOES(short s10, short s11, short s12, short s13, short s14);

    void glDrawTexsvOES(short[] sArr, int i10);

    void glDrawTexsvOES(ShortBuffer shortBuffer);

    void glDrawTexxOES(int i10, int i11, int i12, int i13, int i14);

    void glDrawTexxvOES(int[] iArr, int i10);

    void glDrawTexxvOES(IntBuffer intBuffer);

    void glEnable(int i10);

    void glEnableClientState(int i10);

    void glLoadPaletteFromModelViewMatrixOES();

    void glMatrixIndexPointerOES(int i10, int i11, int i12, Buffer buffer);

    void glMatrixIndexPointerOES(int i10, int i11, int i12, int i13);

    void glWeightPointerOES(int i10, int i11, int i12, Buffer buffer);

    void glWeightPointerOES(int i10, int i11, int i12, int i13);
}
