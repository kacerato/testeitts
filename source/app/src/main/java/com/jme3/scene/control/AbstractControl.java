package com.jme3.scene.control;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import com.jme3.scene.Spatial;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;

public abstract class AbstractControl implements Control, JmeCloneable {
    protected boolean enabled = true;
    protected Spatial spatial;

    public void cloneFields(Cloner cloner, Object obj) {
        this.spatial = (Spatial) cloner.clone(this.spatial);
    }

    @Override
    @Deprecated
    public Control cloneForSpatial(Spatial spatial) {
        throw new UnsupportedOperationException();
    }

    public abstract void controlRender(RenderManager renderManager, ViewPort viewPort);

    public abstract void controlUpdate(float f10);

    public Spatial getSpatial() {
        return this.spatial;
    }

    public boolean isEnabled() {
        return this.enabled;
    }

    public Object jmeClone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException("Can't clone control for spatial", e10);
        }
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.enabled = capsule.readBoolean("enabled", true);
        this.spatial = (Spatial) capsule.readSavable("spatial", null);
    }

    @Override
    public void render(RenderManager renderManager, ViewPort viewPort) {
        if (this.enabled) {
            controlRender(renderManager, viewPort);
        }
    }

    public void setEnabled(boolean z10) {
        this.enabled = z10;
    }

    @Override
    public void setSpatial(Spatial spatial) {
        Spatial spatial2 = this.spatial;
        if (spatial2 != null && spatial != null && spatial != spatial2) {
            throw new IllegalStateException("This control has already been added to a Spatial");
        }
        this.spatial = spatial;
    }

    @Override
    public void update(float f10) {
        if (this.enabled) {
            controlUpdate(f10);
        }
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.enabled, "enabled", true);
        capsule.write(this.spatial, "spatial", (Savable) null);
    }
}
