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

public class Texture2D extends Texture {
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
        }
    }

    public Texture2D() {
        Texture.WrapMode wrapMode = Texture.WrapMode.EdgeClamp;
        this.wrapS = wrapMode;
        this.wrapT = wrapMode;
    }

    @Override
    public Texture createSimpleClone() {
        Texture2D texture2D = new Texture2D();
        createSimpleClone(texture2D);
        return texture2D;
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
        int i10 = AnonymousClass1.$SwitchMap$com$jme3$texture$Texture$WrapAxis[wrapAxis.ordinal()];
        if (i10 == 1) {
            return this.wrapS;
        }
        if (i10 == 2) {
            return this.wrapT;
        }
        throw new IllegalArgumentException("invalid WrapAxis: " + ((Object) wrapAxis));
    }

    @Override
    public int hashCode() {
        int hashCode = super.hashCode() * 79;
        Texture.WrapMode wrapMode = this.wrapS;
        int hashCode2 = (hashCode + (wrapMode != null ? wrapMode.hashCode() : 0)) * 79;
        Texture.WrapMode wrapMode2 = this.wrapT;
        return hashCode2 + (wrapMode2 != null ? wrapMode2.hashCode() : 0);
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        Texture.WrapMode wrapMode = Texture.WrapMode.EdgeClamp;
        this.wrapS = (Texture.WrapMode) capsule.readEnum("wrapS", Texture.WrapMode.class, wrapMode);
        this.wrapT = (Texture.WrapMode) capsule.readEnum("wrapT", Texture.WrapMode.class, wrapMode);
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
            } else {
                if (i10 == 2) {
                    this.wrapT = wrapMode;
                    return;
                }
                throw new IllegalArgumentException("Not applicable for 2D textures");
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
    }

    @Override
    public Texture createSimpleClone(Texture texture) {
        texture.setWrap(Texture.WrapAxis.S, this.wrapS);
        texture.setWrap(Texture.WrapAxis.T, this.wrapT);
        return super.createSimpleClone(texture);
    }

    public Texture2D(Image image) {
        Texture.WrapMode wrapMode = Texture.WrapMode.EdgeClamp;
        this.wrapS = wrapMode;
        this.wrapT = wrapMode;
        setImage(image);
        if (image.getData(0) == null) {
            setMagFilter(Texture.MagFilter.Nearest);
            setMinFilter(Texture.MinFilter.NearestNoMipMaps);
        }
    }

    @Override
    public void setWrap(Texture.WrapMode wrapMode) {
        if (wrapMode != null) {
            this.wrapS = wrapMode;
            this.wrapT = wrapMode;
            return;
        }
        throw new IllegalArgumentException("mode can not be null.");
    }

    public Texture2D(int i10, int i11, Image.Format format) {
        this(new Image(format, i10, i11, (ByteBuffer) null, ColorSpace.Linear));
    }

    public Texture2D(int i10, int i11, int i12, Image.Format format) {
        this(new Image(format, i10, i11, (ByteBuffer) null, ColorSpace.Linear));
        getImage().setMultiSamples(i12);
    }
}
