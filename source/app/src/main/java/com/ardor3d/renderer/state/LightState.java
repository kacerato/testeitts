package com.ardor3d.renderer.state;

import com.ardor3d.light.Light;
import com.ardor3d.math.ColorRGBA;
import com.ardor3d.math.type.ReadOnlyColorRGBA;
import com.ardor3d.renderer.state.RenderState;
import com.ardor3d.renderer.state.record.LightStateRecord;
import com.ardor3d.renderer.state.record.StateRecord;
import com.ardor3d.scenegraph.Mesh;
import com.ardor3d.scenegraph.Spatial;
import com.ardor3d.scenegraph.hint.LightCombineMode;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Stack;

public class LightState extends RenderState {
    public static final ReadOnlyColorRGBA DEFAULT_GLOBAL_AMBIENT = new ColorRGBA(0.0f, 0.0f, 0.0f, 1.0f);
    public static boolean LIGHTS_ENABLED = true;
    public static final int MASK_AMBIENT = 1;
    public static final int MASK_DIFFUSE = 2;
    public static final int MASK_GLOBALAMBIENT = 8;
    public static final int MASK_SPECULAR = 4;
    public static final int MAX_LIGHTS_ALLOWED = 8;
    protected boolean localViewerOn;
    protected boolean separateSpecularOn;
    protected int lightMask = 0;
    protected int backLightMask = 0;
    protected boolean twoSidedOn = true;
    protected ColorRGBA _globalAmbient = new ColorRGBA(DEFAULT_GLOBAL_AMBIENT);
    private List<Light> lightList = new ArrayList();

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$ardor3d$scenegraph$hint$LightCombineMode;

