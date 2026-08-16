package javax.vecmath;

import java.awt.Color;
import java.io.Serializable;

public class Color4b extends Tuple4b implements Serializable {
    static final long serialVersionUID = -105080578052502155L;

    public Color4b(byte b10, byte b11, byte b12, byte b13) {
        super(b10, b11, b12, b13);
    }

    public final Color get() {
        return new Color(this.f92843x & 255, this.f92844y & 255, this.f92845z & 255, this.f92842w & 255);
    }

    public final void set(Color color) {
        this.f92843x = (byte) color.getRed();
        this.f92844y = (byte) color.getGreen();
        this.f92845z = (byte) color.getBlue();
        this.f92842w = (byte) color.getAlpha();
    }

    public Color4b(byte[] bArr) {
        super(bArr);
    }

    public Color4b(Color4b color4b) {
        super(color4b);
    }

    public Color4b(Tuple4b tuple4b) {
        super(tuple4b);
    }

    public Color4b(Color color) {
        super((byte) color.getRed(), (byte) color.getGreen(), (byte) color.getBlue(), (byte) color.getAlpha());
    }

    public Color4b() {
    }
}
