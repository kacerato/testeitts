package com.jme3.terrain.geomipmap.grid;

import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.math.Vector3f;
import com.jme3.terrain.geomipmap.TerrainGridTileLoader;
import com.jme3.terrain.geomipmap.TerrainQuad;
import com.jme3.terrain.heightmap.AbstractHeightMap;
import com.jme3.terrain.heightmap.HeightMap;
import com.jme3.terrain.noise.Basis;
import java.io.IOException;
import java.nio.FloatBuffer;

public class FractalTileLoader implements TerrainGridTileLoader {
    private final Basis base;
    private final float heightScale;
    private int patchSize;
    private int quadSize;

    public class FloatBufferHeightMap extends AbstractHeightMap {
        private final FloatBuffer buffer;

        public FloatBufferHeightMap(FloatBuffer floatBuffer) {
            this.buffer = floatBuffer;
        }

        @Override
        public boolean load() {
            this.heightData = this.buffer.array();
            return true;
        }
    }

    public FractalTileLoader(Basis basis, float f10) {
        this.base = basis;
        this.heightScale = f10;
    }

    private HeightMap getHeightMapAt(Vector3f vector3f) {
        Basis basis = this.base;
        float f10 = vector3f.f81611x;
        FloatBuffer buffer = basis.getBuffer(f10 * (r2 - 1), vector3f.f81613z * (r2 - 1), 0.0f, this.quadSize);
        float[] array = buffer.array();
        for (int i10 = 0; i10 < array.length; i10++) {
            array[i10] = array[i10] * this.heightScale;
        }
        FloatBufferHeightMap floatBufferHeightMap = new FloatBufferHeightMap(buffer);
        floatBufferHeightMap.load();
        return floatBufferHeightMap;
    }

    @Override
    public TerrainQuad getTerrainQuadAt(Vector3f vector3f) {
        HeightMap heightMapAt = getHeightMapAt(vector3f);
        return new TerrainQuad("Quad" + ((Object) vector3f), this.patchSize, this.quadSize, heightMapAt == null ? null : heightMapAt.getHeightMap());
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
    }

    @Override
    public void setPatchSize(int i10) {
        this.patchSize = i10;
    }

    @Override
    public void setQuadSize(int i10) {
        this.quadSize = i10;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
    }
}
