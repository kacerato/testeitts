package com.jme3.scene.control;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.light.DirectionalLight;
import com.jme3.light.Light;
import com.jme3.light.PointLight;
import com.jme3.light.SpotLight;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import com.jme3.util.TempVars;
import com.jme3.util.clone.Cloner;
import java.io.IOException;

public class LightControl extends AbstractControl {
    private Axis axisRotation;
    private ControlDirection controlDir;
    private boolean invertAxisDirection;
    private Light light;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$light$Light$Type;

        static {
            int[] iArr = new int[Light.Type.values().length];
            $SwitchMap$com$jme3$light$Light$Type = iArr;
            try {
                iArr[Light.Type.Point.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$light$Light$Type[Light.Type.Directional.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$jme3$light$Light$Type[Light.Type.Spot.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public enum Axis {
        X,
        Y,
        Z
    }

    public enum ControlDirection {
        LightToSpatial,
        SpatialToLight
    }

    public LightControl() {
        this.controlDir = ControlDirection.SpatialToLight;
        this.axisRotation = Axis.Z;
        this.invertAxisDirection = false;
    }

    private void lightToSpatial(Light light) {
        TempVars tempVars = TempVars.get();
        Vector3f vector3f = tempVars.vect1;
        Vector3f vector3f2 = tempVars.vect2;
        Quaternion quaternion = tempVars.quat1;
        boolean z10 = true;
        boolean z11 = false;
        if (light instanceof PointLight) {
            vector3f.set(((PointLight) light).getPosition());
            z11 = true;
            z10 = false;
        } else if (light instanceof DirectionalLight) {
            vector3f2.set(((DirectionalLight) light).getDirection());
            if (this.invertAxisDirection) {
                vector3f2.negateLocal();
            }
        } else if (light instanceof SpotLight) {
            SpotLight spotLight = (SpotLight) light;
            vector3f.set(spotLight.getPosition());
            vector3f2.set(spotLight.getDirection());
            if (this.invertAxisDirection) {
                vector3f2.negateLocal();
            }
            z11 = true;
        } else {
            z10 = false;
        }
        if (this.spatial.getParent() != null) {
            this.spatial.getParent().getLocalToWorldMatrix(tempVars.tempMat4).invertLocal();
            tempVars.tempMat4.rotateVect(vector3f);
            tempVars.tempMat4.translateVect(vector3f);
            tempVars.tempMat4.rotateVect(vector3f2);
        }
        if (z10) {
            quaternion.lookAt(vector3f2, Vector3f.UNIT_Y).normalizeLocal();
            this.spatial.setLocalRotation(quaternion);
        }
        if (z11) {
            this.spatial.setLocalTranslation(vector3f);
        }
        tempVars.release();
    }

    private void spatialToLight(Light light) {
        TempVars tempVars = TempVars.get();
        Vector3f vector3f = tempVars.vect1;
        vector3f.set(this.spatial.getWorldTranslation());
        Vector3f vector3f2 = tempVars.vect2;
        this.spatial.getWorldRotation().getRotationColumn(this.axisRotation.ordinal(), vector3f2);
        if (this.invertAxisDirection) {
            vector3f2.negateLocal();
        }
        if (light instanceof PointLight) {
            ((PointLight) light).setPosition(vector3f);
        } else if (light instanceof DirectionalLight) {
            ((DirectionalLight) light).setDirection(vector3f2);
        } else if (light instanceof SpotLight) {
            SpotLight spotLight = (SpotLight) light;
            spotLight.setPosition(vector3f);
            spotLight.setDirection(vector3f2);
        }
        tempVars.release();
    }

    private void validateSupportedLightType(Light light) {
        int i10;
        if (light == null || (i10 = AnonymousClass1.$SwitchMap$com$jme3$light$Light$Type[light.getType().ordinal()]) == 1 || i10 == 2 || i10 == 3) {
            return;
        }
        throw new IllegalArgumentException("Unsupported Light type: " + ((Object) light.getType()));
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.light = (Light) cloner.clone(this.light);
    }

    @Override
    public void controlRender(RenderManager renderManager, ViewPort viewPort) {
    }

    @Override
    public void controlUpdate(float f10) {
        if (this.light == null) {
            return;
        }
        int ordinal = this.controlDir.ordinal();
        if (ordinal == 0) {
            lightToSpatial(this.light);
        } else {
            if (ordinal != 1) {
                return;
            }
            spatialToLight(this.light);
        }
    }

    public Axis getAxisRotation() {
        return this.axisRotation;
    }

    public ControlDirection getControlDir() {
        return this.controlDir;
    }

    public Light getLight() {
        return this.light;
    }

    public boolean isInvertAxisDirection() {
        return this.invertAxisDirection;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.light = (Light) capsule.readSavable("light", null);
        this.controlDir = (ControlDirection) capsule.readEnum("controlDir", ControlDirection.class, ControlDirection.SpatialToLight);
        this.axisRotation = (Axis) capsule.readEnum("axisRotation", Axis.class, Axis.Z);
        this.invertAxisDirection = capsule.readBoolean("invertAxisDirection", false);
    }

    public void setAxisRotation(Axis axis) {
        this.axisRotation = axis;
    }

    public void setControlDir(ControlDirection controlDirection) {
        this.controlDir = controlDirection;
    }

    public void setInvertAxisDirection(boolean z10) {
        this.invertAxisDirection = z10;
    }

    public void setLight(Light light) {
        validateSupportedLightType(light);
        this.light = light;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getClass().getSimpleName());
        sb2.append("[light=");
        Light light = this.light;
        sb2.append((Object) (light != null ? light.getType() : null));
        sb2.append(", controlDir=");
        sb2.append((Object) this.controlDir);
        sb2.append(", axisRotation=");
        sb2.append((Object) this.axisRotation);
        sb2.append(", invertAxisDirection=");
        sb2.append(this.invertAxisDirection);
        sb2.append(", enabled=");
        sb2.append(this.enabled);
        sb2.append(", spatial=");
        sb2.append((Object) this.spatial);
        sb2.append("]");
        return sb2.toString();
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.light, "light", (Savable) null);
        capsule.write(this.controlDir, "controlDir", ControlDirection.SpatialToLight);
        capsule.write(this.axisRotation, "axisRotation", Axis.Z);
        capsule.write(this.invertAxisDirection, "invertAxisDirection", false);
    }

    public LightControl(Light light) {
        this.controlDir = ControlDirection.SpatialToLight;
        this.axisRotation = Axis.Z;
        this.invertAxisDirection = false;
        validateSupportedLightType(light);
        this.light = light;
    }

    public LightControl(Light light, ControlDirection controlDirection) {
        this.controlDir = ControlDirection.SpatialToLight;
        this.axisRotation = Axis.Z;
        this.invertAxisDirection = false;
        validateSupportedLightType(light);
        this.light = light;
        this.controlDir = controlDirection;
    }
}