        static {
            int[] iArr = new int[LightCombineMode.values().length];
            $SwitchMap$com$ardor3d$scenegraph$hint$LightCombineMode = iArr;
            try {
                iArr[LightCombineMode.CombineClosest.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$ardor3d$scenegraph$hint$LightCombineMode[LightCombineMode.CombineClosestEnabled.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$ardor3d$scenegraph$hint$LightCombineMode[LightCombineMode.CombineFirst.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$ardor3d$scenegraph$hint$LightCombineMode[LightCombineMode.Off.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private static void copyLightState(LightState lightState, LightState lightState2) {
        lightState2.setTwoSidedLighting(lightState.getTwoSidedLighting());
        lightState2.setLocalViewer(lightState.getLocalViewer());
        lightState2.setSeparateSpecular(lightState.getSeparateSpecular());
        lightState2.setEnabled(lightState.isEnabled());
        lightState2.setGlobalAmbient(lightState.getGlobalAmbient());
        lightState2.setLightMask(lightState.getLightMask());
        lightState2.setNeedsRefresh(true);
        int size = lightState.getLightList().size();
        for (int i10 = 0; i10 < size; i10++) {
            Light light = lightState.get(i10);
            if (light != null) {
                lightState2.attach(light);
            }
        }
    }

    public boolean attach(Light light) {
        if (this.lightList.contains(light)) {
            return false;
        }
        this.lightList.add(light);
        setNeedsRefresh(true);
        return true;
    }

    @Override
    public StateRecord createStateRecord() {
        return new LightStateRecord();
    }

    public void detach(Light light) {
        this.lightList.remove(light);
        setNeedsRefresh(true);
    }

    public void detachAll() {
        this.lightList.clear();
        setNeedsRefresh(true);
    }

    @Override
    public RenderState extract(Stack<? extends RenderState> stack, Spatial spatial) {
        if (spatial == null) {
            return stack.peek();
        }
        LightCombineMode lightCombineMode = spatial.getSceneHints().getLightCombineMode();
        Mesh mesh = (Mesh) spatial;
        LightState lightState = mesh.getLightState();
        if (lightState == null) {
            lightState = new LightState();
            mesh.setLightState(lightState);
        }
        lightState.detachAll();
        if (lightCombineMode == LightCombineMode.Replace || (lightCombineMode != LightCombineMode.Off && stack.size() == 1)) {
            copyLightState((LightState) stack.peek(), lightState);
        } else {
            Object[] array = stack.toArray();
            int i10 = AnonymousClass1.$SwitchMap$com$ardor3d$scenegraph$hint$LightCombineMode[lightCombineMode.ordinal()];
            boolean z10 = false;
            z10 = false;
            if (i10 == 1 || i10 == 2) {
                for (int length = array.length - 1; length >= 0; length--) {
                    LightState lightState2 = (LightState) array[length];
                    if (!lightState2.isEnabled()) {
                        if (lightCombineMode == LightCombineMode.CombineClosestEnabled) {
                            break;
                        }
                    } else {
                        copyLightState(lightState2, lightState);
                        z10 = true;
                    }
                }
            } else if (i10 == 3) {
                boolean z11 = false;
                for (Object obj : array) {
                    LightState lightState3 = (LightState) obj;
                    if (lightState3.isEnabled()) {
                        copyLightState(lightState3, lightState);
                        z11 = true;
                    }
                }
                z10 = z11;
            }
            lightState.setEnabled(z10);
        }
        return lightState;
    }

    public Light get(int i10) {
        return this.lightList.get(i10);
    }

    public ReadOnlyColorRGBA getGlobalAmbient() {
        return this._globalAmbient;
    }

    public List<Light> getLightList() {
        return this.lightList;
    }

    public int getLightMask() {
        return this.lightMask;
    }

    public boolean getLocalViewer() {
        return this.localViewerOn;
    }

    public int getNumberOfChildren() {
        if (this.lightList.size() > 8) {
            return 8;
        }
        return this.lightList.size();
    }

    public boolean getSeparateSpecular() {
        return this.separateSpecularOn;
    }

    public boolean getTwoSidedLighting() {
        return this.twoSidedOn;
    }

    @Override
    public RenderState.StateType getType() {
        return RenderState.StateType.Light;
    }

    public void popLightMask() {
        this.lightMask = this.backLightMask;
    }

    public void pushLightMask() {
        this.backLightMask = this.lightMask;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this.lightList = inputCapsule.readSavableList("lightList", new ArrayList());
        this.lightMask = inputCapsule.readInt("lightMask", 0);
        this.backLightMask = inputCapsule.readInt("backLightMask", 0);
        this.twoSidedOn = inputCapsule.readBoolean("twoSidedOn", false);
        this._globalAmbient = (ColorRGBA) inputCapsule.readSavable("globalAmbient", new ColorRGBA(DEFAULT_GLOBAL_AMBIENT));
        this.localViewerOn = inputCapsule.readBoolean("localViewerOn", false);
        this.separateSpecularOn = inputCapsule.readBoolean("separateSpecularOn", false);
    }

    public void setGlobalAmbient(ReadOnlyColorRGBA readOnlyColorRGBA) {
        this._globalAmbient.set(readOnlyColorRGBA);
        setNeedsRefresh(true);
    }

    public void setLightMask(int i10) {
        this.lightMask = i10;
        setNeedsRefresh(true);
    }

    public void setLocalViewer(boolean z10) {
        this.localViewerOn = z10;
        setNeedsRefresh(true);
    }

    public void setSeparateSpecular(boolean z10) {
        this.separateSpecularOn = z10;
        setNeedsRefresh(true);
    }

    public void setTwoSidedLighting(boolean z10) {
        this.twoSidedOn = z10;
        setNeedsRefresh(true);
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.writeSavableList(this.lightList, "lightList", new ArrayList());
        outputCapsule.write(this.lightMask, "lightMask", 0);
        outputCapsule.write(this.backLightMask, "backLightMask", 0);
        outputCapsule.write(this.twoSidedOn, "twoSidedOn", false);
        outputCapsule.write(this._globalAmbient, "globalAmbient", new ColorRGBA(DEFAULT_GLOBAL_AMBIENT));
        outputCapsule.write(this.localViewerOn, "localViewerOn", false);
        outputCapsule.write(this.separateSpecularOn, "separateSpecularOn", false);
    }
}
