package com.jme3.util;

import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.jme3.asset.AssetManager;
import com.jme3.asset.TextureKey;
import com.jme3.bounding.BoundingSphere;
import com.jme3.material.Material;
import com.jme3.math.Vector3f;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.Geometry;
import com.jme3.scene.Spatial;
import com.jme3.scene.shape.Sphere;
import com.jme3.texture.Image;
import com.jme3.texture.Texture;
import com.jme3.texture.TextureCubeMap;
import java.nio.ByteBuffer;

public class SkyFactory {

    public enum EnvMapType {
        CubeMap,
        SphereMap,
        EquirectMap
    }

    private SkyFactory() {
    }

    private static void checkImage(Image image) {
        if (image.getWidth() != image.getHeight()) {
            throw new IllegalArgumentException("Image width and height must be the same");
        }
        if (image.getMultiSamples() != 1) {
            throw new IllegalArgumentException("Multisample textures not allowed");
        }
    }

    private static void checkImagesForCubeMap(Image... imageArr) {
        if (imageArr.length == 1) {
            return;
        }
        Image.Format format = imageArr[0].getFormat();
        int width = imageArr[0].getWidth();
        int height = imageArr[0].getHeight();
        ByteBuffer data = imageArr[0].getData(0);
        int capacity = data != null ? data.capacity() : 0;
        checkImage(imageArr[0]);
        for (int i10 = 1; i10 < imageArr.length; i10++) {
            Image image = imageArr[i10];
            checkImage(image);
            if (image.getFormat() != format) {
                throw new IllegalArgumentException("Images must have same format");
            }
            if (image.getWidth() != width || image.getHeight() != height) {
                throw new IllegalArgumentException("Images must have same resolution");
            }
            ByteBuffer data2 = image.getData(0);
            if (data2 != null && data2.capacity() != capacity) {
                throw new IllegalArgumentException("Images must have same size");
            }
        }
    }

    @Deprecated
    public static Spatial createSky(AssetManager assetManager, Texture texture, Vector3f vector3f, boolean z10) {
        return createSky(assetManager, texture, vector3f, z10, 10);
    }

    public static Spatial createSky(AssetManager assetManager, Texture texture, Vector3f vector3f, EnvMapType envMapType) {
        return createSky(assetManager, texture, vector3f, envMapType, 10.0f);
    }

    @Deprecated
    public static Spatial createSky(AssetManager assetManager, Texture texture, Vector3f vector3f, boolean z10, int i10) {
        return createSky(assetManager, texture, vector3f, z10 ? EnvMapType.SphereMap : EnvMapType.CubeMap, i10);
    }

    public static Spatial createSky(AssetManager assetManager, Texture texture, Vector3f vector3f, EnvMapType envMapType, float f10) {
        Material material;
        if (texture != null) {
            Geometry geometry = new Geometry("Sky", new Sphere(10, 10, f10, false, true));
            geometry.setQueueBucket(RenderQueue.Bucket.Sky);
            geometry.setCullHint(Spatial.CullHint.Never);
            geometry.setModelBound(new BoundingSphere(Float.POSITIVE_INFINITY, Vector3f.ZERO));
            geometry.setShadowMode(RenderQueue.ShadowMode.Off);
            int ordinal = envMapType.ordinal();
            if (ordinal == 0) {
                if (!(texture instanceof TextureCubeMap)) {
                    Image image = texture.getImage();
                    TextureCubeMap textureCubeMap = new TextureCubeMap();
                    textureCubeMap.setImage(image);
                    texture = textureCubeMap;
                }
                material = new Material(assetManager, "Common/MatDefs/Misc/Sky.j3md");
            } else if (ordinal == 1) {
                material = new Material(assetManager, "Common/MatDefs/Misc/SkyNonCube.j3md");
                material.setBoolean("SphereMap", true);
            } else if (ordinal == 2) {
                material = new Material(assetManager, "Common/MatDefs/Misc/SkyNonCube.j3md");
                material.setBoolean("EquirectMap", true);
            } else {
                throw new IllegalArgumentException("envMapType=" + ((Object) envMapType));
            }
            material.setVector3("NormalScale", vector3f);
            texture.setMagFilter(Texture.MagFilter.Bilinear);
            texture.setMinFilter(Texture.MinFilter.BilinearNoMipMaps);
            texture.setAnisotropicFilter(0);
            texture.setWrap(Texture.WrapMode.EdgeClamp);
            material.setTexture(SerializableShaderEntry.f81152f, texture);
            geometry.setMaterial(material);
            return geometry;
        }
        throw new IllegalArgumentException("texture cannot be null");
    }

    @Deprecated
    public static Spatial createSky(AssetManager assetManager, Texture texture, boolean z10) {
        return createSky(assetManager, texture, Vector3f.UNIT_XYZ, z10 ? EnvMapType.SphereMap : EnvMapType.CubeMap);
    }

    @Deprecated
    public static Spatial createSky(AssetManager assetManager, String str, boolean z10) {
        return createSky(assetManager, str, z10 ? EnvMapType.SphereMap : EnvMapType.CubeMap);
    }

    public static Spatial createSky(AssetManager assetManager, Texture texture, EnvMapType envMapType) {
        return createSky(assetManager, texture, Vector3f.UNIT_XYZ, envMapType);
    }

    public static Spatial createSky(AssetManager assetManager, String str, EnvMapType envMapType) {
        TextureKey textureKey = new TextureKey(str, true);
        textureKey.setGenerateMips(false);
        if (envMapType == EnvMapType.CubeMap) {
            textureKey.setTextureTypeHint(Texture.Type.CubeMap);
        }
        return createSky(assetManager, assetManager.loadTexture(textureKey), envMapType);
    }

    public static Spatial createSky(AssetManager assetManager, Texture texture, Texture texture2, Texture texture3, Texture texture4, Texture texture5, Texture texture6, Vector3f vector3f) {
        return createSky(assetManager, texture, texture2, texture3, texture4, texture5, texture6, vector3f, 10.0f);
    }

    public static Spatial createSky(AssetManager assetManager, Texture texture, Texture texture2, Texture texture3, Texture texture4, Texture texture5, Texture texture6, Vector3f vector3f, float f10) {
        Image image = texture.getImage();
        Image image2 = texture2.getImage();
        Image image3 = texture3.getImage();
        Image image4 = texture4.getImage();
        Image image5 = texture5.getImage();
        Image image6 = texture6.getImage();
        checkImagesForCubeMap(image, image2, image3, image4, image5, image6);
        Image image7 = new Image(image.getFormat(), image.getWidth(), image.getHeight(), (ByteBuffer) null, image.getColorSpace());
        image7.addData(image.getData(0));
        image7.addData(image2.getData(0));
        image7.addData(image6.getData(0));
        image7.addData(image5.getData(0));
        image7.addData(image4.getData(0));
        image7.addData(image3.getData(0));
        return createSky(assetManager, new TextureCubeMap(image7), vector3f, EnvMapType.CubeMap, f10);
    }

    public static Spatial createSky(AssetManager assetManager, Texture texture, Texture texture2, Texture texture3, Texture texture4, Texture texture5, Texture texture6) {
        return createSky(assetManager, texture, texture2, texture3, texture4, texture5, texture6, Vector3f.UNIT_XYZ);
    }
}
