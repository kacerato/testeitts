package com.jme3.texture;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.texture.Image;
import com.jme3.texture.Texture;
import com.jme3.texture.image.ColorSpace;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;

public class Texture3D extends Texture {
    private Texture.WrapMode wrapR;
    private Texture.WrapMode wrapS;
    private Texture.WrapMode wrapT;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$texture$Texture$WrapAxis;

        static {
            int[] iArr = new int[Texture.WrapAxis.values().length];
            $SwitchMap$com$jme3$texture$Texture$WrapAxis = iArr;
            try {
                iArr[Texture.WrapAxis.S.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$texture$Texture$WrapAxis[Texture.WrapAxis.T.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$jme3$texture$Texture$WrapAxis[Texture.WrapAxis.R.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public Texture3D() {
        Texture.WrapMode wrapMode = Texture.WrapMode.EdgeClamp;
        this.wrapS = wrapMode;
        this.wrapT = wrapMode;
        this.wrapR = wrapMode;
    }

    @Override
    public Texture createSimpleClone() {
        Texture3D texture3D = new Texture3D();
        createSimpleClone(texture3D);
        return texture3D;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof Texture3D)) {
            return false;
        }
        Texture3D texture3D = (Texture3D) obj;
        Texture.WrapAxis wrapAxis = Texture.WrapAxis.S;
        if (getWrap(wrapAxis) != texture3D.getWrap(wrapAxis)) {
            return false;
        }
        Texture.WrapAxis wrapAxis2 = Texture.WrapAxis.T;
        if (getWrap(wrapAxis2) != texture3D.getWrap(wrapAxis2)) {
            return false;
        }
        Texture.WrapAxis wrapAxis3 = Texture.WrapAxis.R;
        if (getWrap(wrapAxis3) != texture3D.getWrap(wrapAxis3)) {
            return false;
        }
        return super.equals(obj);
    }

    @Override
    public Texture.Type getType() {
        return Texture.Type.ThreeDimensional;
    }

    @Override
    public Texture.WrapMode getWrap(Texture.WrapAxis wrapAxis) {
        int i10 = AnonymousClass1.$SwitchMap$com$jme3$texture$Texture$WrapAxis[wrapAxis.ordinal()];
        if (i10 == 1) {
            return this.wrapS;
        }
        if (i10 == 2) {
            return this.wrapT;
        }
        if (i10 == 3) {
            return this.wrapR;
        }
        throw new IllegalArgumentException("invalid WrapAxis: " + ((Object) wrapAxis));
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        Texture.WrapMode wrapMode = Texture.WrapMode.EdgeClamp;
        this.wrapS = (Texture.WrapMode) capsule.readEnum("wrapS", Texture.WrapMode.class, wrapMode);
        this.wrapT = (Texture.WrapMode) capsule.readEnum("wrapT", Texture.WrapMode.class, wrapMode);
        this.wrapR = (Texture.WrapMode) capsule.readEnum("wrapR", Texture.WrapMode.class, wrapMode);
    }

    @Override
    public void setWrap(Texture.WrapAxis wrapAxis, Texture.WrapMode wrapMode) {
        if (wrapMode == null) {
            throw new IllegalArgumentException("mode can not be null.");
        }
        if (wrapAxis != null) {
            int i10 = AnonymousClass1.$SwitchMap$com$jme3$texture$Texture$WrapAxis[wrapAxis.ordinal()];
            if (i10 == 1) {
                this.wrapS = wrapMode;
                return;
            } else if (i10 == 2) {
                this.wrapT = wrapMode;
                return;
            } else {
                if (i10 != 3) {
                    return;
                }
                this.wrapR = wrapMode;
                return;
            }
        }
        throw new IllegalArgumentException("axis can not be null.");
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        Texture.WrapMode wrapMode = this.wrapS;
        Texture.WrapMode wrapMode2 = Texture.WrapMode.EdgeClamp;
        capsule.write(wrapMode, "wrapS", wrapMode2);
        capsule.write(this.wrapT, "wrapT", wrapMode2);
        capsule.write(this.wrapR, "wrapR", wrapMode2);
    }

    @Override
    public Texture createSimpleClone(Texture texture) {
        texture.setWrap(Texture.WrapAxis.S, this.wrapS);
        texture.setWrap(Texture.WrapAxis.T, this.wrapT);
        texture.setWrap(Texture.WrapAxis.R, this.wrapR);
        return super.createSimpleClone(texture);
    }

    public Texture3D(Image image) {
        Texture.WrapMode wrapMode = Texture.WrapMode.EdgeClamp;
        this.wrapS = wrapMode;
        this.wrapT = wrapMode;
        this.wrapR = wrapMode;
        setImage(image);
        if (image.getFormat().isDepthFormat()) {
            setMagFilter(Texture.MagFilter.Nearest);
            setMinFilter(Texture.MinFilter.NearestNoMipMaps);
        }
    }

    @Override
    public void setWrap(Texture.WrapMode wrapMode) {
        if (wrapMode != null) {
            this.wrapS = wrapMode;
            this.wrapT = wrapMode;
            this.wrapR = wrapMode;
            return;
        }
        throw new IllegalArgumentException("mode can not be null.");
    }

    public Texture3D(int i10, int i11, int i12, Image.Format format) {
        this(new Image(format, i10, i11, i12, (ArrayList<ByteBuffer>) null, ColorSpace.Linear));
    }

    public Texture3D(int i10, int i11, int i12, int i13, Image.Format format) {
        this(new Image(format, i10, i11, i12, (ArrayList<ByteBuffer>) null, ColorSpace.Linear));
        getImage().setMultiSamples(i13);
    }
}
