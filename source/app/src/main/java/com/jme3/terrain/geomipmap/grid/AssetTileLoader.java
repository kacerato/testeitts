package com.jme3.terrain.geomipmap.grid;

import com.jme3.asset.AssetManager;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.math.Vector3f;
import com.jme3.terrain.geomipmap.TerrainGridTileLoader;
import com.jme3.terrain.geomipmap.TerrainQuad;
import java.io.IOException;
import java.lang.constant.ConstantDescs;
import java.util.logging.Level;
import java.util.logging.Logger;

public class AssetTileLoader implements TerrainGridTileLoader {
    private String assetPath;
    private AssetManager manager;
    private String name;
    private int patchSize;
    private int quadSize;

    public AssetTileLoader() {
    }

    private TerrainQuad createNewQuad(Vector3f vector3f) {
        return new TerrainQuad("Quad" + ((Object) vector3f), this.patchSize, this.quadSize, null);
    }

    public String getAssetPath() {
        return this.assetPath;
    }

    public String getName() {
        return this.name;
    }

    @Override
    public TerrainQuad getTerrainQuadAt(Vector3f vector3f) {
        TerrainQuad terrainQuad;
        String str = this.assetPath + "/" + this.name + ConstantDescs.DEFAULT_NAME + Math.round(vector3f.f81611x) + ConstantDescs.DEFAULT_NAME + Math.round(vector3f.f81612y) + ConstantDescs.DEFAULT_NAME + Math.round(vector3f.f81613z) + ".j3o";
        Logger.getLogger(getClass().getName()).log(Level.FINE, "Load terrain grid tile: {0}", str);
        try {
            terrainQuad = (TerrainQuad) this.manager.loadModel(str);
        } catch (Exception unused) {
            terrainQuad = null;
        }
        if (terrainQuad == null) {
            Logger.getLogger(getClass().getName()).log(Level.WARNING, "Could not load terrain grid tile: {0}", str);
            return createNewQuad(vector3f);
        }
        Logger.getLogger(getClass().getName()).log(Level.FINE, "Loaded terrain grid tile: {0}", str);
        return terrainQuad;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.manager = jmeImporter.getAssetManager();
        this.assetPath = capsule.readString("assetPath", null);
        this.name = capsule.readString("name", null);
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
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.assetPath, "assetPath", (String) null);
        capsule.write(this.name, "name", (String) null);
    }

    public AssetTileLoader(AssetManager assetManager, String str, String str2) {
        this.manager = assetManager;
        this.name = str;
        this.assetPath = str2;
    }
}
