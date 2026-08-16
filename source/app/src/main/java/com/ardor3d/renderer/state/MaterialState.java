package com.ardor3d.renderer.state;

import com.ardor3d.math.ColorRGBA;
import com.ardor3d.math.type.ReadOnlyColorRGBA;
import com.ardor3d.renderer.state.RenderState;
import com.ardor3d.renderer.state.record.MaterialStateRecord;
import com.ardor3d.renderer.state.record.StateRecord;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import java.io.IOException;

public class MaterialState extends RenderState {
    public static final float DEFAULT_SHININESS = 0.0f;
    protected final ColorRGBA _backAmbient;
    protected final ColorRGBA _backDiffuse;
    protected final ColorRGBA _backEmissive;
    protected float _backShininess;
    protected final ColorRGBA _backSpecular;
    protected ColorMaterial _colorMaterial;
    protected MaterialFace _colorMaterialFace;
    protected final ColorRGBA _frontAmbient;
    protected final ColorRGBA _frontDiffuse;
    protected final ColorRGBA _frontEmissive;
    protected float _frontShininess;
    protected final ColorRGBA _frontSpecular;
    public static final ReadOnlyColorRGBA DEFAULT_AMBIENT = new ColorRGBA(0.2f, 0.2f, 0.2f, 1.0f);
    public static final ReadOnlyColorRGBA DEFAULT_DIFFUSE = new ColorRGBA(0.8f, 0.8f, 0.8f, 1.0f);
    public static final ReadOnlyColorRGBA DEFAULT_SPECULAR = new ColorRGBA(0.0f, 0.0f, 0.0f, 1.0f);
    public static final ReadOnlyColorRGBA DEFAULT_EMISSIVE = new ColorRGBA(0.0f, 0.0f, 0.0f, 1.0f);
    public static final ColorMaterial DEFAULT_COLOR_MATERIAL = ColorMaterial.None;
    public static final MaterialFace DEFAULT_COLOR_MATERIAL_FACE = MaterialFace.FrontAndBack;

    public enum ColorMaterial {
        None,
        Ambient,
        Diffuse,
        AmbientAndDiffuse,
        Specular,
        Emissive
    }

    public enum MaterialFace {
        Front,
        Back,
        FrontAndBack
    }

    public MaterialState() {
        ReadOnlyColorRGBA readOnlyColorRGBA = DEFAULT_AMBIENT;
        this._frontAmbient = new ColorRGBA(readOnlyColorRGBA);
        ReadOnlyColorRGBA readOnlyColorRGBA2 = DEFAULT_DIFFUSE;
        this._frontDiffuse = new ColorRGBA(readOnlyColorRGBA2);
        ReadOnlyColorRGBA readOnlyColorRGBA3 = DEFAULT_SPECULAR;
        this._frontSpecular = new ColorRGBA(readOnlyColorRGBA3);
        ReadOnlyColorRGBA readOnlyColorRGBA4 = DEFAULT_EMISSIVE;
        this._frontEmissive = new ColorRGBA(readOnlyColorRGBA4);
        this._frontShininess = 0.0f;
        this._backAmbient = new ColorRGBA(readOnlyColorRGBA);
        this._backDiffuse = new ColorRGBA(readOnlyColorRGBA2);
        this._backSpecular = new ColorRGBA(readOnlyColorRGBA3);
        this._backEmissive = new ColorRGBA(readOnlyColorRGBA4);
        this._backShininess = 0.0f;
        this._colorMaterial = DEFAULT_COLOR_MATERIAL;
        this._colorMaterialFace = DEFAULT_COLOR_MATERIAL_FACE;
    }

    @Override
    public StateRecord createStateRecord() {
        return new MaterialStateRecord();
    }

    public ReadOnlyColorRGBA getAmbient() {
        return this._frontAmbient;
    }

    public ReadOnlyColorRGBA getBackAmbient() {
        return this._backAmbient;
    }

    public ReadOnlyColorRGBA getBackDiffuse() {
        return this._backDiffuse;
    }

    public ReadOnlyColorRGBA getBackEmissive() {
        return this._backEmissive;
    }

    public float getBackShininess() {
        return this._backShininess;
    }

    public ReadOnlyColorRGBA getBackSpecular() {
        return this._backSpecular;
    }

    public ColorMaterial getColorMaterial() {
        return this._colorMaterial;
    }

    public MaterialFace getColorMaterialFace() {
        return this._colorMaterialFace;
    }

