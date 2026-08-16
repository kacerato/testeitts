package com.jme3.texture.plugins.ktx;

import com.android.dex.DexFormat;
import com.jme3.asset.AssetInfo;
import com.jme3.asset.AssetLoader;
import com.jme3.asset.TextureKey;
import com.jme3.export.binary.ByteUtils;
import com.jme3.renderer.Caps;
import com.jme3.renderer.opengl.GLImageFormat;
import com.jme3.renderer.opengl.GLImageFormats;
import com.jme3.texture.Image;
import com.jme3.texture.image.ColorSpace;
import com.jme3.util.BufferUtils;
import com.jme3.util.LittleEndien;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class KTXLoader implements AssetLoader {
    private boolean slicesInside = false;
    private static final Logger log = Logger.getLogger(KTXLoader.class.getName());
    private static final byte[] fileIdentifier = {Opcodes.OPC_lookupswitch, Opcodes.OPC_astore_0, Opcodes.OPC_bastore, Opcodes.OPC_pop2, 32, Opcodes.OPC_daload, Opcodes.OPC_daload, Opcodes.OPC_new, 13, 10, 26, 10};

    private boolean checkFileIdentifier(byte[] bArr) {
        boolean z10 = true;
        for (int i10 = 0; i10 < 12; i10++) {
            if (bArr[i10] != fileIdentifier[i10]) {
                z10 = false;
            }
        }
        return z10;
    }

    private int computeBuffersSize(int i10, int i11, int i12, int i13, int i14) {
        int i15 = 0;
        for (int i16 = 0; i16 < i10; i16++) {
            int max = Math.max(1, i11 >> i16) * Math.max(1, i12 >> i16) * i13;
            i15 += max;
            log.log(Level.FINE, "mip level size : {0} : {1}", new Object[]{Integer.valueOf(i16), Integer.valueOf(max)});
        }
        return i15 * i14;
    }

    private Image createImage(int i10, int i11, Image.Format format, int i12, int i13, int i14) {
        ArrayList arrayList = new ArrayList(i10);
        for (int i15 = 0; i15 < i10; i15++) {
            arrayList.add(BufferUtils.createByteBuffer(i11));
        }
        return new Image(format, i12, i13, i14, (ArrayList<ByteBuffer>) arrayList, ColorSpace.sRGB);
    }

    private Image.Format getImageFormat(int i10, int i11, int i12) {
        for (GLImageFormat[] gLImageFormatArr : GLImageFormats.getFormatsForCaps(EnumSet.allOf(Caps.class))) {
            for (int i13 = 0; i13 < gLImageFormatArr.length; i13++) {
                GLImageFormat gLImageFormat = gLImageFormatArr[i13];
                if (gLImageFormat != null && gLImageFormat.format == i10 && gLImageFormat.dataType == i12 && (i10 == i11 || gLImageFormat.internalFormat == i11)) {
                    return Image.Format.values()[i13];
                }
            }
        }
        return null;
    }

    private static int getSlice(int i10, int i11) {
        return Math.max(i10, i11);
    }

    private PixelReader parseMetaData(int i10, DataInput dataInput) throws IOException {
        PixelReader pixelReader = null;
        int i11 = 0;
        while (i11 < i10) {
            int readInt = dataInput.readInt();
            byte[] bArr = new byte[readInt];
            dataInput.readFully(bArr);
            String[] split = new String(bArr).split(DexFormat.MAGIC_SUFFIX);
            for (int i12 = 0; i12 < split.length; i12 += 2) {
                PrintStream printStream = System.err;
                printStream.println("key : " + split[i12]);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("value : ");
                int i13 = i12 + 1;
                sb2.append(split[i13]);
                printStream.println(sb2.toString());
                if (split[i12].equalsIgnoreCase("KTXorientation")) {
                    pixelReader = split[i13].startsWith("S=r,T=d") ? new SrTdRiPixelReader() : new SrTuRoPixelReader();
                    if (split[i13].contains("R=i")) {
                        this.slicesInside = true;
                    }
                }
            }
            int i14 = 3 - ((readInt + 3) % 4);
            if (i14 > 0) {
                ByteUtils.skipFully(dataInput, i14);
            }
            i11 += readInt + 4 + i14;
        }
        return pixelReader;
    }

    @Override
    public Object load(AssetInfo assetInfo) throws IOException {
        InputStream inputStream;
        if (assetInfo.getKey() instanceof TextureKey) {
            try {
                inputStream = assetInfo.openStream();
                try {
                    Image load = load(inputStream);
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

    private Image load(InputStream inputStream) {
        int i10;
        DataInput dataInput;
        byte[] bArr = new byte[12];
        DataInput dataInputStream = new DataInputStream(inputStream);
        try {
            ByteUtils.readFully(inputStream, bArr);
            try {
                if (checkFileIdentifier(bArr)) {
                    if (dataInputStream.readInt() == 16909060) {
                        dataInputStream = new LittleEndien(inputStream);
                    }
                    DataInput dataInput2 = dataInputStream;
                    int readInt = dataInput2.readInt();
                    int readInt2 = dataInput2.readInt();
                    int readInt3 = dataInput2.readInt();
                    int readInt4 = dataInput2.readInt();
                    int readInt5 = dataInput2.readInt();
                    int readInt6 = dataInput2.readInt();
                    int readInt7 = dataInput2.readInt();
                    int readInt8 = dataInput2.readInt();
                    int readInt9 = dataInput2.readInt();
                    int readInt10 = dataInput2.readInt();
                    int readInt11 = dataInput2.readInt();
                    int readInt12 = dataInput2.readInt();
                    Logger logger = log;
                    Level level = Level.FINE;
                    logger.log(level, "glType = {0}", Integer.valueOf(readInt));
                    logger.log(level, "glTypeSize = {0}", Integer.valueOf(readInt2));
                    logger.log(level, "glFormat = {0}", Integer.valueOf(readInt3));
                    logger.log(level, "glInternalFormat = {0}", Integer.valueOf(readInt4));
                    logger.log(level, "glBaseInternalFormat = {0}", Integer.valueOf(readInt5));
                    logger.log(level, "pixelWidth = {0}", Integer.valueOf(readInt6));
                    logger.log(level, "pixelHeight = {0}", Integer.valueOf(readInt7));
                    logger.log(level, "pixelDepth = {0}", Integer.valueOf(readInt8));
                    logger.log(level, "numberOfArrayElements = {0}", Integer.valueOf(readInt9));
                    logger.log(level, "numberOfFaces = {0}", Integer.valueOf(readInt10));
                    logger.log(level, "numberOfMipmapLevels = {0}", Integer.valueOf(readInt11));
                    logger.log(level, "bytesOfKeyValueData = {0}", Integer.valueOf(readInt12));
                    if ((readInt10 > 1 && readInt8 > 1) || ((readInt10 > 1 && readInt9 > 1) || (readInt8 > 1 && readInt9 > 1))) {
                        throw new UnsupportedOperationException("jME doesn't support cube maps of 3D textures or arrays of 3D texture or arrays of cube map of 3d textures");
                    }
                    DataInput dataInput3 = dataInput2;
                    PixelReader parseMetaData = parseMetaData(readInt12, dataInput3);
                    if (parseMetaData == null) {
                        parseMetaData = new SrTuRoPixelReader();
                    }
                    PixelReader pixelReader = parseMetaData;
                    int max = Math.max(1, readInt8);
                    int max2 = Math.max(1, readInt9);
                    int max3 = Math.max(1, readInt10);
                    int max4 = Math.max(1, readInt11);
                    int max5 = Math.max(max3, max2);
                    Image.Format imageFormat = getImageFormat(readInt3, readInt4, readInt);
                    logger.log(level, "img format {0}", imageFormat.toString());
                    int bitsPerPixel = imageFormat.getBitsPerPixel() / 8;
                    int i11 = bitsPerPixel;
                    int computeBuffersSize = computeBuffersSize(max4, readInt6, readInt7, bitsPerPixel, max);
                    logger.log(level, "data size {0}", Integer.valueOf(computeBuffersSize));
                    int[] iArr = new int[max4];
                    int i12 = max2;
                    Image createImage = createImage(max5, computeBuffersSize, imageFormat, readInt6, readInt7, max);
                    byte[] bArr2 = new byte[i11];
                    int i13 = 0;
                    int i14 = 0;
                    while (i13 < max4) {
                        try {
                            int readInt13 = dataInput3.readInt();
                            int max6 = Math.max(1, readInt6 >> i13);
                            int i15 = max4;
                            int max7 = Math.max(1, readInt7 >> i13);
                            int i16 = max6 * max7 * i11;
                            iArr[i13] = i16;
                            Logger logger2 = log;
                            int i17 = i11;
                            int[] iArr2 = iArr;
                            DataInput dataInput4 = dataInput3;
                            logger2.log(Level.FINE, "current mip size {0}", Integer.valueOf(i16));
                            if (readInt13 != i16) {
                                i10 = readInt6;
                                logger2.log(Level.WARNING, "Mip map size is wrong in the file for mip level {0} size is {1} should be {2}", new Object[]{Integer.valueOf(i13), Integer.valueOf(readInt13), Integer.valueOf(i16)});
                            } else {
                                i10 = readInt6;
                            }
                            int i18 = 0;
                            while (i18 < i12) {
                                int i19 = 0;
                                while (i19 < max3) {
                                    int i20 = 0;
                                    int i21 = 0;
                                    while (i21 < max) {
                                        ByteBuffer data = createImage.getData(getSlice(i19, i18));
                                        log.log(Level.FINE, "position {0}", Integer.valueOf(data.position()));
                                        data.position(i14);
                                        int i22 = i12;
                                        byte[] bArr3 = bArr2;
                                        byte[] bArr4 = bArr2;
                                        int[] iArr3 = iArr2;
                                        DataInput dataInput5 = dataInput4;
                                        i20 = pixelReader.readPixels(max6, max7, bArr3, data, dataInput5);
                                        i21++;
                                        max3 = max3;
                                        max6 = max6;
                                        dataInput4 = dataInput5;
                                        i12 = i22;
                                        max = max;
                                        iArr2 = iArr3;
                                        i15 = i15;
                                        bArr2 = bArr4;
                                    }
                                    byte[] bArr5 = bArr2;
                                    int i23 = max;
                                    int i24 = i12;
                                    int i25 = i15;
                                    int[] iArr4 = iArr2;
                                    DataInput dataInput6 = dataInput4;
                                    int i26 = max6;
                                    int i27 = max3;
                                    if (i27 == 6 && i24 == 0) {
                                        int i28 = 3 - ((i20 + 3) % 4);
                                        dataInput = dataInput6;
                                        ByteUtils.skipFully(dataInput, i28);
                                    } else {
                                        dataInput = dataInput6;
                                    }
                                    i19++;
                                    iArr2 = iArr4;
                                    max3 = i27;
                                    dataInput4 = dataInput;
                                    max6 = i26;
                                    i12 = i24;
                                    bArr2 = bArr5;
                                    max = i23;
                                    i15 = i25;
                                }
                                i18++;
                                max6 = max6;
                                bArr2 = bArr2;
                                i15 = i15;
                            }
                            int i29 = max;
                            DataInput dataInput7 = dataInput4;
                            int i30 = i16 + 3;
                            log.log(Level.FINE, "skipping {0}", Integer.valueOf(3 - (i30 % 4)));
                            ByteUtils.skipFully(dataInput7, 3 - (i30 % 4));
                            i14 += i16;
                            i13++;
                            iArr = iArr2;
                            max3 = max3;
                            dataInput3 = dataInput7;
                            i11 = i17;
                            readInt6 = i10;
                            i12 = i12;
                            bArr2 = bArr2;
                            max = i29;
                            max4 = i15;
                        } catch (IOException e10) {
                            e = e10;
                            Logger.getLogger(KTXLoader.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
                            return null;
                        }
                    }
                    int i31 = max;
                    int[] iArr5 = iArr;
                    if (max4 > 1) {
                        createImage.setMipMapSizes(iArr5);
                    }
                    if (i31 > 1 && this.slicesInside) {
                        Collections.reverse(createImage.getData());
                    }
                    return createImage;
                }
                throw new IllegalArgumentException("Unrecognized ktx file identifier : " + new String(bArr) + " should be " + new String(fileIdentifier));
            } catch (IOException e11) {
                e = e11;
            }
        } catch (IOException e12) {
            e = e12;
        }
    }
}
