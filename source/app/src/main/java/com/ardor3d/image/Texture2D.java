package com.ardor3d.image;

import com.ardor3d.image.Texture;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import java.io.IOException;

public class Texture2D extends Texture {
    private Texture.WrapMode _wrapS;
    private Texture.WrapMode _wrapT;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$ardor3d$image$Texture$WrapAxis;

        static {
            int[] iArr = new int[Texture.WrapAxis.values().length];
            $SwitchMap$com$ardor3d$image$Texture$WrapAxis = iArr;
            try {
                iArr[Texture.WrapAxis.S.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$ardor3d$image$Texture$WrapAxis[Texture.WrapAxis.T.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public Texture2D() {
        Texture.WrapMode wrapMode = Texture.WrapMode.Repeat;
        this._wrapS = wrapMode;
        this._wrapT = wrapMode;
    }

    @Override
    public Texture createSimpleClone() {
        return createSimpleClone(new Texture2D());
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof Texture2D)) {
            return false;
        }
        Texture2D texture2D = (Texture2D) obj;
        Texture.WrapAxis wrapAxis = Texture.WrapAxis.S;
        if (getWrap(wrapAxis) != texture2D.getWrap(wrapAxis)) {
            return false;
        }
        Texture.WrapAxis wrapAxis2 = Texture.WrapAxis.T;
        if (getWrap(wrapAxis2) != texture2D.getWrap(wrapAxis2)) {
            return false;
        }
        return super.equals(obj);
    }

    @Override
    public Texture.Type getType() {
        return Texture.Type.TwoDimensional;
    }

    @Override
    public Texture.WrapMode getWrap(Texture.WrapAxis wrapAxis) {
        int i10 = AnonymousClass1.$SwitchMap$com$ardor3d$image$Texture$WrapAxis[wrapAxis.ordinal()];
        if (i10 == 1) {
            return this._wrapS;
        }
        if (i10 == 2) {
            return this._wrapT;
        }
        throw new IllegalArgumentException("invalid WrapAxis: " + ((Object) wrapAxis));
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        Texture.WrapMode wrapMode = Texture.WrapMode.EdgeClamp;
        this._wrapS = (Texture.WrapMode) inputCapsule.readEnum("wrapS", Texture.WrapMode.class, wrapMode);
        this._wrapT = (Texture.WrapMode) inputCapsule.readEnum("wrapT", Texture.WrapMode.class, wrapMode);
    }

    @Override
    public void setWrap(Texture.WrapAxis wrapAxis, Texture.WrapMode wrapMode) {
        if (wrapMode == null) {
            throw new IllegalArgumentException("mode can not be null.");
        }
        if (wrapAxis != null) {
            int i10 = AnonymousClass1.$SwitchMap$com$ardor3d$image$Texture$WrapAxis[wrapAxis.ordinal()];
            if (i10 == 1) {
                this._wrapS = wrapMode;
                return;
            } else {
                if (i10 != 2) {
                    return;
                }
                this._wrapT = wrapMode;
                return;
            }
        }
        throw new IllegalArgumentException("axis can not be null.");
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        Texture.WrapMode wrapMode = this._wrapS;
        Texture.WrapMode wrapMode2 = Texture.WrapMode.EdgeClamp;
        outputCapsule.write(wrapMode, "wrapS", wrapMode2);
        outputCapsule.write(this._wrapT, "wrapT", wrapMode2);
    }

    @Override
    public Texture createSimpleClone(Texture texture) {
        texture.setWrap(Texture.WrapAxis.S, this._wrapS);
        texture.setWrap(Texture.WrapAxis.T, this._wrapT);
        return super.createSimpleClone(texture);
    }

    @Override
    public void setWrap(Texture.WrapMode wrapMode) {
        if (wrapMode != null) {
            this._wrapS = wrapMode;
            this._wrapT = wrapMode;
            return;
        }
        throw new IllegalArgumentException("mode can not be null.");
    }
}