    public ReadOnlyColorRGBA getDiffuse() {
        return this._frontDiffuse;
    }

    public ReadOnlyColorRGBA getEmissive() {
        return this._frontEmissive;
    }

    public float getShininess() {
        return this._frontShininess;
    }

    public ReadOnlyColorRGBA getSpecular() {
        return this._frontSpecular;
    }

    @Override
    public RenderState.StateType getType() {
        return RenderState.StateType.Material;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        ColorRGBA colorRGBA = this._frontAmbient;
        ReadOnlyColorRGBA readOnlyColorRGBA = DEFAULT_AMBIENT;
        colorRGBA.set((ColorRGBA) inputCapsule.readSavable("frontAmbient", (ColorRGBA) readOnlyColorRGBA));
        ColorRGBA colorRGBA2 = this._frontDiffuse;
        ReadOnlyColorRGBA readOnlyColorRGBA2 = DEFAULT_DIFFUSE;
        colorRGBA2.set((ColorRGBA) inputCapsule.readSavable("frontDiffuse", (ColorRGBA) readOnlyColorRGBA2));
        ColorRGBA colorRGBA3 = this._frontSpecular;
        ReadOnlyColorRGBA readOnlyColorRGBA3 = DEFAULT_SPECULAR;
        colorRGBA3.set((ColorRGBA) inputCapsule.readSavable("frontSpecular", (ColorRGBA) readOnlyColorRGBA3));
        ColorRGBA colorRGBA4 = this._frontEmissive;
        ReadOnlyColorRGBA readOnlyColorRGBA4 = DEFAULT_EMISSIVE;
        colorRGBA4.set((ColorRGBA) inputCapsule.readSavable("frontEmissive", (ColorRGBA) readOnlyColorRGBA4));
        this._frontShininess = inputCapsule.readFloat("frontShininess", 0.0f);
        this._backAmbient.set((ColorRGBA) inputCapsule.readSavable("backAmbient", (ColorRGBA) readOnlyColorRGBA));
        this._backDiffuse.set((ColorRGBA) inputCapsule.readSavable("backDiffuse", (ColorRGBA) readOnlyColorRGBA2));
        this._backSpecular.set((ColorRGBA) inputCapsule.readSavable("backSpecular", (ColorRGBA) readOnlyColorRGBA3));
        this._backEmissive.set((ColorRGBA) inputCapsule.readSavable("backEmissive", (ColorRGBA) readOnlyColorRGBA4));
        this._backShininess = inputCapsule.readFloat("backShininess", 0.0f);
        this._colorMaterial = (ColorMaterial) inputCapsule.readEnum("colorMaterial", ColorMaterial.class, DEFAULT_COLOR_MATERIAL);
        this._colorMaterialFace = (MaterialFace) inputCapsule.readEnum("colorMaterialFace", MaterialFace.class, DEFAULT_COLOR_MATERIAL_FACE);
    }

    public void setAmbient(ReadOnlyColorRGBA readOnlyColorRGBA) {
        setAmbient(MaterialFace.FrontAndBack, readOnlyColorRGBA);
    }

    public void setColorMaterial(ColorMaterial colorMaterial) {
        if (colorMaterial == null) {
            throw new IllegalArgumentException("material can not be null.");
        }
        this._colorMaterial = colorMaterial;
        setNeedsRefresh(true);
    }

    public void setColorMaterialFace(MaterialFace materialFace) {
        if (materialFace == null) {
            throw new IllegalArgumentException("face can not be null.");
        }
        this._colorMaterialFace = materialFace;
        setNeedsRefresh(true);
    }

    public void setDiffuse(ReadOnlyColorRGBA readOnlyColorRGBA) {
        setDiffuse(MaterialFace.FrontAndBack, readOnlyColorRGBA);
    }

    public void setEmissive(ReadOnlyColorRGBA readOnlyColorRGBA) {
        setEmissive(MaterialFace.FrontAndBack, readOnlyColorRGBA);
    }

    public void setShininess(float f10) {
        setShininess(MaterialFace.FrontAndBack, f10);
    }

