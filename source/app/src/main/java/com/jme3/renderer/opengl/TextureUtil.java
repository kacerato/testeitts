package com.jme3.renderer.opengl;

import com.jme3.renderer.Caps;
import com.jme3.renderer.RendererException;
import com.jme3.texture.Image;
import com.jme3.texture.image.ColorSpace;
import java.nio.ByteBuffer;
import java.util.EnumSet;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class TextureUtil {
    private static final Logger logger = Logger.getLogger(TextureUtil.class.getName());
    private GLImageFormat[][] formats;

    private final GL f81625gl;
    private final GL2 gl2;
    private final GLExt glext;
    private boolean supportUnpackRowLength;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$texture$Image$Format;

        static {
            int[] iArr = new int[Image.Format.values().length];
            $SwitchMap$com$jme3$texture$Image$Format = iArr;
            try {
                iArr[Image.Format.Alpha8.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$texture$Image$Format[Image.Format.Luminance8.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$jme3$texture$Image$Format[Image.Format.Luminance16F.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$jme3$texture$Image$Format[Image.Format.Luminance32F.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$jme3$texture$Image$Format[Image.Format.Luminance8Alpha8.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$jme3$texture$Image$Format[Image.Format.Luminance16FAlpha16F.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$jme3$texture$Image$Format[Image.Format.ABGR8.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public TextureUtil(GL gl2, GL2 gl22, GLExt gLExt) {
        this.f81625gl = gl2;
        this.gl2 = gl22;
        this.glext = gLExt;
    }

    private void setupTextureSwizzle(int i10, Image.Format format) {
        switch (AnonymousClass1.$SwitchMap$com$jme3$texture$Image$Format[format.ordinal()]) {
            case 1:
                this.f81625gl.glTexParameteri(i10, 36418, 0);
                this.f81625gl.glTexParameteri(i10, 36419, 0);
                this.f81625gl.glTexParameteri(i10, 36420, 0);
                this.f81625gl.glTexParameteri(i10, 36421, 6403);
                return;
            case 2:
            case 3:
            case 4:
                this.f81625gl.glTexParameteri(i10, 36418, 6403);
                this.f81625gl.glTexParameteri(i10, 36419, 6403);
                this.f81625gl.glTexParameteri(i10, 36420, 6403);
                this.f81625gl.glTexParameteri(i10, 36421, 1);
                return;
            case 5:
            case 6:
                this.f81625gl.glTexParameteri(i10, 36418, 6403);
                this.f81625gl.glTexParameteri(i10, 36419, 6403);
                this.f81625gl.glTexParameteri(i10, 36420, 6403);
                this.f81625gl.glTexParameteri(i10, 36421, 6404);
                return;
            case 7:
                this.f81625gl.glTexParameteri(i10, 36418, 6406);
                this.f81625gl.glTexParameteri(i10, 36419, 6405);
                this.f81625gl.glTexParameteri(i10, 36420, 6404);
                this.f81625gl.glTexParameteri(i10, 36421, 6403);
                return;
            default:
                throw new UnsupportedOperationException();
        }
    }

    private void uploadTextureLevel(GLImageFormat gLImageFormat, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, ByteBuffer byteBuffer) {
        if (gLImageFormat.compressed && byteBuffer != null) {
            if (i10 == 32879) {
                this.gl2.glCompressedTexImage3D(i10, i11, gLImageFormat.internalFormat, i14, i15, i16, 0, byteBuffer);
                return;
            } else if (i10 == 35866) {
                this.gl2.glCompressedTexSubImage3D(i10, i11, 0, 0, i12, i14, i15, 1, gLImageFormat.internalFormat, byteBuffer);
                return;
            } else {
                this.gl2.glCompressedTexImage2D(i10, i11, gLImageFormat.internalFormat, i14, i15, 0, byteBuffer);
                return;
            }
        }
        if (i10 == 32879) {
            this.gl2.glTexImage3D(i10, i11, gLImageFormat.internalFormat, i14, i15, i16, 0, gLImageFormat.format, gLImageFormat.dataType, byteBuffer);
            return;
        }
        if (i10 == 35866) {
            if (i12 == -1) {
                this.gl2.glTexImage3D(i10, i11, gLImageFormat.internalFormat, i14, i15, i13, 0, gLImageFormat.format, gLImageFormat.dataType, byteBuffer);
                return;
            } else {
                this.gl2.glTexSubImage3D(i10, i11, 0, 0, i12, i14, i15, 1, gLImageFormat.format, gLImageFormat.dataType, byteBuffer);
                return;
            }
        }
        if (i17 > 1) {
            this.glext.glTexImage2DMultisample(i10, i17, gLImageFormat.internalFormat, i14, i15, true);
        } else {
            this.f81625gl.glTexImage2D(i10, i11, gLImageFormat.internalFormat, i14, i15, 0, gLImageFormat.format, gLImageFormat.dataType, byteBuffer);
        }
    }

    public GLImageFormat getImageFormat(Image.Format format, boolean z10) {
        return z10 ? this.formats[1][format.ordinal()] : this.formats[0][format.ordinal()];
    }

    public GLImageFormat getImageFormatWithError(Image.Format format, boolean z10) {
        boolean z11 = z10 && !format.isDepthFormat();
        GLImageFormat imageFormat = getImageFormat(format, z11);
        if (imageFormat == null && z11) {
            imageFormat = getImageFormat(format, false);
            logger.log(Level.WARNING, "No sRGB format available for ''{0}''. Falling back to linear.", format);
        }
        if (imageFormat != null) {
            return imageFormat;
        }
        throw new RendererException("Image format '" + ((Object) format) + "' is unsupported by the video hardware.");
    }

    public void initialize(EnumSet<Caps> enumSet) {
        this.supportUnpackRowLength = enumSet.contains(Caps.UnpackRowLength);
        this.formats = GLImageFormats.getFormatsForCaps(enumSet);
        if (logger.isLoggable(Level.FINE)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Supported texture formats: \n");
            for (int i10 = 0; i10 < Image.Format.values().length; i10++) {
                Image.Format format = Image.Format.values()[i10];
                GLImageFormat[][] gLImageFormatArr = this.formats;
                if (gLImageFormatArr[0][i10] != null) {
                    boolean z10 = gLImageFormatArr[1][i10] != null;
                    sb2.append("\t");
                    sb2.append(format.toString());
                    sb2.append(" (Linear");
                    if (z10) {
                        sb2.append("/sRGB");
                    }
                    sb2.append(")\n");
                }
            }
            logger.log(Level.FINE, sb2.toString());
        }
    }

    @Deprecated
    public void uploadSubTexture(Image image, int i10, int i11, int i12, int i13, boolean z10) {
        if (i10 == 3553) {
            if (image.getDepth() <= 1) {
                if (image.getMipMapSizes() == null) {
                    if (image.getMultiSamples() <= 1) {
                        Image.Format format = image.getFormat();
                        if (!format.isCompressed()) {
                            if (!format.isDepthFormat()) {
                                GLImageFormat imageFormatWithError = getImageFormatWithError(format, image.getColorSpace() == ColorSpace.sRGB && z10);
                                ByteBuffer data = i11 >= 0 ? image.getData(i11) : null;
                                if (data != null) {
                                    data.position(0);
                                    data.limit(data.capacity());
                                    this.f81625gl.glTexSubImage2D(i10, 0, i12, i13, image.getWidth(), image.getHeight(), imageFormatWithError.format, imageFormatWithError.dataType, data);
                                    return;
                                } else {
                                    throw new IndexOutOfBoundsException("The image index " + i11 + " is not valid for the given image");
                                }
                            }
                            throw new UnsupportedOperationException("Updating depth images is not supported");
                        }
                        throw new UnsupportedOperationException("Updating compressed images is not supported");
                    }
                    throw new UnsupportedOperationException("Updating multisampled images is not supported");
                }
                throw new UnsupportedOperationException("Updating mip-mapped images is not supported");
            }
        }
        throw new UnsupportedOperationException("Updating non-2D texture is not supported");
    }

    public void uploadTexture(Image image, int i10, int i11, boolean z10) {
        boolean z11 = image.getColorSpace() == ColorSpace.sRGB && z10;
        Image.Format format = image.getFormat();
        GLImageFormat imageFormatWithError = getImageFormatWithError(format, z11);
        ByteBuffer data = i11 >= 0 ? image.getData(i11) : null;
        int size = (image.getData() == null || image.getData().size() <= 0) ? 1 : image.getData().size();
        int width = image.getWidth();
        int height = image.getHeight();
        int depth = image.getDepth();
        int[] mipMapSizes = image.getMipMapSizes();
        if (mipMapSizes == null) {
            mipMapSizes = data != null ? new int[]{data.capacity()} : new int[]{((width * height) * format.getBitsPerPixel()) / 8};
        }
        int[] iArr = mipMapSizes;
        int multiSamples = image.getMultiSamples();
        if (imageFormatWithError.swizzleRequired) {
            setupTextureSwizzle(i10, format);
        }
        int i12 = 0;
        int i13 = 0;
        while (i13 < iArr.length) {
            int max = Math.max(1, width >> i13);
            int max2 = Math.max(1, height >> i13);
            int max3 = Math.max(1, depth >> i13);
            if (data != null) {
                data.position(i12);
                data.limit(iArr[i13] + i12);
            }
            int i14 = i13;
            int[] iArr2 = iArr;
            uploadTextureLevel(imageFormatWithError, i10, i13, i11, size, max, max2, max3, multiSamples, data);
            i12 += iArr2[i14];
            i13 = i14 + 1;
            iArr = iArr2;
        }
    }

    public void uploadSubTexture(int i10, Image image, int i11, int i12, int i13, int i14, int i15, int i16, int i17, boolean z10) {
        int i18;
        if (i10 == 3553 && image.getDepth() <= 1) {
            if (image.getMipMapSizes() == null) {
                if (image.getMultiSamples() <= 1) {
                    Image.Format format = image.getFormat();
                    if (!format.isCompressed()) {
                        if (!format.isDepthFormat()) {
                            int i19 = 0;
                            GLImageFormat imageFormatWithError = getImageFormatWithError(format, image.getColorSpace() == ColorSpace.sRGB && z10);
                            ByteBuffer data = image.getData(i11);
                            if (data != null) {
                                int bitsPerPixel = image.getFormat().getBitsPerPixel() / 8;
                                int width = image.getWidth();
                                int position = data.position();
                                int i20 = (i14 + (i15 * width)) * bitsPerPixel;
                                data.position(i20);
                                boolean z11 = width != i16;
                                if (!z11 || this.supportUnpackRowLength) {
                                    if (z11) {
                                        this.f81625gl.glPixelStorei(3314, width);
                                    }
                                    this.f81625gl.glTexSubImage2D(i10, 0, i12, i13, i16, i17, imageFormatWithError.format, imageFormatWithError.dataType, data);
                                    if (z11) {
                                        this.f81625gl.glPixelStorei(3314, 0);
                                    }
                                    i18 = position;
                                } else {
                                    int i21 = i17;
                                    while (i19 < i21) {
                                        data.position((width * bitsPerPixel * i19) + i20);
                                        this.f81625gl.glTexSubImage2D(i10, 0, i12, i13 + i19, i16, 1, imageFormatWithError.format, imageFormatWithError.dataType, data);
                                        i19++;
                                        i21 = i17;
                                        width = width;
                                        i20 = i20;
                                        position = position;
                                    }
                                    i18 = position;
                                }
                                data.position(i18);
                                return;
                            }
                            throw new IndexOutOfBoundsException("The image index " + i11 + " is not valid for the given image");
                        }
                        throw new UnsupportedOperationException("Updating depth images is not supported");
                    }
                    throw new UnsupportedOperationException("Updating compressed images is not supported");
                }
                throw new UnsupportedOperationException("Updating multisampled images is not supported");
            }
            throw new UnsupportedOperationException("Updating mip-mapped images is not supported");
        }
        throw new UnsupportedOperationException("Updating non-2D texture is not supported");
    }
}
