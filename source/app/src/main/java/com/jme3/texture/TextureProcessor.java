package com.jme3.texture;

import com.jme3.asset.AssetKey;
import com.jme3.asset.AssetProcessor;
import com.jme3.asset.TextureKey;
import com.jme3.texture.Texture;
import java.nio.ByteBuffer;

public class TextureProcessor implements AssetProcessor {
    @Override
    public Object createClone(Object obj) {
        return ((Texture) obj).mo1263clone();
    }

    @Override
    public Object postProcess(AssetKey assetKey, Object obj) {
        Texture texture3D;
        TextureKey textureKey = (TextureKey) assetKey;
        Image image = (Image) obj;
        if (image == null) {
            return null;
        }
        if (textureKey.getTextureTypeHint() == Texture.Type.CubeMap) {
            if (textureKey.isFlipY()) {
                ByteBuffer data = image.getData(2);
                image.setData(2, image.getData(3));
                image.setData(3, data);
            }
            texture3D = new TextureCubeMap();
        } else {
            texture3D = textureKey.getTextureTypeHint() == Texture.Type.ThreeDimensional ? new Texture3D() : new Texture2D();
        }
        if (image.hasMipmaps() || textureKey.isGenerateMips()) {
            texture3D.setMinFilter(Texture.MinFilter.Trilinear);
        }
        texture3D.setAnisotropicFilter(textureKey.getAnisotropy());
        texture3D.setName(textureKey.getName());
        texture3D.setImage(image);
        return texture3D;
    }
}
