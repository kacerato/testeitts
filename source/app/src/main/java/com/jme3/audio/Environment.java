package com.jme3.audio;

import com.jme3.math.FastMath;

public class Environment {
    private float airAbsorbGainHf;
    private float decayHFRatio;
    private boolean decayHfLimit;
    private float decayTime;
    private float density;
    private float diffusion;
    private float gain;
    private float gainHf;
    private float lateReverbDelay;
    private float lateReverbGain;
    private float reflectDelay;
    private float reflectGain;
    private float roomRolloffFactor;
    public static final Environment Garage = new Environment(1.0f, 1.0f, 1.0f, 1.0f, 0.9f, 0.5f, 0.751f, 0.0039f, 0.661f, 0.0137f);
    public static final Environment Dungeon = new Environment(0.75f, 1.0f, 1.0f, 0.75f, 1.6f, 1.0f, 0.95f, 0.0026f, 0.93f, 0.0103f);
    public static final Environment Cavern = new Environment(0.5f, 1.0f, 1.0f, 0.5f, 2.25f, 1.0f, 0.908f, 0.0103f, 0.93f, 0.041f);
    public static final Environment AcousticLab = new Environment(0.5f, 1.0f, 1.0f, 1.0f, 0.28f, 1.0f, 0.87f, 0.002f, 0.81f, 0.008f);
    public static final Environment Closet = new Environment(1.0f, 1.0f, 1.0f, 1.0f, 0.15f, 1.0f, 0.6f, 0.0025f, 0.5f, 6.0E-4f);

    public Environment() {
        this.airAbsorbGainHf = 0.99426f;
        this.roomRolloffFactor = 0.0f;
        this.decayTime = 1.49f;
        this.decayHFRatio = 0.54f;
        this.density = 1.0f;
        this.diffusion = 0.3f;
        this.gain = 0.316f;
        this.gainHf = 0.022f;
        this.lateReverbDelay = 0.088f;
        this.lateReverbGain = 0.768f;
        this.reflectDelay = 0.162f;
        this.reflectGain = 0.052f;
        this.decayHfLimit = true;
    }