    public void setSpecular(ReadOnlyColorRGBA readOnlyColorRGBA) {
        setSpecular(MaterialFace.FrontAndBack, readOnlyColorRGBA);
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        ColorRGBA colorRGBA = this._frontAmbient;
        ReadOnlyColorRGBA readOnlyColorRGBA = DEFAULT_AMBIENT;
        outputCapsule.write(colorRGBA, "frontAmbient", (ColorRGBA) readOnlyColorRGBA);
        ColorRGBA colorRGBA2 = this._frontDiffuse;
        ReadOnlyColorRGBA readOnlyColorRGBA2 = DEFAULT_DIFFUSE;
        outputCapsule.write(colorRGBA2, "frontDiffuse", (ColorRGBA) readOnlyColorRGBA2);
        ColorRGBA colorRGBA3 = this._frontSpecular;
        ReadOnlyColorRGBA readOnlyColorRGBA3 = DEFAULT_SPECULAR;
        outputCapsule.write(colorRGBA3, "frontSpecular", (ColorRGBA) readOnlyColorRGBA3);
        ColorRGBA colorRGBA4 = this._frontEmissive;
        ReadOnlyColorRGBA readOnlyColorRGBA4 = DEFAULT_EMISSIVE;
        outputCapsule.write(colorRGBA4, "frontEmissive", (ColorRGBA) readOnlyColorRGBA4);
        outputCapsule.write(this._frontShininess, "frontShininess", 0.0f);
        outputCapsule.write(this._backAmbient, "backAmbient", (ColorRGBA) readOnlyColorRGBA);
        outputCapsule.write(this._backDiffuse, "backDiffuse", (ColorRGBA) readOnlyColorRGBA2);
        outputCapsule.write(this._backSpecular, "backSpecular", (ColorRGBA) readOnlyColorRGBA3);
        outputCapsule.write(this._backEmissive, "backEmissive", (ColorRGBA) readOnlyColorRGBA4);
        outputCapsule.write(this._backShininess, "backShininess", 0.0f);
        outputCapsule.write(this._colorMaterial, "colorMaterial", DEFAULT_COLOR_MATERIAL);
        outputCapsule.write(this._colorMaterialFace, "colorMaterialFace", DEFAULT_COLOR_MATERIAL_FACE);
    }

    public void setAmbient(MaterialFace materialFace, ReadOnlyColorRGBA readOnlyColorRGBA) {
        if (materialFace == MaterialFace.Front || materialFace == MaterialFace.FrontAndBack) {
            this._frontAmbient.set(readOnlyColorRGBA);
        }
        if (materialFace == MaterialFace.Back || materialFace == MaterialFace.FrontAndBack) {
            this._backAmbient.set(readOnlyColorRGBA);
        }
        setNeedsRefresh(true);
    }

    public void setDiffuse(MaterialFace materialFace, ReadOnlyColorRGBA readOnlyColorRGBA) {
        if (materialFace == MaterialFace.Front || materialFace == MaterialFace.FrontAndBack) {
            this._frontDiffuse.set(readOnlyColorRGBA);
        }
        if (materialFace == MaterialFace.Back || materialFace == MaterialFace.FrontAndBack) {
            this._backDiffuse.set(readOnlyColorRGBA);
        }
        setNeedsRefresh(true);
    }

    public void setEmissive(MaterialFace materialFace, ReadOnlyColorRGBA readOnlyColorRGBA) {
        if (materialFace == MaterialFace.Front || materialFace == MaterialFace.FrontAndBack) {
            this._frontEmissive.set(readOnlyColorRGBA);
        }
        if (materialFace == MaterialFace.Back || materialFace == MaterialFace.FrontAndBack) {
            this._backEmissive.set(readOnlyColorRGBA);
        }
        setNeedsRefresh(true);
    }

    public void setShininess(MaterialFace materialFace, float f10) {
        if (f10 >= 0.0f && f10 <= 128.0f) {
            if (materialFace == MaterialFace.Front || materialFace == MaterialFace.FrontAndBack) {
                this._frontShininess = f10;
            }
            if (materialFace == MaterialFace.Back || materialFace == MaterialFace.FrontAndBack) {
                this._backShininess = f10;
            }
            setNeedsRefresh(true);
            return;
        }
        throw new IllegalArgumentException("Shininess must be between 0 and 128.");
    }

    public void setSpecular(MaterialFace materialFace, ReadOnlyColorRGBA readOnlyColorRGBA) {
        if (materialFace == MaterialFace.Front || materialFace == MaterialFace.FrontAndBack) {
            this._frontSpecular.set(readOnlyColorRGBA);
        }
        if (materialFace == MaterialFace.Back || materialFace == MaterialFace.FrontAndBack) {
            this._backSpecular.set(readOnlyColorRGBA);
        }
        setNeedsRefresh(true);
    }
}
