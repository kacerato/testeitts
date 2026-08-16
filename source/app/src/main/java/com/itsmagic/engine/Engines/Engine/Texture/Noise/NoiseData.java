package com.itsmagic.engine.Engines.Engine.Texture.Noise;

import Ic.InterfaceC2637p;
import Ic.InterfaceC2638q;
import Ic.r;
import X7.a;
import com.google.gson.JsonSyntaxException;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Gradient.Gradient;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.InspectorEditor;
import com.itsmagic.engine.Engines.Engine.Texture.Noise.FastNoiseLite;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;

@r
@InterfaceC2638q
@InterfaceC2637p
public class NoiseData {

    @Expose
    public TextureConfig textureConfig = new TextureConfig();

    @Expose
    public Gradient coloRamp = new Gradient();

    @Expose
    public Vector3 offset = new Vector3();

    @Expose
    public int mSeed = 1337;

    @Expose
    public float mFrequency = 2.0f;

    @Expose
    public FastNoiseLite.NoiseType mNoiseType = FastNoiseLite.NoiseType.OpenSimplex2;

    @Expose
    public FastNoiseLite.RotationType3D mRotationType3D = FastNoiseLite.RotationType3D.None;

    @Expose
    public FastNoiseLite.FractalType mFractalType = FastNoiseLite.FractalType.Ridged;

    @Expose
    public int mOctaves = 4;

    @Expose
    public float mLacunarity = 2.0f;

    @Expose
    public float mGain = 0.5f;

    @Expose
    public float mWeightedStrength = 0.0f;

    @Expose
    public float mPingPongStrength = 0.5f;

    @Expose
    public float mFractalBounding = 0.6f;

    @Expose
    public FastNoiseLite.CellularDistanceFunction mCellularDistanceFunction = FastNoiseLite.CellularDistanceFunction.EuclideanSq;

    @Expose
    public FastNoiseLite.CellularReturnType mCellularReturnType = FastNoiseLite.CellularReturnType.Distance;

    @Expose
    public float mCellularJitterModifier = 1.0f;

    @Expose
    public FastNoiseLite.DomainWarpType mDomainWarpType = FastNoiseLite.DomainWarpType.OpenSimplex2Reduced;

    @Expose
    public float mDomainWarpAmp = 1000.0f;

    @Expose
    public int dw_octaves = 4;

    @Expose
    public float dw_lacunarity = 2.0f;

    @Expose
    public float dw_gain = 0.5f;

    @Expose
    public float dw_frequency = 0.04f;

    @Expose
    public FastNoiseLite.FractalType domainWarpFractalType = FastNoiseLite.FractalType.PingPong;

    @Expose
    public boolean enableDomainWarp = true;

    @Expose
    public InspectorEditor inspectorEditor = new InspectorEditor(false);

    @Expose
    public InspectorEditor fractalEditor = new InspectorEditor(false);

    @Expose
    public InspectorEditor domainWrapEditor = new InspectorEditor(false);

    @Expose
    public InspectorEditor textureEditor = new InspectorEditor(false);

    public NoiseData() {
        this.textureConfig.wrap = TextureConfig.h.MirrorRepeat;
        this.coloRamp.n();
    }

