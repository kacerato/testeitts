package com.jme3.audio;

import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;

public class Listener {
    private final Vector3f location;
    private AudioRenderer renderer;
    private final Quaternion rotation;
    private final Vector3f velocity;
    private float volume;

    public Listener() {
        this.location = new Vector3f();
        this.velocity = new Vector3f();
        this.rotation = new Quaternion();
        this.volume = 1.0f;
    }

    private void updateListenerParam(ListenerParam listenerParam) {
        AudioRenderer audioRenderer = this.renderer;
        if (audioRenderer != null) {
            audioRenderer.updateListenerParam(this, listenerParam);
        }
    }

    public Vector3f getDirection() {
        return getDirection(null);
    }

    public Vector3f getLeft() {
        return getLeft(null);
    }

    public Vector3f getLocation() {
        return this.location;
    }

    public Quaternion getRotation() {
        return this.rotation;
    }

    public Vector3f getUp() {
        return getUp(null);
    }

    public Vector3f getVelocity() {
        return this.velocity;
    }

    public float getVolume() {
        return this.volume;
    }

    public void setLocation(Vector3f vector3f) {
        this.location.set(vector3f);
        updateListenerParam(ListenerParam.Position);
    }

    public void setRenderer(AudioRenderer audioRenderer) {
        this.renderer = audioRenderer;
    }

    public void setRotation(Quaternion quaternion) {
        this.rotation.set(quaternion);
        updateListenerParam(ListenerParam.Rotation);
    }

    public void setVelocity(Vector3f vector3f) {
        this.velocity.set(vector3f);
        updateListenerParam(ListenerParam.Velocity);
    }

    public void setVolume(float f10) {
        this.volume = f10;
        updateListenerParam(ListenerParam.Volume);
    }

    public Vector3f getDirection(Vector3f vector3f) {
        return this.rotation.getRotationColumn(2, vector3f);
    }

    public Vector3f getLeft(Vector3f vector3f) {
        return this.rotation.getRotationColumn(0, vector3f);
    }

    public Vector3f getLocation(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        return vector3f.set(this.location);
    }

    public Quaternion getRotation(Quaternion quaternion) {
        if (quaternion == null) {
            quaternion = new Quaternion();
        }
        return quaternion.set(this.rotation);
    }

    public Vector3f getUp(Vector3f vector3f) {
        return this.rotation.getRotationColumn(1, vector3f);
    }

    public Vector3f getVelocity(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        return vector3f.set(this.velocity);
    }

    public Listener(Listener listener) {
        Vector3f vector3f = new Vector3f();
        this.location = vector3f;
        Vector3f vector3f2 = new Vector3f();
        this.velocity = vector3f2;
        Quaternion quaternion = new Quaternion();
        this.rotation = quaternion;
        this.volume = 1.0f;
        vector3f.set(listener.location);
        vector3f2.set(listener.velocity);
        quaternion.set(listener.rotation);
        this.volume = listener.volume;
        this.renderer = listener.renderer;
    }
}
