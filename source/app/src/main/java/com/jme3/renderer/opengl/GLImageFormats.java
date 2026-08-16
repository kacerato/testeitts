package com.jme3.renderer.opengl;

import com.jme3.renderer.Caps;
import com.jme3.texture.Image;
import java.lang.reflect.Array;
import java.util.EnumSet;

public final class GLImageFormats {
    private GLImageFormats() {
    }

    private static void format(GLImageFormat[][] gLImageFormatArr, Image.Format format, int i10, int i11, int i12, boolean z10, boolean z11, boolean z12) {
        gLImageFormatArr[0][format.ordinal()] = new GLImageFormat(i10, i11, i12, z10, z11, z12);
    }

    private static void formatComp(GLImageFormat[][] gLImageFormatArr, Image.Format format, int i10, int i11, int i12, boolean z10, boolean z11, boolean z12) {
        gLImageFormatArr[0][format.ordinal()] = new GLImageFormat(i10, i11, i12, true, z10, z11, z12);
    }

    private static void formatCompSrgb(GLImageFormat[][] gLImageFormatArr, Image.Format format, int i10, int i11, int i12, boolean z10, boolean z11, boolean z12) {
        gLImageFormatArr[1][format.ordinal()] = new GLImageFormat(i10, i11, i12, true, z10, z11, z12);
    }

    private static void formatSrgb(GLImageFormat[][] gLImageFormatArr, Image.Format format, int i10, int i11, int i12, boolean z10, boolean z11, boolean z12) {
        gLImageFormatArr[1][format.ordinal()] = new GLImageFormat(i10, i11, i12, false, false, z10, z11, z12);
    }

    private static void formatSrgbSwiz(GLImageFormat[][] gLImageFormatArr, Image.Format format, int i10, int i11, int i12, boolean z10, boolean z11, boolean z12) {
        gLImageFormatArr[1][format.ordinal()] = new GLImageFormat(i10, i11, i12, false, true, z10, z11, z12);
    }

    private static void formatSwiz(GLImageFormat[][] gLImageFormatArr, Image.Format format, int i10, int i11, int i12, boolean z10, boolean z11, boolean z12) {
        gLImageFormatArr[0][format.ordinal()] = new GLImageFormat(i10, i11, i12, false, true, z10, z11, z12);
    }

