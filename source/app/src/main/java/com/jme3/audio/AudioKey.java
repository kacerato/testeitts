package com.jme3.audio;

import com.jme3.asset.AssetKey;
import com.jme3.asset.AssetProcessor;
import com.jme3.asset.cache.AssetCache;
import com.jme3.asset.cache.WeakRefAssetCache;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import java.io.IOException;

public class AudioKey extends AssetKey<AudioData> {
    private boolean stream;
    private boolean streamCache;

    public AudioKey(String str, boolean z10, boolean z11) {
        this(str, z10);
        this.streamCache = z11;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AudioKey audioKey = (AudioKey) obj;
        return super.equals(audioKey) && this.stream == audioKey.stream && this.streamCache == audioKey.streamCache;
    }

    @Override
    public Class<? extends AssetCache> getCacheType() {
        boolean z10 = this.stream;
        if (!(z10 && this.streamCache) && z10) {
            return null;
        }
        return WeakRefAssetCache.class;
    }

    @Override
    public Class<? extends AssetProcessor> getProcessorType() {
        return null;
    }

    @Override
    public int hashCode() {
        return ((((469 + super.hashCode()) * 67) + (this.stream ? 1 : 0)) * 67) + (this.streamCache ? 1 : 0);
    }

    public boolean isStream() {
        return this.stream;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.stream = capsule.readBoolean("do_stream", false);
        this.streamCache = capsule.readBoolean("use_stream_cache", false);
    }

    @Override
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.name);
        sb2.append(this.stream ? this.streamCache ? " (Stream/Cache)" : " (Stream)" : " (Buffer)");
        return sb2.toString();
    }

    public boolean useStreamCache() {
        return this.streamCache;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.stream, "do_stream", false);
        capsule.write(this.streamCache, "use_stream_cache", false);
    }

    public AudioKey(String str, boolean z10) {
        super(str);
        this.stream = z10;
    }

    public AudioKey(String str) {
        super(str);
        this.stream = false;
    }

    public AudioKey() {
    }
}
