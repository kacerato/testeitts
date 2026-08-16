package javax.vecmath;

import java.awt.Color;
import java.io.Serializable;

public class Color3b extends Tuple3b implements Serializable {
    static final long serialVersionUID = 6632576088353444794L;

    public Color3b(byte b10, byte b11, byte b12) {
        super(b10, b11, b12);
    }

    public final Color get() {
        return new Color(this.f92830x & 255, this.f92831y & 255, this.f92832z & 255);
    }

    public final void set(Color color) {
        this.f92830x = (byte) color.getRed();
        this.f92831y = (byte) color.getGreen();
        this.f92832z = (byte) color.getBlue();
    }

    public Color3b(byte[] bArr) {
        super(bArr);
    }

    public Color3b(Color3b color3b) {
        super(color3b);
    }

    public Color3b(Tuple3b tuple3b) {
        super(tuple3b);
    }

    public Color3b(Color color) {
        super((byte) color.getRed(), (byte) color.getGreen(), (byte) color.getBlue());
    }

    public Color3b() {
    }
}
