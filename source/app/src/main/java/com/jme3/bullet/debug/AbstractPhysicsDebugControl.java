package com.jme3.bullet.debug;

import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import com.jme3.scene.Spatial;
import com.jme3.scene.control.AbstractControl;
import com.jme3.util.clone.Cloner;
import java.io.IOException;

public abstract class AbstractPhysicsDebugControl extends AbstractControl {
    protected final BulletDebugAppState debugAppState;

    public AbstractPhysicsDebugControl(BulletDebugAppState bulletDebugAppState) {
        this.debugAppState = bulletDebugAppState;
    }

    public void applyPhysicsTransform(Vector3f vector3f, Quaternion quaternion) {
        applyPhysicsTransform(vector3f, quaternion, this.spatial);
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        throw new UnsupportedOperationException("cloneFields() isn't implemented.");
    }

    @Override
    public void controlRender(RenderManager renderManager, ViewPort viewPort) {
    }

    @Override
    public Object jmeClone() {
        throw new UnsupportedOperationException("jmeClone() isn't implemented.");
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        throw new UnsupportedOperationException("read() isn't implemented.");
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        throw new UnsupportedOperationException("write() isn't implemented.");
    }

    private static void applyPhysicsTransform(Vector3f vector3f, Quaternion quaternion, Spatial spatial) {
        if (spatial != null) {
            spatial.setLocalTranslation(vector3f);
            spatial.setLocalRotation(quaternion);
        }
    }
}
