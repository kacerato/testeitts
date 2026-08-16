package com.ardor3d.scenegraph.extension;

import com.ardor3d.renderer.RenderContext;
import com.ardor3d.renderer.state.RenderState;
import com.ardor3d.util.export.CapsuleUtils;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.Savable;
import java.io.IOException;
import java.io.Serializable;
import java.util.EnumMap;

public class PassNodeState implements Savable, Serializable {
    private static final long serialVersionUID = 1;
    protected boolean _enabled = true;
    protected final EnumMap<RenderState.StateType, RenderState> _passStates = new EnumMap<>(RenderState.StateType.class);

    public void applyPassNodeStates(RenderContext renderContext) {
        renderContext.pushEnforcedStates();
        renderContext.enforceStates(this._passStates);
    }

    public void clearPassState(RenderState.StateType stateType) {
        this._passStates.remove(stateType);
    }

    public void clearPassStates() {
        this._passStates.clear();
    }

    @Override
    public Class<? extends PassNodeState> getClassTag() {
        return getClass();
    }

    public RenderState getPassState(RenderState.StateType stateType) {
        return this._passStates.get(stateType);
    }

    public boolean isEnabled() {
        return this._enabled;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        this._enabled = inputCapsule.readBoolean("enabled", true);
        RenderState[] renderStateArr = (RenderState[]) CapsuleUtils.asArray(inputCapsule.readSavableArray("passStates", null), RenderState.class);
        this._passStates.clear();
        if (renderStateArr != null) {
            for (RenderState renderState : renderStateArr) {
                this._passStates.put((EnumMap<RenderState.StateType, RenderState>) renderState.getType(), (RenderState.StateType) renderState);
            }
        }
    }

    public void setEnabled(boolean z10) {
        this._enabled = z10;
    }

    public void setPassState(RenderState renderState) {
        this._passStates.put((EnumMap<RenderState.StateType, RenderState>) renderState.getType(), (RenderState.StateType) renderState);
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        outputCapsule.write(this._enabled, "enabled", true);
        outputCapsule.write((Savable[]) this._passStates.values().toArray(new RenderState[0]), "passStates", (Savable[]) null);
    }
}