    public static GLImageFormat[][] getFormatsForCaps(EnumSet<Caps> enumSet) {
        Caps caps;
        GLImageFormat[][] gLImageFormatArr = (GLImageFormat[][]) Array.newInstance((Class<?>) GLImageFormat.class, 2, Image.Format.values().length);
        Caps caps2 = Caps.OpenGLES20;
        boolean contains = enumSet.contains(caps2);
        boolean z10 = contains && enumSet.contains(Caps.OpenGLES30);
        boolean z11 = contains && !z10;
        Caps caps3 = Caps.WebGL;
        boolean contains2 = enumSet.contains(caps3);
        boolean z12 = !contains;
        boolean contains3 = enumSet.contains(Caps.CoreProfile);
        boolean contains4 = enumSet.contains(Caps.HalfFloatColorBufferR);
        boolean contains5 = enumSet.contains(Caps.HalfFloatColorBufferRG);
        boolean contains6 = enumSet.contains(Caps.HalfFloatColorBufferRGB);
        boolean contains7 = enumSet.contains(Caps.HalfFloatColorBufferRGBA);
        boolean contains8 = enumSet.contains(Caps.FloatColorBufferR);
        boolean contains9 = enumSet.contains(Caps.FloatColorBufferRG);
        boolean contains10 = enumSet.contains(Caps.FloatColorBufferRGB);
        boolean contains11 = enumSet.contains(Caps.FloatColorBufferRGBA);
        boolean contains12 = enumSet.contains(Caps.PackedFloatColorBuffer);
        boolean contains13 = enumSet.contains(Caps.HalfFloatTextureFilter);
        boolean contains14 = enumSet.contains(Caps.FloatTextureFilter);
        int i10 = z11 ? GLExt.GL_HALF_FLOAT_OES : 5131;
        if (contains3) {
            formatSwiz(gLImageFormatArr, Image.Format.Alpha8, 33321, 6403, 5121, true, false, true);
            Image.Format format = Image.Format.Luminance8;
            formatSwiz(gLImageFormatArr, format, 33321, 6403, 5121, true, false, true);
            Image.Format format2 = Image.Format.Luminance8Alpha8;
            formatSwiz(gLImageFormatArr, format2, 33323, 33319, 5121, true, false, true);
            formatSwiz(gLImageFormatArr, Image.Format.Luminance16F, 33325, 6403, i10, contains4, false, contains13);
            formatSwiz(gLImageFormatArr, Image.Format.Luminance32F, 33326, 6403, 5126, contains8, false, contains14);
            formatSwiz(gLImageFormatArr, Image.Format.Luminance16FAlpha16F, 33327, 33319, i10, contains5, false, contains13);
            formatSrgbSwiz(gLImageFormatArr, format, 35905, 6403, 5121, z12, false, true);
            formatSrgbSwiz(gLImageFormatArr, format2, 35907, 33319, 5121, !contains || z10 || contains2, false, true);
        }
        if (enumSet.contains(Caps.OpenGL20) || z10) {
            if (!contains3) {
                format(gLImageFormatArr, Image.Format.Alpha8, GL2.GL_ALPHA8, 6406, 5121, z12, false, true);
                format(gLImageFormatArr, Image.Format.Luminance8, GL2.GL_LUMINANCE8, 6409, 5121, z12, false, true);
                format(gLImageFormatArr, Image.Format.Luminance8Alpha8, GL2.GL_LUMINANCE8_ALPHA8, 6410, 5121, z12, false, true);
            }
            Image.Format format3 = Image.Format.RGB8;
            format(gLImageFormatArr, format3, 32849, 6407, 5121, !contains || z10 || contains2, false, true);
            Image.Format format4 = Image.Format.RGBA8;
            format(gLImageFormatArr, format4, 32856, 6408, 5121, true, false, true);
            if (z10 || contains2) {
                format(gLImageFormatArr, Image.Format.RGB565, 36194, 6407, 33635, true, false, true);
            } else {
                format(gLImageFormatArr, Image.Format.RGB565, 32849, 6407, 33635, !contains || z10 || contains2, false, true);
            }
            if (!contains) {
                format(gLImageFormatArr, Image.Format.BGR8, 32849, GL2.GL_BGR, 5121, true, false, true);
                format(gLImageFormatArr, Image.Format.ARGB8, 32856, 32993, GL2.GL_UNSIGNED_INT_8_8_8_8, true, false, true);
                format(gLImageFormatArr, Image.Format.BGRA8, 32856, 32993, 5121, true, false, true);
                format(gLImageFormatArr, Image.Format.ABGR8, 32856, 6408, GL2.GL_UNSIGNED_INT_8_8_8_8, true, false, true);
            }
            if (enumSet.contains(Caps.Srgb)) {
                formatSrgb(gLImageFormatArr, format3, 35905, 6407, 5121, z12, false, true);
                formatSrgb(gLImageFormatArr, Image.Format.RGB565, 35905, 6407, 33635, z12, false, true);
                formatSrgb(gLImageFormatArr, Image.Format.RGB5A1, 35907, 6408, 32820, z12, false, true);
                formatSrgb(gLImageFormatArr, format4, 35907, 6408, 5121, true, false, true);
                if (!contains3) {
                    formatSrgb(gLImageFormatArr, Image.Format.Luminance8, GLExt.GL_SLUMINANCE8_EXT, 6409, 5121, z12, false, true);
                    formatSrgb(gLImageFormatArr, Image.Format.Luminance8Alpha8, GLExt.GL_SLUMINANCE8_ALPHA8_EXT, 6410, 5121, z12, false, true);
                }
                if (!contains) {
                    formatSrgb(gLImageFormatArr, Image.Format.BGR8, 35905, GL2.GL_BGR, 5121, true, false, true);
                    formatSrgb(gLImageFormatArr, Image.Format.ABGR8, 35907, 6408, GL2.GL_UNSIGNED_INT_8_8_8_8, true, false, true);
                    formatSrgb(gLImageFormatArr, Image.Format.ARGB8, 35907, 32993, GL2.GL_UNSIGNED_INT_8_8_8_8, true, false, true);
                    formatSrgb(gLImageFormatArr, Image.Format.BGRA8, 35907, 32993, 5121, true, false, true);
                }
                if (enumSet.contains(Caps.TextureCompressionS3TC)) {
                    formatCompSrgb(gLImageFormatArr, Image.Format.DXT1, GLExt.GL_COMPRESSED_SRGB_S3TC_DXT1_EXT, 6407, 5121, false, false, true);
                    formatCompSrgb(gLImageFormatArr, Image.Format.DXT1A, GLExt.GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT, 6408, 5121, false, false, true);
                    formatCompSrgb(gLImageFormatArr, Image.Format.DXT3, GLExt.GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT, 6408, 5121, false, false, true);
                    formatCompSrgb(gLImageFormatArr, Image.Format.DXT5, GLExt.GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT, 6408, 5121, false, false, true);
                }
            }
        } else if (enumSet.contains(Caps.Rgba8)) {
            if (!contains3) {
                format(gLImageFormatArr, Image.Format.Alpha8, 32856, 6406, 5121, true, false, true);
                format(gLImageFormatArr, Image.Format.Luminance8, 32856, 6409, 5121, true, false, true);
                format(gLImageFormatArr, Image.Format.Luminance8Alpha8, 32856, 6410, 5121, true, false, true);
            }
            format(gLImageFormatArr, Image.Format.RGB8, 32849, 6407, 5121, true, false, true);
            format(gLImageFormatArr, Image.Format.RGBA8, 32856, 6408, 5121, true, false, true);
            if (!contains) {
                formatSwiz(gLImageFormatArr, Image.Format.BGR8, 32849, 6407, 5121, true, false, true);
                formatSwiz(gLImageFormatArr, Image.Format.ARGB8, 32856, 6408, 5121, true, false, true);
                formatSwiz(gLImageFormatArr, Image.Format.BGRA8, 32856, 6408, 5121, true, false, true);
                formatSwiz(gLImageFormatArr, Image.Format.ABGR8, 32856, 6408, 5121, true, false, true);
            }
        } else {
            if (!contains3) {
                format(gLImageFormatArr, Image.Format.Alpha8, 32854, 6406, 5121, true, false, true);
                format(gLImageFormatArr, Image.Format.Luminance8, 36194, 6409, 5121, true, false, true);
                format(gLImageFormatArr, Image.Format.Luminance8Alpha8, 32854, 6410, 5121, true, false, true);
            }
            format(gLImageFormatArr, Image.Format.RGB8, 36194, 6407, 5121, true, false, true);
            format(gLImageFormatArr, Image.Format.RGBA8, 32854, 6408, 5121, true, false, true);
        }
        if (contains) {
            format(gLImageFormatArr, Image.Format.RGB565, 36194, 6407, 33635, true, false, true);
        }
        format(gLImageFormatArr, Image.Format.RGB5A1, 32855, 6408, 32820, true, false, true);
        Caps caps4 = Caps.HalfFloatTexture;
        if (enumSet.contains(caps4) || enumSet.contains(Caps.FloatTexture)) {
            if (contains3) {
                caps = caps4;
            } else {
                if (enumSet.contains(caps4)) {
                    caps = caps4;
                    format(gLImageFormatArr, Image.Format.Luminance16F, GLExt.GL_LUMINANCE16F_ARB, 6409, i10, false, false, contains13);
                    format(gLImageFormatArr, Image.Format.Luminance16FAlpha16F, GLExt.GL_LUMINANCE_ALPHA16F_ARB, 6410, i10, false, false, contains13);
                } else {
                    caps = caps4;
                }
                if (enumSet.contains(Caps.FloatTexture)) {
                    format(gLImageFormatArr, Image.Format.Luminance32F, GLExt.GL_LUMINANCE32F_ARB, 6409, 5126, false, false, contains14);
                }
            }
            if (enumSet.contains(caps)) {
                format(gLImageFormatArr, Image.Format.R16F, 33325, 6403, i10, contains4, false, contains13);
                format(gLImageFormatArr, Image.Format.RG16F, 33327, 33319, i10, contains5, false, contains13);
                format(gLImageFormatArr, Image.Format.RGB16F, 34843, 6407, i10, contains6, false, contains13);
                format(gLImageFormatArr, Image.Format.RGBA16F, 34842, 6408, i10, contains7, false, contains13);
            }
            if (enumSet.contains(Caps.FloatTexture)) {
                format(gLImageFormatArr, Image.Format.R32F, 33326, 6403, 5126, contains8, false, contains14);
                format(gLImageFormatArr, Image.Format.RG32F, 33328, 33319, 5126, contains9, false, contains14);
                format(gLImageFormatArr, Image.Format.RGB32F, 34837, 6407, 5126, contains10, false, contains14);
                format(gLImageFormatArr, Image.Format.RGBA32F, 34836, 6408, 5126, contains11, false, contains14);
            }
        } else {
            caps = caps4;
        }
        if (enumSet.contains(Caps.PackedFloatTexture)) {
            format(gLImageFormatArr, Image.Format.RGB111110F, 35898, 6407, 35899, contains12, false, !contains || z10);
            if (enumSet.contains(caps)) {
                format(gLImageFormatArr, Image.Format.RGB16F_to_RGB111110F, 35898, 6407, i10, false, false, !contains || z10);
            }
        }
        if (enumSet.contains(Caps.SharedExponentTexture)) {
            format(gLImageFormatArr, Image.Format.RGB9E5, 35901, 6407, 35902, false, false, !contains || z10);
            if (enumSet.contains(caps)) {
                format(gLImageFormatArr, Image.Format.RGB16F_to_RGB9E5, 35901, 6407, i10, false, false, !contains || z10);
            }
        }
        if (enumSet.contains(Caps.OpenGLES30)) {
            format(gLImageFormatArr, Image.Format.RGB10A2, 32857, 6408, 33640, true, false, true);
            if (!contains3) {
                format(gLImageFormatArr, Image.Format.Alpha8, 6406, 6406, 5121, false, false, true);
                format(gLImageFormatArr, Image.Format.Luminance8, 6409, 6409, 5121, false, false, true);
                format(gLImageFormatArr, Image.Format.Luminance8Alpha8, 6410, 6410, 5121, false, false, true);
            }
            if (enumSet.contains(Caps.Srgb)) {
                formatSrgb(gLImageFormatArr, Image.Format.RGB8, 35905, 6407, 5121, false, false, true);
                formatSrgb(gLImageFormatArr, Image.Format.RGBA8, 35907, 6408, 5121, true, false, true);
            }
            if (enumSet.contains(caps)) {
                format(gLImageFormatArr, Image.Format.RGB16F, 34843, 6407, i10, contains6, false, contains13);
                format(gLImageFormatArr, Image.Format.RGBA16F, 34842, 6408, i10, contains7, false, contains13);
            }
            if (enumSet.contains(Caps.FloatTexture)) {
                format(gLImageFormatArr, Image.Format.RGB32F, 34837, 6407, 5126, contains10, false, contains14);
                format(gLImageFormatArr, Image.Format.RGBA32F, 34836, 6408, 5126, contains11, false, contains14);
            }
            format(gLImageFormatArr, Image.Format.RGB111110F, 35898, 6407, 35899, contains12, false, true);
        }
        format(gLImageFormatArr, Image.Format.Depth16, 33189, 6402, 5123, false, true, false);
        if (enumSet.contains(caps3)) {
            format(gLImageFormatArr, Image.Format.Depth, 33190, 6402, 5125, false, true, false);
        } else if (enumSet.contains(caps2)) {
            format(gLImageFormatArr, Image.Format.Depth, 33189, 6402, 5123, false, true, false);
        } else {
            format(gLImageFormatArr, Image.Format.Depth, 6402, 6402, 5121, false, true, false);
        }
        if (enumSet.contains(Caps.Depth24)) {
            format(gLImageFormatArr, Image.Format.Depth24, 33190, 6402, 5125, false, true, false);
        }
        if (enumSet.contains(Caps.Depth32)) {
            format(gLImageFormatArr, Image.Format.Depth32, 33191, 6402, 5125, false, true, false);
        }
        if (enumSet.contains(Caps.FloatDepthBuffer)) {
            format(gLImageFormatArr, Image.Format.Depth32F, 36012, 6402, 5126, false, true, false);
        }
        if (enumSet.contains(Caps.PackedDepthStencilBuffer)) {
            format(gLImageFormatArr, Image.Format.Depth24Stencil8, 35056, 34041, 34042, false, true, false);
        }
        if (enumSet.contains(Caps.TextureCompressionS3TC)) {
            formatComp(gLImageFormatArr, Image.Format.DXT1, GLExt.GL_COMPRESSED_RGB_S3TC_DXT1_EXT, 6407, 5121, false, false, true);
            formatComp(gLImageFormatArr, Image.Format.DXT1A, GLExt.GL_COMPRESSED_RGBA_S3TC_DXT1_EXT, 6408, 5121, false, false, true);
            formatComp(gLImageFormatArr, Image.Format.DXT3, GLExt.GL_COMPRESSED_RGBA_S3TC_DXT3_EXT, 6408, 5121, false, false, true);
            formatComp(gLImageFormatArr, Image.Format.DXT5, GLExt.GL_COMPRESSED_RGBA_S3TC_DXT5_EXT, 6408, 5121, false, false, true);
        }
        if (enumSet.contains(Caps.OpenGL30) || enumSet.contains(Caps.TextureCompressionRGTC)) {
            formatComp(gLImageFormatArr, Image.Format.RGTC2, GL3.GL_COMPRESSED_RG_RGTC2, 33319, 5121, false, false, true);
            formatComp(gLImageFormatArr, Image.Format.SIGNED_RGTC2, GL3.GL_COMPRESSED_SIGNED_RG_RGTC2, 33319, 5120, false, false, true);
            formatComp(gLImageFormatArr, Image.Format.RGTC1, GL3.GL_COMPRESSED_RED_RGTC1, 6403, 5121, false, false, true);
            formatComp(gLImageFormatArr, Image.Format.SIGNED_RGTC1, GL3.GL_COMPRESSED_SIGNED_RED_RGTC1, 6403, 5120, false, false, true);
        }
        if (enumSet.contains(Caps.TextureCompressionETC2)) {
            Image.Format format5 = Image.Format.ETC2;
            formatComp(gLImageFormatArr, format5, 37496, 6408, 5121, false, false, true);
            Image.Format format6 = Image.Format.ETC2_ALPHA1;
            formatComp(gLImageFormatArr, format6, 37494, 6408, 5121, false, false, true);
            Image.Format format7 = Image.Format.ETC1;
            formatComp(gLImageFormatArr, format7, 37492, 6407, 5121, false, false, true);
            if (enumSet.contains(Caps.Srgb)) {
                formatCompSrgb(gLImageFormatArr, format5, 37497, 6408, 5121, false, false, true);
                formatCompSrgb(gLImageFormatArr, format6, 37495, 6408, 5121, false, false, true);
                formatCompSrgb(gLImageFormatArr, format7, 37493, 6407, 5121, false, false, true);
            }
        } else if (enumSet.contains(Caps.TextureCompressionETC1)) {
            formatComp(gLImageFormatArr, Image.Format.ETC1, 36196, 6407, 5121, false, false, true);
        }
        if (enumSet.contains(Caps.OpenGL42) || enumSet.contains(Caps.TextureCompressionBPTC)) {
            formatComp(gLImageFormatArr, Image.Format.BC6H_SF16, GLExt.GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT, 6407, 5121, false, false, true);
            formatComp(gLImageFormatArr, Image.Format.BC6H_UF16, GLExt.GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT, 6407, 5121, false, false, true);
            formatComp(gLImageFormatArr, Image.Format.BC7_UNORM, GLExt.GL_COMPRESSED_RGBA_BPTC_UNORM, 6408, 5125, false, false, true);
            formatComp(gLImageFormatArr, Image.Format.BC7_UNORM_SRGB, GLExt.GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM, 6408, 5125, false, false, true);
        }
        if (enumSet.contains(Caps.IntegerTexture)) {
            format(gLImageFormatArr, Image.Format.R8I, 33329, 36244, 5120, true, false, false);
            format(gLImageFormatArr, Image.Format.R8UI, 33330, 36244, 5121, true, false, false);
            format(gLImageFormatArr, Image.Format.R16I, 33331, 36244, 5122, true, false, false);
            format(gLImageFormatArr, Image.Format.R16UI, 33332, 36244, 5123, true, false, false);
            format(gLImageFormatArr, Image.Format.R32I, 33333, 36244, 5124, true, false, false);
            format(gLImageFormatArr, Image.Format.R32UI, 33334, 36244, 5125, true, false, false);
            format(gLImageFormatArr, Image.Format.RG8I, 33335, 33320, 5120, true, false, false);
            format(gLImageFormatArr, Image.Format.RG8UI, 33336, 33320, 5121, true, false, false);
            format(gLImageFormatArr, Image.Format.RG16I, 33337, 33320, 5122, true, false, false);
            format(gLImageFormatArr, Image.Format.RG16UI, 33338, 33320, 5123, true, false, false);
            format(gLImageFormatArr, Image.Format.RG32I, 33339, 33320, 5124, true, false, false);
            format(gLImageFormatArr, Image.Format.RG32UI, 33340, 33320, 5125, true, false, false);
            format(gLImageFormatArr, Image.Format.RGB8I, 36239, 36248, 5120, false, false, false);
            format(gLImageFormatArr, Image.Format.RGB8UI, 36221, 36248, 5121, false, false, false);
            format(gLImageFormatArr, Image.Format.RGB16I, 36233, 36248, 5122, false, false, false);
            format(gLImageFormatArr, Image.Format.RGB16UI, 36215, 36248, 5123, false, false, false);
            format(gLImageFormatArr, Image.Format.RGB32I, 36227, 36248, 5124, false, false, false);
            format(gLImageFormatArr, Image.Format.RGB32UI, 36209, 36248, 5125, false, false, false);
            format(gLImageFormatArr, Image.Format.RGBA8I, 36238, 36249, 5120, true, false, false);
            format(gLImageFormatArr, Image.Format.RGBA8UI, 36220, 36249, 5121, true, false, false);
            format(gLImageFormatArr, Image.Format.RGBA16I, 36232, 36249, 5122, true, false, false);
            format(gLImageFormatArr, Image.Format.RGBA16UI, 36214, 36249, 5123, true, false, false);
            format(gLImageFormatArr, Image.Format.RGBA32I, 36226, 36249, 5124, true, false, false);
            format(gLImageFormatArr, Image.Format.RGBA32UI, 36208, 36249, 5125, true, false, false);
        }
        return gLImageFormatArr;
    }
}
