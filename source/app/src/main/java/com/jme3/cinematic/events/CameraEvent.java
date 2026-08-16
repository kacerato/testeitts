package com.jme3.cinematic.events;

import com.jme3.app.Application;
import com.jme3.cinematic.Cinematic;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import java.io.IOException;

public class CameraEvent extends AbstractCinematicEvent {
    private String cameraName;
    private Cinematic cinematic;

    public CameraEvent() {
    }

    @Override
    public void forceStop() {
    }

    public String getCameraName() {
        return this.cameraName;
    }

    public Cinematic getCinematic() {
        return this.cinematic;
    }

    @Override
    public void initEvent(Application application, Cinematic cinematic) {
        super.initEvent(application, cinematic);
        this.cinematic = cinematic;
    }

    @Override
    public void onPause() {
    }

    @Override
    public void onPlay() {
        this.cinematic.setActiveCamera(this.cameraName);
    }

    @Override
    public void onStop() {
    }

    @Override
    public void onUpdate(float f10) {
    }

    @Override
    public void play() {
        super.play();
        stop();
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        this.cameraName = jmeImporter.getCapsule(this).readString("cameraName", null);
    }

    public void setCameraName(String str) {
        this.cameraName = str;
    }

    public void setCinematic(Cinematic cinematic) {
        this.cinematic = cinematic;
    }

    @Override
    public void setTime(float f10) {
        play();
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        jmeExporter.getCapsule(this).write(this.cameraName, "cameraName", (String) null);
    }

    public CameraEvent(Cinematic cinematic, String str) {
        this.cinematic = cinematic;
        this.cameraName = str;
    }
}
