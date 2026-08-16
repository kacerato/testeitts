package com.ardor3d.renderer.state.record;

import com.ardor3d.image.Texture;
import com.ardor3d.math.ColorRGBA;
import com.ardor3d.math.Matrix4;
import com.ardor3d.math.Vector3;
import java.util.Arrays;

public class TextureUnitRecord extends StateRecord {
    public boolean[] enabled = new boolean[Texture.Type.values().length];
    public Matrix4 texMatrix = new Matrix4();
    public Vector3 texScale = new Vector3();
    public int boundTexture = -1;
    public Texture.ApplyMode envMode = null;
    public Texture.CombinerScale envRGBScale = null;
    public Texture.CombinerScale envAlphaScale = null;
    public ColorRGBA blendColor = new ColorRGBA(-1.0f, -1.0f, -1.0f, -1.0f);
    public Texture.CombinerFunctionRGB rgbCombineFunc = null;
    public Texture.CombinerFunctionAlpha alphaCombineFunc = null;
    public Texture.CombinerSource combSrcRGB0 = null;
    public Texture.CombinerSource combSrcRGB1 = null;
    public Texture.CombinerSource combSrcRGB2 = null;
    public Texture.CombinerOperandRGB combOpRGB0 = null;
    public Texture.CombinerOperandRGB combOpRGB1 = null;
    public Texture.CombinerOperandRGB combOpRGB2 = null;
    public Texture.CombinerSource combSrcAlpha0 = null;
    public Texture.CombinerSource combSrcAlpha1 = null;
    public Texture.CombinerSource combSrcAlpha2 = null;
    public Texture.CombinerOperandAlpha combOpAlpha0 = null;
    public Texture.CombinerOperandAlpha combOpAlpha1 = null;
    public Texture.CombinerOperandAlpha combOpAlpha2 = null;
    public boolean identityMatrix = true;
    public float lodBias = 0.0f;
    public boolean textureGenQ = false;
    public boolean textureGenR = false;
    public boolean textureGenS = false;
    public boolean textureGenT = false;
    public int textureGenQMode = -1;
    public int textureGenRMode = -1;
    public int textureGenSMode = -1;
    public int textureGenTMode = -1;

    @Override
    public void invalidate() {
        super.invalidate();
        Arrays.fill(this.enabled, false);
        this.texMatrix.setIdentity();
        this.texScale.zero();
        this.boundTexture = -1;
        this.lodBias = 0.0f;
        this.envMode = null;
        this.envRGBScale = null;
        this.envAlphaScale = null;
        this.blendColor.set(-1.0f, -1.0f, -1.0f, -1.0f);
        this.rgbCombineFunc = null;
        this.alphaCombineFunc = null;
        this.combSrcRGB0 = null;
        this.combSrcRGB1 = null;
        this.combSrcRGB2 = null;
        this.combOpRGB0 = null;
        this.combOpRGB1 = null;
        this.combOpRGB2 = null;
        this.combSrcAlpha0 = null;
        this.combSrcAlpha1 = null;
        this.combSrcAlpha2 = null;
        this.combOpAlpha0 = null;
        this.combOpAlpha1 = null;
        this.combOpAlpha2 = null;
        this.identityMatrix = false;
        this.textureGenQ = false;
        this.textureGenR = false;
        this.textureGenS = false;
        this.textureGenT = false;
        this.textureGenQMode = -1;
        this.textureGenRMode = -1;
        this.textureGenSMode = -1;
        this.textureGenTMode = -1;
    }
}