    private static float eaxDbToAmp(float f10) {
        return FastMath.pow(10.0f, f10 / 2000.0f);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Environment)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        Environment environment = (Environment) obj;
        float[] fArr = {this.airAbsorbGainHf, this.decayHFRatio, this.decayTime, this.density, this.diffusion, this.gain, this.gainHf, this.lateReverbDelay, this.lateReverbGain, this.reflectDelay, this.reflectGain, this.roomRolloffFactor};
        float[] fArr2 = {environment.airAbsorbGainHf, environment.decayHFRatio, environment.decayTime, environment.density, environment.diffusion, environment.gain, environment.gainHf, environment.lateReverbDelay, environment.lateReverbGain, environment.reflectDelay, environment.reflectGain, environment.roomRolloffFactor};
        for (int i10 = 0; i10 < 12; i10++) {
            if (Math.abs(fArr[i10] - fArr2[i10]) >= 1.0E-6f) {
                return false;
            }
        }
        return this.decayHfLimit == environment.decayHfLimit;
    }

    public float getAirAbsorbGainHf() {
        return this.airAbsorbGainHf;
    }

    public float getDecayHFRatio() {
        return this.decayHFRatio;
    }

    public float getDecayTime() {
        return this.decayTime;
    }

    public float getDensity() {
        return this.density;
    }

    public float getDiffusion() {
        return this.diffusion;
    }

    public float getGain() {
        return this.gain;
    }

    public float getGainHf() {
        return this.gainHf;
    }

    public float getLateReverbDelay() {
        return this.lateReverbDelay;
    }

    public float getLateReverbGain() {
        return this.lateReverbGain;
    }

    public float getReflectDelay() {
        return this.reflectDelay;
    }

    public float getReflectGain() {
        return this.reflectGain;
    }

    public float getRoomRolloffFactor() {
        return this.roomRolloffFactor;
    }

    public int hashCode() {
        float f10 = this.airAbsorbGainHf;
        int floatToIntBits = (f10 != 0.0f ? Float.floatToIntBits(f10) : 0) * 31;
        float f11 = this.roomRolloffFactor;
        int floatToIntBits2 = (floatToIntBits + (f11 != 0.0f ? Float.floatToIntBits(f11) : 0)) * 31;
        float f12 = this.decayTime;
        int floatToIntBits3 = (floatToIntBits2 + (f12 != 0.0f ? Float.floatToIntBits(f12) : 0)) * 31;
        float f13 = this.decayHFRatio;
        int floatToIntBits4 = (floatToIntBits3 + (f13 != 0.0f ? Float.floatToIntBits(f13) : 0)) * 31;
        float f14 = this.density;
        int floatToIntBits5 = (floatToIntBits4 + (f14 != 0.0f ? Float.floatToIntBits(f14) : 0)) * 31;
        float f15 = this.diffusion;
        int floatToIntBits6 = (floatToIntBits5 + (f15 != 0.0f ? Float.floatToIntBits(f15) : 0)) * 31;
        float f16 = this.gain;
        int floatToIntBits7 = (floatToIntBits6 + (f16 != 0.0f ? Float.floatToIntBits(f16) : 0)) * 31;
        float f17 = this.gainHf;
        int floatToIntBits8 = (floatToIntBits7 + (f17 != 0.0f ? Float.floatToIntBits(f17) : 0)) * 31;
        float f18 = this.lateReverbDelay;
        int floatToIntBits9 = (floatToIntBits8 + (f18 != 0.0f ? Float.floatToIntBits(f18) : 0)) * 31;
        float f19 = this.lateReverbGain;
        int floatToIntBits10 = (floatToIntBits9 + (f19 != 0.0f ? Float.floatToIntBits(f19) : 0)) * 31;
        float f20 = this.reflectDelay;
        int floatToIntBits11 = (floatToIntBits10 + (f20 != 0.0f ? Float.floatToIntBits(f20) : 0)) * 31;
        float f21 = this.reflectGain;
        return ((floatToIntBits11 + (f21 != 0.0f ? Float.floatToIntBits(f21) : 0)) * 31) + (this.decayHfLimit ? 1 : 0);
    }

    public boolean isDecayHfLimit() {
        return this.decayHfLimit;
    }

    public void setAirAbsorbGainHf(float f10) {
        this.airAbsorbGainHf = f10;
    }

    public void setDecayHFRatio(float f10) {
        this.decayHFRatio = f10;
    }

    public void setDecayHfLimit(boolean z10) {
        this.decayHfLimit = z10;
    }

    public void setDecayTime(float f10) {
        this.decayTime = f10;
    }

    public void setDensity(float f10) {
        this.density = f10;
    }

    public void setDiffusion(float f10) {
        this.diffusion = f10;
    }

    public void setGain(float f10) {
        this.gain = f10;
    }

    public void setGainHf(float f10) {
        this.gainHf = f10;
    }

    public void setLateReverbDelay(float f10) {
        this.lateReverbDelay = f10;
    }

    public void setLateReverbGain(float f10) {
        this.lateReverbGain = f10;
    }

    public void setReflectDelay(float f10) {
        this.reflectDelay = f10;
    }

    public void setReflectGain(float f10) {
        this.reflectGain = f10;
    }

    public void setRoomRolloffFactor(float f10) {
        this.roomRolloffFactor = f10;
    }

    public Environment(Environment environment) {
        this.airAbsorbGainHf = 0.99426f;
        this.roomRolloffFactor = 0.0f;
        this.decayTime = 1.49f;
        this.decayHFRatio = 0.54f;
        this.density = 1.0f;
        this.diffusion = 0.3f;
        this.gain = 0.316f;
        this.gainHf = 0.022f;
        this.lateReverbDelay = 0.088f;
        this.lateReverbGain = 0.768f;
        this.reflectDelay = 0.162f;
        this.reflectGain = 0.052f;
        this.decayHfLimit = true;
        this.airAbsorbGainHf = environment.airAbsorbGainHf;
        this.roomRolloffFactor = environment.roomRolloffFactor;
        this.decayTime = environment.decayTime;
        this.decayHFRatio = environment.decayHFRatio;
        this.density = environment.density;
        this.diffusion = environment.diffusion;
        this.gain = environment.gain;
        this.gainHf = environment.gainHf;
        this.lateReverbDelay = environment.lateReverbDelay;
        this.lateReverbGain = environment.lateReverbGain;
        this.reflectDelay = environment.reflectDelay;
        this.reflectGain = environment.reflectGain;
        this.decayHfLimit = environment.decayHfLimit;
    }

    public Environment(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19) {
        this.airAbsorbGainHf = 0.99426f;
        this.roomRolloffFactor = 0.0f;
        this.decayHfLimit = true;
        this.decayTime = f14;
        this.decayHFRatio = f15;
        this.density = f10;
        this.diffusion = f11;
        this.gain = f12;
        this.gainHf = f13;
        this.lateReverbDelay = f19;
        this.lateReverbGain = f18;
        this.reflectDelay = f17;
        this.reflectGain = f16;
    }

    public Environment(float[] fArr) {
        this.airAbsorbGainHf = 0.99426f;
        this.roomRolloffFactor = 0.0f;
        this.decayTime = 1.49f;
        this.decayHFRatio = 0.54f;
        this.density = 1.0f;
        this.diffusion = 0.3f;
        this.gain = 0.316f;
        this.gainHf = 0.022f;
        this.lateReverbDelay = 0.088f;
        this.lateReverbGain = 0.768f;
        this.reflectDelay = 0.162f;
        this.reflectGain = 0.052f;
        this.decayHfLimit = true;
        if (fArr.length == 28) {
            this.diffusion = fArr[2];
            this.gain = eaxDbToAmp(fArr[3]);
            this.gainHf = eaxDbToAmp(fArr[4]) / eaxDbToAmp(fArr[5]);
            this.decayTime = fArr[6];
            this.decayHFRatio = fArr[7] / fArr[8];
            this.reflectGain = eaxDbToAmp(fArr[9]);
            this.reflectDelay = fArr[10];
            this.lateReverbGain = eaxDbToAmp(fArr[14]);
            this.lateReverbDelay = fArr[15];
            this.airAbsorbGainHf = eaxDbToAmp(fArr[23]);
            this.roomRolloffFactor = fArr[26];
            return;
        }
        throw new IllegalArgumentException("Not an EAX preset");
    }
}
