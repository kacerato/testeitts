package com.ardor3d.scenegraph.hint;

import com.ardor3d.renderer.queue.RenderBucketType;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.Savable;
import java.io.IOException;
import java.util.EnumSet;

public class SceneHints implements Savable {
    private final Hintable _source;
    protected DataMode _dataMode = DataMode.Inherit;
    protected NormalsMode _normalsMode = NormalsMode.Inherit;
    protected CullHint _cullHint = CullHint.Inherit;
    protected LightCombineMode _lightCombineMode = LightCombineMode.Inherit;
    protected TextureCombineMode _textureCombineMode = TextureCombineMode.Inherit;
    protected RenderBucketType _renderBucketType = RenderBucketType.Inherit;
    protected int _orthoOrder = 0;
    protected final EnumSet<PickingHint> _pickingHints = EnumSet.allOf(PickingHint.class);
    private TransparencyType _transpType = TransparencyType.Inherit;
    protected boolean _castsShadows = true;

    public SceneHints(Hintable hintable) {
        this._source = hintable;
    }

    @Override
    public Class<? extends SceneHints> getClassTag() {
        return getClass();
    }

    public CullHint getCullHint() {
        CullHint cullHint = this._cullHint;
        if (cullHint != CullHint.Inherit) {
            return cullHint;
        }
        Hintable parentHintable = this._source.getParentHintable();
        return parentHintable != null ? parentHintable.getSceneHints().getCullHint() : CullHint.Dynamic;
    }

    public DataMode getDataMode() {
        DataMode dataMode = this._dataMode;
        if (dataMode != DataMode.Inherit) {
            return dataMode;
        }
        Hintable parentHintable = this._source.getParentHintable();
        return parentHintable != null ? parentHintable.getSceneHints().getDataMode() : DataMode.Arrays;
    }

    public LightCombineMode getLightCombineMode() {
        LightCombineMode lightCombineMode = this._lightCombineMode;
        if (lightCombineMode != LightCombineMode.Inherit) {
            return lightCombineMode;
        }
        Hintable parentHintable = this._source.getParentHintable();
        return parentHintable != null ? parentHintable.getSceneHints().getLightCombineMode() : LightCombineMode.CombineFirst;
    }

    public CullHint getLocalCullHint() {
        return this._cullHint;
    }

    public DataMode getLocalDataMode() {
        return this._dataMode;
    }

    public LightCombineMode getLocalLightCombineMode() {
        return this._lightCombineMode;
    }

    public NormalsMode getLocalNormalsMode() {
        return this._normalsMode;
    }

    public RenderBucketType getLocalRenderBucketType() {
        return this._renderBucketType;
    }

    public TextureCombineMode getLocalTextureCombineMode() {
        return this._textureCombineMode;
    }

    public TransparencyType getLocalTransparencyType() {
        return this._transpType;
    }

    public NormalsMode getNormalsMode() {
        NormalsMode normalsMode = this._normalsMode;
        if (normalsMode != NormalsMode.Inherit) {
            return normalsMode;
        }
        Hintable parentHintable = this._source.getParentHintable();
        return parentHintable != null ? parentHintable.getSceneHints().getNormalsMode() : NormalsMode.NormalizeIfScaled;
    }

    public int getOrthoOrder() {
        return this._orthoOrder;
    }

    public RenderBucketType getRenderBucketType() {
        RenderBucketType renderBucketType = this._renderBucketType;
        if (renderBucketType != RenderBucketType.Inherit) {
            return renderBucketType;
        }
        Hintable parentHintable = this._source.getParentHintable();
        return parentHintable != null ? parentHintable.getSceneHints().getRenderBucketType() : RenderBucketType.Opaque;
    }

    public TextureCombineMode getTextureCombineMode() {
        TextureCombineMode textureCombineMode = this._textureCombineMode;
        if (textureCombineMode != TextureCombineMode.Inherit) {
            return textureCombineMode;
        }
        Hintable parentHintable = this._source.getParentHintable();
        return parentHintable != null ? parentHintable.getSceneHints().getTextureCombineMode() : TextureCombineMode.CombineClosest;
    }

    public TransparencyType getTransparencyType() {
        TransparencyType transparencyType = this._transpType;
        if (transparencyType != TransparencyType.Inherit) {
            return transparencyType;
        }
        Hintable parentHintable = this._source.getParentHintable();
        return parentHintable != null ? parentHintable.getSceneHints().getTransparencyType() : TransparencyType.OnePass;
    }

    public boolean isCastsShadows() {
        return this._castsShadows;
    }

