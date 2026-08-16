package com.jme3.audio;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.util.NativeObject;
import java.io.IOException;

public class LowPassFilter extends Filter {
    protected float highFreqVolume;
    protected float volume;

    public LowPassFilter() {
        this.volume = 1.0f;
        this.highFreqVolume = 1.0f;
    }

    @Override
    public NativeObject createDestructableClone() {
        return new LowPassFilter(this.f81661id);
    }

    public float getHighFreqVolume() {
        return this.highFreqVolume;
    }

    @Override
    public long getUniqueId() {
        return (this.f81661id & 4294967295L) | 34359738368L;
    }

    public float getVolume() {
        return this.volume;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.volume = capsule.readFloat("volume", 1.0f);
        this.highFreqVolume = capsule.readFloat("hf_volume", 1.0f);
    }

    public void setHighFreqVolume(float f10) {
        if (f10 < 0.0f || f10 > 1.0f) {
            throw new IllegalArgumentException("High freq volume must be between 0 and 1");
        }
        this.highFreqVolume = f10;
        this.updateNeeded = true;
    }

    public void setVolume(float f10) {
        if (f10 < 0.0f || f10 > 1.0f) {
            throw new IllegalArgumentException("Volume must be between 0 and 1");
        }
        this.volume = f10;
        this.updateNeeded = true;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.volume, "volume", 1.0f);
        capsule.write(this.highFreqVolume, "hf_volume", 1.0f);
    }

    public LowPassFilter(float f10, float f11) {
        this.volume = 1.0f;
        this.highFreqVolume = 1.0f;
        setVolume(f10);
        setHighFreqVolume(f11);
    }

    public LowPassFilter(int i10) {
        super(i10);
        this.volume = 1.0f;
        this.highFreqVolume = 1.0f;
    }
}
