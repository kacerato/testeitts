package com.jme3.audio;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.util.NativeObject;
import java.io.IOException;

public class HighPassFilter extends Filter {
    protected float lowFreqVolume;
    protected float volume;

    public HighPassFilter() {
        this.volume = 1.0f;
        this.lowFreqVolume = 1.0f;
    }

    @Override
    public NativeObject createDestructableClone() {
        return new HighPassFilter(this.f81661id);
    }

    public float getLowFreqVolume() {
        return this.lowFreqVolume;
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
        this.lowFreqVolume = capsule.readFloat("lf_volume", 1.0f);
    }

    public void setLowFreqVolume(float f10) {
        if (f10 < 0.0f || f10 > 1.0f) {
            throw new IllegalArgumentException("Low freq volume must be between 0 and 1");
        }
        this.lowFreqVolume = f10;
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
        capsule.write(this.lowFreqVolume, "lf_volume", 1.0f);
    }

    public HighPassFilter(int i10) {
        super(i10);
        this.volume = 1.0f;
        this.lowFreqVolume = 1.0f;
    }

    public HighPassFilter(float f10, float f11) {
        this.volume = 1.0f;
        this.lowFreqVolume = 1.0f;
        setVolume(f10);
        setLowFreqVolume(f11);
    }
}
