package javax.vecmath;

import java.io.Serializable;

public class TexCoord3f extends Tuple3f implements Serializable {
    static final long serialVersionUID = -3517736544731446513L;

    public TexCoord3f(float f10, float f11, float f12) {
        super(f10, f11, f12);
    }

    public TexCoord3f(float[] fArr) {
        super(fArr);
    }

    public TexCoord3f(TexCoord3f texCoord3f) {
        super(texCoord3f);
    }

    public TexCoord3f(Tuple3f tuple3f) {
        super(tuple3f);
    }

    public TexCoord3f(Tuple3d tuple3d) {
        super(tuple3d);
    }

    public TexCoord3f() {
    }
}
