package com.jme3.texture.plugins;

import com.jme3.asset.AssetInfo;
import com.jme3.asset.AssetLoader;
import com.jme3.asset.TextureKey;
import com.jme3.export.binary.ByteUtils;
import com.jme3.math.FastMath;
import com.jme3.texture.Image;
import com.jme3.util.BufferUtils;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;
import yd.C16181m;

@Deprecated
public class HDRLoader implements AssetLoader {
    static final boolean $assertionsDisabled = false;
    private static final Logger logger = Logger.getLogger(HDRLoader.class.getName());
    private ByteBuffer dataStore;
    private ByteBuffer rleTempBuffer;
    private final float[] tempF;
    private boolean writeRGBE;

    public HDRLoader(boolean z10) {
        this.tempF = new float[3];
        this.writeRGBE = z10;
    }

    public static void convertFloatToRGBE(byte[] bArr, float f10, float f11, float f12) {
        float f13;
        double d10;
        double d11 = f10;
        double d12 = f11;
        if (d12 > d11) {
            f13 = f12;
            d10 = d12;
        } else {
            f13 = f12;
            d10 = d11;
        }
        double d13 = f13;
        if (d13 > d10) {
            d10 = d13;
        }
        if (d10 < 1.0E-32d) {
            bArr[3] = 0;
            bArr[2] = 0;
            bArr[1] = 0;
            bArr[0] = 0;
            return;
        }
        double pow = Math.pow(2.0d, Math.ceil(Math.log10(d10) / Math.log10(2.0d)));
        bArr[0] = (byte) ((d11 / pow) * 255.0d);
        bArr[1] = (byte) ((d12 / pow) * 255.0d);
        bArr[2] = (byte) ((d13 / pow) * 255.0d);
        bArr[3] = (byte) (r4 + 128.0d);
    }

    public static void convertRGBEtoFloat(byte[] bArr, float[] fArr) {
        int i10 = bArr[0] & 255;
        int i11 = bArr[1] & 255;
        int i12 = bArr[2] & 255;
        float pow = (float) Math.pow(2.0d, (bArr[3] & 255) - 136);
        fArr[0] = i10 * pow;
        fArr[1] = i11 * pow;
        fArr[2] = i12 * pow;
    }

    public static void convertRGBEtoFloat2(byte[] bArr, float[] fArr) {
        int i10 = bArr[0] & 255;
        int i11 = bArr[1] & 255;
        int i12 = bArr[2] & 255;
        float pow = (float) Math.pow(2.0d, (bArr[3] & 255) - 128);
        fArr[0] = (i10 / 256.0f) * pow;
        fArr[1] = (i11 / 256.0f) * pow;
        fArr[2] = (i12 / 256.0f) * pow;
    }

    public static void convertRGBEtoFloat3(byte[] bArr, float[] fArr) {
        int i10 = bArr[0] & 255;
        int i11 = bArr[1] & 255;
        int i12 = bArr[2] & 255;
        float pow = (float) Math.pow(2.0d, (bArr[3] & 255) - 136);
        fArr[0] = i10 * pow;
        fArr[1] = i11 * pow;
        fArr[2] = i12 * pow;
    }

    private void decodeScanline(InputStream inputStream, int i10) throws IOException {
        if (i10 < 8 || i10 > 32767) {
            decodeScanlineUncompressed(inputStream, i10);
        }
        byte[] bArr = new byte[4];
        ByteUtils.readFully(inputStream, bArr);
        if (bArr[0] == 2 && bArr[1] == 2) {
            byte b10 = bArr[2];
            if ((b10 & 128) == 0) {
                int i11 = ((b10 & 255) << 8) | (bArr[3] & 255);
                if (i11 == i10) {
                    decodeScanlineRLE(inputStream, i10);
                    return;
                }
                throw new IOException("Illegal scanline width in HDR file: " + i10 + " != " + i11);
            }
        }
        decodeScanlineUncompressed(inputStream, i10 - 1);
    }

    private boolean decodeScanlineRLE(InputStream inputStream, int i10) throws IOException {
        ByteBuffer byteBuffer = this.rleTempBuffer;
        if (byteBuffer == null) {
            this.rleTempBuffer = BufferUtils.createByteBuffer(i10 * 4);
        } else {
            byteBuffer.clear();
            int i11 = i10 * 4;
            if (this.rleTempBuffer.remaining() < i11) {
                this.rleTempBuffer = BufferUtils.createByteBuffer(i11);
            }
        }
        for (int i12 = 0; i12 < 4; i12++) {
            int i13 = 0;
            while (i13 < i10) {
                int read = inputStream.read();
                if (read > 128) {
                    int i14 = read - 128;
                    int read2 = inputStream.read();
                    while (true) {
                        int i15 = i14 - 1;
                        if (i14 != 0) {
                            this.rleTempBuffer.put((i13 * 4) + i12, (byte) read2);
                            i14 = i15;
                            i13++;
                        }
                    }
                } else {
                    while (true) {
                        int i16 = read - 1;
                        if (read != 0) {
                            this.rleTempBuffer.put((i13 * 4) + i12, (byte) inputStream.read());
                            read = i16;
                            i13++;
                        }
                    }
                }
            }
        }
        this.rleTempBuffer.rewind();
        byte[] bArr = new byte[4];
        for (int i17 = 0; i17 < i10; i17++) {
            this.rleTempBuffer.get(bArr);
            writeRGBE(bArr);
        }
        return true;
    }

