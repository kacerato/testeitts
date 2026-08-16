package com.ardor3d.renderer.state;

import com.ardor3d.renderer.state.record.StateRecord;
import com.ardor3d.scenegraph.Spatial;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.Savable;
import java.io.IOException;
import java.util.EnumSet;
import java.util.Stack;

public abstract class RenderState implements Savable {
    public static final EnumSet<StateType> _quickCompare;
    private boolean _enabled = true;
    private boolean _needsRefresh = false;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$ardor3d$renderer$state$RenderState$StateType;

        static {
            int[] iArr = new int[StateType.values().length];
            $SwitchMap$com$ardor3d$renderer$state$RenderState$StateType = iArr;
            try {
                iArr[StateType.Blend.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$state$RenderState$StateType[StateType.Clip.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$state$RenderState$StateType[StateType.ColorMask.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$state$RenderState$StateType[StateType.Cull.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$state$RenderState$StateType[StateType.Fog.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$state$RenderState$StateType[StateType.FragmentProgram.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$state$RenderState$StateType[StateType.GLSLShader.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$state$RenderState$StateType[StateType.Light.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$state$RenderState$StateType[StateType.Material.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$state$RenderState$StateType[StateType.Offset.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$state$RenderState$StateType[StateType.Shading.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$state$RenderState$StateType[StateType.Stencil.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$state$RenderState$StateType[StateType.Texture.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$state$RenderState$StateType[StateType.VertexProgram.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$state$RenderState$StateType[StateType.Wireframe.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$ardor3d$renderer$state$RenderState$StateType[StateType.ZBuffer.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
        }
    }

    public enum StateType {
        Blend,
        Fog,
        Light,
        Material,
        Shading,
        Texture,
        Wireframe,
        ZBuffer,
        Cull,
        VertexProgram,
        FragmentProgram,
        Stencil,
        GLSLShader,
        ColorMask,
        Clip,
        Offset;

        public static StateType[] values = values();
    }

    static {
        EnumSet<StateType> noneOf = EnumSet.noneOf(StateType.class);
        _quickCompare = noneOf;
        noneOf.add(StateType.Blend);
        noneOf.add(StateType.Fog);
        noneOf.add(StateType.Material);
        noneOf.add(StateType.Shading);
        noneOf.add(StateType.ZBuffer);
        noneOf.add(StateType.Cull);
        noneOf.add(StateType.VertexProgram);
        noneOf.add(StateType.FragmentProgram);
        noneOf.add(StateType.GLSLShader);
        noneOf.add(StateType.ColorMask);
        noneOf.add(StateType.Offset);
    }

    public static RenderState createState(StateType stateType) {
        switch (AnonymousClass1.$SwitchMap$com$ardor3d$renderer$state$RenderState$StateType[stateType.ordinal()]) {
            case 1:
                return new BlendState();
            case 2:
                return new ClipState();
            case 3:
                return new ColorMaskState();
            case 4:
                return new CullState();
            case 5:
                return new FogState();
            case 6:
                return new FragmentProgramState();
            case 7:
                return new GLSLShaderObjectsState();
            case 8:
                return new LightState();
            case 9:
                return new MaterialState();
            case 10:
                return new OffsetState();
            case 11:
                return new ShadingState();
            case 12:
                return new StencilState();
            case 13:
                return new TextureState();
            case 14:
                return new VertexProgramState();
            case 15:
                return new WireframeState();
            case 16:
                return new ZBufferState();
            default:
                throw new IllegalArgumentException("Unknown state type: " + ((Object) stateType));
        }
    }

    public static void setQuickCompares(boolean z10) {
        EnumSet<StateType> enumSet = _quickCompare;
        enumSet.clear();
        if (z10) {
            enumSet.addAll(EnumSet.allOf(StateType.class));
        }
    }

    public abstract StateRecord createStateRecord();

    public RenderState extract(Stack<? extends RenderState> stack, Spatial spatial) {
        return stack.peek();
    }

    @Override
    public Class<? extends RenderState> getClassTag() {
        return getClass();
    }

    public abstract StateType getType();

    public boolean isEnabled() {
        return this._enabled;
    }

    public boolean needsRefresh() {
        return this._needsRefresh;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        this._enabled = inputCapsule.readBoolean("enabled", true);
    }

    public void setEnabled(boolean z10) {
        this._enabled = z10;
        setNeedsRefresh(true);
    }

    public void setNeedsRefresh(boolean z10) {
        this._needsRefresh = z10;
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        outputCapsule.write(this._enabled, "enabled", true);
    }
}
