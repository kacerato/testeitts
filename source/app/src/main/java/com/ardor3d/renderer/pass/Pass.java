package com.ardor3d.renderer.pass;

import com.ardor3d.image.Texture;
import com.ardor3d.renderer.ContextManager;
import com.ardor3d.renderer.RenderContext;
import com.ardor3d.renderer.Renderer;
import com.ardor3d.renderer.TextureRenderer;
import com.ardor3d.renderer.state.RenderState;
import com.ardor3d.scenegraph.Spatial;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.List;

public abstract class Pass implements Serializable {
    private static final long serialVersionUID = 1;
    protected List<Spatial> _spatials = new ArrayList();
    protected boolean _enabled = true;
    protected final EnumMap<RenderState.StateType, RenderState> _passStates = new EnumMap<>(RenderState.StateType.class);
    protected RenderContext _context = null;

    public void add(Spatial spatial) {
        this._spatials.add(spatial);
    }

    public void cleanUp() {
    }

    public void clearPassState(RenderState.StateType stateType) {
        this._passStates.remove(stateType);
    }

    public void clearPassStates() {
        this._passStates.clear();
    }

    public boolean contains(Spatial spatial) {
        return this._spatials.contains(spatial);
    }

    public abstract void doRender(Renderer renderer);

    public void doRender(TextureRenderer textureRenderer, int i10, List<Texture> list) {
        throw new UnsupportedOperationException("This pass type does not support RTT use.");
    }

    public void doUpdate(double d10) {
    }

    public Spatial get(int i10) {
        return this._spatials.get(i10);
    }

    public boolean isEnabled() {
        return this._enabled;
    }

    public boolean remove(Spatial spatial) {
        return this._spatials.remove(spatial);
    }

    public final void renderPass(Renderer renderer) {
        if (this._enabled) {
            RenderContext currentContext = ContextManager.getCurrentContext();
            this._context = currentContext;
            currentContext.pushEnforcedStates();
            this._context.enforceStates(this._passStates);
            doRender(renderer);
            this._context.popEnforcedStates();
            this._context = null;
        }
    }

    public void setEnabled(boolean z10) {
        this._enabled = z10;
    }

    public void setPassState(RenderState renderState) {
        this._passStates.put((EnumMap<RenderState.StateType, RenderState>) renderState.getType(), (RenderState.StateType) renderState);
    }

    public int size() {
        return this._spatials.size();
    }

    public final void updatePass(double d10) {
        if (this._enabled) {
            doUpdate(d10);
        }
    }

    public final void renderPass(TextureRenderer textureRenderer, int i10, List<Texture> list) {
        if (this._enabled) {
            RenderContext currentContext = ContextManager.getCurrentContext();
            this._context = currentContext;
            currentContext.pushEnforcedStates();
            this._context.enforceStates(this._passStates);
            doRender(textureRenderer, i10, list);
            this._context.popEnforcedStates();
            this._context = null;
        }
    }
}