    public static NoiseData fromJson(String json) {
        try {
            return (NoiseData) a.m().fromJson(json, NoiseData.class);
        } catch (JsonSyntaxException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public FastNoiseLite.CellularDistanceFunction getCellularDistanceFunction() {
        return this.mCellularDistanceFunction;
    }

    public float getCellularJitterModifier() {
        return this.mCellularJitterModifier;
    }

    public FastNoiseLite.CellularReturnType getCellularReturnType() {
        return this.mCellularReturnType;
    }

    public Gradient getColoRamp() {
        return this.coloRamp;
    }

    public float getDomainWarpAmp() {
        return this.mDomainWarpAmp;
    }

    public FastNoiseLite.FractalType getDomainWarpFractalType() {
        return this.domainWarpFractalType;
    }

    public FastNoiseLite.DomainWarpType getDomainWarpType() {
        return this.mDomainWarpType;
    }

    public float getDw_frequency() {
        return this.dw_frequency;
    }

    public float getDw_gain() {
        return this.dw_gain;
    }

    public float getDw_lacunarity() {
        return this.dw_lacunarity;
    }

    public int getDw_octaves() {
        return this.dw_octaves;
    }

    public float getFractalBounding() {
        return this.mFractalBounding;
    }

    public FastNoiseLite.FractalType getFractalType() {
        return this.mFractalType;
    }

    public float getFrequency() {
        return this.mFrequency;
    }

    public float getGain() {
        return this.mGain;
    }

    public float getLacunarity() {
        return this.mLacunarity;
    }

    public FastNoiseLite.NoiseType getNoiseType() {
        return this.mNoiseType;
    }

    public int getOctaves() {
        return this.mOctaves;
    }

    public float getPingPongStrength() {
        return this.mPingPongStrength;
    }

    public FastNoiseLite.RotationType3D getRotationType3D() {
        return this.mRotationType3D;
    }

    public int getSeed() {
        return this.mSeed;
    }

    public float getWeightedStrength() {
        return this.mWeightedStrength;
    }

    public boolean isEnableDomainWarp() {
        return this.enableDomainWarp;
    }

    public void setCellularDistanceFunction(FastNoiseLite.CellularDistanceFunction mCellularDistanceFunction) {
        this.mCellularDistanceFunction = mCellularDistanceFunction;
    }

    public void setCellularJitterModifier(float mCellularJitterModifier) {
        this.mCellularJitterModifier = mCellularJitterModifier;
    }

    public void setCellularReturnType(FastNoiseLite.CellularReturnType mCellularReturnType) {
        this.mCellularReturnType = mCellularReturnType;
    }

    public void setColoRamp(Gradient coloRamp) {
        this.coloRamp = coloRamp;
    }

    public void setDomainWarpAmp(float mDomainWarpAmp) {
        this.mDomainWarpAmp = mDomainWarpAmp;
    }

    public void setDomainWarpFractalType(FastNoiseLite.FractalType domainWarpFractalType) {
        this.domainWarpFractalType = domainWarpFractalType;
    }

    public void setDomainWarpType(FastNoiseLite.DomainWarpType mDomainWarpType) {
        this.mDomainWarpType = mDomainWarpType;
    }

    public void setDw_frequency(float dw_frequency) {
        this.dw_frequency = dw_frequency;
    }

    public void setDw_gain(float dw_gain) {
        this.dw_gain = dw_gain;
    }

    public void setDw_lacunarity(float dw_lacunarity) {
        this.dw_lacunarity = dw_lacunarity;
    }

    public void setDw_octaves(int dw_octaves) {
        this.dw_octaves = dw_octaves;
    }

    public void setEnableDomainWarp(boolean enableDomainWarp) {
        this.enableDomainWarp = enableDomainWarp;
    }

    public void setFractalBounding(float mFractalBounding) {
        this.mFractalBounding = mFractalBounding;
    }

    public void setFractalType(FastNoiseLite.FractalType mFractalType) {
        this.mFractalType = mFractalType;
    }

    public void setFrequency(float mFrequency) {
        this.mFrequency = mFrequency;
    }

    public void setGain(float mGain) {
        this.mGain = mGain;
    }

    public void setLacunarity(float mLacunarity) {
        this.mLacunarity = mLacunarity;
    }

    public void setNoiseType(FastNoiseLite.NoiseType mNoiseType) {
        this.mNoiseType = mNoiseType;
    }

    public void setOctaves(int mOctaves) {
        this.mOctaves = mOctaves;
    }

    public void setPingPongStrength(float mPingPongStrength) {
        this.mPingPongStrength = mPingPongStrength;
    }

    public void setRotationType3D(FastNoiseLite.RotationType3D mRotationType3D) {
        this.mRotationType3D = mRotationType3D;
    }

    public void setSeed(int mSeed) {
        this.mSeed = mSeed;
    }

    public void setWeightedStrength(float mWeightedStrength) {
        this.mWeightedStrength = mWeightedStrength;
    }

    public String toJson() {
        return a.m().toJson(this);
    }
}
