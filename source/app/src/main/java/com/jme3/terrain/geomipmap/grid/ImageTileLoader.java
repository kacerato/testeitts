package com.jme3.terrain.geomipmap.grid;

import com.jme3.asset.AssetManager;
import com.jme3.asset.AssetNotFoundException;
import com.jme3.asset.TextureKey;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.math.Vector3f;
import com.jme3.terrain.geomipmap.TerrainGridTileLoader;
import com.jme3.terrain.geomipmap.TerrainQuad;
import com.jme3.terrain.heightmap.HeightMap;
import com.jme3.terrain.heightmap.ImageBasedHeightMap;
import com.jme3.terrain.heightmap.Namer;
import java.io.IOException;
import java.lang.constant.ConstantDescs;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ImageTileLoader implements TerrainGridTileLoader {
    private static final Logger logger = Logger.getLogger(ImageTileLoader.class.getName());
    private final AssetManager assetManager;
    private final Namer namer;
    private int patchSize;
    private int quadSize;

    public ImageTileLoader(final String str, final String str2, AssetManager assetManager) {
        this(assetManager, new Namer() {
            @Override
            public String getName(int i10, int i11) {
                return String.this + ConstantDescs.DEFAULT_NAME + i10 + ConstantDescs.DEFAULT_NAME + i11 + "." + str2;
            }
        });
    }

    private HeightMap getHeightMapAt(Vector3f vector3f) {
        ImageBasedHeightMap imageBasedHeightMap;
        String name;
        String str = null;
        try {
            name = this.namer.getName((int) vector3f.f81611x, (int) vector3f.f81613z);
            try {
                logger.log(Level.FINE, "Loading heightmap from file: {0}", name);
                imageBasedHeightMap = new ImageBasedHeightMap(this.assetManager.loadTexture(new TextureKey(name)).getImage());
            } catch (AssetNotFoundException unused) {
                imageBasedHeightMap = null;
            }
        } catch (AssetNotFoundException unused2) {
            imageBasedHeightMap = null;
        }
        try {
            imageBasedHeightMap.setHeightScale(1.0f);
            imageBasedHeightMap.load();
        } catch (AssetNotFoundException unused3) {
            str = name;
            logger.log(Level.WARNING, "Asset {0} not found, loading zero heightmap instead", str);
            return imageBasedHeightMap;
        }
        return imageBasedHeightMap;
    }

    @Override
    public TerrainQuad getTerrainQuadAt(Vector3f vector3f) {
        HeightMap heightMapAt = getHeightMapAt(vector3f);
        return new TerrainQuad("Quad" + ((Object) vector3f), this.patchSize, this.quadSize, heightMapAt == null ? null : heightMapAt.getHeightMap());
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
    }

    public void setHeightScale(float f10) {
    }

    @Override
    public void setPatchSize(int i10) {
        this.patchSize = i10;
    }

    @Override
    public void setQuadSize(int i10) {
        this.quadSize = i10;
    }

    public void setSize(int i10) {
        this.patchSize = i10 - 1;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
    }

    public ImageTileLoader(AssetManager assetManager, Namer namer) {
        this.assetManager = assetManager;
        this.namer = namer;
    }
}
