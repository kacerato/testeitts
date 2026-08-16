package com.ardor3d.renderer;

import com.ardor3d.math.ColorRGBA;
import com.ardor3d.math.type.ReadOnlyColorRGBA;
import com.ardor3d.renderer.queue.RenderQueue;
import com.ardor3d.renderer.state.RenderState;
import com.ardor3d.renderer.state.TextureState;
import com.ardor3d.scenegraph.FloatBufferData;
import com.ardor3d.util.Constants;
import com.ardor3d.util.stat.StatCollector;
import com.ardor3d.util.stat.StatType;
import java.util.EnumMap;
import java.util.List;

public abstract class AbstractRenderer implements Renderer {
    protected boolean _inOrthoMode;
    protected boolean _processingQueue;
    protected int _stencilClearValue;
    protected RenderLogic renderLogic;
    protected final ColorRGBA _backgroundColor = new ColorRGBA(ColorRGBA.BLACK);
    protected RenderQueue _queue = new RenderQueue();
    protected final EnumMap<RenderState.StateType, RenderState> defaultStateList = new EnumMap<>(RenderState.StateType.class);

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$ardor3d$renderer$IndexMode;

        static {
            int[] iArr = new int[IndexMode.values().length];
            $SwitchMap$com$ardor3d$renderer$IndexMode = iArr;
            try {
                iArr[IndexMode.Triangles.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$IndexMode[IndexMode.TriangleFan.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$IndexMode[IndexMode.TriangleStrip.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$IndexMode[IndexMode.Lines.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$IndexMode[IndexMode.LineLoop.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$IndexMode[IndexMode.LineStrip.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$IndexMode[IndexMode.Points.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$IndexMode[IndexMode.Quads.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$IndexMode[IndexMode.QuadStrip.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public AbstractRenderer() {
        for (RenderState.StateType stateType : RenderState.StateType.values()) {
            RenderState createState = RenderState.createState(stateType);
            createState.setEnabled(false);
            this.defaultStateList.put((EnumMap<RenderState.StateType, RenderState>) stateType, (RenderState.StateType) createState);
        }
    }

    public void addStats(IndexMode indexMode, int i10) {
        int primitiveCount = IndexMode.getPrimitiveCount(indexMode, i10);
        switch (AnonymousClass1.$SwitchMap$com$ardor3d$renderer$IndexMode[indexMode.ordinal()]) {
            case 1:
            case 2:
            case 3:
                StatCollector.addStat(StatType.STAT_TRIANGLE_COUNT, primitiveCount);
                return;
            case 4:
            case 5:
            case 6:
                StatCollector.addStat(StatType.STAT_LINE_COUNT, primitiveCount);
                return;
            case 7:
                StatCollector.addStat(StatType.STAT_POINT_COUNT, primitiveCount);
                return;
            case 8:
            case 9:
                StatCollector.addStat(StatType.STAT_QUAD_COUNT, primitiveCount);
                return;
            default:
                return;
        }
    }

    @Override
    public void applyState(RenderState.StateType stateType, RenderState renderState) {
        boolean z10 = Constants.stats;
        if (z10) {
            StatCollector.startStat(StatType.STAT_STATES_TIMER);
        }
        RenderState properRenderState = getProperRenderState(stateType, renderState);
        RenderContext currentContext = ContextManager.getCurrentContext();
        if (!RenderState._quickCompare.contains(stateType) || properRenderState.needsRefresh() || properRenderState != currentContext.getCurrentState(stateType)) {
            doApplyState(properRenderState);
            properRenderState.setNeedsRefresh(false);
        }
        if (z10) {
            StatCollector.endStat(StatType.STAT_STATES_TIMER);
        }
    }

    public abstract void doApplyState(RenderState renderState);

    @Override
    public ReadOnlyColorRGBA getBackgroundColor() {
        return this._backgroundColor;
    }

    @Override
    public RenderState getProperRenderState(RenderState.StateType stateType, RenderState renderState) {
        RenderContext currentContext = ContextManager.getCurrentContext();
        RenderState enforcedState = currentContext.hasEnforcedStates() ? currentContext.getEnforcedState(stateType) : null;
        return enforcedState == null ? renderState != null ? renderState : this.defaultStateList.get(stateType) : enforcedState;
    }

    @Override
    public RenderQueue getQueue() {
        return this._queue;
    }

    public int getStencilClearValue() {
        return this._stencilClearValue;
    }

    public int getTotalInterleavedSize(RenderContext renderContext, FloatBufferData floatBufferData, FloatBufferData floatBufferData2, FloatBufferData floatBufferData3, List<FloatBufferData> list) {
        TextureState textureState;
        FloatBufferData floatBufferData4;
        ContextCapabilities capabilities = renderContext.getCapabilities();
        int bufferLimit = floatBufferData2 != null ? floatBufferData2.getBufferLimit() * 4 : 0;
        if (floatBufferData3 != null) {
            bufferLimit += floatBufferData3.getBufferLimit() * 4;
        }
        if (list != null && (textureState = (TextureState) renderContext.getCurrentState(RenderState.StateType.Texture)) != null) {
            int min = capabilities.isMultitextureSupported() ? Math.min(capabilities.getNumberOfFragmentTexCoordUnits(), 32) : 1;
            for (int i10 = 0; i10 < min; i10++) {
                if (i10 < list.size() && list.get(i10) != null && i10 <= textureState.getMaxTextureIndexUsed() && (floatBufferData4 = list.get(i10)) != null) {
                    bufferLimit += floatBufferData4.getBufferLimit() * 4;
                }
            }
        }
        return floatBufferData != null ? bufferLimit + (floatBufferData.getBufferLimit() * 4) : bufferLimit;
    }

    @Override
    public boolean isClipTestEnabled() {
        return ContextManager.getCurrentContext().getRendererRecord().isClippingTestEnabled();
    }

    @Override
    public boolean isInOrthoMode() {
        return this._inOrthoMode;
    }

    @Override
    public boolean isProcessingQueue() {
        return this._processingQueue;
    }

    @Override
    public void setRenderLogic(RenderLogic renderLogic) {
        this.renderLogic = renderLogic;
    }

    public void setStencilClearValue(int i10) {
        this._stencilClearValue = i10;
    }
}
