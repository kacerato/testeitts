package com.itsmagic.engine.Engines.Engine.Texture.Utils;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Texture.Sprite.SpriteData;
import java.io.Serializable;

public class TextureConfig implements Serializable {

    public static final int f79797b = 0;

    public static final int f79798c = 1;

    public static final int f79799d = 2;

    public static final int f79800e = 3;

    public static final int f79801f = 4;

    public static final int f79802g = 5;

    public static final int f79803h = 6;

    public static final int f79804i = 7;

    public static final int f79805j = 8;

    public static final int f79806k = 9;

    public static final int f79807l = 10;

    public static final int f79808m = 11;

    public static final int f79809n = 12;

    public static final int f79810o = 13;

    public static final int f79811p = 14;

    public static final int f79812q = 15;

    public static final int f79813r = 16;

    public static int[] f79814s = {16, 24, 32, 48, 64, 96, 128, 192, 256, 384, 512, 768, 1024, 1536, 2048, 3072, 4096};

    @Expose
    public boolean allowBoost;

    @Expose
    public boolean allowBrightness;

    @Expose
    public boolean allowColorDepth;

    @Expose
    public boolean allowContrast;

    @Expose
    public boolean allowHUE;

    @Expose
    public boolean allowModifications;

    @Expose
    public boolean allowOpacity;

    @Expose
    public boolean allowSaturation;

    @Expose
    public boolean autoGenNormalMap;

    @Expose
    public int autoGenNormalMapBias;

    @Expose
    public boolean blackIsAlpha;

    @Expose
    public int boostBlue;

    @Expose
    public int boostGreen;

    @Expose
    public int boostRed;

    @Expose
    public int brightness;

    @Expose
    public int colordepth;

    @Expose
    public a compressionEffort;

    @Expose
    public b compressionFormat;

    @Expose
    public int contrast;

    @Expose
    private c filter;

    @Expose
    public boolean flipX;

    @Expose
    public boolean flipY;

    @Expose
    private d format;

    @Expose
    public boolean gammaCorrection;

    @Expose
    public boolean gaussian;

    @Expose
    public boolean genMipmaps;

    @Expose
    public boolean grayscale;

    @Expose
    public int height;

    @Expose
    public int hue;

    @Expose
    public d importedFormat;

    @Expose
    public boolean invertColors;

    @Expose
    public boolean is9patch;

    @Expose
    public int maxResolutionID;

    @Expose
    public int mipmapLevels;

    @Expose
    public boolean noise;

    @Expose
    public String opacityTextureFile;

    @Expose
    public int originalHeight;

    @Expose
    public int originalWidth;

    @Expose
    private int quality;

    @Expose
    public e rotate;

    @Expose
    public int saturation;

    @Expose
    public boolean sepia;

    @Expose
    public boolean sharpen;

    @Expose
    public boolean sketch;

    @Expose
    private SpriteData spriteData;

    @Expose
    public f type;

    @Expose
    public boolean vignette;

    @Expose
    public int width;

    @Expose
    public h wrap;

    public enum a {
        Fastest(0),
        Fast(8),
        Medium(45),
        Thorough(70);

        private final int effort;

        a(int effort) {
            this.effort = effort;
        }

        public int b() {
            return this.effort;
        }
    }

    public enum b {
        UNCOMPRESSED("Uncompressed"),
        ASTC_4("ASTC 4x4"),
        ASTC_6("ASTC 6x6"),
        ASTC_8("ASTC 8x8"),
        ASTC_10("ASTC 10x10"),
        ASTC_12("ASTC 12x12"),
        ASTC_NORMAL_MAP_4("ASTC 4x4"),
        ASTC_NORMAL_MAP_6("ASTC 6x6"),
        ASTC_NORMAL_MAP_8("ASTC 8x8"),
        ASTC_NORMAL_MAP_10("ASTC 10x10"),
        ASTC_NORMAL_MAP_12("ASTC 12x12");

        private final String name;

        b(String name) {
            this.name = name;
        }

        public String getName() {
            return this.name;
        }
    }

    public enum c {
        Nearest,
        Linear
    }

    public enum d {
        RGBA8,
        RGB8,
        R32F,
        R8,
        Color,
        Depth
    }

    public enum e {
        None,
        R90,
        R180,
        R270
    }

