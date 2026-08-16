package com.ardor3d.renderer.state.record;

import com.ardor3d.math.ColorRGBA;
import com.ardor3d.math.type.ReadOnlyColorRGBA;
import com.ardor3d.renderer.state.MaterialState;
import com.ardor3d.util.geom.BufferUtils;
import java.nio.FloatBuffer;
import java.util.logging.Logger;

public class MaterialStateRecord extends StateRecord {
    private static final Logger logger = Logger.getLogger(MaterialStateRecord.class.getName());
    public ColorRGBA frontAmbient = new ColorRGBA(-1.0f, -1.0f, -1.0f, -1.0f);
    public ColorRGBA frontDiffuse = new ColorRGBA(-1.0f, -1.0f, -1.0f, -1.0f);
    public ColorRGBA frontSpecular = new ColorRGBA(-1.0f, -1.0f, -1.0f, -1.0f);
    public ColorRGBA frontEmissive = new ColorRGBA(-1.0f, -1.0f, -1.0f, -1.0f);
    public float frontShininess = Float.NEGATIVE_INFINITY;
    public ColorRGBA backAmbient = new ColorRGBA(-1.0f, -1.0f, -1.0f, -1.0f);
    public ColorRGBA backDiffuse = new ColorRGBA(-1.0f, -1.0f, -1.0f, -1.0f);
    public ColorRGBA backSpecular = new ColorRGBA(-1.0f, -1.0f, -1.0f, -1.0f);
    public ColorRGBA backEmissive = new ColorRGBA(-1.0f, -1.0f, -1.0f, -1.0f);
    public float backShininess = Float.NEGATIVE_INFINITY;
    public MaterialState.ColorMaterial colorMaterial = null;
    public MaterialState.MaterialFace colorMaterialFace = null;
    public FloatBuffer tempColorBuff = BufferUtils.createColorBuffer(1);

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$ardor3d$renderer$state$MaterialState$ColorMaterial;

