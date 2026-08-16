package com.ardor3d.renderer;

import com.ardor3d.renderer.state.RenderState;
import com.ardor3d.renderer.state.record.LineRecord;
import com.ardor3d.renderer.state.record.RendererRecord;
import com.ardor3d.renderer.state.record.StateRecord;
import java.util.EnumMap;
import java.util.Stack;

public class RenderContext {
    protected final ContextCapabilities _capabilities;
    protected final Object _contextKey;
    protected Camera _currentCamera;
    protected final EnumMap<RenderState.StateType, RenderState> _currentStates;
    protected final Stack<EnumMap<RenderState.StateType, RenderState>> _enforcedBackStack;
    protected final EnumMap<RenderState.StateType, RenderState> _enforcedStates;
    protected final Object _glContextRep;
    protected final LineRecord _lineRecord;
    protected final RendererRecord _rendererRecord;
    protected final EnumMap<RenderState.StateType, StateRecord> _stateRecords;
    protected final Stack<AbstractFBOTextureRenderer> _textureRenderers;

    public RenderContext(Object obj, ContextCapabilities contextCapabilities) {
        this(obj, contextCapabilities, null);
    }

    public void clearCurrentState(RenderState.StateType stateType) {
        this._currentStates.remove(stateType);
    }

    public void clearCurrentStates() {
        this._currentStates.clear();
    }

    public void clearEnforcedState(RenderState.StateType stateType) {
        this._enforcedStates.remove(stateType);
    }

    public void clearEnforcedStates() {
        this._enforcedStates.clear();
    }

    public void contextLost() {
        ContextManager.fireCleanContextEvent(this);
        invalidateStates();
        Camera camera = this._currentCamera;
        if (camera != null) {
            camera.update();
        }
    }

    public void enforceState(RenderState renderState) {
        this._enforcedStates.put((EnumMap<RenderState.StateType, RenderState>) renderState.getType(), (RenderState.StateType) renderState);
    }

    public void enforceStates(EnumMap<RenderState.StateType, RenderState> enumMap) {
        this._enforcedStates.putAll(enumMap);
    }

    public ContextCapabilities getCapabilities() {
        return this._capabilities;
    }

    public Object getContextKey() {
        return this._contextKey;
    }

    public Camera getCurrentCamera() {
        return this._currentCamera;
    }

    public RenderState getCurrentState(RenderState.StateType stateType) {
        return this._currentStates.get(stateType);
    }

    public RenderState getEnforcedState(RenderState.StateType stateType) {
        return this._enforcedStates.get(stateType);
    }

    public Object getGlContextRep() {
        return this._glContextRep;
    }

    public LineRecord getLineRecord() {
        return this._lineRecord;
    }

    public RendererRecord getRendererRecord() {
        return this._rendererRecord;
    }

    public StateRecord getStateRecord(RenderState.StateType stateType) {
        return this._stateRecords.get(stateType);
    }

    public boolean hasEnforcedStates() {
        return !this._enforcedStates.isEmpty();
    }

    public void invalidateStates() {
        for (RenderState.StateType stateType : RenderState.StateType.values()) {
            this._stateRecords.get(stateType).invalidate();
        }
        this._lineRecord.invalidate();
        this._rendererRecord.invalidate();
        clearCurrentStates();
    }

    public void popEnforcedStates() {
        this._enforcedStates.clear();
        this._enforcedStates.putAll(this._enforcedBackStack.pop());
    }

    public void popFBOTextureRenderer() {
        this._textureRenderers.pop().deactivate();
        if (this._textureRenderers.size() > 0) {
            this._textureRenderers.peek().activate();
        }
    }

    public void pushEnforcedStates() {
        this._enforcedBackStack.push(new EnumMap<>((EnumMap) this._enforcedStates));
    }

    public void pushFBOTextureRenderer(AbstractFBOTextureRenderer abstractFBOTextureRenderer) {
        if (this._textureRenderers.size() > 0) {
            this._textureRenderers.peek().deactivate();
        }
        this._textureRenderers.push(abstractFBOTextureRenderer);
        abstractFBOTextureRenderer.activate();
    }

    public void setCurrentCamera(Camera camera) {
        this._currentCamera = camera;
    }

    public void setCurrentState(RenderState.StateType stateType, RenderState renderState) {
        this._currentStates.put((EnumMap<RenderState.StateType, RenderState>) stateType, (RenderState.StateType) renderState);
    }

    public void setupRecords() {
        for (RenderState.StateType stateType : RenderState.StateType.values()) {
            this._stateRecords.put((EnumMap<RenderState.StateType, StateRecord>) stateType, (RenderState.StateType) RenderState.createState(stateType).createStateRecord());
        }
    }

    public RenderContext(Object obj, ContextCapabilities contextCapabilities, RenderContext renderContext) {
        this._enforcedStates = new EnumMap<>(RenderState.StateType.class);
        this._enforcedBackStack = new Stack<>();
        this._textureRenderers = new Stack<>();
        this._currentStates = new EnumMap<>(RenderState.StateType.class);
        this._stateRecords = new EnumMap<>(RenderState.StateType.class);
        this._lineRecord = new LineRecord();
        this._rendererRecord = new RendererRecord();
        this._currentCamera = null;
        this._contextKey = obj;
        this._capabilities = contextCapabilities;
        setupRecords();
        this._glContextRep = renderContext == null ? new Object() : renderContext._glContextRep;
    }
}
