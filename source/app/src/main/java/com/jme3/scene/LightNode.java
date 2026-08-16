package com.jme3.scene;

import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.Savable;
import com.jme3.light.Light;
import com.jme3.scene.control.LightControl;
import com.jme3.util.clone.Cloner;
import java.io.IOException;

@Deprecated
public class LightNode extends Node {
    private LightControl lightControl;

    public LightNode() {
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.lightControl = (LightControl) cloner.clone(this.lightControl);
    }

    public LightControl.ControlDirection getControlDir() {
        return this.lightControl.getControlDir();
    }

    public Light getLight() {
        return this.lightControl.getLight();
    }

    public boolean isEnabled() {
        return this.lightControl.isEnabled();
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        this.lightControl = (LightControl) jmeImporter.getCapsule(this).readSavable("lightControl", null);
    }

    public void setControlDir(LightControl.ControlDirection controlDirection) {
        this.lightControl.setControlDir(controlDirection);
    }

    public void setEnabled(boolean z10) {
        this.lightControl.setEnabled(z10);
    }

    public void setLight(Light light) {
        this.lightControl.setLight(light);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        jmeExporter.getCapsule(this).write(this.lightControl, "lightControl", (Savable) null);
    }

    public LightNode(String str, Light light) {
        this(str, new LightControl(light));
    }

    public LightNode(String str, LightControl lightControl) {
        super(str);
        addControl(lightControl);
        this.lightControl = lightControl;
    }
}