        static {
            int[] iArr = new int[MaterialState.ColorMaterial.values().length];
            $SwitchMap$com$ardor3d$renderer$state$MaterialState$ColorMaterial = iArr;
            try {
                iArr[MaterialState.ColorMaterial.Ambient.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$state$MaterialState$ColorMaterial[MaterialState.ColorMaterial.Diffuse.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$state$MaterialState$ColorMaterial[MaterialState.ColorMaterial.Specular.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$state$MaterialState$ColorMaterial[MaterialState.ColorMaterial.Emissive.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$state$MaterialState$ColorMaterial[MaterialState.ColorMaterial.AmbientAndDiffuse.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    @Override
    public void invalidate() {
        super.invalidate();
        this.frontAmbient.set(-1.0f, -1.0f, -1.0f, -1.0f);
        this.frontDiffuse.set(-1.0f, -1.0f, -1.0f, -1.0f);
        this.frontSpecular.set(-1.0f, -1.0f, -1.0f, -1.0f);
        this.frontEmissive.set(-1.0f, -1.0f, -1.0f, -1.0f);
        this.frontShininess = Float.NEGATIVE_INFINITY;
        this.backAmbient.set(-1.0f, -1.0f, -1.0f, -1.0f);
        this.backDiffuse.set(-1.0f, -1.0f, -1.0f, -1.0f);
        this.backSpecular.set(-1.0f, -1.0f, -1.0f, -1.0f);
        this.backEmissive.set(-1.0f, -1.0f, -1.0f, -1.0f);
        this.backShininess = Float.NEGATIVE_INFINITY;
        this.colorMaterial = null;
        this.colorMaterialFace = null;
    }

    public boolean isSetColor(MaterialState.MaterialFace materialFace, MaterialState.ColorMaterial colorMaterial, ReadOnlyColorRGBA readOnlyColorRGBA, MaterialStateRecord materialStateRecord) {
        if (materialFace == MaterialState.MaterialFace.Front) {
            int i10 = AnonymousClass1.$SwitchMap$com$ardor3d$renderer$state$MaterialState$ColorMaterial[colorMaterial.ordinal()];
            if (i10 == 1) {
                return readOnlyColorRGBA.equals(this.frontAmbient);
            }
            if (i10 == 2) {
                return readOnlyColorRGBA.equals(this.frontDiffuse);
            }
            if (i10 == 3) {
                return readOnlyColorRGBA.equals(this.frontSpecular);
            }
            if (i10 == 4) {
                return readOnlyColorRGBA.equals(this.frontEmissive);
            }
            logger.warning("bad isSetColor");
        } else if (materialFace == MaterialState.MaterialFace.FrontAndBack) {
            int i11 = AnonymousClass1.$SwitchMap$com$ardor3d$renderer$state$MaterialState$ColorMaterial[colorMaterial.ordinal()];
            if (i11 == 1) {
                return readOnlyColorRGBA.equals(this.frontAmbient) && readOnlyColorRGBA.equals(this.backAmbient);
            }
            if (i11 == 2) {
                return readOnlyColorRGBA.equals(this.frontDiffuse) && readOnlyColorRGBA.equals(this.backDiffuse);
            }
            if (i11 == 3) {
                return readOnlyColorRGBA.equals(this.frontSpecular) && readOnlyColorRGBA.equals(this.backSpecular);
            }
            if (i11 == 4) {
                return readOnlyColorRGBA.equals(this.frontEmissive) && readOnlyColorRGBA.equals(this.backEmissive);
            }
            logger.warning("bad isSetColor");
        } else if (materialFace == MaterialState.MaterialFace.Back) {
            int i12 = AnonymousClass1.$SwitchMap$com$ardor3d$renderer$state$MaterialState$ColorMaterial[colorMaterial.ordinal()];
            if (i12 == 1) {
                return readOnlyColorRGBA.equals(this.backAmbient);
            }
            if (i12 == 2) {
                return readOnlyColorRGBA.equals(this.backDiffuse);
            }
            if (i12 == 3) {
                return readOnlyColorRGBA.equals(this.backSpecular);
            }
            if (i12 == 4) {
                return readOnlyColorRGBA.equals(this.backEmissive);
            }
            logger.warning("bad isSetColor");
        }
        return false;
    }

    public boolean isSetShininess(MaterialState.MaterialFace materialFace, float f10, MaterialStateRecord materialStateRecord) {
        return materialFace == MaterialState.MaterialFace.Front ? f10 == this.frontShininess : materialFace == MaterialState.MaterialFace.FrontAndBack ? f10 == this.frontShininess && f10 == this.backShininess : materialFace == MaterialState.MaterialFace.Back && f10 == this.backShininess;
    }

    public void resetColorsForCM(MaterialState.MaterialFace materialFace, MaterialState.ColorMaterial colorMaterial) {
        if (materialFace == MaterialState.MaterialFace.Front || materialFace == MaterialState.MaterialFace.FrontAndBack) {
            int i10 = AnonymousClass1.$SwitchMap$com$ardor3d$renderer$state$MaterialState$ColorMaterial[colorMaterial.ordinal()];
            if (i10 == 1) {
                this.frontAmbient.set(-1.0f, -1.0f, -1.0f, -1.0f);
            } else if (i10 == 2) {
                this.frontDiffuse.set(-1.0f, -1.0f, -1.0f, -1.0f);
            } else if (i10 == 3) {
                this.frontSpecular.set(-1.0f, -1.0f, -1.0f, -1.0f);
            } else if (i10 == 4) {
                this.frontEmissive.set(-1.0f, -1.0f, -1.0f, -1.0f);
            } else if (i10 == 5) {
                this.frontAmbient.set(-1.0f, -1.0f, -1.0f, -1.0f);
                this.frontDiffuse.set(-1.0f, -1.0f, -1.0f, -1.0f);
            }
        }
        if (materialFace == MaterialState.MaterialFace.Back || materialFace == MaterialState.MaterialFace.FrontAndBack) {
            int i11 = AnonymousClass1.$SwitchMap$com$ardor3d$renderer$state$MaterialState$ColorMaterial[colorMaterial.ordinal()];
            if (i11 == 1) {
                this.backAmbient.set(-1.0f, -1.0f, -1.0f, -1.0f);
                return;
            }
            if (i11 == 2) {
                this.backDiffuse.set(-1.0f, -1.0f, -1.0f, -1.0f);
                return;
            }
            if (i11 == 3) {
                this.backSpecular.set(-1.0f, -1.0f, -1.0f, -1.0f);
                return;
            }
            if (i11 == 4) {
                this.backEmissive.set(-1.0f, -1.0f, -1.0f, -1.0f);
            } else {
                if (i11 != 5) {
                    return;
                }
                this.backAmbient.set(-1.0f, -1.0f, -1.0f, -1.0f);
                this.backDiffuse.set(-1.0f, -1.0f, -1.0f, -1.0f);
            }
        }
    }

    public void setColor(MaterialState.MaterialFace materialFace, MaterialState.ColorMaterial colorMaterial, ReadOnlyColorRGBA readOnlyColorRGBA) {
        if (materialFace == MaterialState.MaterialFace.Front || materialFace == MaterialState.MaterialFace.FrontAndBack) {
            int i10 = AnonymousClass1.$SwitchMap$com$ardor3d$renderer$state$MaterialState$ColorMaterial[colorMaterial.ordinal()];
            if (i10 == 1) {
                this.frontAmbient.set(readOnlyColorRGBA);
            } else if (i10 == 2) {
                this.frontDiffuse.set(readOnlyColorRGBA);
            } else if (i10 == 3) {
                this.frontSpecular.set(readOnlyColorRGBA);
            } else if (i10 != 4) {
                logger.warning("bad setColor");
            } else {
                this.frontEmissive.set(readOnlyColorRGBA);
            }
        }
        if (materialFace == MaterialState.MaterialFace.Back || materialFace == MaterialState.MaterialFace.FrontAndBack) {
            int i11 = AnonymousClass1.$SwitchMap$com$ardor3d$renderer$state$MaterialState$ColorMaterial[colorMaterial.ordinal()];
            if (i11 == 1) {
                this.backAmbient.set(readOnlyColorRGBA);
                return;
            }
            if (i11 == 2) {
                this.backDiffuse.set(readOnlyColorRGBA);
                return;
            }
            if (i11 == 3) {
                this.backSpecular.set(readOnlyColorRGBA);
            } else if (i11 != 4) {
                logger.warning("bad setColor");
            } else {
                this.backEmissive.set(readOnlyColorRGBA);
            }
        }
    }
}
