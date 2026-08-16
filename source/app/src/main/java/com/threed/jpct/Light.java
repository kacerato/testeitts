package com.threed.jpct;

public class Light {
    public static final boolean LIGHT_INVISIBLE = false;
    public static final boolean LIGHT_VISIBLE = true;
    private int light;

    private boolean f83620on;
    private SimpleVector rotCache = new SimpleVector();
    private World world;

    public Light(World world) {
        this.light = -1;
        this.f83620on = false;
        this.world = null;
        this.world = world;
        this.light = world.addLight(new SimpleVector(), 255.0f, 255.0f, 255.0f);
        this.f83620on = true;
    }

    public void disable() {
        this.f83620on = false;
        this.world.setLightVisibility(this.light, false);
    }

    public void enable() {
        this.f83620on = true;
        this.world.setLightVisibility(this.light, true);
    }

    public float getAttenuation() {
        return this.world.getLightAttenuation(this.light);
    }

    public float getDiscardDistance() {
        return this.world.getLightDiscardDistance(this.light);
    }

    public float getDistanceOverride() {
        return this.world.getLightDistanceOverride(this.light);
    }

    public SimpleVector getIntensity() {
        return this.world.getLightIntensity(this.light);
    }

    public SimpleVector getPosition() {
        return this.world.getLightPosition(this.light, new SimpleVector());
    }

    public boolean isEnabled() {
        return this.f83620on;
    }

    public void rotate(SimpleVector simpleVector, SimpleVector simpleVector2) {
        SimpleVector lightPosition = this.world.getLightPosition(this.light, this.rotCache);
        lightPosition.sub(simpleVector2);
        lightPosition.rotateX(simpleVector.f83625x);
        lightPosition.rotateY(simpleVector.f83626y);
        lightPosition.rotateZ(simpleVector.f83627z);
        lightPosition.add(simpleVector2);
        setPosition(lightPosition);
    }

    public void setAttenuation(float f10) {
        this.world.setLightAttenuation(this.light, f10);
    }

    public void setDiscardDistance(float f10) {
        if (f10 < 0.0f) {
            f10 = -1.0f;
        }
        this.world.setLightDiscardDistance(this.light, f10);
    }

    public void setDistanceOverride(float f10) {
        if (f10 < 0.0f) {
            f10 = -1.0f;
        }
        this.world.setLightDistanceOverride(this.light, f10);
    }

    public void setIntensity(SimpleVector simpleVector) {
        setIntensity(simpleVector.f83625x, simpleVector.f83626y, simpleVector.f83627z);
    }

    public void setPosition(SimpleVector simpleVector) {
        this.world.setLightPosition(this.light, simpleVector);
    }

    public SimpleVector getPosition(SimpleVector simpleVector) {
        return this.world.getLightPosition(this.light, simpleVector);
    }

    public void setIntensity(float f10, float f11, float f12) {
        this.world.setLightIntensity(this.light, f10, f11, f12);
    }
}
