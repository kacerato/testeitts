package com.ardor3d.image;

import com.ardor3d.image.Texture;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import java.io.IOException;

public class Texture1D extends Texture {
    private Texture.WrapMode _wrapS = Texture.WrapMode.Repeat;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$ardor3d$image$Texture$WrapAxis;

        static {
            int[] iArr = new int[Texture.WrapAxis.values().length];
            $SwitchMap$com$ardor3d$image$Texture$WrapAxis = iArr;
            try {
                iArr[Texture.WrapAxis.S.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    @Override
    public Texture createSimpleClone() {
        return createSimpleClone(new Texture1D());
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof Texture1D)) {
            return false;
        }
        Texture.WrapAxis wrapAxis = Texture.WrapAxis.S;
        if (getWrap(wrapAxis) != ((Texture1D) obj).getWrap(wrapAxis)) {
            return false;
        }
        return super.equals(obj);
    }

    @Override
    public Texture.Type getType() {
        return Texture.Type.OneDimensional;
    }

    @Override
    public Texture.WrapMode getWrap(Texture.WrapAxis wrapAxis) {
        if (AnonymousClass1.$SwitchMap$com$ardor3d$image$Texture$WrapAxis[wrapAxis.ordinal()] == 1) {
            return this._wrapS;
        }
        throw new IllegalArgumentException("invalid WrapAxis: " + ((Object) wrapAxis));
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this._wrapS = (Texture.WrapMode) inputCapsule.readEnum("wrapS", Texture.WrapMode.class, Texture.WrapMode.EdgeClamp);
    }

    @Override
    public void setWrap(Texture.WrapAxis wrapAxis, Texture.WrapMode wrapMode) {
        if (wrapMode == null) {
            throw new IllegalArgumentException("mode can not be null.");
        }
        if (wrapAxis != null) {
            if (AnonymousClass1.$SwitchMap$com$ardor3d$image$Texture$WrapAxis[wrapAxis.ordinal()] != 1) {
                return;
            }
            this._wrapS = wrapMode;
            return;
        }
        throw new IllegalArgumentException("axis can not be null.");
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this._wrapS, "wrapS", Texture.WrapMode.EdgeClamp);
    }

    @Override
    public Texture createSimpleClone(Texture texture) {
        texture.setWrap(Texture.WrapAxis.S, this._wrapS);
        return super.createSimpleClone(texture);
    }

    @Override
    public void setWrap(Texture.WrapMode wrapMode) {
        if (wrapMode != null) {
            this._wrapS = wrapMode;
            return;
        }
        throw new IllegalArgumentException("mode can not be null.");
    }
}
