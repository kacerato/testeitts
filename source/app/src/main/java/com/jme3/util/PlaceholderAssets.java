package com.jme3.util;

import com.jme3.asset.AssetManager;
import com.jme3.audio.AudioBuffer;
import com.jme3.audio.AudioData;
import com.jme3.material.Material;
import com.jme3.scene.Geometry;
import com.jme3.scene.Spatial;
import com.jme3.scene.shape.Box;
import com.jme3.texture.Image;
import com.jme3.texture.Texture;
import com.jme3.texture.image.ColorSpace;
import java.nio.ByteBuffer;

public class PlaceholderAssets {
    private static final byte[] imageData = {-1, -1, -1, -1, 0, 0, -1, -1, -1, -1, 0, 0, -1, 0, 0, -1, -1, -1, -1, 0, 0, -1, -1, -1, -1, -1, -1, -1, 0, 0, -1, -1, -1, -1, 0, 0, -1, 0, 0, -1, -1, -1, -1, 0, 0, -1, -1, -1};

    private PlaceholderAssets() {
    }

    public static AudioData getPlaceholderAudio() {
        AudioBuffer audioBuffer = new AudioBuffer();
        audioBuffer.setupFormat(1, 8, 44100);
        ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(1);
        createByteBuffer.put((byte) 0).flip();
        audioBuffer.updateData(createByteBuffer);
        return audioBuffer;
    }

    @Deprecated
    public static Image getPlaceholderImage() {
        ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(48);
        createByteBuffer.put(imageData).flip();
        return new Image(Image.Format.RGB8, 4, 4, createByteBuffer, (int[]) null, ColorSpace.Linear);
    }

    public static Material getPlaceholderMaterial(AssetManager assetManager) {
        Material material = new Material(assetManager, "Common/MatDefs/Misc/Unshaded.j3md");
        Texture loadTexture = assetManager.loadTexture("Common/Textures/MissingMaterial.png");
        loadTexture.setWrap(Texture.WrapMode.Repeat);
        material.setTexture("ColorMap", loadTexture);
        return material;
    }

    public static Spatial getPlaceholderModel(AssetManager assetManager) {
        Geometry geometry = new Geometry("placeholder", new Box(1.0f, 1.0f, 1.0f));
        Material material = new Material(assetManager, "Common/MatDefs/Misc/Unshaded.j3md");
        Texture loadTexture = assetManager.loadTexture("Common/Textures/MissingModel.png");
        loadTexture.setWrap(Texture.WrapMode.Repeat);
        material.setTexture("ColorMap", loadTexture);
        geometry.setMaterial(material);
        return geometry;
    }

    public static Image getPlaceholderImage(AssetManager assetManager) {
        return assetManager.loadTexture("Common/Textures/MissingTexture.png").getImage();
    }
}