    private void decodeScanlineUncompressed(InputStream inputStream, int i10) throws IOException {
        byte[] bArr = new byte[4];
        for (int i11 = 0; i11 < i10; i11 += 3) {
            ByteUtils.readFully(inputStream, bArr);
            writeRGBE(bArr);
        }
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

    private void writeRGBE(byte[] bArr) {
        if (this.writeRGBE) {
            this.dataStore.put(bArr);
        } else {
            convertRGBEtoFloat(bArr, this.tempF);
            this.dataStore.putShort(FastMath.convertFloatToHalf(this.tempF[0])).putShort(FastMath.convertFloatToHalf(this.tempF[1])).putShort(FastMath.convertFloatToHalf(this.tempF[2]));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x00a1, code lost:
    
        r2 = r2.split("\\s");
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00a9, code lost:
    
        if (r2.length != 4) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00b3, code lost:
    
        if (r2[0].equals("-Y") == false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00be, code lost:
    
        if (r2[2].equals("+X") != false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00c7, code lost:
    
        r7 = java.lang.Integer.parseInt(r2[3]);
        r8 = java.lang.Integer.parseInt(r2[1]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00d4, code lost:
    
        if (r1 != false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00d6, code lost:
    
        com.jme3.texture.plugins.HDRLoader.logger.warning("Unsure if specified image is Radiance HDR");
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00dd, code lost:
    
        java.lang.System.gc();
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00e2, code lost:
    
        if (r11.writeRGBE == false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00e4, code lost:
    
        r0 = com.jme3.texture.Image.Format.RGBA8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00e6, code lost:
    
        r6 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00eb, code lost:
    
        r11.dataStore = com.jme3.util.BufferUtils.createByteBuffer((r7 * r8) * r6.getBitsPerPixel());
        r0 = (r6.getBitsPerPixel() / 8) * r7;
        r1 = r8 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0101, code lost:
    
        if (r1 < 0) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0103, code lost:
    
        if (r13 == false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0105, code lost:
    
        r11.dataStore.position(r0 * r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x010c, code lost:
    
        decodeScanline(r12, r7);
        r1 = r1 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0112, code lost:
    
        r12.close();
        r11.dataStore.rewind();
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0124, code lost:
    
        return new com.jme3.texture.Image(r6, r7, r8, r11.dataStore, com.jme3.texture.image.ColorSpace.Linear);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x00e8, code lost:
    
        r0 = com.jme3.texture.Image.Format.RGB16F;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x00c0, code lost:
    
        com.jme3.texture.plugins.HDRLoader.logger.warning("Flipping/Rotating attributes ignored!");
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x012c, code lost:
    
        throw new java.io.IOException("Invalid resolution string in HDR file");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Image load(InputStream inputStream, boolean z10) throws IOException {
        boolean z11 = false;
        while (true) {
            String trim = readString(inputStream).trim();
            if (!trim.startsWith(C16181m.f130230g) && !trim.equals("")) {
                if (trim.startsWith("+") || trim.startsWith("-")) {
                    break;
                }
                int indexOf = trim.indexOf("=");
                if (indexOf < 1) {
                    logger.log(Level.FINE, "Ignored string: {0}", trim);
                } else {
                    String lowerCase = trim.substring(0, indexOf).trim().toLowerCase();
                    String lowerCase2 = trim.substring(indexOf + 1).trim().toLowerCase();
                    if (lowerCase.equals("format")) {
                        if (!lowerCase2.equals("32-bit_rle_rgbe") && !lowerCase2.equals("32-bit_rle_xyze")) {
                            throw new IOException("Unsupported format in HDR picture");
                        }
                    } else if (lowerCase.equals("exposure")) {
                        Float.parseFloat(lowerCase2);
                    } else if (lowerCase.equals("gamma")) {
                        Float.parseFloat(lowerCase2);
                    } else {
                        logger.log(Level.WARNING, "HDR Command ignored: {0}", trim);
                    }
                }
            } else if (trim.equals("#?RADIANCE") || trim.equals("#?RGBE")) {
                z11 = true;
            }
        }
    }

    public HDRLoader() {
        this.writeRGBE = false;
        this.tempF = new float[3];
    }

    @Override
    public Object load(AssetInfo assetInfo) throws IOException {
        InputStream inputStream;
        if (assetInfo.getKey() instanceof TextureKey) {
            boolean isFlipY = ((TextureKey) assetInfo.getKey()).isFlipY();
            try {
                inputStream = assetInfo.openStream();
                try {
                    Image load = load(inputStream, isFlipY);
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
