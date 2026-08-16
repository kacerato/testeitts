package com.jme3.ui;

import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.jme3.asset.AssetManager;
import com.jme3.asset.TextureKey;
import com.jme3.material.Material;
import com.jme3.material.Materials;
import com.jme3.material.RenderState;
import com.jme3.math.ColorRGBA;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.Geometry;
import com.jme3.scene.Spatial;
import com.jme3.scene.shape.Quad;
import com.jme3.texture.Texture2D;

public class Picture extends Geometry {
    private float height;
    private float width;

    public Picture(String str, boolean z10) {
        super(str, new Quad(1.0f, 1.0f, z10));
        this.width = 1.0f;
        this.height = 1.0f;
        setQueueBucket(RenderQueue.Bucket.Gui);
        setCullHint(Spatial.CullHint.Never);
    }

    public float getHeight() {
        return this.height;
    }

    public float getWidth() {
        return this.width;
    }

    public void setHeight(float f10) {
        this.height = f10;
        setLocalScale(this.width, f10, 1.0f);
    }

    public void setImage(AssetManager assetManager, String str, boolean z10) {
        setTexture(assetManager, (Texture2D) assetManager.loadTexture(new TextureKey(str, true)), z10);
    }

    public void setPosition(float f10, float f11) {
        setLocalTranslation(f10, f11, getLocalTranslation().getZ());
    }

    public void setTexture(AssetManager assetManager, Texture2D texture2D, boolean z10) {
        if (getMaterial() == null) {
            Material material = new Material(assetManager, Materials.GUI);
            material.setColor(SerializableShaderEntry.f81153g, ColorRGBA.White);
            setMaterial(material);
        }
        this.material.getAdditionalRenderState().setBlendMode(z10 ? RenderState.BlendMode.Alpha : RenderState.BlendMode.Off);
        this.material.setTexture(SerializableShaderEntry.f81152f, texture2D);
    }

    public void setWidth(float f10) {
        this.width = f10;
        setLocalScale(f10, this.height, 1.0f);
    }

    public Picture(String str) {
        this(str, false);
    }

    public Picture() {
        this.width = 1.0f;
        this.height = 1.0f;
    }
}