    public enum f {
        Texture,
        Sprite
    }

    public enum g {
        RGBA8,
        RGB8,
        R8
    }

    public enum h {
        Clamp,
        Repeat,
        MirrorRepeat
    }

    public TextureConfig() {
        this.type = f.Texture;
        this.genMipmaps = true;
        this.mipmapLevels = 3;
        this.filter = c.Linear;
        this.wrap = h.Repeat;
        this.maxResolutionID = 10;
        this.quality = 90;
        this.blackIsAlpha = false;
        this.is9patch = false;
        this.autoGenNormalMap = false;
        this.autoGenNormalMapBias = 80;
        this.rotate = e.None;
        this.hue = 180;
        this.saturation = 100;
        this.contrast = 100;
        this.brightness = 0;
        this.colordepth = 0;
        this.allowModifications = false;
        this.format = d.RGBA8;
        this.compressionFormat = b.ASTC_8;
        this.compressionEffort = a.Fast;
        this.gammaCorrection = false;
    }

    public boolean A() {
        return this.allowBoost;
    }

    public boolean B() {
        return this.allowBrightness;
    }

    public void B0(int quality) {
        this.quality = Nc.b.F(1, quality, 100);
    }

    public boolean C() {
        return this.allowColorDepth;
    }

    public void C0(int saturation) {
        this.saturation = saturation;
    }

    public boolean D() {
        return this.allowContrast;
    }

    public void D0(boolean sepia) {
        this.sepia = sepia;
    }

    public boolean E() {
        return this.allowHUE;
    }

    public void E0(boolean sharpen) {
        this.sharpen = sharpen;
    }

    public boolean F() {
        return this.allowModifications;
    }

    public void F0(boolean sketch) {
        this.sketch = sketch;
    }

    public boolean G() {
        return this.allowSaturation;
    }

    public void G0(SpriteData spriteData) {
        this.spriteData = spriteData;
    }

    public boolean H() {
        return this.autoGenNormalMap;
    }

    public void H0(boolean vignette) {
        this.vignette = vignette;
    }

    public boolean I() {
        return this.flipX;
    }

    public void I0(int width) {
        this.width = width;
    }

    public boolean J() {
        return this.flipY;
    }

    public TextureConfig J0(h wrap) {
        this.wrap = wrap;
        return this;
    }

    public boolean K() {
        return this.gammaCorrection;
    }

    public String K0() {
        return X7.a.m().toJson(this);
    }

    public boolean L() {
        return this.gaussian;
    }

    public boolean M() {
        return this.genMipmaps;
    }

    public boolean N() {
        return this.grayscale;
    }

    public boolean O() {
        return this.invertColors;
    }

    public boolean P() {
        return this.noise;
    }

    public boolean Q() {
        return this.sepia;
    }

    public boolean R() {
        return this.sharpen;
    }

    public boolean S() {
        return this.sketch;
    }

    public boolean T() {
        return this.vignette;
    }

    public void U(boolean allowBoost) {
        this.allowBoost = allowBoost;
    }

    public void V(boolean allowBrightness) {
        this.allowBrightness = allowBrightness;
    }

    public void W(boolean allowColorDepth) {
        this.allowColorDepth = allowColorDepth;
    }

    public void X(boolean allowContrast) {
        this.allowContrast = allowContrast;
    }

    public void Y(boolean allowHUE) {
        this.allowHUE = allowHUE;
    }

    public TextureConfig Z(boolean allowModifications) {
        this.allowModifications = allowModifications;
        return this;
    }

