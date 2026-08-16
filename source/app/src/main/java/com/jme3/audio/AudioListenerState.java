package com.jme3.audio;

import com.jme3.app.Application;
import com.jme3.app.state.BaseAppState;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import com.jme3.renderer.Camera;
import com.jme3.renderer.RenderManager;

public class AudioListenerState extends BaseAppState {
    private Camera camera;
    private float lastTpf;
    private Listener listener;

    @Override
    public void cleanup(Application application) {
    }

    @Override
    public void initialize(Application application) {
        this.camera = application.getCamera();
        this.listener = application.getListener();
    }

    @Override
    public void onDisable() {
    }

    @Override
    public void onEnable() {
    }

    @Override
    public void render(RenderManager renderManager) {
        Listener listener;
        if (!isEnabled() || (listener = this.listener) == null) {
            return;
        }
        Vector3f location = listener.getLocation();
        Vector3f location2 = this.camera.getLocation();
        Vector3f velocity = this.listener.getVelocity();
        if (location.equals(location2)) {
            Vector3f vector3f = Vector3f.ZERO;
            if (!velocity.equals(vector3f)) {
                this.listener.setVelocity(vector3f);
            }
        } else {
            velocity.set(location2).subtractLocal(location);
            velocity.multLocal(1.0f / this.lastTpf);
            this.listener.setLocation(location2);
            this.listener.setVelocity(velocity);
        }
        Quaternion rotation = this.listener.getRotation();
        Quaternion rotation2 = this.camera.getRotation();
        if (rotation.equals(rotation2)) {
            return;
        }
        this.listener.setRotation(rotation2);
    }

    @Override
    public void update(float f10) {
        this.lastTpf = f10;
    }
}
