package com.jme3.texture.plugins;

import com.jme3.asset.AssetInfo;
import com.jme3.asset.AssetLoader;
import com.jme3.asset.TextureKey;
import com.jme3.export.binary.ByteUtils;
import com.jme3.texture.Image;
import com.jme3.texture.image.ColorSpace;
import com.jme3.util.BufferUtils;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.logging.Logger;

public class PFMLoader implements AssetLoader {
    private static final Logger logger = Logger.getLogger(PFMLoader.class.getName());

    private void flipScanline(byte[] bArr) {
        for (int i10 = 0; i10 < bArr.length; i10 += 4) {
            int i11 = i10 + 3;
            byte b10 = bArr[i11];
            bArr[i11] = bArr[i10];
            bArr[i10] = b10;
            int i12 = i10 + 2;
            byte b11 = bArr[i12];
            int i13 = i10 + 1;
            bArr[i12] = bArr[i13];
            bArr[i13] = b11;
        }
    }

    private Image load(InputStream inputStream, boolean z10) throws IOException {
        Image.Format format;
        String readString = readString(inputStream);
        if (readString.equals("PF")) {
            format = Image.Format.RGB32F;
        } else if (readString.equals("Pf")) {
            format = Image.Format.Luminance32F;
        } else {
            throw new IOException("File is not PFM format");
        }
        Image.Format format2 = format;
        String readString2 = readString(inputStream);
        int indexOf = readString2.indexOf(" ");
        if (indexOf > 0) {
            if (indexOf < readString2.length() - 1) {
                int parseInt = Integer.parseInt(readString2.substring(0, indexOf));
                int parseInt2 = Integer.parseInt(readString2.substring(indexOf + 1));
                if (parseInt > 0 && parseInt2 > 0) {
                    boolean z11 = ((Float.parseFloat(readString(inputStream)) > 0.0f ? 1 : (Float.parseFloat(readString(inputStream)) == 0.0f ? 0 : -1)) < 0 ? ByteOrder.LITTLE_ENDIAN : ByteOrder.BIG_ENDIAN) != ByteOrder.nativeOrder();
                    System.gc();
                    int bitsPerPixel = format2.getBitsPerPixel() / 8;
                    int i10 = bitsPerPixel * parseInt;
                    ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(parseInt * parseInt2 * bitsPerPixel);
                    byte[] bArr = new byte[i10];
                    for (int i11 = parseInt2 - 1; i11 >= 0; i11--) {
                        if (!z10) {
                            createByteBuffer.position(i10 * i11);
                        }
                        ByteUtils.readFully(inputStream, bArr);
                        if (z11) {
                            flipScanline(bArr);
                        }
                        createByteBuffer.put(bArr);
                    }
                    createByteBuffer.rewind();
                    return new Image(format2, parseInt, parseInt2, createByteBuffer, (int[]) null, ColorSpace.Linear);
                }
                throw new IOException("Invalid size specified in PFM file");
            }
        }
        throw new IOException("Invalid size syntax in PFM file");
    }

    private String readString(InputStream inputStream) throws IOException {
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            int read = inputStream.read();
            if (read == 10 || read == -1) {
                break;
            }
            sb2.append((char) read);
        }
        return sb2.toString();
    }

    @Override
    public Object load(AssetInfo assetInfo) throws IOException {
        InputStream inputStream;
        if (assetInfo.getKey() instanceof TextureKey) {
            try {
                inputStream = assetInfo.openStream();
                try {
                    Image load = load(inputStream, ((TextureKey) assetInfo.getKey()).isFlipY());
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    return load;
                } catch (Throwable th2) {
                    th = th2;
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                inputStream = null;
            }
        } else {
            throw new IllegalArgumentException("Texture assets must be loaded using a TextureKey");
        }
    }
}