    public TextureConfig a() {
        TextureConfig textureConfig = new TextureConfig();
        textureConfig.type = this.type;
        textureConfig.genMipmaps = this.genMipmaps;
        textureConfig.mipmapLevels = this.mipmapLevels;
        textureConfig.filter = this.filter;
        textureConfig.wrap = this.wrap;
        textureConfig.maxResolutionID = this.maxResolutionID;
        textureConfig.quality = this.quality;
        textureConfig.originalWidth = this.originalWidth;
        textureConfig.originalHeight = this.originalHeight;
        textureConfig.width = this.width;
        textureConfig.height = this.height;
        textureConfig.blackIsAlpha = this.blackIsAlpha;
        textureConfig.is9patch = this.is9patch;
        textureConfig.autoGenNormalMap = this.autoGenNormalMap;
        textureConfig.autoGenNormalMapBias = this.autoGenNormalMapBias;
        textureConfig.rotate = this.rotate;
        textureConfig.flipX = this.flipX;
        textureConfig.flipY = this.flipY;
        textureConfig.grayscale = this.grayscale;
        textureConfig.hue = this.hue;
        textureConfig.allowHUE = this.allowHUE;
        textureConfig.invertColors = this.invertColors;
        textureConfig.noise = this.noise;
        textureConfig.allowSaturation = this.allowSaturation;
        textureConfig.saturation = this.saturation;
        textureConfig.sepia = this.sepia;
        textureConfig.sharpen = this.sharpen;
        textureConfig.sketch = this.sketch;
        textureConfig.vignette = this.vignette;
        textureConfig.gaussian = this.gaussian;
        textureConfig.allowContrast = this.allowContrast;
        textureConfig.contrast = this.contrast;
        textureConfig.allowBrightness = this.allowBrightness;
        textureConfig.brightness = this.brightness;
        textureConfig.allowBoost = this.allowBoost;
        textureConfig.boostRed = this.boostRed;
        textureConfig.boostBlue = this.boostBlue;
        textureConfig.boostGreen = this.boostGreen;
        textureConfig.allowColorDepth = this.allowColorDepth;
        textureConfig.colordepth = this.colordepth;
        textureConfig.allowOpacity = this.allowOpacity;
        textureConfig.opacityTextureFile = this.opacityTextureFile;
        textureConfig.allowModifications = this.allowModifications;
        textureConfig.format = this.format;
        textureConfig.gammaCorrection = this.gammaCorrection;
        textureConfig.spriteData = SpriteData.d(this.spriteData);
        textureConfig.compressionFormat = this.compressionFormat;
        textureConfig.importedFormat = this.importedFormat;
        return textureConfig;
    }

    public void a0(boolean allowSaturation) {
        this.allowSaturation = allowSaturation;
    }

    public int b() {
        return this.autoGenNormalMapBias;
    }

    public void b0(boolean autoGenNormalMap) {
        this.autoGenNormalMap = autoGenNormalMap;
    }

    public int c() {
        return this.boostBlue;
    }

    public void c0(int autoGenNormalMapBias) {
        this.autoGenNormalMapBias = autoGenNormalMapBias;
    }

    public int d() {
        return this.boostGreen;
    }

    public void d0(int boostBlue) {
        this.boostBlue = boostBlue;
    }

    public int e() {
        return this.boostRed;
    }

    public void e0(int boostGreen) {
        this.boostGreen = boostGreen;
    }

    public int f() {
        return this.brightness;
    }

    public void f0(int boostRed) {
        this.boostRed = boostRed;
    }

    public int g() {
        return this.colordepth;
    }

    public void g0(int brightness) {
        this.brightness = brightness;
    }

    public int h() {
        return this.contrast;
    }

    public void h0(int colordepth) {
        this.colordepth = colordepth;
    }

    public d i() {
        d dVar = this.importedFormat;
        return dVar != null ? dVar : l();
    }

    public void i0(int contrast) {
        this.contrast = contrast;
    }

    public int j() {
        if (!M()) {
            return 0;
        }
        if (l() == d.RGB8 && this.gammaCorrection) {
            return 0;
        }
        if (this.mipmapLevels < 0) {
            this.mipmapLevels = 0;
        }
        return this.mipmapLevels;
    }

    public TextureConfig j0(c filter) {
        this.filter = filter;
        return this;
    }

    public c k() {
        if (this.filter == null) {
            this.filter = c.Linear;
        }
        return this.filter;
    }

    public void k0(boolean flipX) {
        this.flipX = flipX;
    }

    public d l() {
        if (this.format == null) {
            this.format = d.RGBA8;
        }
        return this.format;
    }

    public void l0(boolean flipY) {
        this.flipY = flipY;
    }

    public int m() {
        return this.height;
    }

    public TextureConfig m0(d format) {
        this.format = format;
        return this;
    }

    public int n() {
        return this.hue;
    }

    public TextureConfig n0(boolean gammaCorrection) {
        this.gammaCorrection = gammaCorrection;
        return this;
    }

    public int o() {
        return this.maxResolutionID;
    }

    public void o0(boolean gaussian) {
        this.gaussian = gaussian;
    }

