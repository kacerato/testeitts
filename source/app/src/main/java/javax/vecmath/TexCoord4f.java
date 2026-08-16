package javax.vecmath;

import java.io.Serializable;

public class TexCoord4f extends Tuple4f implements Serializable {
    static final long serialVersionUID = -3517736544731446513L;

    public TexCoord4f(float f10, float f11, float f12, float f13) {
        super(f10, f11, f12, f13);
    }

    public TexCoord4f(float[] fArr) {
        super(fArr);
    }

    public TexCoord4f(TexCoord4f texCoord4f) {
        super(texCoord4f);
    }

    public TexCoord4f(Tuple4f tuple4f) {
        super(tuple4f);
    }

    public TexCoord4f(Tuple4d tuple4d) {
        super(tuple4d);
    }

    public TexCoord4f() {
    }
}
