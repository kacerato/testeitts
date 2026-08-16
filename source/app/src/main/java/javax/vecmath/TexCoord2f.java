package javax.vecmath;

import java.io.Serializable;

public class TexCoord2f extends Tuple2f implements Serializable {
    static final long serialVersionUID = 7998248474800032487L;

    public TexCoord2f(float f10, float f11) {
        super(f10, f11);
    }

    public TexCoord2f(float[] fArr) {
        super(fArr);
    }

    public TexCoord2f(TexCoord2f texCoord2f) {
        super(texCoord2f);
    }

    public TexCoord2f(Tuple2f tuple2f) {
        super(tuple2f);
    }

    public TexCoord2f() {
    }
}