    public int p() {
        return this.mipmapLevels;
    }

    public TextureConfig p0(boolean genMipmaps) {
        this.genMipmaps = genMipmaps;
        return this;
    }

    public int q() {
        return this.originalHeight;
    }

    public void q0(boolean grayscale) {
        this.grayscale = grayscale;
    }

    public int r() {
        return this.originalWidth;
    }

    public void r0(int height) {
        this.height = height;
    }

    public int s() {
        return Nc.b.F(1, this.quality, 100);
    }

    public void s0(int hue) {
        this.hue = hue;
    }

    public void t0(boolean invertColors) {
        this.invertColors = invertColors;
    }

    public int u() {
        return this.saturation;
    }

    public void u0(boolean is9patch) {
        this.is9patch = is9patch;
    }

    public SpriteData v() {
        return this.spriteData;
    }

    public void v0(int maxResolutionID) {
        this.maxResolutionID = maxResolutionID;
    }

    public int w() {
        return this.width;
    }

    public void w0(int mipmapLevels) {
        this.mipmapLevels = Nc.b.H(mipmapLevels);
    }

    public h x() {
        return this.wrap;
    }

    public void x0(boolean noise) {
        this.noise = noise;
    }

    public boolean y() {
        return l().ordinal() == 0;
    }

    public void y0(int originalHeight) {
        this.originalHeight = originalHeight;
    }

    public boolean z() {
        return this.is9patch;
    }

    public void z0(int originalWidth) {
        this.originalWidth = originalWidth;
    }

    public TextureConfig(boolean genMipmaps, c filter) {
        this.type = f.Texture;
        this.genMipmaps = true;
        this.mipmapLevels = 3;
        this.filter = c.Linear;
        this.wrap = h.Repeat;
        this.maxResolutionID = 10;
        this.quality = 90;
        this.blackIsAlpha = false;
        this.is9patch = false;
        this.autoGenNormalMap = false;
        this.autoGenNormalMapBias = 80;
        this.rotate = e.None;
        this.hue = 180;
        this.saturation = 100;
        this.contrast = 100;
        this.brightness = 0;
        this.colordepth = 0;
        this.allowModifications = false;
        this.format = d.RGBA8;
        this.compressionFormat = b.ASTC_8;
        this.compressionEffort = a.Fast;
        this.gammaCorrection = false;
        this.genMipmaps = genMipmaps;
        this.filter = filter;
    }

    public TextureConfig(boolean genMipmaps, c filter, h wrap, int maxResolutionID) {
        this.type = f.Texture;
        this.genMipmaps = true;
        this.mipmapLevels = 3;
        this.filter = c.Linear;
        this.wrap = h.Repeat;
        this.maxResolutionID = 10;
        this.quality = 90;
        this.blackIsAlpha = false;
        this.is9patch = false;
        this.autoGenNormalMap = false;
        this.autoGenNormalMapBias = 80;
        this.rotate = e.None;
        this.hue = 180;
        this.saturation = 100;
        this.contrast = 100;
        this.brightness = 0;
        this.colordepth = 0;
        this.allowModifications = false;
        this.format = d.RGBA8;
        this.compressionFormat = b.ASTC_8;
        this.compressionEffort = a.Fast;
        this.gammaCorrection = false;
        this.genMipmaps = genMipmaps;
        this.filter = filter;
        this.wrap = wrap;
        this.maxResolutionID = maxResolutionID;
    }

    public TextureConfig(boolean allowModifications) {
        this.type = f.Texture;
        this.genMipmaps = true;
        this.mipmapLevels = 3;
        this.filter = c.Linear;
        this.wrap = h.Repeat;
        this.maxResolutionID = 10;
        this.quality = 90;
        this.blackIsAlpha = false;
        this.is9patch = false;
        this.autoGenNormalMap = false;
        this.autoGenNormalMapBias = 80;
        this.rotate = e.None;
        this.hue = 180;
        this.saturation = 100;
        this.contrast = 100;
        this.brightness = 0;
        this.colordepth = 0;
        this.allowModifications = false;
        this.format = d.RGBA8;
        this.compressionFormat = b.ASTC_8;
        this.compressionEffort = a.Fast;
        this.gammaCorrection = false;
        this.allowModifications = allowModifications;
    }
}