    public boolean isPickingHintEnabled(PickingHint pickingHint) {
        return this._pickingHints.contains(pickingHint);
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        int i10 = 0;
        this._orthoOrder = inputCapsule.readInt("orthoOrder", 0);
        this._cullHint = (CullHint) inputCapsule.readEnum("cullMode", CullHint.class, CullHint.Inherit);
        this._renderBucketType = (RenderBucketType) inputCapsule.readEnum("renderBucketType", RenderBucketType.class, RenderBucketType.Inherit);
        this._lightCombineMode = (LightCombineMode) inputCapsule.readEnum("lightCombineMode", LightCombineMode.class, LightCombineMode.Inherit);
        this._textureCombineMode = (TextureCombineMode) inputCapsule.readEnum("textureCombineMode", TextureCombineMode.class, TextureCombineMode.Inherit);
        this._normalsMode = (NormalsMode) inputCapsule.readEnum("normalsMode", NormalsMode.class, NormalsMode.Inherit);
        this._dataMode = (DataMode) inputCapsule.readEnum("dataMode", DataMode.class, DataMode.Inherit);
        this._transpType = (TransparencyType) inputCapsule.readEnum("transpType", TransparencyType.class, TransparencyType.Inherit);
        this._castsShadows = inputCapsule.readBoolean("castsShadows", true);
        PickingHint[] pickingHintArr = (PickingHint[]) inputCapsule.readEnumArray("pickingHints", PickingHint.class, null);
        this._pickingHints.clear();
        if (pickingHintArr != null) {
            int length = pickingHintArr.length;
            while (i10 < length) {
                this._pickingHints.add(pickingHintArr[i10]);
                i10++;
            }
            return;
        }
        PickingHint[] values = PickingHint.values();
        int length2 = values.length;
        while (i10 < length2) {
            this._pickingHints.add(values[i10]);
            i10++;
        }
    }

    public void set(SceneHints sceneHints) {
        this._dataMode = sceneHints._dataMode;
        this._normalsMode = sceneHints._normalsMode;
        this._cullHint = sceneHints._cullHint;
        this._lightCombineMode = sceneHints._lightCombineMode;
        this._textureCombineMode = sceneHints._textureCombineMode;
        this._renderBucketType = sceneHints._renderBucketType;
        this._orthoOrder = sceneHints._orthoOrder;
        this._pickingHints.clear();
        this._pickingHints.addAll(sceneHints._pickingHints);
        this._castsShadows = sceneHints._castsShadows;
        this._transpType = sceneHints._transpType;
    }

    public void setAllPickingHints(boolean z10) {
        if (z10) {
            this._pickingHints.addAll(EnumSet.allOf(PickingHint.class));
        } else {
            this._pickingHints.clear();
        }
    }

    public void setCastsShadows(boolean z10) {
        this._castsShadows = z10;
    }

    public void setCullHint(CullHint cullHint) {
        this._cullHint = cullHint;
    }

    public void setDataMode(DataMode dataMode) {
        this._dataMode = dataMode;
    }

    public void setLightCombineMode(LightCombineMode lightCombineMode) {
        if (lightCombineMode == null) {
            throw new IllegalArgumentException("mode can not be null.");
        }
        this._lightCombineMode = lightCombineMode;
    }

    public void setNormalsMode(NormalsMode normalsMode) {
        this._normalsMode = normalsMode;
    }

    public void setOrthoOrder(int i10) {
        this._orthoOrder = i10;
    }

    public void setPickingHint(PickingHint pickingHint, boolean z10) {
        if (z10) {
            this._pickingHints.add(pickingHint);
        } else {
            this._pickingHints.remove(pickingHint);
        }
    }

    public void setRenderBucketType(RenderBucketType renderBucketType) {
        this._renderBucketType = renderBucketType;
    }

    public void setTextureCombineMode(TextureCombineMode textureCombineMode) {
        if (textureCombineMode == null) {
            throw new IllegalArgumentException("mode can not be null.");
        }
        this._textureCombineMode = textureCombineMode;
    }

    public void setTransparencyType(TransparencyType transparencyType) {
        this._transpType = transparencyType;
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        outputCapsule.write(this._orthoOrder, "orthoOrder", 0);
        outputCapsule.write(this._cullHint, "cullMode", CullHint.Inherit);
        outputCapsule.write(this._renderBucketType, "renderBucketType", RenderBucketType.Inherit);
        outputCapsule.write(this._lightCombineMode, "lightCombineMode", LightCombineMode.Inherit);
        outputCapsule.write(this._textureCombineMode, "textureCombineMode", TextureCombineMode.Inherit);
        outputCapsule.write(this._normalsMode, "normalsMode", NormalsMode.Inherit);
        outputCapsule.write(this._dataMode, "dataMode", DataMode.Inherit);
        outputCapsule.write((Enum[]) this._pickingHints.toArray(new PickingHint[0]), "pickingHints");
        outputCapsule.write(this._transpType, "transpType", TransparencyType.Inherit);
        outputCapsule.write(this._castsShadows, "castsShadows", true);
    }
}
