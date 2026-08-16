package com.ardor3d.renderer.pass;

import com.ardor3d.math.ColorRGBA;
import com.ardor3d.math.type.ReadOnlyColorRGBA;
import com.ardor3d.renderer.Renderer;
import com.ardor3d.renderer.state.BlendState;
import com.ardor3d.renderer.state.CullState;
import com.ardor3d.renderer.state.LightState;
import com.ardor3d.renderer.state.TextureState;
import com.ardor3d.renderer.state.WireframeState;

public class OutlinePass extends RenderPass {
    public static final float DEFAULT_LINE_WIDTH = 3.0f;
    public static final ReadOnlyColorRGBA DEFAULT_OUTLINE_COLOR = new ColorRGBA(ColorRGBA.BLACK);
    private static final long serialVersionUID = 1;
    private final CullState _backCull;
    private BlendState _blendState;
    private final CullState _frontCull;
    private final LightState _noLights;
    private final TextureState _noTexture;
    private final WireframeState _wireframeState;

    public OutlinePass(boolean z10) {
        WireframeState wireframeState = new WireframeState();
        this._wireframeState = wireframeState;
        wireframeState.setFace(WireframeState.Face.FrontAndBack);
        wireframeState.setLineWidth(3.0f);
        wireframeState.setEnabled(true);
        CullState cullState = new CullState();
        this._frontCull = cullState;
        cullState.setCullFace(CullState.Face.Front);
        CullState cullState2 = new CullState();
        this._backCull = cullState2;
        cullState2.setCullFace(CullState.Face.Back);
        wireframeState.setAntialiased(z10);
        LightState lightState = new LightState();
        this._noLights = lightState;
        lightState.setGlobalAmbient(DEFAULT_OUTLINE_COLOR);
        lightState.setEnabled(true);
        TextureState textureState = new TextureState();
        this._noTexture = textureState;
        textureState.setEnabled(true);
        BlendState blendState = new BlendState();
        this._blendState = blendState;
        blendState.setSourceFunction(BlendState.SourceFunction.SourceAlpha);
        this._blendState.setDestinationFunction(BlendState.DestinationFunction.OneMinusSourceAlpha);
        this._blendState.setBlendEnabled(true);
        this._blendState.setEnabled(true);
    }

    @Override
    public void doRender(Renderer renderer) {
        if (this._spatials.size() == 0) {
            return;
        }
        this._context.enforceState(this._frontCull);
        super.doRender(renderer);
        this._context.enforceState(this._backCull);
        this._context.enforceState(this._wireframeState);
        this._context.enforceState(this._noLights);
        this._context.enforceState(this._noTexture);
        this._context.enforceState(this._blendState);
        super.doRender(renderer);
        this._context.clearEnforcedStates();
    }

    public BlendState getBlendState() {
        return this._blendState;
    }

    public ReadOnlyColorRGBA getOutlineColor() {
        return this._noLights.getGlobalAmbient();
    }

    public float getOutlineWidth() {
        return this._wireframeState.getLineWidth();
    }

    public void setBlendState(BlendState blendState) {
        this._blendState = blendState;
    }

    public void setOutlineColor(ReadOnlyColorRGBA readOnlyColorRGBA) {
        this._noLights.setGlobalAmbient(readOnlyColorRGBA);
    }

    public void setOutlineWidth(float f10) {
        this._wireframeState.setLineWidth(f10);
    }
}
